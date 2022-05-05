package com.facebook.stetho.inspector.elements;

import com.facebook.stetho.common.Accumulator;
import com.facebook.stetho.common.ListUtil;
import com.facebook.stetho.common.Util;
import java.util.ArrayDeque;
import java.util.Collections;
import java.util.HashSet;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/facebook/stetho/inspector/elements/ShadowDocument.class */
public final class ShadowDocument implements DocumentView {
    private final IdentityHashMap<Object, ElementInfo> mElementToInfoMap = new IdentityHashMap<>();
    private boolean mIsUpdating;
    private final Object mRootElement;

    /* loaded from: classes-dex2jar.jar:com/facebook/stetho/inspector/elements/ShadowDocument$Update.class */
    public final class Update implements DocumentView {
        private final Map<Object, ElementInfo> mElementToInfoChangesMap;
        private final Set<Object> mRootElementChangesSet;

        public Update(Map<Object, ElementInfo> map, Set<Object> set) {
            this.mElementToInfoChangesMap = map;
            this.mRootElementChangesSet = set;
        }

        private void removeGarbageSubTree(Map<Object, ElementInfo> map, Object obj) {
            ElementInfo elementInfo = map.get(obj);
            if (elementInfo.parentElement == null || !map.containsKey(elementInfo.parentElement)) {
                map.remove(obj);
                int size = elementInfo.children.size();
                for (int i = 0; i < size; i++) {
                    removeGarbageSubTree(map, elementInfo.children.get(i));
                }
            }
        }

        private void validateTree(Map<Object, ElementInfo> map) {
            HashSet hashSet = new HashSet();
            for (Map.Entry<Object, ElementInfo> entry : map.entrySet()) {
                Object key = entry.getKey();
                ElementInfo value = entry.getValue();
                if (key != value.element) {
                    throw new IllegalStateException("element != elementInfo.element");
                }
                int size = value.children.size();
                for (int i = 0; i < size; i++) {
                    ElementInfo elementInfo = map.get(value.children.get(i));
                    if (elementInfo == null) {
                        throw new IllegalStateException(String.format("elementInfo.get(elementInfo.children.get(%s)) == null", Integer.valueOf(i)));
                    } else if (elementInfo.parentElement != key) {
                        throw new IllegalStateException("childElementInfo.parentElement != element");
                    }
                }
                if (value.parentElement == null) {
                    hashSet.add(key);
                } else {
                    ElementInfo elementInfo2 = map.get(value.parentElement);
                    if (elementInfo2 == null) {
                        throw new IllegalStateException("elementToInfoMap.get(elementInfo.parentElementInfo) == NULL");
                    } else if (value.parentElement != elementInfo2.element) {
                        throw new IllegalStateException("elementInfo.parentElementInfo != parentElementInfo.parent");
                    } else if (!elementInfo2.children.contains(key)) {
                        throw new IllegalStateException("parentElementInfo.children.contains(element) == FALSE");
                    }
                }
            }
            if (hashSet.size() != 1) {
                throw new IllegalStateException("elementToInfoMap is a forest, not a tree. rootElements.size() != 1");
            }
        }

        public void abandon() {
            if (!ShadowDocument.this.mIsUpdating) {
                throw new IllegalStateException();
            }
            ShadowDocument.this.mIsUpdating = false;
        }

        public void commit() {
            if (!ShadowDocument.this.mIsUpdating) {
                throw new IllegalStateException();
            }
            ShadowDocument.this.mElementToInfoMap.putAll(this.mElementToInfoChangesMap);
            for (Object obj : this.mRootElementChangesSet) {
                removeGarbageSubTree(ShadowDocument.this.mElementToInfoMap, obj);
            }
            ShadowDocument.this.mIsUpdating = false;
        }

        public void getChangedElements(Accumulator<Object> accumulator) {
            for (Object obj : this.mElementToInfoChangesMap.keySet()) {
                accumulator.store(obj);
            }
        }

