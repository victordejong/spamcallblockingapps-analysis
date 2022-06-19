package p000;

import android.annotation.SuppressLint;
import android.content.ComponentName;
import android.content.Context;
import android.content.IntentFilter;
import android.content.IntentSender;
import android.net.Uri;
import android.os.Bundle;
import android.os.Looper;
import android.support.p001v4.media.session.MediaSessionCompat;
import android.text.TextUtils;
import android.util.Log;
import com.google.common.util.concurrent.ListenableFuture;
import com.mopub.common.Constants;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;
import java.util.Objects;
import p000.C1266cz;
import zy;
/* renamed from: dz */
/* loaded from: classes-dex2jar.jar:dz.class */
public final class C1324dz {

    /* renamed from: c */
    public static final boolean f6157c = Log.isLoggable("MediaRouter", 3);

    /* renamed from: d */
    public static e f6158d;

    /* renamed from: a */
    public final Context f6159a;

    /* renamed from: b */
    public final ArrayList<C1327c> f6160b = new ArrayList<>();

    /* renamed from: dz$b */
    /* loaded from: classes-dex2jar.jar:dz$b.class */
    public static abstract class AbstractC1326b {
        /* renamed from: a */
        public void m2384a(C1324dz c1324dz, C1331h c1331h) {
        }

        /* renamed from: b */
        public void m2383b(C1324dz c1324dz, C1331h c1331h) {
        }

        /* renamed from: c */
        public void m2382c(C1324dz c1324dz, C1331h c1331h) {
        }

        /* renamed from: d */
        public void m2381d(C1324dz c1324dz, C1332i c1332i) {
        }

        /* renamed from: e */
        public abstract void m2380e(C1324dz c1324dz, C1332i c1332i);

        /* renamed from: f */
        public void m2379f(C1324dz c1324dz, C1332i c1332i) {
        }

        /* renamed from: g */
        public void m2378g(C1324dz c1324dz, C1332i c1332i) {
        }

        @Deprecated
        /* renamed from: h */
        public void m2377h(C1324dz c1324dz, C1332i c1332i) {
        }

        /* renamed from: i */
        public void m2376i(C1324dz c1324dz, C1332i c1332i, int i) {
            m2377h(c1324dz, c1332i);
        }

        /* renamed from: j */
        public void m2375j(C1324dz c1324dz, C1332i c1332i, int i, C1332i c1332i2) {
            m2376i(c1324dz, c1332i, i);
        }

        @Deprecated
        /* renamed from: k */
        public void m2374k(C1324dz c1324dz, C1332i c1332i) {
        }

        /* renamed from: l */
        public void m2373l(C1324dz c1324dz, C1332i c1332i, int i) {
            m2374k(c1324dz, c1332i);
        }

        /* renamed from: m */
        public void m2372m(C1324dz c1324dz, C1332i c1332i) {
        }
    }

    /* renamed from: dz$c */
    /* loaded from: classes-dex2jar.jar:dz$c.class */
    public static final class C1327c {

        /* renamed from: a */
        public final C1324dz f6161a;

        /* renamed from: b */
        public final AbstractC1326b f6162b;

        /* renamed from: c */
        public C1266cz f6163c = C1266cz.f5728c;

        /* renamed from: d */
        public int f6164d;

        public C1327c(C1324dz c1324dz, AbstractC1326b abstractC1326b) {
            this.f6161a = c1324dz;
            this.f6162b = abstractC1326b;
        }

        /* renamed from: a */
        public boolean m2371a(C1332i c1332i, int i, C1332i c1332i2, int i2) {
            if ((this.f6164d & 2) != 0 || c1332i.m2349D(this.f6163c)) {
                return true;
            }
            if (C1324dz.m2397n() && c1332i.m2320v() && i == 262 && i2 == 3 && c1332i2 != null) {
                return !c1332i2.m2320v();
            }
            return false;
        }
    }

    /* renamed from: dz$d */
    /* loaded from: classes-dex2jar.jar:dz$d.class */
    public static abstract class AbstractC1328d {
        @SuppressLint({"UnknownNullness"})
        /* renamed from: a */
        public void m2370a(String str, Bundle bundle) {
        }

        /* renamed from: b */
        public void m2369b(Bundle bundle) {
        }
    }

