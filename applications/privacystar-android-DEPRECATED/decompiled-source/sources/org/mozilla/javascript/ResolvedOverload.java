package org.mozilla.javascript;

import java.util.Arrays;
/* loaded from: classes2-dex2jar.jar:org/mozilla/javascript/ResolvedOverload.class */
class ResolvedOverload {
    final int index;
    final Class<?>[] types;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ResolvedOverload(Object[] objArr, int i) {
        this.index = i;
        this.types = new Class[objArr.length];
        int length = objArr.length;
        for (int i2 = 0; i2 < length; i2++) {
            Object obj = objArr[i2];
            Object unwrap = obj instanceof Wrapper ? ((Wrapper) obj).unwrap() : obj;
            this.types[i2] = unwrap == null ? null : unwrap.getClass();
        }
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof ResolvedOverload)) {
            return false;
        }
        ResolvedOverload resolvedOverload = (ResolvedOverload) obj;
        boolean z = false;
        if (Arrays.equals(this.types, resolvedOverload.types)) {
            z = false;
            if (this.index == resolvedOverload.index) {
                z = true;
            }
        }
        return z;
    }

    public int hashCode() {
        return Arrays.hashCode(this.types);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean matches(Object[] objArr) {
        if (objArr.length != this.types.length) {
            return false;
        }
        int length = objArr.length;
        for (int i = 0; i < length; i++) {
            Object obj = objArr[i];
            Object obj2 = obj;
            if (obj instanceof Wrapper) {
                obj2 = ((Wrapper) obj).unwrap();
            }
            if (obj2 == null) {
                if (this.types[i] != null) {
                    return false;
                }
            } else if (obj2.getClass() != this.types[i]) {
                return false;
            }
        }
        return true;
    }
}