        @Override // com.facebook.stetho.inspector.elements.DocumentView
        public ElementInfo getElementInfo(Object obj) {
            ElementInfo elementInfo = this.mElementToInfoChangesMap.get(obj);
            return elementInfo != null ? elementInfo : (ElementInfo) ShadowDocument.this.mElementToInfoMap.get(obj);
        }

        public void getGarbageElements(Accumulator<Object> accumulator) {
            ArrayDeque arrayDeque = new ArrayDeque();
            for (Object obj : this.mRootElementChangesSet) {
                ElementInfo elementInfo = getElementInfo(obj);
                if (obj != ShadowDocument.this.mRootElement && elementInfo.parentElement == null) {
                    arrayDeque.add(obj);
                    arrayDeque.add(obj);
                }
            }
            while (!arrayDeque.isEmpty()) {
                Object remove = arrayDeque.remove();
                Object remove2 = arrayDeque.remove();
                Object obj2 = remove2;
                if (remove == remove2) {
                    obj2 = null;
                }
                if (getElementInfo(remove).parentElement == obj2) {
                    accumulator.store(remove);
                    ElementInfo elementInfo2 = ShadowDocument.this.getElementInfo(remove);
                    if (elementInfo2 != null) {
                        int size = elementInfo2.children.size();
                        for (int i = 0; i < size; i++) {
                            arrayDeque.add(elementInfo2.children.get(i));
                            arrayDeque.add(remove);
                        }
                    }
                }
            }
        }

        @Override // com.facebook.stetho.inspector.elements.DocumentView
        public Object getRootElement() {
            return ShadowDocument.this.getRootElement();
        }

        public boolean isElementChanged(Object obj) {
            return this.mElementToInfoChangesMap.containsKey(obj);
        }

        public boolean isEmpty() {
            return this.mElementToInfoChangesMap.isEmpty();
        }
    }

    /* loaded from: classes-dex2jar.jar:com/facebook/stetho/inspector/elements/ShadowDocument$UpdateBuilder.class */
    public final class UpdateBuilder {
        private HashSet<Object> mCachedNotNewChildrenSet;
        private final Map<Object, ElementInfo> mElementToInfoChangesMap = new LinkedHashMap();
        private final HashSet<Object> mRootElementChanges = new HashSet<>();

        public UpdateBuilder() {
        }

        private HashSet<Object> acquireNotNewChildrenHashSet() {
            HashSet<Object> hashSet = this.mCachedNotNewChildrenSet;
            HashSet<Object> hashSet2 = hashSet;
            if (hashSet == null) {
                hashSet2 = new HashSet<>();
            }
            this.mCachedNotNewChildrenSet = null;
            return hashSet2;
        }

        private void releaseNotNewChildrenHashSet(HashSet<Object> hashSet) {
            hashSet.clear();
            if (this.mCachedNotNewChildrenSet == null) {
                this.mCachedNotNewChildrenSet = hashSet;
            }
        }

        private void setElementParent(Object obj, Object obj2) {
            ElementInfo elementInfo = this.mElementToInfoChangesMap.get(obj);
            if (elementInfo == null || obj2 != elementInfo.parentElement) {
                ElementInfo elementInfo2 = (ElementInfo) ShadowDocument.this.mElementToInfoMap.get(obj);
                if (elementInfo != null || elementInfo2 == null || obj2 != elementInfo2.parentElement) {
                    if (elementInfo == null || elementInfo2 == null || obj2 != elementInfo2.parentElement || !ListUtil.identityEquals(elementInfo2.children, elementInfo.children)) {
                        this.mElementToInfoChangesMap.put(obj, new ElementInfo(obj, obj2, elementInfo != null ? elementInfo.children : elementInfo2 != null ? elementInfo2.children : Collections.emptyList()));
                        if (obj2 == null) {
                            this.mRootElementChanges.add(obj);
                        } else {
                            this.mRootElementChanges.remove(obj);
                        }
                    } else {
                        this.mElementToInfoChangesMap.remove(obj);
                        if (obj2 == null) {
                            this.mRootElementChanges.remove(obj);
                        }
                    }
                }
            }
        }