    /* renamed from: dz$f */
    /* loaded from: classes-dex2jar.jar:dz$f.class */
    public interface AbstractC1329f {
        /* renamed from: a */
        ListenableFuture<Void> m2368a(C1332i c1332i, C1332i c1332i2);
    }

    /* renamed from: dz$g */
    /* loaded from: classes-dex2jar.jar:dz$g.class */
    public static final class C1330g {

        /* renamed from: a */
        public final zy.e f6165a;

        /* renamed from: b */
        public final int f6166b;

        /* renamed from: c */
        public final C1332i f6167c;

        /* renamed from: d */
        public final C1332i f6168d;

        /* renamed from: e */
        public final C1332i f6169e;

        /* renamed from: f */
        public final List<zy.b.c> f6170f;

        /* renamed from: g */
        public final WeakReference<e> f6171g;

        /* renamed from: h */
        public ListenableFuture<Void> f6172h = null;

        /* renamed from: i */
        public boolean f6173i = false;

        /* renamed from: j */
        public boolean f6174j = false;

        public C1330g(e eVar, C1332i c1332i, zy.e eVar2, int i, C1332i c1332i2, Collection<zy.b.c> collection) {
            this.f6171g = new WeakReference<>(eVar);
            this.f6168d = c1332i;
            this.f6165a = eVar2;
            this.f6166b = i;
            this.f6167c = eVar.r;
            this.f6169e = c1332i2;
            this.f6170f = collection == null ? null : new ArrayList(collection);
            eVar.k.postDelayed(new my(this), 15000L);
        }

        /* renamed from: a */
        public void m2367a() {
            if (this.f6173i || this.f6174j) {
                return;
            }
            this.f6174j = true;
            zy.e eVar = this.f6165a;
            if (eVar == null) {
                return;
            }
            eVar.i(0);
            this.f6165a.e();
        }

        /* renamed from: b */
        public void m2365c() {
            ListenableFuture<Void> listenableFuture;
            C1324dz.m2407d();
            if (this.f6173i || this.f6174j) {
                return;
            }
            e eVar = this.f6171g.get();
            if (eVar == null || eVar.A != this || ((listenableFuture = this.f6172h) != null && listenableFuture.isCancelled())) {
                m2367a();
                return;
            }
            this.f6173i = true;
            eVar.A = null;
            m2361g();
            m2363e();
        }

        /* renamed from: e */
        public final void m2363e() {
            e eVar = this.f6171g.get();
            if (eVar == null) {
                return;
            }
            C1332i c1332i = this.f6168d;
            eVar.r = c1332i;
            eVar.s = this.f6165a;
            C1332i c1332i2 = this.f6169e;
            if (c1332i2 == null) {
                eVar.k.m2390c(262, new ka(this.f6167c, c1332i), this.f6166b);
            } else {
                eVar.k.m2390c(264, new ka(c1332i2, c1332i), this.f6166b);
            }
            eVar.v.clear();
            eVar.A();
            eVar.L();
            List<zy.b.c> list = this.f6170f;
            if (list == null) {
                return;
            }
            eVar.r.m2342K(list);
        }

        /* renamed from: f */
        public void m2362f(ListenableFuture<Void> listenableFuture) {
            e eVar = this.f6171g.get();
            if (eVar == null || eVar.A != this) {
                Log.w("MediaRouter", "Router is released. Cancel transfer");
                m2367a();
            } else if (this.f6172h != null) {
                throw new IllegalStateException("future is already set");
            } else {
                this.f6172h = listenableFuture;
                gy gyVar = new gy(this);
                dz$e$b dz_e_b = eVar.k;
                Objects.requireNonNull(dz_e_b);
                listenableFuture.addListener(gyVar, new ny(dz_e_b));
            }
        }

        /* renamed from: g */
        public final void m2361g() {
            e eVar = this.f6171g.get();
            if (eVar != null) {
                C1332i c1332i = eVar.r;
                C1332i c1332i2 = this.f6167c;
                if (c1332i != c1332i2) {
                    return;
                }
                eVar.k.m2390c(263, c1332i2, this.f6166b);
                zy.e eVar2 = eVar.s;
                if (eVar2 != null) {
                    eVar2.i(this.f6166b);
                    eVar.s.e();
                }
                if (!eVar.v.isEmpty()) {
                    for (zy.e eVar3 : eVar.v.values()) {
                        eVar3.i(this.f6166b);
                        eVar3.e();
                    }
                    eVar.v.clear();
                }
                eVar.s = null;
            }
        }
    }

