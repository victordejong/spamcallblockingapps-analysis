package com.criteo.publisher.p249i;

import kotlin.jvm.internal.DefaultConstructorMarker;
/* renamed from: com.criteo.publisher.i.b */
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/i/b.class */
public class C8348b {

    /* renamed from: com.criteo.publisher.i.b$a */
    /* loaded from: classes2-dex2jar.jar:com/criteo/publisher/i/b$a.class */
    static final class C8349a {
        private C8349a() {
        }

        public /* synthetic */ C8349a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    static {
        new C8349a(null);
    }

    /* renamed from: a */
    public static boolean m25809a(String str) {
        boolean z = false;
        try {
            Class.forName(str, false, C8348b.class.getClassLoader());
            z = true;
        } catch (ClassNotFoundException | LinkageError e) {
        }
        return z;
    }
}
