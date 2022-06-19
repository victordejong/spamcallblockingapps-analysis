package com.facebook.appevents;

import com.facebook.internal.p037u0.p040m.C1220a;
import java.io.ObjectStreamException;
import java.io.Serializable;
import java.util.HashMap;
import java.util.List;
import kotlin.Metadata;
import s1.u.i;
import s1.z.c.l;
@Metadata(d1 = {"��L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010 \n��\n\u0002\u0010\u000b\n��\n\u0002\u0010\"\n\u0002\u0010&\n\u0002\b\u0003\n\u0002\u0010��\n\u0002\b\u0003\b\u0001\u0018�� \u00192\u00020\u0001:\u0002\u0019\u001aB\u0007\b\u0016¢\u0006\u0002\u0010\u0002B7\b\u0016\u0012.\u0010\u0003\u001a*\u0012\u0004\u0012\u00020\u0005\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00070\u00060\u0004j\u0014\u0012\u0004\u0012\u00020\u0005\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00070\u0006`\b¢\u0006\u0002\u0010\tJ\u001c\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u00052\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00070\u000fJ\u000e\u0010\u0010\u001a\u00020\u00112\u0006\u0010\r\u001a\u00020\u0005J\u001e\u0010\u0012\u001a\u001a\u0012\u0016\u0012\u0014\u0012\u0004\u0012\u00020\u0005\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00070\u00060\u00140\u0013J\u0019\u0010\u0015\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u000f2\u0006\u0010\r\u001a\u00020\u0005H\u0086\u0002J\f\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00050\u0013J\b\u0010\u0017\u001a\u00020\u0018H\u0002R6\u0010\n\u001a*\u0012\u0004\u0012\u00020\u0005\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00070\u00060\u0004j\u0014\u0012\u0004\u0012\u00020\u0005\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00070\u0006`\bX\u0082\u0004¢\u0006\u0002\n��¨\u0006\u001b"}, d2 = {"Lcom/facebook/appevents/PersistedEvents;", "Ljava/io/Serializable;", "()V", "appEventMap", "Ljava/util/HashMap;", "Lcom/facebook/appevents/AccessTokenAppIdPair;", "", "Lcom/facebook/appevents/AppEvent;", "Lkotlin/collections/HashMap;", "(Ljava/util/HashMap;)V", "events", "addEvents", "", "accessTokenAppIdPair", "appEvents", "", "containsKey", "", "entrySet", "", "", "get", "keySet", "writeReplace", "", "Companion", "SerializationProxyV1", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* renamed from: com.facebook.appevents.e0 */
/* loaded from: classes2-dex2jar.jar:com/facebook/appevents/e0.class */
public final class C0955e0 implements Serializable {

    /* renamed from: a */
    public final HashMap<C1071p, List<C1087r>> f2633a;

    @Metadata(d1 = {"��*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010��\n\u0002\b\u0002\b��\u0018�� \u000b2\u00020\u0001:\u0001\u000bB5\u0012.\u0010\u0002\u001a*\u0012\u0004\u0012\u00020\u0004\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00060\u00050\u0003j\u0014\u0012\u0004\u0012\u00020\u0004\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00060\u0005`\u0007¢\u0006\u0002\u0010\bJ\b\u0010\t\u001a\u00020\nH\u0002R6\u0010\u0002\u001a*\u0012\u0004\u0012\u00020\u0004\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00060\u00050\u0003j\u0014\u0012\u0004\u0012\u00020\u0004\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00060\u0005`\u0007X\u0082\u0004¢\u0006\u0002\n��¨\u0006\f"}, d2 = {"Lcom/facebook/appevents/PersistedEvents$SerializationProxyV1;", "Ljava/io/Serializable;", "proxyEvents", "Ljava/util/HashMap;", "Lcom/facebook/appevents/AccessTokenAppIdPair;", "", "Lcom/facebook/appevents/AppEvent;", "Lkotlin/collections/HashMap;", "(Ljava/util/HashMap;)V", "readResolve", "", "Companion", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* renamed from: com.facebook.appevents.e0$a */
    /* loaded from: classes2-dex2jar.jar:com/facebook/appevents/e0$a.class */
    public static final class C0956a implements Serializable {

        /* renamed from: a */
        public final HashMap<C1071p, List<C1087r>> f2634a;

        public C0956a(HashMap<C1071p, List<C1087r>> hashMap) {
            l.e(hashMap, "proxyEvents");
            this.f2634a = hashMap;
        }

        private final Object readResolve() throws ObjectStreamException {
            return new C0955e0(this.f2634a);
        }
    }

    public C0955e0() {
        this.f2633a = new HashMap<>();
    }

    public C0955e0(HashMap<C1071p, List<C1087r>> hashMap) {
        l.e(hashMap, "appEventMap");
        HashMap<C1071p, List<C1087r>> hashMap2 = new HashMap<>();
        this.f2633a = hashMap2;
        hashMap2.putAll(hashMap);
    }

    private final Object writeReplace() throws ObjectStreamException {
        if (C1220a.m41623b(this)) {
            return null;
        }
        try {
            return new C0956a(this.f2633a);
        } catch (Throwable th) {
            C1220a.m41624a(th, this);
            return null;
        }
    }

    /* renamed from: a */
    public final void m41976a(C1071p c1071p, List<C1087r> list) {
        if (C1220a.m41623b(this)) {
            return;
        }
        try {
            l.e(c1071p, "accessTokenAppIdPair");
            l.e(list, "appEvents");
            if (!this.f2633a.containsKey(c1071p)) {
                this.f2633a.put(c1071p, i.a1(list));
                return;
            }
            List<C1087r> list2 = this.f2633a.get(c1071p);
            if (list2 == null) {
                return;
            }
            list2.addAll(list);
        } catch (Throwable th) {
            C1220a.m41624a(th, this);
        }
    }
}
