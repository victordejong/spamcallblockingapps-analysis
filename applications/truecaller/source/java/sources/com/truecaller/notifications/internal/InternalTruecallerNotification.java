package com.truecaller.notifications.internal;

import android.content.Context;
import android.graphics.Bitmap;
import android.net.Uri;
import android.text.Html;
import android.text.Spanned;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.truecaller.C2752R;
import com.truecaller.network.notification.NotificationScope;
import com.truecaller.network.notification.NotificationType;
import e.m.e.e0.s;
import e.m.e.g0.a;
import e.m.e.g0.b;
import e.m.e.g0.d;
import e.m.e.n;
import e.m.e.q;
import e.m.e.r;
import e.m.e.s;
import e.m.e.t;
import e.m.e.v;
import e.m.e.w;
import e.m.e.z;
import java.io.IOException;
import java.io.StringReader;
import java.util.ArrayList;
import java.util.ConcurrentModificationException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Objects;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1053m0.C17891a1;
import p193e.p194a.p1406z3.p1409i.AbstractC21873e;
import p193e.p194a.p1406z3.p1409i.C21869a;
import p193e.p194a.p682e.C12864a2;
import p193e.p194a.p682e.p699c2.C13197i0;
import p193e.p194a.p751f4.p761f.C13999c;
import p193e.p194a.p937j4.p939b.p941b.AbstractC15580f;
import s1.z.c.l;
import w3.c.a.a.a.h;
/* loaded from: classes11-dex2jar.jar:com/truecaller/notifications/internal/InternalTruecallerNotification.class */
public class InternalTruecallerNotification extends C13197i0 implements AbstractC15580f, Comparable<InternalTruecallerNotification> {

    /* renamed from: j */
    public C13999c.C14000a f14111j;

    /* renamed from: k */
    public NotificationState f14112k;

    /* renamed from: l */
    public Integer f14113l;

    /* renamed from: m */
    public List<NotificationActionHistoryItem> f14114m;

    /* loaded from: classes11-dex2jar.jar:com/truecaller/notifications/internal/InternalTruecallerNotification$NotificationActionHistoryItem.class */
    public static class NotificationActionHistoryItem {

        /* renamed from: a */
        public Long f14115a;

        /* renamed from: b */
        public Action f14116b = Action.NONE;

        /* renamed from: c */
        public String f14117c;

        /* loaded from: classes11-dex2jar.jar:com/truecaller/notifications/internal/InternalTruecallerNotification$NotificationActionHistoryItem$Action.class */
        public enum Action {
            NONE(0),
            VIEWED(1),
            ACCEPTED(2),
            DENIED(3),
            REPLIED(4);
            
            private long val;

            Action(long j) {
                this.val = 0L;
                this.val = j;
            }

            public Long getVal() {
                return Long.valueOf(this.val);
            }
        }
    }

    /* loaded from: classes11-dex2jar.jar:com/truecaller/notifications/internal/InternalTruecallerNotification$NotificationState.class */
    public enum NotificationState {
        NEW(1),
        VIEWED(2);
        
        private final Integer value;

        NotificationState(Integer num) {
            this.value = num;
        }

        public static NotificationState getFromValue(Integer num) throws Exception {
            NotificationState[] values = values();
            for (int i = 0; i < 2; i++) {
                NotificationState notificationState = values[i];
                if (notificationState.getValue() == num) {
                    return notificationState;
                }
            }
            throw new Exception("Invalid NotificationState value '" + num + "'");
        }

        public Integer getValue() {
            return this.value;
        }
    }

    public InternalTruecallerNotification(C13999c.C14000a c14000a) {
        this.f14114m = new ArrayList();
        this.f14111j = c14000a;
        this.f14112k = NotificationState.NEW;
        this.f14113l = 1;
    }

    public InternalTruecallerNotification(t tVar) throws Exception {
        this.f14114m = new ArrayList();
        this.f14111j = m34848i(tVar.m("d"));
        this.f14112k = NotificationState.getFromValue(Integer.valueOf(C12864a2.m22535w("s", tVar)));
        this.f14113l = Integer.valueOf(tVar.n("m") ? C12864a2.m22535w("m", tVar) : 1);
        q l = tVar.l("a");
        if (l != null) {
            if (l instanceof n) {
                this.f14114m = m34839t(l.c());
                return;
            } else if (l instanceof w) {
                try {
                    a aVar = new a(new StringReader(l.g()));
                    q a = v.a(aVar);
                    Objects.requireNonNull(a);
                    if (!(a instanceof s) && aVar.D0() != b.j) {
                        throw new z("Did not consume the entire document.");
                    }
                    if (a instanceof n) {
                        this.f14114m = m34839t(a.c());
                        return;
                    }
                } catch (IOException e) {
                    throw new r(e);
                } catch (NumberFormatException e2) {
                    throw new z(e2);
                } catch (d e3) {
                    throw new z(e3);
                }
            }
        }
        this.f14114m = new ArrayList();
    }