    /* renamed from: dz$h */
    /* loaded from: classes-dex2jar.jar:dz$h.class */
    public static final class C1331h {

        /* renamed from: a */
        public final zy f6175a;

        /* renamed from: b */
        public final List<C1332i> f6176b = new ArrayList();

        /* renamed from: c */
        public final zy.d f6177c;

        /* renamed from: d */
        public C0225az f6178d;

        public C1331h(zy zyVar) {
            this.f6175a = zyVar;
            this.f6177c = zyVar.r();
        }

        /* renamed from: a */
        public C1332i m2360a(String str) {
            int size = this.f6176b.size();
            for (int i = 0; i < size; i++) {
                if (this.f6176b.get(i).f6180b.equals(str)) {
                    return this.f6176b.get(i);
                }
            }
            return null;
        }

        /* renamed from: b */
        public int m2359b(String str) {
            int size = this.f6176b.size();
            for (int i = 0; i < size; i++) {
                if (this.f6176b.get(i).f6180b.equals(str)) {
                    return i;
                }
            }
            return -1;
        }

        /* renamed from: c */
        public ComponentName m2358c() {
            return this.f6177c.a();
        }

        /* renamed from: d */
        public String m2357d() {
            return this.f6177c.b();
        }

        /* renamed from: e */
        public zy m2356e() {
            C1324dz.m2407d();
            return this.f6175a;
        }

        /* renamed from: f */
        public List<C1332i> m2355f() {
            C1324dz.m2407d();
            return Collections.unmodifiableList(this.f6176b);
        }

        /* renamed from: g */
        public boolean m2354g() {
            C0225az c0225az = this.f6178d;
            return c0225az != null && c0225az.m5831e();
        }

        /* renamed from: h */
        public boolean m2353h(C0225az c0225az) {
            if (this.f6178d != c0225az) {
                this.f6178d = c0225az;
                return true;
            }
            return false;
        }

        public String toString() {
            return "MediaRouter.RouteProviderInfo{ packageName=" + m2357d() + " }";
        }
    }

    /* renamed from: dz$i */
    /* loaded from: classes-dex2jar.jar:dz$i.class */
    public static class C1332i {

        /* renamed from: a */
        public final C1331h f6179a;

        /* renamed from: b */
        public final String f6180b;

        /* renamed from: c */
        public final String f6181c;

        /* renamed from: d */
        public String f6182d;

        /* renamed from: e */
        public String f6183e;

        /* renamed from: f */
        public Uri f6184f;

        /* renamed from: g */
        public boolean f6185g;

        /* renamed from: h */
        public int f6186h;

        /* renamed from: i */
        public boolean f6187i;

        /* renamed from: k */
        public int f6189k;

        /* renamed from: l */
        public int f6190l;

        /* renamed from: m */
        public int f6191m;

        /* renamed from: n */
        public int f6192n;

        /* renamed from: o */
        public int f6193o;

        /* renamed from: p */
        public int f6194p;

        /* renamed from: r */
        public Bundle f6196r;

        /* renamed from: s */
        public IntentSender f6197s;

        /* renamed from: t */
        public xy f6198t;

        /* renamed from: v */
        public Map<String, zy.b.c> f6200v;

        /* renamed from: j */
        public final ArrayList<IntentFilter> f6188j = new ArrayList<>();

        /* renamed from: q */
        public int f6195q = -1;

        /* renamed from: u */
        public List<C1332i> f6199u = new ArrayList();

        /* renamed from: dz$i$a */
        /* loaded from: classes-dex2jar.jar:dz$i$a.class */
        public static final class C1333a {

            /* renamed from: a */
            public final zy.b.c f6201a;

            public C1333a(zy.b.c cVar) {
                this.f6201a = cVar;
            }

            /* renamed from: a */
            public int m2315a() {
                zy.b.c cVar = this.f6201a;
                return cVar != null ? cVar.c() : 1;
            }

