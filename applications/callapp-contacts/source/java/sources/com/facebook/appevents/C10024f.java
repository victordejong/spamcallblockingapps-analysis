package com.facebook.appevents;

import android.content.Context;
import android.util.Log;
import com.facebook.C10181g;
import com.facebook.appevents.C10002c;
import com.facebook.appevents.C9958a;
import com.facebook.appevents.p285f.C10033b;
import com.facebook.internal.C10213ae;
import com.facebook.internal.p299b.p301b.C10249a;
import java.io.BufferedOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.ObjectStreamClass;
/* renamed from: com.facebook.appevents.f */
/* loaded from: classes3-dex2jar.jar:com/facebook/appevents/f.class */
public class C10024f {

    /* renamed from: a */
    private static final String f33300a = "com.facebook.appevents.f";

    /* renamed from: com.facebook.appevents.f$a */
    /* loaded from: classes3-dex2jar.jar:com/facebook/appevents/f$a.class */
    public static final class C10025a extends ObjectInputStream {
        public C10025a(InputStream inputStream) throws IOException {
            super(inputStream);
        }

        @Override // java.io.ObjectInputStream
        protected final ObjectStreamClass readClassDescriptor() throws IOException, ClassNotFoundException {
            ObjectStreamClass objectStreamClass;
            ObjectStreamClass readClassDescriptor = super.readClassDescriptor();
            if (readClassDescriptor.getName().equals("com.facebook.appevents.AppEventsLogger$AccessTokenAppIdPair$SerializationProxyV1")) {
                objectStreamClass = ObjectStreamClass.lookup(C9958a.C9960a.class);
            } else {
                objectStreamClass = readClassDescriptor;
                if (readClassDescriptor.getName().equals("com.facebook.appevents.AppEventsLogger$AppEvent$SerializationProxyV1")) {
                    objectStreamClass = ObjectStreamClass.lookup(C10002c.C10004a.class);
                }
            }
            return objectStreamClass;
        }
    }

    C10024f() {
    }

    /* JADX WARN: Removed duplicated region for block: B:55:0x00e5 A[Catch: all -> 0x00f2, TRY_ENTER, TryCatch #11 {all -> 0x00fe, blocks: (B:4:0x0003, B:9:0x0012, B:15:0x0041, B:17:0x0045, B:20:0x0055, B:30:0x0082, B:32:0x0086, B:34:0x0093, B:36:0x0098, B:38:0x00a3, B:40:0x00a8, B:42:0x00b5, B:44:0x00c0, B:47:0x00c4, B:49:0x00c9, B:51:0x00d6, B:55:0x00e5), top: B:74:0x0003 }] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.facebook.appevents.C10098n m23586a() {
        /*
            Method dump skipped, instructions count: 264
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.appevents.C10024f.m23586a():com.facebook.appevents.n");
    }

    /* renamed from: a */
    public static void m23585a(C9958a c9958a, C10101o c10101o) {
        synchronized (C10024f.class) {
            try {
                if (C10249a.m23108a(C10024f.class)) {
                    return;
                }
                C10033b.m23561a();
                C10098n m23586a = m23586a();
                m23586a.m23409a(c9958a, c10101o.m23404b());
                m23583a(m23586a);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: a */
    public static void m23584a(C10008d c10008d) {
        synchronized (C10024f.class) {
            try {
                if (C10249a.m23108a(C10024f.class)) {
                    return;
                }
                C10033b.m23561a();
                C10098n m23586a = m23586a();
                for (C9958a c9958a : c10008d.m23635a()) {
                    m23586a.m23409a(c9958a, c10008d.m23634a(c9958a).m23404b());
                }
                m23583a(m23586a);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: a */
    private static void m23583a(C10098n c10098n) {
        Throwable th;
        ObjectOutputStream objectOutputStream;
        if (C10249a.m23108a(C10024f.class)) {
            return;
        }
        try {
            Context m23290i = C10181g.m23290i();
            try {
                ObjectOutputStream objectOutputStream2 = new ObjectOutputStream(new BufferedOutputStream(m23290i.openFileOutput("AppEventsLogger.persistedevents", 0)));
                try {
                    objectOutputStream2.writeObject(c10098n);
                    C10213ae.m23238a(objectOutputStream2);
                } catch (Throwable th2) {
                    th = th2;
                    objectOutputStream = objectOutputStream2;
                    Log.w(f33300a, "Got unexpected exception while persisting events: ", th);
                    try {
                        m23290i.getFileStreamPath("AppEventsLogger.persistedevents").delete();
                    } catch (Exception e) {
                    }
                    C10213ae.m23238a(objectOutputStream);
                }
            } catch (Throwable th3) {
                th = th3;
                objectOutputStream = null;
            }
        } catch (Throwable th4) {
            C10249a.m23106a(th4, C10024f.class);
        }
    }
}
