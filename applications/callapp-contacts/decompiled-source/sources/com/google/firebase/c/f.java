package com.google.firebase.c;
/* loaded from: classes4-dex2jar.jar:com/google/firebase/c/f.class */
public interface f {

    /* loaded from: classes4-dex2jar.jar:com/google/firebase/c/f$a.class */
    public enum a {
        NONE(0),
        SDK(1),
        GLOBAL(2),
        COMBINED(3);
        
        private final int code;

        a(int i) {
            this.code = i;
        }

        public final int getCode() {
            return this.code;
        }
    }

    a a(String str);
}
