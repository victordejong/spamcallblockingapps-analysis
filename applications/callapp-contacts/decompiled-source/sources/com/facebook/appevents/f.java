package com.facebook.appevents;

import android.content.Context;
import android.util.Log;
import com.facebook.appevents.a;
import com.facebook.appevents.c;
import com.facebook.appevents.f.b;
import com.facebook.g;
import com.facebook.internal.ae;
import java.io.BufferedOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.ObjectStreamClass;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/facebook/appevents/f.class */
public class f {

    /* renamed from: a  reason: collision with root package name */
    private static final String f19543a = "com.facebook.appevents.f";

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3-dex2jar.jar:com/facebook/appevents/f$a.class */
    public static final class a extends ObjectInputStream {
        public a(InputStream inputStream) throws IOException {
            super(inputStream);
        }

        @Override // java.io.ObjectInputStream
        protected final ObjectStreamClass readClassDescriptor() throws IOException, ClassNotFoundException {
            ObjectStreamClass objectStreamClass;
            ObjectStreamClass readClassDescriptor = super.readClassDescriptor();
            if (readClassDescriptor.getName().equals("com.facebook.appevents.AppEventsLogger$AccessTokenAppIdPair$SerializationProxyV1")) {
                objectStreamClass = ObjectStreamClass.lookup(a.C0383a.class);
            } else {
                objectStreamClass = readClassDescriptor;
                if (readClassDescriptor.getName().equals("com.facebook.appevents.AppEventsLogger$AppEvent$SerializationProxyV1")) {
                    objectStreamClass = ObjectStreamClass.lookup(c.a.class);
                }
            }
            return objectStreamClass;
        }
    }

    f() {
    }

    /* JADX WARN: Removed duplicated region for block: B:55:0x00e5 A[Catch: all -> 0x00f2, TRY_ENTER, TryCatch #11 {all -> 0x00fe, blocks: (B:4:0x0003, B:9:0x0012, B:15:0x0041, B:17:0x0045, B:20:0x0055, B:30:0x0082, B:32:0x0086, B:34:0x0093, B:36:0x0098, B:38:0x00a3, B:40:0x00a8, B:42:0x00b5, B:44:0x00c0, B:47:0x00c4, B:49:0x00c9, B:51:0x00d6, B:55:0x00e5), top: B:74:0x0003 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.facebook.appevents.n a() {
        /*
            Method dump skipped, instructions count: 264
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.appevents.f.a():com.facebook.appevents.n");
    }

    public static void a(com.facebook.appevents.a aVar, o oVar) {
        synchronized (f.class) {
            try {
                if (!com.facebook.internal.b.b.a.a(f.class)) {
                    b.a();
                    n a2 = a();
                    a2.a(aVar, oVar.b());
                    a(a2);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static void a(d dVar) {
        synchronized (f.class) {
            try {
                if (!com.facebook.internal.b.b.a.a(f.class)) {
                    b.a();
                    n a2 = a();
                    for (com.facebook.appevents.a aVar : dVar.a()) {
                        a2.a(aVar, dVar.a(aVar).b());
                    }
                    a(a2);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private static void a(n nVar) {
        Throwable th;
        if (!com.facebook.internal.b.b.a.a(f.class)) {
            ObjectOutputStream objectOutputStream = null;
            try {
                Context i = g.i();
                try {
                    ObjectOutputStream objectOutputStream2 = new ObjectOutputStream(new BufferedOutputStream(i.openFileOutput("AppEventsLogger.persistedevents", 0)));
                    try {
                        objectOutputStream2.writeObject(nVar);
                        ae.a(objectOutputStream2);
                    } catch (Throwable th2) {
                        th = th2;
                        objectOutputStream = objectOutputStream2;
                        Log.w(f19543a, "Got unexpected exception while persisting events: ", th);
                        try {
                            i.getFileStreamPath("AppEventsLogger.persistedevents").delete();
                        } catch (Exception e) {
                        }
                        ae.a(objectOutputStream);
                    }
                } catch (Throwable th3) {
                    th = th3;
                }
            } catch (Throwable th4) {
                com.facebook.internal.b.b.a.a(th4, f.class);
            }
        }
    }
}