            /* renamed from: b */
            public boolean m2314b() {
                zy.b.c cVar = this.f6201a;
                return cVar != null && cVar.d();
            }

            /* renamed from: c */
            public boolean m2313c() {
                zy.b.c cVar = this.f6201a;
                return cVar != null && cVar.e();
            }

            /* renamed from: d */
            public boolean m2312d() {
                zy.b.c cVar = this.f6201a;
                return cVar == null || cVar.f();
            }
        }

        public C1332i(C1331h c1331h, String str, String str2) {
            this.f6179a = c1331h;
            this.f6180b = str;
            this.f6181c = str2;
        }

        /* renamed from: C */
        public static boolean m2350C(C1332i c1332i) {
            return TextUtils.equals(c1332i.m2325q().r().b(), Constants.ANDROID_PLATFORM);
        }

        /* renamed from: A */
        public boolean m2352A() {
            return this.f6198t != null && this.f6185g;
        }

        /* renamed from: B */
        public boolean m2351B() {
            C1324dz.m2407d();
            return C1324dz.f6158d.t() == this;
        }

        /* renamed from: D */
        public boolean m2349D(C1266cz c1266cz) {
            if (c1266cz != null) {
                C1324dz.m2407d();
                return c1266cz.m2925h(this.f6188j);
            }
            throw new IllegalArgumentException("selector must not be null");
        }

        /* renamed from: E */
        public int m2348E(xy xyVar) {
            return this.f6198t != xyVar ? m2343J(xyVar) : 0;
        }

        /* renamed from: F */
        public void m2347F(int i) {
            C1324dz.m2407d();
            C1324dz.f6158d.D(this, Math.min(this.f6194p, Math.max(0, i)));
        }

        /* renamed from: G */
        public void m2346G(int i) {
            C1324dz.m2407d();
            if (i != 0) {
                C1324dz.f6158d.E(this, i);
            }
        }

        /* renamed from: H */
        public void m2345H() {
            C1324dz.m2407d();
            C1324dz.f6158d.F(this, 3);
        }

        /* renamed from: I */
        public boolean m2344I(String str) {
            if (str != null) {
                C1324dz.m2407d();
                int size = this.f6188j.size();
                for (int i = 0; i < size; i++) {
                    if (this.f6188j.get(i).hasCategory(str)) {
                        return true;
                    }
                }
                return false;
            }
            throw new IllegalArgumentException("category must not be null");
        }

        /* renamed from: J */
        public int m2343J(xy xyVar) {
            int i;
            this.f6198t = xyVar;
            int i2 = 0;
            if (xyVar != null) {
                if (!ja.a(this.f6182d, xyVar.p())) {
                    this.f6182d = xyVar.p();
                    i = 1;
                } else {
                    i = 0;
                }
                int i3 = i;
                if (!ja.a(this.f6183e, xyVar.h())) {
                    this.f6183e = xyVar.h();
                    i3 = i | 1;
                }
                int i4 = i3;
                if (!ja.a(this.f6184f, xyVar.l())) {
                    this.f6184f = xyVar.l();
                    i4 = i3 | 1;
                }
                int i5 = i4;
                if (this.f6185g != xyVar.x()) {
                    this.f6185g = xyVar.x();
                    i5 = i4 | 1;
                }
                int i6 = i5;
                if (this.f6186h != xyVar.f()) {
                    this.f6186h = xyVar.f();
                    i6 = i5 | 1;
                }
                int i7 = i6;
                if (!m2316z(this.f6188j, xyVar.g())) {
                    this.f6188j.clear();
                    this.f6188j.addAll(xyVar.g());
                    i7 = i6 | 1;
                }
                int i8 = i7;
                if (this.f6189k != xyVar.r()) {
                    this.f6189k = xyVar.r();
                    i8 = i7 | 1;
                }
                int i9 = i8;
                if (this.f6190l != xyVar.q()) {
                    this.f6190l = xyVar.q();
                    i9 = i8 | 1;
                }
                int i10 = i9;
                if (this.f6191m != xyVar.i()) {
                    this.f6191m = xyVar.i();
                    i10 = i9 | 1;
                }
                int i11 = i10;
                if (this.f6192n != xyVar.v()) {
                    this.f6192n = xyVar.v();
                    i11 = i10 | 3;
                }
                int i12 = i11;
                if (this.f6193o != xyVar.u()) {
                    this.f6193o = xyVar.u();
                    i12 = i11 | 3;
                }
                int i13 = i12;
                if (this.f6194p != xyVar.w()) {
                    this.f6194p = xyVar.w();
                    i13 = i12 | 3;
                }
                int i14 = i13;
                if (this.f6195q != xyVar.s()) {
                    this.f6195q = xyVar.s();
                    i14 = i13 | 5;
                }
                int i15 = i14;
                if (!ja.a(this.f6196r, xyVar.j())) {
                    this.f6196r = xyVar.j();
                    i15 = i14 | 1;
                }
                int i16 = i15;
                if (!ja.a(this.f6197s, xyVar.t())) {
                    this.f6197s = xyVar.t();
                    i16 = i15 | 1;
                }
                i2 = i16;
                if (this.f6187i != xyVar.b()) {
                    this.f6187i = xyVar.b();
                    i2 = i16 | 5;
                }
                List<String> k = xyVar.k();
                ArrayList arrayList = new ArrayList();
                boolean z = false;
                if (k.size() != this.f6199u.size()) {
                    z = true;
                }
                for (String str : k) {
                    C1332i p = C1324dz.f6158d.p(C1324dz.f6158d.u(m2326p(), str));
                    if (p != null) {
                        arrayList.add(p);
                        if (!z && !this.f6199u.contains(p)) {
                            z = true;
                        }
                    }
                }
                if (z) {
                    this.f6199u = arrayList;
                    i2 |= 1;
                }
            }
            return i2;
        }

