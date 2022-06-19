package com.google.android.play.core.assetpacks;

import android.content.Intent;
import android.os.Bundle;
import com.google.android.play.core.internal.AbstractC8509p0;
import com.google.android.play.core.internal.C8466a;
import com.google.android.play.core.internal.C8521v0;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Executor;
import java.util.concurrent.locks.ReentrantLock;
/* renamed from: com.google.android.play.core.assetpacks.z0 */
/* loaded from: classes2-dex2jar.jar:com/google/android/play/core/assetpacks/z0.class */
public final class C8459z0 {

    /* renamed from: a */
    private static final C8466a f38000a = new C8466a("ExtractorSessionStoreView");

    /* renamed from: b */
    private final C8446v f38001b;

    /* renamed from: c */
    private final AbstractC8509p0<AbstractC8433r2> f38002c;

    /* renamed from: d */
    private final C8415n0 f38003d;

    /* renamed from: e */
    private final AbstractC8509p0<Executor> f38004e;

    /* renamed from: f */
    private final Map<Integer, C8450w0> f38005f = new HashMap();

    /* renamed from: g */
    private final ReentrantLock f38006g = new ReentrantLock();

    public C8459z0(C8446v c8446v, AbstractC8509p0<AbstractC8433r2> abstractC8509p0, C8415n0 c8415n0, AbstractC8509p0<Executor> abstractC8509p02) {
        this.f38001b = c8446v;
        this.f38002c = abstractC8509p0;
        this.f38003d = c8415n0;
        this.f38004e = abstractC8509p02;
    }