    public InternalTruecallerNotification(t tVar, NotificationState notificationState, int i) {
        this.f14114m = new ArrayList();
        this.f14111j = m34848i(tVar);
        this.f14112k = notificationState;
        this.f14113l = Integer.valueOf(i);
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x005a, code lost:
        if (r7.f14111j.compareTo(r0.f14111j) > 0) goto L11;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public InternalTruecallerNotification(java.util.Collection<com.truecaller.notifications.internal.InternalTruecallerNotification> r5, java.util.Map<java.lang.String, java.lang.String> r6) {
        /*
            Method dump skipped, instructions count: 246
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.truecaller.notifications.internal.InternalTruecallerNotification.<init>(java.util.Collection, java.util.Map):void");
    }

    /* renamed from: t */
    public static List<NotificationActionHistoryItem> m34839t(n nVar) {
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < nVar.size(); i++) {
            t i2 = nVar.i(i);
            NotificationActionHistoryItem notificationActionHistoryItem = new NotificationActionHistoryItem();
            if (i2.n("iurl")) {
                notificationActionHistoryItem.f14117c = C12864a2.m22587G("iurl", i2);
            }
            if (i2.n("time")) {
                notificationActionHistoryItem.f14115a = Long.valueOf(C12864a2.m22532z("time", i2));
            }
            if (i2.n("act")) {
                int m22532z = (int) C12864a2.m22532z("act", i2);
                if (m22532z == 0) {
                    notificationActionHistoryItem.f14116b = NotificationActionHistoryItem.Action.NONE;
                } else if (m22532z == 1) {
                    notificationActionHistoryItem.f14116b = NotificationActionHistoryItem.Action.VIEWED;
                } else if (m22532z == 2) {
                    notificationActionHistoryItem.f14116b = NotificationActionHistoryItem.Action.ACCEPTED;
                } else if (m22532z == 3) {
                    notificationActionHistoryItem.f14116b = NotificationActionHistoryItem.Action.DENIED;
                } else if (m22532z == 4) {
                    notificationActionHistoryItem.f14116b = NotificationActionHistoryItem.Action.REPLIED;
                }
            }
            arrayList.add(notificationActionHistoryItem);
        }
        return arrayList;
    }

    @Override // p193e.p194a.p937j4.p939b.p941b.AbstractC15580f
    /* renamed from: a */
    public t mo18609a() {
        s sVar;
        t tVar = new t();
        C13999c.C14000a c14000a = this.f14111j;
        if (c14000a == null) {
            sVar = null;
        } else {
            s tVar2 = new t();
            C13999c.C14000a.C14001a c14001a = c14000a.f40461a;
            if (c14001a != null) {
                t tVar3 = new t();
                tVar3.i("i", Long.valueOf(c14001a.f40463a));
                tVar3.i("s", Integer.valueOf(c14001a.f40465c.value));
                tVar3.i("t", Integer.valueOf(c14001a.f40464b.value));
                tVar3.i(AbstractC2405c.f7629a, Long.valueOf(c14001a.f40466d));
                ((t) tVar2).a.put("e", tVar3);
            }
            sVar = tVar2;
            if (c14000a.f40462b != null) {
                t tVar4 = new t();
                for (String str : c14000a.f40462b.keySet()) {
                    tVar4.j(str, c14000a.f40462b.get(str));
                }
                ((t) tVar2).a.put("a", tVar4);
                sVar = tVar2;
            }
        }
        e.m.e.e0.s sVar2 = tVar.a;
        s sVar3 = sVar;
        if (sVar == null) {
            sVar3 = s.a;
        }
        sVar2.put("d", sVar3);
        tVar.i("s", this.f14112k.getValue());
        tVar.i("m", this.f14113l);
        List<NotificationActionHistoryItem> list = this.f14114m;
        n nVar = null;
        if (list != null) {
            if (list.size() != 0) {
                n nVar2 = new n();
                Iterator<NotificationActionHistoryItem> it = list.iterator();
                while (true) {
                    nVar = nVar2;
                    if (!it.hasNext()) {
                        break;
                    }
                    NotificationActionHistoryItem next = it.next();
                    Objects.requireNonNull(next);
                    t tVar5 = new t();
                    Long l = next.f14115a;
                    if (l != null) {
                        tVar5.i("time", l);
                    }
                    String str2 = next.f14117c;
                    if (str2 != null) {
                        tVar5.j("iurl", str2);
                    }
                    tVar5.i("act", next.f14116b.getVal());
                    nVar2.a.add(tVar5);
                }
            } else {
                nVar = null;
            }
        }
        if (nVar != null && nVar.size() > 0) {
            tVar.a.put("a", nVar);
        }
        return tVar;
    }

    @Override // java.lang.Comparable
    public int compareTo(InternalTruecallerNotification internalTruecallerNotification) {
        InternalTruecallerNotification internalTruecallerNotification2 = internalTruecallerNotification;
        Objects.requireNonNull(internalTruecallerNotification2);
        return this.f14111j.compareTo(internalTruecallerNotification2.f14111j);
    }

    @Override // p193e.p194a.p682e.p699c2.C13197i0
    /* renamed from: d */
    public String mo18608d(Context context) {
        String m34847j = m34847j("s");
        if (!h.m(m34847j)) {
            m34847j = "";
        }
        return m34847j;
    }

    @Override // p193e.p194a.p682e.p699c2.C13197i0
    /* renamed from: e */
    public Object mo18607e() {
        return m34845n();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof InternalTruecallerNotification) {
            return this.f14111j.equals(((InternalTruecallerNotification) obj).f14111j);
        }
        return false;
    }