        /* renamed from: K */
        public void m2342K(Collection<zy.b.c> collection) {
            this.f6199u.clear();
            if (this.f6200v == null) {
                this.f6200v = new b4();
            }
            this.f6200v.clear();
            for (zy.b.c cVar : collection) {
                C1332i m2340b = m2340b(cVar);
                if (m2340b != null) {
                    this.f6200v.put(m2340b.f6181c, cVar);
                    if (cVar.c() == 2 || cVar.c() == 3) {
                        this.f6199u.add(m2340b);
                    }
                }
            }
            C1324dz.f6158d.k.m2391b(259, this);
        }

        /* renamed from: a */
        public boolean m2341a() {
            return this.f6187i;
        }

        /* renamed from: b */
        public C1332i m2340b(zy.b.c cVar) {
            return m2326p().m2360a(cVar.b().m());
        }

        /* renamed from: c */
        public int m2339c() {
            return this.f6186h;
        }

        /* renamed from: d */
        public String m2338d() {
            return this.f6183e;
        }

        /* renamed from: e */
        public String m2337e() {
            return this.f6180b;
        }

        /* renamed from: f */
        public int m2336f() {
            return this.f6191m;
        }

        /* renamed from: g */
        public zy.b m2335g() {
            zy.b bVar = C1324dz.f6158d.s;
            if (bVar instanceof zy.b) {
                return bVar;
            }
            return null;
        }

        /* renamed from: h */
        public C1333a m2334h(C1332i c1332i) {
            Map<String, zy.b.c> map = this.f6200v;
            if (map == null || !map.containsKey(c1332i.f6181c)) {
                return null;
            }
            return new C1333a(this.f6200v.get(c1332i.f6181c));
        }

        /* renamed from: i */
        public Uri m2333i() {
            return this.f6184f;
        }

        /* renamed from: j */
        public String m2332j() {
            return this.f6181c;
        }

        /* renamed from: k */
        public List<C1332i> m2331k() {
            return Collections.unmodifiableList(this.f6199u);
        }

        /* renamed from: l */
        public String m2330l() {
            return this.f6182d;
        }

        /* renamed from: m */
        public int m2329m() {
            return this.f6190l;
        }

        /* renamed from: n */
        public int m2328n() {
            return this.f6189k;
        }

        /* renamed from: o */
        public int m2327o() {
            return this.f6195q;
        }

        /* renamed from: p */
        public C1331h m2326p() {
            return this.f6179a;
        }

        /* renamed from: q */
        public zy m2325q() {
            return this.f6179a.m2356e();
        }

        /* renamed from: r */
        public int m2324r() {
            return this.f6193o;
        }

        /* renamed from: s */
        public int m2323s() {
            return this.f6192n;
        }

