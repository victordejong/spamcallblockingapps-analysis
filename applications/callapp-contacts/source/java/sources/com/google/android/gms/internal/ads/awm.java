package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.doubleclick.AppEventListener;
import com.google.android.gms.ads.internal.overlay.zzp;
import com.google.android.gms.ads.reward.AdMetadataListener;
import java.util.HashSet;
import java.util.Set;
import java.util.concurrent.Executor;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/awm.class */
public class awm {

    /* renamed from: a */
    final Set<ayi<eir>> f43238a;

    /* renamed from: b */
    final Set<ayi<aro>> f43239b;

    /* renamed from: c */
    final Set<ayi<ash>> f43240c;

    /* renamed from: d */
    final Set<ayi<atk>> f43241d;

    /* renamed from: e */
    final Set<ayi<atb>> f43242e;

    /* renamed from: f */
    final Set<ayi<arp>> f43243f;

    /* renamed from: g */
    final Set<ayi<asd>> f43244g;

    /* renamed from: h */
    final Set<ayi<AdMetadataListener>> f43245h;

    /* renamed from: i */
    final Set<ayi<AppEventListener>> f43246i;

    /* renamed from: j */
    final Set<ayi<atu>> f43247j;

    /* renamed from: k */
    final Set<ayi<zzp>> f43248k;

    /* renamed from: l */
    final Set<ayi<auf>> f43249l;

    /* renamed from: m */
    final cmi f43250m;

    /* renamed from: n */
    arn f43251n;

    /* renamed from: o */
    bvx f43252o;

    /* renamed from: com.google.android.gms.internal.ads.awm$a */
    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/awm$a.class */
    public static final class C12200a {

        /* renamed from: a */
        Set<ayi<auf>> f43253a = new HashSet();

        /* renamed from: b */
        Set<ayi<eir>> f43254b = new HashSet();

        /* renamed from: c */
        Set<ayi<aro>> f43255c = new HashSet();

        /* renamed from: d */
        Set<ayi<ash>> f43256d = new HashSet();

        /* renamed from: e */
        Set<ayi<atk>> f43257e = new HashSet();

        /* renamed from: f */
        Set<ayi<atb>> f43258f = new HashSet();

        /* renamed from: g */
        Set<ayi<arp>> f43259g = new HashSet();

        /* renamed from: h */
        Set<ayi<AdMetadataListener>> f43260h = new HashSet();

        /* renamed from: i */
        Set<ayi<AppEventListener>> f43261i = new HashSet();

        /* renamed from: j */
        Set<ayi<asd>> f43262j = new HashSet();

        /* renamed from: k */
        Set<ayi<atu>> f43263k = new HashSet();

        /* renamed from: l */
        Set<ayi<zzp>> f43264l = new HashSet();

        /* renamed from: m */
        cmi f43265m;

        /* renamed from: a */
        public final C12200a m18369a(AppEventListener appEventListener, Executor executor) {
            this.f43261i.add(new ayi<>(appEventListener, executor));
            return this;
        }

        /* renamed from: a */
        public final C12200a m18368a(aro aroVar, Executor executor) {
            this.f43255c.add(new ayi<>(aroVar, executor));
            return this;
        }

        /* renamed from: a */
        public final C12200a m18367a(arp arpVar, Executor executor) {
            this.f43259g.add(new ayi<>(arpVar, executor));
            return this;
        }

        /* renamed from: a */
        public final C12200a m18366a(asd asdVar, Executor executor) {
            this.f43262j.add(new ayi<>(asdVar, executor));
            return this;
        }

        /* renamed from: a */
        public final C12200a m18365a(ash ashVar, Executor executor) {
            this.f43256d.add(new ayi<>(ashVar, executor));
            return this;
        }

        /* renamed from: a */
        public final C12200a m18364a(atb atbVar, Executor executor) {
            this.f43258f.add(new ayi<>(atbVar, executor));
            return this;
        }

        /* renamed from: a */
        public final C12200a m18363a(atu atuVar, Executor executor) {
            this.f43263k.add(new ayi<>(atuVar, executor));
            return this;
        }

        /* renamed from: a */
        public final C12200a m18362a(auf aufVar, Executor executor) {
            this.f43253a.add(new ayi<>(aufVar, executor));
            return this;
        }

        /* renamed from: a */
        public final C12200a m18361a(eir eirVar, Executor executor) {
            this.f43254b.add(new ayi<>(eirVar, executor));
            return this;
        }

        /* renamed from: a */
        public final awm m18370a() {
            return new awm(this);
        }
    }

    private awm(C12200a c12200a) {
        this.f43238a = c12200a.f43254b;
        this.f43240c = c12200a.f43256d;
        this.f43241d = c12200a.f43257e;
        this.f43239b = c12200a.f43255c;
        this.f43242e = c12200a.f43258f;
        this.f43243f = c12200a.f43259g;
        this.f43244g = c12200a.f43262j;
        this.f43245h = c12200a.f43260h;
        this.f43246i = c12200a.f43261i;
        this.f43247j = c12200a.f43263k;
        this.f43250m = c12200a.f43265m;
        this.f43248k = c12200a.f43264l;
        this.f43249l = c12200a.f43253a;
    }
}