        public Update build() {
            return new Update(this.mElementToInfoChangesMap, this.mRootElementChanges);
        }

        public void setElementChildren(Object obj, List<Object> list) {
            ElementInfo elementInfo;
            ElementInfo elementInfo2 = this.mElementToInfoChangesMap.get(obj);
            if (elementInfo2 == null || !ListUtil.identityEquals(list, elementInfo2.children)) {
                ElementInfo elementInfo3 = (ElementInfo) ShadowDocument.this.mElementToInfoMap.get(obj);
                if (elementInfo2 != null || elementInfo3 == null || !ListUtil.identityEquals(list, elementInfo3.children)) {
                    if (elementInfo2 == null || elementInfo3 == null || elementInfo3.parentElement != elementInfo2.parentElement || !ListUtil.identityEquals(list, elementInfo3.children)) {
                        elementInfo = new ElementInfo(obj, elementInfo2 != null ? elementInfo2.parentElement : elementInfo3 != null ? elementInfo3.parentElement : null, list);
                        this.mElementToInfoChangesMap.put(obj, elementInfo);
                    } else {
                        elementInfo = (ElementInfo) ShadowDocument.this.mElementToInfoMap.get(obj);
                        this.mElementToInfoChangesMap.remove(obj);
                    }
                    HashSet<Object> acquireNotNewChildrenHashSet = acquireNotNewChildrenHashSet();
                    if (!(elementInfo3 == null || elementInfo3.children == elementInfo.children)) {
                        int size = elementInfo3.children.size();
                        for (int i = 0; i < size; i++) {
                            acquireNotNewChildrenHashSet.add(elementInfo3.children.get(i));
                        }
                    }
                    if (!(elementInfo2 == null || elementInfo2.children == elementInfo.children)) {
                        int size2 = elementInfo2.children.size();
                        for (int i2 = 0; i2 < size2; i2++) {
                            acquireNotNewChildrenHashSet.add(elementInfo2.children.get(i2));
                        }
                    }
                    int size3 = elementInfo.children.size();
                    for (int i3 = 0; i3 < size3; i3++) {
                        Object obj2 = elementInfo.children.get(i3);
                        setElementParent(obj2, obj);
                        acquireNotNewChildrenHashSet.remove(obj2);
                    }
                    Iterator<Object> it = acquireNotNewChildrenHashSet.iterator();
                    while (it.hasNext()) {
                        Object next = it.next();
                        ElementInfo elementInfo4 = this.mElementToInfoChangesMap.get(next);
                        if (elementInfo4 == null || elementInfo4.parentElement == obj) {
                            ElementInfo elementInfo5 = (ElementInfo) ShadowDocument.this.mElementToInfoMap.get(next);
                            if (elementInfo5 != null && elementInfo5.parentElement == obj) {
                                setElementParent(next, null);
                            }
                        }
                    }
                    releaseNotNewChildrenHashSet(acquireNotNewChildrenHashSet);
                }
            }
        }
    }

    public ShadowDocument(Object obj) {
        this.mRootElement = Util.throwIfNull(obj);
    }

    public UpdateBuilder beginUpdate() {
        if (this.mIsUpdating) {
            throw new IllegalStateException();
        }
        this.mIsUpdating = true;
        return new UpdateBuilder();
    }

    @Override // com.facebook.stetho.inspector.elements.DocumentView
    public ElementInfo getElementInfo(Object obj) {
        return this.mElementToInfoMap.get(obj);
    }

    @Override // com.facebook.stetho.inspector.elements.DocumentView
    public Object getRootElement() {
        return this.mRootElement;
    }
}