        /* renamed from: t */
        public int m2322t() {
            return this.f6194p;
        }

        public String toString() {
            StringBuilder sb = new StringBuilder();
            sb.append("MediaRouter.RouteInfo{ uniqueId=" + this.f6181c + ", name=" + this.f6182d + ", description=" + this.f6183e + ", iconUri=" + this.f6184f + ", enabled=" + this.f6185g + ", connectionState=" + this.f6186h + ", canDisconnect=" + this.f6187i + ", playbackType=" + this.f6189k + ", playbackStream=" + this.f6190l + ", deviceType=" + this.f6191m + ", volumeHandling=" + this.f6192n + ", volume=" + this.f6193o + ", volumeMax=" + this.f6194p + ", presentationDisplayId=" + this.f6195q + ", extras=" + this.f6196r + ", settingsIntent=" + this.f6197s + ", providerPackageName=" + this.f6179a.m2357d());
            if (m2318x()) {
                sb.append(", members=[");
                int size = this.f6199u.size();
                for (int i = 0; i < size; i++) {
                    if (i > 0) {
                        sb.append(", ");
                    }
                    if (this.f6199u.get(i) != this) {
                        sb.append(this.f6199u.get(i).m2332j());
                    }
                }
                sb.append(']');
            }
            sb.append(" }");
            return sb.toString();
        }

        /* renamed from: u */
        public boolean m2321u() {
            C1324dz.m2407d();
            return C1324dz.f6158d.m() == this;
        }

        /* renamed from: v */
        public boolean m2320v() {
            boolean z = true;
            if (!m2321u()) {
                z = this.f6191m == 3 ? true : m2350C(this) && m2344I("android.media.intent.category.LIVE_AUDIO") && !m2344I("android.media.intent.category.LIVE_VIDEO");
            }
            return z;
        }

        /* renamed from: w */
        public boolean m2319w() {
            return this.f6185g;
        }

        /* renamed from: x */
        public boolean m2318x() {
            boolean z = true;
            if (m2331k().size() < 1) {
                z = false;
            }
            return z;
        }

        /* renamed from: y */
        public final boolean m2317y(IntentFilter intentFilter, IntentFilter intentFilter2) {
            int countActions;
            if (intentFilter == intentFilter2) {
                return true;
            }
            if (intentFilter == null || intentFilter2 == null || (countActions = intentFilter.countActions()) != intentFilter2.countActions()) {
                return false;
            }
            for (int i = 0; i < countActions; i++) {
                if (!intentFilter.getAction(i).equals(intentFilter2.getAction(i))) {
                    return false;
                }
            }
            int countCategories = intentFilter.countCategories();
            if (countCategories != intentFilter2.countCategories()) {
                return false;
            }
            for (int i2 = 0; i2 < countCategories; i2++) {
                if (!intentFilter.getCategory(i2).equals(intentFilter2.getCategory(i2))) {
                    return false;
                }
            }
            return true;
        }

        /* renamed from: z */
        public final boolean m2316z(List<IntentFilter> list, List<IntentFilter> list2) {
            boolean z = true;
            if (list == list2) {
                return true;
            }
            if (list == null || list2 == null) {
                return false;
            }
            ListIterator<IntentFilter> listIterator = list.listIterator();
            ListIterator<IntentFilter> listIterator2 = list2.listIterator();
            while (listIterator.hasNext() && listIterator2.hasNext()) {
                if (!m2317y(listIterator.next(), listIterator2.next())) {
                    return false;
                }
            }
            if (listIterator.hasNext() || listIterator2.hasNext()) {
                z = false;
            }
            return z;
        }
    }

    public C1324dz(Context context) {
        this.f6159a = context;
    }

