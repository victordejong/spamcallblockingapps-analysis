package com.fasterxml.jackson.databind.introspect;

import java.util.Collections;
import java.util.Iterator;
import java.util.Map;
/* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/databind/introspect/AnnotatedMethodMap.class */
public final class AnnotatedMethodMap implements Iterable<AnnotatedMethod> {
    protected Map<MemberKey, AnnotatedMethod> _methods;

    public AnnotatedMethodMap() {
    }

    public AnnotatedMethodMap(Map<MemberKey, AnnotatedMethod> map) {
        this._methods = map;
    }

    public final AnnotatedMethod find(String str, Class<?>[] clsArr) {
        Map<MemberKey, AnnotatedMethod> map = this._methods;
        if (map == null) {
            return null;
        }
        return map.get(new MemberKey(str, clsArr));
    }

    @Override // java.lang.Iterable
    public final Iterator<AnnotatedMethod> iterator() {
        Map<MemberKey, AnnotatedMethod> map = this._methods;
        return map == null ? Collections.emptyIterator() : map.values().iterator();
    }
}
