package com.criteo.publisher.i;

import kotlin.jvm.internal.DefaultConstructorMarker;
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/i/b.class */
public class b {

    /* loaded from: classes2-dex2jar.jar:com/criteo/publisher/i/b$a.class */
    static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    static {
        new a(null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean a(String str) {
        boolean z = false;
        try {
            Class.forName(str, false, b.class.getClassLoader());
            z = true;
        } catch (ClassNotFoundException | LinkageError e) {
        }
        return z;
    }
}
