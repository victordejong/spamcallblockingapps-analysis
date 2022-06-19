package com.facebook.p094a;

import android.content.Context;
import android.util.Log;
import com.facebook.C2095j;
import com.facebook.internal.C2079x;
import com.facebook.p094a.C1806a;
import com.facebook.p094a.C1848c;
import com.facebook.p094a.p099d.C1862b;
import java.io.BufferedOutputStream;
import java.io.InputStream;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.ObjectStreamClass;
/* renamed from: com.facebook.a.f */
/* loaded from: classes-dex2jar.jar:com/facebook/a/f.class */
class C1899f {

    /* renamed from: a */
    private static final String f5741a = C1899f.class.getName();

    /* renamed from: com.facebook.a.f$a */
    /* loaded from: classes-dex2jar.jar:com/facebook/a/f$a.class */
    public static class C1900a extends ObjectInputStream {
        public C1900a(InputStream inputStream) {
            super(inputStream);
        }

        @Override // java.io.ObjectInputStream
        protected ObjectStreamClass readClassDescriptor() {
            ObjectStreamClass objectStreamClass;
            ObjectStreamClass readClassDescriptor = super.readClassDescriptor();
            if (readClassDescriptor.getName().equals("com.facebook.appevents.AppEventsLogger$AccessTokenAppIdPair$SerializationProxyV1")) {
                objectStreamClass = ObjectStreamClass.lookup(C1806a.C1808a.class);
            } else {
                objectStreamClass = readClassDescriptor;
                if (readClassDescriptor.getName().equals("com.facebook.appevents.AppEventsLogger$AppEvent$SerializationProxyV1")) {
                    objectStreamClass = ObjectStreamClass.lookup(C1848c.C1850a.class);
                }
            }
            return objectStreamClass;
        }
    }

    C1899f() {
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x004a A[Catch: all -> 0x0068, TRY_ENTER, TryCatch #7 {all -> 0x0068, blocks: (B:4:0x0005, B:10:0x0034, B:12:0x0038, B:16:0x004a, B:22:0x0058, B:30:0x0071, B:32:0x0076, B:35:0x0085, B:42:0x00a6, B:44:0x00aa, B:47:0x00b9, B:50:0x00c9, B:52:0x00ce, B:54:0x00d8, B:56:0x00da), top: B:63:0x0005, inners: #3, #5, #8, #9 }] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.facebook.p094a.C1928n m15946a() {
        /*
            Method dump skipped, instructions count: 244
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.p094a.C1899f.m15946a():com.facebook.a.n");
    }

    /* renamed from: a */
    public static void m15945a(C1806a c1806a, C1931o c1931o) {
        synchronized (C1899f.class) {
            try {
                C1862b.m16065a();
                C1928n m15946a = m15946a();
                if (m15946a.m15845b(c1806a)) {
                    m15946a.m15847a(c1806a).addAll(c1931o.m15839b());
                } else {
                    m15946a.m15846a(c1806a, c1931o.m15839b());
                }
                m15943a(m15946a);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: a */
    public static void m15944a(C1854d c1854d) {
        synchronized (C1899f.class) {
            try {
                C1862b.m16065a();
                C1928n m15946a = m15946a();
                for (C1806a c1806a : c1854d.m16095a()) {
                    m15946a.m15846a(c1806a, c1854d.m16094a(c1806a).m15839b());
                }
                m15943a(m15946a);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: a */
    private static void m15943a(C1928n c1928n) {
        ObjectOutputStream objectOutputStream;
        Exception e;
        ObjectOutputStream objectOutputStream2;
        Context m15360h = C2095j.m15360h();
        try {
            ObjectOutputStream objectOutputStream3 = new ObjectOutputStream(new BufferedOutputStream(m15360h.openFileOutput("AppEventsLogger.persistedevents", 0)));
            objectOutputStream = objectOutputStream3;
            try {
                try {
                    objectOutputStream3.writeObject(c1928n);
                    C2079x.m15479a(objectOutputStream3);
                } catch (Exception e2) {
                    e = e2;
                    objectOutputStream2 = objectOutputStream3;
                    Log.w(f5741a, "Got unexpected exception while persisting events: ", e);
                    objectOutputStream = objectOutputStream2;
                    try {
                        m15360h.getFileStreamPath("AppEventsLogger.persistedevents").delete();
                    } catch (Exception e3) {
                    }
                    C2079x.m15479a(objectOutputStream2);
                }
            } catch (Throwable th) {
                th = th;
                C2079x.m15479a(objectOutputStream);
                throw th;
            }
        } catch (Exception e4) {
            e = e4;
            objectOutputStream2 = null;
        } catch (Throwable th2) {
            th = th2;
            objectOutputStream = null;
            C2079x.m15479a(objectOutputStream);
            throw th;
        }
    }
}
