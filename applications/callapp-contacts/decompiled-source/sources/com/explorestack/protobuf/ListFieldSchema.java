package com.explorestack.protobuf;

import com.explorestack.protobuf.Internal;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/explorestack/protobuf/ListFieldSchema.class */
public abstract class ListFieldSchema {
    private static final ListFieldSchema FULL_INSTANCE = new ListFieldSchemaFull();
    private static final ListFieldSchema LITE_INSTANCE = new ListFieldSchemaLite();

    /* loaded from: classes2-dex2jar.jar:com/explorestack/protobuf/ListFieldSchema$ListFieldSchemaFull.class */
    static final class ListFieldSchemaFull extends ListFieldSchema {
        private static final Class<?> UNMODIFIABLE_LIST_CLASS = Collections.unmodifiableList(Collections.emptyList()).getClass();

        private ListFieldSchemaFull() {
            super();
        }

        static <E> List<E> getList(Object obj, long j) {
            return (List) UnsafeUtil.getObject(obj, j);
        }

        private static <L> List<L> mutableListAt(Object obj, long j, int i) {
            LazyStringArrayList lazyStringArrayList;
            List<L> list = getList(obj, j);
            if (list.isEmpty()) {
                lazyStringArrayList = list instanceof LazyStringList ? new LazyStringArrayList(i) : (!(list instanceof PrimitiveNonBoxingCollection) || !(list instanceof Internal.ProtobufList)) ? new ArrayList(i) : ((Internal.ProtobufList) list).mutableCopyWithCapacity(i);
                UnsafeUtil.putObject(obj, j, lazyStringArrayList);
            } else if (UNMODIFIABLE_LIST_CLASS.isAssignableFrom(list.getClass())) {
                ArrayList arrayList = new ArrayList(list.size() + i);
                arrayList.addAll(list);
                UnsafeUtil.putObject(obj, j, arrayList);
                lazyStringArrayList = arrayList;
            } else if (list instanceof UnmodifiableLazyStringList) {
                LazyStringArrayList lazyStringArrayList2 = new LazyStringArrayList(list.size() + i);
                lazyStringArrayList2.addAll((UnmodifiableLazyStringList) list);
                UnsafeUtil.putObject(obj, j, lazyStringArrayList2);
                lazyStringArrayList = lazyStringArrayList2;
            } else {
                lazyStringArrayList = list;
                if (list instanceof PrimitiveNonBoxingCollection) {
                    lazyStringArrayList = list;
                    if (list instanceof Internal.ProtobufList) {
                        Internal.ProtobufList protobufList = (Internal.ProtobufList) list;
                        lazyStringArrayList = list;
                        if (!protobufList.isModifiable()) {
                            lazyStringArrayList = protobufList.mutableCopyWithCapacity(list.size() + i);
                            UnsafeUtil.putObject(obj, j, lazyStringArrayList);
                        }
                    }
                }
            }
            return lazyStringArrayList;
        }

        @Override // com.explorestack.protobuf.ListFieldSchema
        final void makeImmutableListAt(Object obj, long j) {
            Object obj2;
            List list = (List) UnsafeUtil.getObject(obj, j);
            if (list instanceof LazyStringList) {
                obj2 = ((LazyStringList) list).getUnmodifiableView();
            } else if (!UNMODIFIABLE_LIST_CLASS.isAssignableFrom(list.getClass())) {
                if (!(list instanceof PrimitiveNonBoxingCollection) || !(list instanceof Internal.ProtobufList)) {
                    obj2 = Collections.unmodifiableList(list);
                } else {
                    Internal.ProtobufList protobufList = (Internal.ProtobufList) list;
                    if (protobufList.isModifiable()) {
                        protobufList.makeImmutable();
                        return;
                    }
                    return;
                }
            } else {
                return;
            }
            UnsafeUtil.putObject(obj, j, obj2);
        }

        @Override // com.explorestack.protobuf.ListFieldSchema
        final <E> void mergeListsAt(Object obj, Object obj2, long j) {
            List list = getList(obj2, j);
            List mutableListAt = mutableListAt(obj, j, list.size());
            int size = mutableListAt.size();
            int size2 = list.size();
            if (size > 0 && size2 > 0) {
                mutableListAt.addAll(list);
            }
            if (size > 0) {
                list = mutableListAt;
            }
            UnsafeUtil.putObject(obj, j, list);
        }

        @Override // com.explorestack.protobuf.ListFieldSchema
        final <L> List<L> mutableListAt(Object obj, long j) {
            return mutableListAt(obj, j, 10);
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/explorestack/protobuf/ListFieldSchema$ListFieldSchemaLite.class */
    static final class ListFieldSchemaLite extends ListFieldSchema {
        private ListFieldSchemaLite() {
            super();
        }

        static <E> Internal.ProtobufList<E> getProtobufList(Object obj, long j) {
            return (Internal.ProtobufList) UnsafeUtil.getObject(obj, j);
        }

        @Override // com.explorestack.protobuf.ListFieldSchema
        final void makeImmutableListAt(Object obj, long j) {
            getProtobufList(obj, j).makeImmutable();
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r7v5, types: [com.explorestack.protobuf.Internal$ProtobufList] */
        @Override // com.explorestack.protobuf.ListFieldSchema
        final <E> void mergeListsAt(Object obj, Object obj2, long j) {
            Internal.ProtobufList protobufList = getProtobufList(obj, j);
            Internal.ProtobufList protobufList2 = getProtobufList(obj2, j);
            int size = protobufList.size();
            int size2 = protobufList2.size();
            Internal.ProtobufList protobufList3 = protobufList;
            if (size > 0) {
                protobufList3 = protobufList;
                if (size2 > 0) {
                    Internal.ProtobufList<E> protobufList4 = protobufList;
                    if (!protobufList.isModifiable()) {
                        protobufList4 = protobufList.mutableCopyWithCapacity(size2 + size);
                    }
                    protobufList4.addAll(protobufList2);
                    protobufList3 = protobufList4;
                }
            }
            protobufList3 = protobufList2;
            if (size > 0) {
            }
            UnsafeUtil.putObject(obj, j, protobufList3);
        }

        @Override // com.explorestack.protobuf.ListFieldSchema
        final <L> List<L> mutableListAt(Object obj, long j) {
            Internal.ProtobufList protobufList = getProtobufList(obj, j);
            Internal.ProtobufList protobufList2 = protobufList;
            if (!protobufList.isModifiable()) {
                int size = protobufList.size();
                protobufList2 = protobufList.mutableCopyWithCapacity(size == 0 ? 10 : size * 2);
                UnsafeUtil.putObject(obj, j, protobufList2);
            }
            return protobufList2;
        }
    }

    private ListFieldSchema() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static ListFieldSchema full() {
        return FULL_INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static ListFieldSchema lite() {
        return LITE_INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void makeImmutableListAt(Object obj, long j);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract <L> void mergeListsAt(Object obj, Object obj2, long j);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract <L> List<L> mutableListAt(Object obj, long j);
}
