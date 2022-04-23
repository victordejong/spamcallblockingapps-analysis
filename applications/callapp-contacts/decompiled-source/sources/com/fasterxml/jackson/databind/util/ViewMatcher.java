package com.fasterxml.jackson.databind.util;

import java.io.Serializable;
/* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/databind/util/ViewMatcher.class */
public class ViewMatcher implements Serializable {
    protected static final ViewMatcher EMPTY = new ViewMatcher();

    /* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/databind/util/ViewMatcher$Multi.class */
    static final class Multi extends ViewMatcher implements Serializable {
        private final Class<?>[] _views;

        public Multi(Class<?>[] clsArr) {
            this._views = clsArr;
        }

        @Override // com.fasterxml.jackson.databind.util.ViewMatcher
        public final boolean isVisibleForView(Class<?> cls) {
            int length = this._views.length;
            for (int i = 0; i < length; i++) {
                Class<?> cls2 = this._views[i];
                if (cls == cls2 || cls2.isAssignableFrom(cls)) {
                    return true;
                }
            }
            return false;
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/databind/util/ViewMatcher$Single.class */
    static final class Single extends ViewMatcher {
        private final Class<?> _view;

        public Single(Class<?> cls) {
            this._view = cls;
        }

        @Override // com.fasterxml.jackson.databind.util.ViewMatcher
        public final boolean isVisibleForView(Class<?> cls) {
            Class<?> cls2 = this._view;
            return cls == cls2 || cls2.isAssignableFrom(cls);
        }
    }

    public static ViewMatcher construct(Class<?>[] clsArr) {
        int length;
        if (!(clsArr == null || (length = clsArr.length) == 0)) {
            return length != 1 ? new Multi(clsArr) : new Single(clsArr[0]);
        }
        return EMPTY;
    }

    public boolean isVisibleForView(Class<?> cls) {
        return false;
    }
}
