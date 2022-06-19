package com.facebook.appevents;

import android.content.Context;
import com.facebook.appevents.C1071p;
import com.facebook.appevents.C1087r;
import com.facebook.internal.C1168q0;
import com.facebook.internal.p037u0.p040m.C1220a;
import java.io.BufferedOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.ObjectStreamClass;
import kotlin.Metadata;
import p193e.p1538j.C23228f0;
import s1.z.c.l;
@Metadata(d1 = {"��4\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\bÁ\u0002\u0018��2\u00020\u0001:\u0001\u0012B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0018\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0007J\u0010\u0010\u0006\u001a\u00020\u00072\u0006\u0010\f\u001a\u00020\rH\u0007J\b\u0010\u000e\u001a\u00020\u000fH\u0007J\u0017\u0010\u0010\u001a\u00020\u00072\b\u0010\f\u001a\u0004\u0018\u00010\u000fH\u0001¢\u0006\u0002\b\u0011R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n��¨\u0006\u0013"}, d2 = {"Lcom/facebook/appevents/AppEventStore;", "", "()V", "PERSISTED_EVENTS_FILENAME", "", "TAG", "persistEvents", "", "accessTokenAppIdPair", "Lcom/facebook/appevents/AccessTokenAppIdPair;", "appEvents", "Lcom/facebook/appevents/SessionEventsState;", "eventsToPersist", "Lcom/facebook/appevents/AppEventCollection;", "readAndClearStore", "Lcom/facebook/appevents/PersistedEvents;", "saveEventsToDisk", "saveEventsToDisk$facebook_core_release", "MovedClassObjectInputStream", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* renamed from: com.facebook.appevents.u */
/* loaded from: classes2-dex2jar.jar:com/facebook/appevents/u.class */
public final class C1092u {

    /* renamed from: a */
    public static final C1092u f3023a = null;

    /* renamed from: b */
    public static final String f3024b;

    @Metadata(d1 = {"��\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0002\u0018�� \u00072\u00020\u0001:\u0001\u0007B\u000f\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u0004J\b\u0010\u0005\u001a\u00020\u0006H\u0014¨\u0006\b"}, d2 = {"Lcom/facebook/appevents/AppEventStore$MovedClassObjectInputStream;", "Ljava/io/ObjectInputStream;", "inputStream", "Ljava/io/InputStream;", "(Ljava/io/InputStream;)V", "readClassDescriptor", "Ljava/io/ObjectStreamClass;", "Companion", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* renamed from: com.facebook.appevents.u$a */
    /* loaded from: classes2-dex2jar.jar:com/facebook/appevents/u$a.class */
    public static final class C1093a extends ObjectInputStream {
        public C1093a(InputStream inputStream) {
            super(inputStream);
        }

        @Override // java.io.ObjectInputStream
        public ObjectStreamClass readClassDescriptor() throws IOException, ClassNotFoundException {
            ObjectStreamClass objectStreamClass;
            ObjectStreamClass readClassDescriptor = super.readClassDescriptor();
            if (l.a(readClassDescriptor.getName(), "com.facebook.appevents.AppEventsLogger$AccessTokenAppIdPair$SerializationProxyV1")) {
                objectStreamClass = ObjectStreamClass.lookup(C1071p.C1072a.class);
            } else {
                objectStreamClass = readClassDescriptor;
                if (l.a(readClassDescriptor.getName(), "com.facebook.appevents.AppEventsLogger$AppEvent$SerializationProxyV2")) {
                    objectStreamClass = ObjectStreamClass.lookup(C1087r.C1089b.class);
                }
            }
            l.d(objectStreamClass, "resultClassDescriptor");
            return objectStreamClass;
        }
    }

    static {
        String name = C1092u.class.getName();
        l.d(name, "AppEventStore::class.java.name");
        f3024b = name;
    }

    /* renamed from: a */
    public static final void m41772a(C1071p c1071p, C0958f0 c0958f0) {
        synchronized (C1092u.class) {
            try {
                if (C1220a.m41623b(C1092u.class)) {
                    return;
                }
                l.e(c1071p, "accessTokenAppIdPair");
                l.e(c0958f0, "appEvents");
                C0955e0 m41770c = m41770c();
                m41770c.m41976a(c1071p, c0958f0.m41974b());
                m41769d(m41770c);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: b */
    public static final void m41771b(C1090s c1090s) {
        synchronized (C1092u.class) {
            try {
                if (C1220a.m41623b(C1092u.class)) {
                    return;
                }
                l.e(c1090s, "eventsToPersist");
                C0955e0 m41770c = m41770c();
                for (C1071p c1071p : c1090s.m41779e()) {
                    C0958f0 m41782b = c1090s.m41782b(c1071p);
                    if (m41782b == null) {
                        throw new IllegalStateException("Required value was null.".toString());
                    }
                    m41770c.m41976a(c1071p, m41782b.m41974b());
                }
                m41769d(m41770c);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:46:0x00af A[Catch: all -> 0x00bc, TRY_ENTER, TryCatch #4 {all -> 0x00c8, blocks: (B:4:0x0003, B:9:0x0012, B:17:0x004b, B:19:0x004f, B:26:0x0070, B:28:0x0075, B:30:0x007f, B:33:0x0083, B:35:0x0088, B:37:0x008f, B:40:0x0099, B:42:0x009e, B:46:0x00af), top: B:63:0x0003 }] */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final com.facebook.appevents.C0955e0 m41770c() {
        /*
            Method dump skipped, instructions count: 228
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.appevents.C1092u.m41770c():com.facebook.appevents.e0");
    }

    /* renamed from: d */
    public static final void m41769d(C0955e0 c0955e0) {
        ObjectOutputStream objectOutputStream;
        if (C1220a.m41623b(C1092u.class)) {
            return;
        }
        try {
            C23228f0 c23228f0 = C23228f0.f64291a;
            Context m7354a = C23228f0.m7354a();
            try {
                ObjectOutputStream objectOutputStream2 = new ObjectOutputStream(new BufferedOutputStream(m7354a.openFileOutput("AppEventsLogger.persistedevents", 0)));
                try {
                    objectOutputStream2.writeObject(c0955e0);
                    C1168q0.m41678e(objectOutputStream2);
                } catch (Throwable th) {
                    objectOutputStream = objectOutputStream2;
                    try {
                        m7354a.getFileStreamPath("AppEventsLogger.persistedevents").delete();
                    } catch (Exception e) {
                    }
                    C1168q0.m41678e(objectOutputStream);
                }
            } catch (Throwable th2) {
                objectOutputStream = null;
            }
        } catch (Throwable th3) {
            C1220a.m41624a(th3, C1092u.class);
        }
    }
}