    @Override // p193e.p194a.p682e.p699c2.C13197i0
    /* renamed from: f */
    public Bitmap mo18606f(Context context) {
        String m34845n = m34845n();
        AbstractC21873e.C21875b c21875b = AbstractC21873e.C21875b.f60766c;
        l.e(c21875b, "size");
        Uri uri = null;
        if (m34845n != null) {
            if (m34845n.length() == 0) {
                m34845n = null;
            }
            uri = null;
            if (m34845n != null) {
                uri = Uri.parse(m34845n);
            }
        }
        C21869a c21869a = new C21869a(uri, c21875b);
        c21869a.f60757a = true;
        return C17891a1.C17902k.m15656N0(c21869a, context);
    }

    @Override // p193e.p194a.p682e.p699c2.C13197i0
    /* renamed from: h */
    public String mo18605h(Context context) {
        String m34847j = m34847j("t");
        if (!h.m(m34847j)) {
            m34847j = "No Title";
        }
        return m34847j;
    }

    public int hashCode() {
        return this.f14111j.hashCode() + 31;
    }

    @Deprecated
    /* renamed from: i */
    public final C13999c.C14000a m34848i(t tVar) {
        if (tVar == null) {
            return null;
        }
        C13999c.C14000a c14000a = new C13999c.C14000a();
        t m = tVar.m("e");
        C13999c.C14000a.C14001a c14001a = new C13999c.C14000a.C14001a();
        c14001a.f40463a = C12864a2.m22532z("i", m);
        c14001a.f40464b = NotificationType.valueOf(C12864a2.m22535w("t", m));
        c14001a.f40465c = NotificationScope.valueOf(C12864a2.m22535w("s", m));
        c14001a.f40466d = C12864a2.m22532z(AbstractC2405c.f7629a, m);
        c14000a.f40461a = c14001a;
        t m2 = tVar.m("a");
        HashMap hashMap = new HashMap();
        e.m.e.e0.s sVar = m2.k().a;
        s.e eVar = sVar.e.d;
        int i = sVar.d;
        while (true) {
            if (!(eVar != sVar.e)) {
                c14000a.f40462b = hashMap;
                return c14000a;
            } else if (eVar == sVar.e) {
                throw new NoSuchElementException();
            } else {
                if (sVar.d != i) {
                    throw new ConcurrentModificationException();
                }
                s.e eVar2 = eVar.d;
                q qVar = (q) eVar.getValue();
                String str = (String) eVar.getKey();
                Objects.requireNonNull(qVar);
                hashMap.put(str, qVar instanceof e.m.e.s ? "" : qVar.g());
                eVar = eVar2;
            }
        }
    }

    /* renamed from: j */
    public String m34847j(String str) {
        Map<String, String> map = this.f14111j.f40462b;
        if (map == null) {
            return null;
        }
        return map.get(str);
    }

    /* renamed from: m */
    public String m34846m() {
        return m34847j("f");
    }

    /* renamed from: n */
    public String m34845n() {
        return m34847j("i");
    }

    /* renamed from: o */
    public String m34844o() {
        return m34847j("n");
    }

    /* renamed from: p */
    public Long m34843p() {
        return Long.valueOf(this.f14111j.f40461a.f40466d);
    }

    /* renamed from: q */
    public NotificationType m34842q() {
        return this.f14111j.f40461a.f40464b;
    }

    /* renamed from: r */
    public int m34841r() {
        switch (m34842q().ordinal()) {
            case 7:
            case 8:
            case 9:
                return C2752R.C2753drawable.ic_notifications_contact;
            case 10:
                return C2752R.C2753drawable.ic_notifications_premium;
            default:
                return C2752R.C2753drawable.ic_notifications_announcement;
        }
    }

    /* renamed from: s */
    public String m34840s() {
        return m34847j("u");
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("{d:");
        m8728C.append(this.f14111j);
        m8728C.append(", a:");
        m8728C.append(this.f14112k);
        m8728C.append("}");
        return m8728C.toString();
    }

    /* renamed from: u */
    public void m34838u(Context context) {
        String str;
        CharSequence charSequence;
        if (h.m(m34846m())) {
            str = m34846m();
            charSequence = mo18605h(context);
        } else {
            str = mo18605h(context);
            charSequence = mo18608d(context);
        }
        String m21997c = C13197i0.m21997c(false, str);
        Spanned fromHtml = m21997c == null ? null : Html.fromHtml(m21997c);
        CharSequence charSequence2 = charSequence;
        if (h.m(charSequence)) {
            String m21997c2 = C13197i0.m21997c(false, charSequence);
            charSequence2 = m21997c2 == null ? null : Html.fromHtml(m21997c2);
        }
        this.f38328g = true;
        this.f38329h = fromHtml;
        this.f38330i = charSequence2;
    }
}