    /* renamed from: d */
    public static void m2407d() {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            return;
        }
        throw new IllegalStateException("The media router service must only be accessed on the application's main thread.");
    }

    /* renamed from: f */
    public static int m2405f() {
        e eVar = f6158d;
        if (eVar == null) {
            return 0;
        }
        return eVar.l();
    }

    /* renamed from: g */
    public static C1324dz m2404g(Context context) {
        if (context != null) {
            m2407d();
            if (f6158d == null) {
                e eVar = new e(context.getApplicationContext());
                f6158d = eVar;
                eVar.H();
            }
            return f6158d.q(context);
        }
        throw new IllegalArgumentException("context must not be null");
    }

    /* renamed from: l */
    public static boolean m2399l() {
        e eVar = f6158d;
        if (eVar == null) {
            return false;
        }
        return eVar.v();
    }

    /* renamed from: n */
    public static boolean m2397n() {
        e eVar = f6158d;
        if (eVar == null) {
            return false;
        }
        return eVar.z();
    }

    /* renamed from: a */
    public void m2410a(C1266cz c1266cz, AbstractC1326b abstractC1326b) {
        m2409b(c1266cz, abstractC1326b, 0);
    }

    /* renamed from: b */
    public void m2409b(C1266cz c1266cz, AbstractC1326b abstractC1326b, int i) {
        C1327c c1327c;
        if (c1266cz != null) {
            if (abstractC1326b == null) {
                throw new IllegalArgumentException("callback must not be null");
            }
            m2407d();
            if (f6157c) {
                Log.d("MediaRouter", "addCallback: selector=" + c1266cz + ", callback=" + abstractC1326b + ", flags=" + Integer.toHexString(i));
            }
            int m2406e = m2406e(abstractC1326b);
            if (m2406e < 0) {
                c1327c = new C1327c(this, abstractC1326b);
                this.f6160b.add(c1327c);
            } else {
                c1327c = this.f6160b.get(m2406e);
            }
            boolean z = false;
            if (i != c1327c.f6164d) {
                c1327c.f6164d = i;
                z = true;
            }
            if (!c1327c.f6163c.m2931b(c1266cz)) {
                C1266cz.C1267a c1267a = new C1266cz.C1267a(c1327c.f6163c);
                c1267a.m2922c(c1266cz);
                c1327c.f6163c = c1267a.m2921d();
                z = true;
            }
            if (!z) {
                return;
            }
            f6158d.J();
            return;
        }
        throw new IllegalArgumentException("selector must not be null");
    }

    /* renamed from: c */
    public void m2408c(C1332i c1332i) {
        m2407d();
        f6158d.f(c1332i);
    }

    /* renamed from: e */
    public final int m2406e(AbstractC1326b abstractC1326b) {
        int size = this.f6160b.size();
        for (int i = 0; i < size; i++) {
            if (this.f6160b.get(i).f6162b == abstractC1326b) {
                return i;
            }
        }
        return -1;
    }

    /* renamed from: h */
    public MediaSessionCompat.Token m2403h() {
        return f6158d.o();
    }

    /* renamed from: i */
    public jz m2402i() {
        m2407d();
        return f6158d.r();
    }

    /* renamed from: j */
    public List<C1332i> m2401j() {
        m2407d();
        return f6158d.s();
    }

    /* renamed from: k */
    public C1332i m2400k() {
        m2407d();
        return f6158d.t();
    }

    /* renamed from: m */
    public boolean m2398m(C1266cz c1266cz, int i) {
        if (c1266cz != null) {
            m2407d();
            return f6158d.w(c1266cz, i);
        }
        throw new IllegalArgumentException("selector must not be null");
    }

    /* renamed from: o */
    public void m2396o(AbstractC1326b abstractC1326b) {
        if (abstractC1326b != null) {
            m2407d();
            if (f6157c) {
                Log.d("MediaRouter", "removeCallback: callback=" + abstractC1326b);
            }
            int m2406e = m2406e(abstractC1326b);
            if (m2406e < 0) {
                return;
            }
            this.f6160b.remove(m2406e);
            f6158d.J();
            return;
        }
        throw new IllegalArgumentException("callback must not be null");
    }

    /* renamed from: p */
    public void m2395p(C1332i c1332i) {
        m2407d();
        f6158d.C(c1332i);
    }

    /* renamed from: q */
    public void m2394q(C1332i c1332i) {
        m2407d();
        f6158d.I(c1332i);
    }

    /* renamed from: r */
    public void m2393r(int i) {
        if (i < 0 || i > 3) {
            throw new IllegalArgumentException("Unsupported reason to unselect route");
        }
        m2407d();
        C1332i h = f6158d.h();
        if (f6158d.t() == h) {
            return;
        }
        f6158d.F(h, i);
    }
}