    /* renamed from: p */
    private final Map<String, C8450w0> m3585p(List<String> list) {
        return (Map) m3584q(new AbstractC8456y0(this, list, null) { // from class: com.google.android.play.core.assetpacks.s0

            /* renamed from: a */
            private final C8459z0 f37918a;

            /* renamed from: b */
            private final List f37919b;

            /* renamed from: c */
            private final /* synthetic */ int f37920c = 1;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f37918a = this;
                this.f37919b = list;
            }

            @Override // com.google.android.play.core.assetpacks.AbstractC8456y0
            /* renamed from: a */
            public final Object mo3611a() {
                return this.f37920c != 0 ? this.f37918a.m3592i(this.f37919b) : this.f37918a.m3593h(this.f37919b);
            }
        });
    }

    /* renamed from: q */
    private final <T> T m3584q(AbstractC8456y0<T> abstractC8456y0) {
        try {
            m3600a();
            return abstractC8456y0.mo3611a();
        } finally {
            m3599b();
        }
    }

    /* renamed from: r */
    private final C8450w0 m3583r(int i) {
        Map<Integer, C8450w0> map = this.f38005f;
        Integer valueOf = Integer.valueOf(i);
        C8450w0 c8450w0 = map.get(valueOf);
        if (c8450w0 != null) {
            return c8450w0;
        }
        throw new C8369bk(String.format("Could not find session %d while trying to get it", valueOf), i);
    }

    /* renamed from: s */
    private static String m3582s(Bundle bundle) {
        ArrayList<String> stringArrayList = bundle.getStringArrayList("pack_names");
        if (stringArrayList == null || stringArrayList.isEmpty()) {
            throw new C8369bk("Session without pack received.");
        }
        return stringArrayList.get(0);
    }

    /* renamed from: t */
    private static <T> List<T> m3581t(List<T> list) {
        List<T> list2 = list;
        if (list == null) {
            list2 = Collections.emptyList();
        }
        return list2;
    }

    /* renamed from: a */
    public final void m3600a() {
        this.f38006g.lock();
    }

    /* renamed from: b */
    public final void m3599b() {
        this.f38006g.unlock();
    }

    /* renamed from: c */
    public final Map<Integer, C8450w0> m3598c() {
        return this.f38005f;
    }

    /* renamed from: d */
    public final boolean m3597d(Bundle bundle) {
        return ((Boolean) m3584q(new C8423p0(this, bundle, null))).booleanValue();
    }

    /* renamed from: e */
    public final boolean m3596e(Bundle bundle) {
        return ((Boolean) m3584q(new C8423p0(this, bundle))).booleanValue();
    }

    /* renamed from: f */
    public final void m3595f(String str, int i, long j) {
        m3584q(new AbstractC8456y0(this, str, i, j) { // from class: com.google.android.play.core.assetpacks.q0

            /* renamed from: a */
            private final C8459z0 f37887a;

            /* renamed from: b */
            private final String f37888b;

            /* renamed from: c */
            private final int f37889c;

            /* renamed from: d */
            private final long f37890d;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f37887a = this;
                this.f37888b = str;
                this.f37889c = i;
                this.f37890d = j;
            }

            @Override // com.google.android.play.core.assetpacks.AbstractC8456y0
            /* renamed from: a */
            public final Object mo3611a() {
                this.f37887a.m3589l(this.f37888b, this.f37889c, this.f37890d);
                return null;
            }
        });
    }

    /* renamed from: g */
    public final void m3594g(int i) {
        m3584q(new C8431r0(this, i));
    }

    /* renamed from: h */
    public final /* synthetic */ Map m3593h(List list) {
        int i;
        Map<String, C8450w0> m3585p = m3585p(list);
        HashMap hashMap = new HashMap();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            String str = (String) it.next();
            C8450w0 c8450w0 = m3585p.get(str);
            if (c8450w0 == null) {
                i = 8;
            } else {
                if (C8392h1.m3739d(c8450w0.f37969c.f37957c)) {
                    try {
                        c8450w0.f37969c.f37957c = 6;
                        this.f38004e.m3482a().execute(new Runnable(this, c8450w0) { // from class: com.google.android.play.core.assetpacks.t0

                            /* renamed from: d */
                            private final C8459z0 f37927d;

                            /* renamed from: e */
                            private final C8450w0 f37928e;

                            /* JADX INFO: Access modifiers changed from: package-private */
                            {
                                this.f37927d = this;
                                this.f37928e = c8450w0;
                            }

                            @Override // java.lang.Runnable
                            public final void run() {
                                this.f37927d.m3594g(this.f37928e.f37967a);
                            }
                        });
                        this.f38003d.m3717a(str);
                    } catch (C8369bk e) {
                        f38000a.m3564d("Session %d with pack %s does not exist, no need to cancel.", Integer.valueOf(c8450w0.f37967a), str);
                    }
                }
                i = c8450w0.f37969c.f37957c;
            }
            hashMap.put(str, Integer.valueOf(i));
        }
        return hashMap;
    }

    /* renamed from: i */
    public final /* synthetic */ Map m3592i(List list) {
        HashMap hashMap = new HashMap();
        for (C8450w0 c8450w0 : this.f38005f.values()) {
            String str = c8450w0.f37969c.f37955a;
            if (list.contains(str)) {
                C8450w0 c8450w02 = (C8450w0) hashMap.get(str);
                if ((c8450w02 == null ? -1 : c8450w02.f37967a) < c8450w0.f37967a) {
                    hashMap.put(str, c8450w0);
                }
            }
        }
        return hashMap;
    }

    /* renamed from: j */
    public final /* synthetic */ Boolean m3591j(Bundle bundle) {
        int i = bundle.getInt("session_id");
        if (i == 0) {
            return Boolean.TRUE;
        }
        Map<Integer, C8450w0> map = this.f38005f;
        Integer valueOf = Integer.valueOf(i);
        if (!map.containsKey(valueOf)) {
            return Boolean.TRUE;
        }
        C8450w0 c8450w0 = this.f38005f.get(valueOf);
        if (c8450w0.f37969c.f37957c == 6) {
            return Boolean.FALSE;
        }
        return Boolean.valueOf(!C8392h1.m3736g(c8450w0.f37969c.f37957c, bundle.getInt(C8521v0.m3456e("status", m3582s(bundle)))));
    }

    /* renamed from: k */
    public final /* synthetic */ Boolean m3590k(Bundle bundle) {
        int i = bundle.getInt("session_id");
        if (i == 0) {
            return Boolean.FALSE;
        }
        Map<Integer, C8450w0> map = this.f38005f;
        Integer valueOf = Integer.valueOf(i);
        if (map.containsKey(valueOf)) {
            C8450w0 m3583r = m3583r(i);
            int i2 = bundle.getInt(C8521v0.m3456e("status", m3583r.f37969c.f37955a));
            if (C8392h1.m3736g(m3583r.f37969c.f37957c, i2)) {
                f38000a.m3567a("Found stale update for session %s with status %d.", valueOf, Integer.valueOf(m3583r.f37969c.f37957c));
                C8447v0 c8447v0 = m3583r.f37969c;
                String str = c8447v0.f37955a;
                int i3 = c8447v0.f37957c;
                if (i3 == 4) {
                    this.f38002c.m3482a().mo3682d(i, str);
                } else if (i3 == 5) {
                    this.f38002c.m3482a().mo3684b(i);
                } else if (i3 == 6) {
                    this.f38002c.m3482a().mo3679g(Arrays.asList(str));
                }
            } else {
                m3583r.f37969c.f37957c = i2;
                if (C8392h1.m3738e(i2)) {
                    m3594g(i);
                    this.f38003d.m3717a(m3583r.f37969c.f37955a);
                } else {
                    for (C8453x0 c8453x0 : m3583r.f37969c.f37959e) {
                        ArrayList parcelableArrayList = bundle.getParcelableArrayList(C8521v0.m3455f("chunk_intents", m3583r.f37969c.f37955a, c8453x0.f37981a));
                        if (parcelableArrayList != null) {
                            for (int i4 = 0; i4 < parcelableArrayList.size(); i4++) {
                                if (parcelableArrayList.get(i4) != null && ((Intent) parcelableArrayList.get(i4)).getData() != null) {
                                    c8453x0.f37984d.get(i4).f37943a = true;
                                }
                            }
                        }
                    }
                }
            }
        } else {
            String m3582s = m3582s(bundle);
            long j = bundle.getLong(C8521v0.m3456e("pack_version", m3582s));
            int i5 = bundle.getInt(C8521v0.m3456e("status", m3582s));
            long j2 = bundle.getLong(C8521v0.m3456e("total_bytes_to_download", m3582s));
            ArrayList<String> stringArrayList = bundle.getStringArrayList(C8521v0.m3456e("slice_ids", m3582s));
            ArrayList arrayList = new ArrayList();
            for (String str2 : m3581t(stringArrayList)) {
                ArrayList parcelableArrayList2 = bundle.getParcelableArrayList(C8521v0.m3455f("chunk_intents", m3582s, str2));
                ArrayList arrayList2 = new ArrayList();
                Iterator it = m3581t(parcelableArrayList2).iterator();
                while (true) {
                    boolean z = true;
                    if (!it.hasNext()) {
                        break;
                    }
                    if (((Intent) it.next()) == null) {
                        z = false;
                    }
                    arrayList2.add(new C8443u0(z));
                }
                String string = bundle.getString(C8521v0.m3455f("uncompressed_hash_sha256", m3582s, str2));
                long j3 = bundle.getLong(C8521v0.m3455f("uncompressed_size", m3582s, str2));
                int i6 = bundle.getInt(C8521v0.m3455f("patch_format", m3582s, str2), 0);
                arrayList.add(i6 != 0 ? new C8453x0(str2, string, j3, arrayList2, 0, i6) : new C8453x0(str2, string, j3, arrayList2, bundle.getInt(C8521v0.m3455f("compression_format", m3582s, str2), 0), 0));
            }
            this.f38005f.put(Integer.valueOf(i), new C8450w0(i, bundle.getInt("app_version_code"), new C8447v0(m3582s, j, i5, j2, arrayList)));
        }
        return Boolean.TRUE;
    }

    /* renamed from: l */
    public final /* synthetic */ void m3589l(String str, int i, long j) {
        C8450w0 c8450w0 = m3585p(Arrays.asList(str)).get(str);
        if (c8450w0 == null || C8392h1.m3738e(c8450w0.f37969c.f37957c)) {
            f38000a.m3566b(String.format("Could not find pack %s while trying to complete it", str), new Object[0]);
        }
        this.f38001b.m3660b(str, i, j);
        c8450w0.f37969c.f37957c = 4;
    }

    /* renamed from: m */
    public final /* synthetic */ void m3588m(int i) {
        m3583r(i).f37969c.f37957c = 5;
    }

    /* renamed from: n */
    public final /* synthetic */ void m3587n(int i) {
        C8450w0 m3583r = m3583r(i);
        if (C8392h1.m3738e(m3583r.f37969c.f37957c)) {
            C8446v c8446v = this.f38001b;
            C8447v0 c8447v0 = m3583r.f37969c;
            c8446v.m3660b(c8447v0.f37955a, m3583r.f37968b, c8447v0.f37956b);
            C8447v0 c8447v02 = m3583r.f37969c;
            int i2 = c8447v02.f37957c;
            if (i2 != 5 && i2 != 6) {
                return;
            }
            this.f38001b.m3659c(c8447v02.f37955a, m3583r.f37968b, c8447v02.f37956b);
            return;
        }
        throw new C8369bk(String.format("Could not safely delete session %d because it is not in a terminal state.", Integer.valueOf(i)), i);
    }

    /* renamed from: o */
    public final void m3586o(int i) {
        m3584q(new C8431r0(this, i, null));
    }
}
