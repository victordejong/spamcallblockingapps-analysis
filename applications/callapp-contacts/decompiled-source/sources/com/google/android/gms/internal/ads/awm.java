package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.doubleclick.AppEventListener;
import com.google.android.gms.ads.internal.overlay.zzp;
import com.google.android.gms.ads.reward.AdMetadataListener;
import java.util.HashSet;
import java.util.Set;
import java.util.concurrent.Executor;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/awm.class */
public class awm {

    /* renamed from: a  reason: collision with root package name */
    final Set<ayi<eir>> f23949a;

    /* renamed from: b  reason: collision with root package name */
    final Set<ayi<aro>> f23950b;

    /* renamed from: c  reason: collision with root package name */
    final Set<ayi<ash>> f23951c;

    /* renamed from: d  reason: collision with root package name */
    final Set<ayi<atk>> f23952d;
    final Set<ayi<atb>> e;
    final Set<ayi<arp>> f;
    final Set<ayi<asd>> g;
    final Set<ayi<AdMetadataListener>> h;
    final Set<ayi<AppEventListener>> i;
    final Set<ayi<atu>> j;
    final Set<ayi<zzp>> k;
    final Set<ayi<auf>> l;
    final cmi m;
    arn n;
    bvx o;

    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/awm$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        Set<ayi<auf>> f23953a = new HashSet();

        /* renamed from: b  reason: collision with root package name */
        Set<ayi<eir>> f23954b = new HashSet();

        /* renamed from: c  reason: collision with root package name */
        Set<ayi<aro>> f23955c = new HashSet();

        /* renamed from: d  reason: collision with root package name */
        Set<ayi<ash>> f23956d = new HashSet();
        Set<ayi<atk>> e = new HashSet();
        Set<ayi<atb>> f = new HashSet();
        Set<ayi<arp>> g = new HashSet();
        Set<ayi<AdMetadataListener>> h = new HashSet();
        Set<ayi<AppEventListener>> i = new HashSet();
        Set<ayi<asd>> j = new HashSet();
        Set<ayi<atu>> k = new HashSet();
        Set<ayi<zzp>> l = new HashSet();
        cmi m;

        public final a a(AppEventListener appEventListener, Executor executor) {
            this.i.add(new ayi<>(appEventListener, executor));
            return this;
        }

        public final a a(aro aroVar, Executor executor) {
            this.f23955c.add(new ayi<>(aroVar, executor));
            return this;
        }

        public final a a(arp arpVar, Executor executor) {
            this.g.add(new ayi<>(arpVar, executor));
            return this;
        }

        public final a a(asd asdVar, Executor executor) {
            this.j.add(new ayi<>(asdVar, executor));
            return this;
        }

        public final a a(ash ashVar, Executor executor) {
            this.f23956d.add(new ayi<>(ashVar, executor));
            return this;
        }

        public final a a(atb atbVar, Executor executor) {
            this.f.add(new ayi<>(atbVar, executor));
            return this;
        }

        public final a a(atu atuVar, Executor executor) {
            this.k.add(new ayi<>(atuVar, executor));
            return this;
        }

        public final a a(auf aufVar, Executor executor) {
            this.f23953a.add(new ayi<>(aufVar, executor));
            return this;
        }

        public final a a(eir eirVar, Executor executor) {
            this.f23954b.add(new ayi<>(eirVar, executor));
            return this;
        }

        public final awm a() {
            return new awm(this);
        }
    }

    private awm(a aVar) {
        this.f23949a = aVar.f23954b;
        this.f23951c = aVar.f23956d;
        this.f23952d = aVar.e;
        this.f23950b = aVar.f23955c;
        this.e = aVar.f;
        this.f = aVar.g;
        this.g = aVar.j;
        this.h = aVar.h;
        this.i = aVar.i;
        this.j = aVar.k;
        this.m = aVar.m;
        this.k = aVar.l;
        this.l = aVar.f23953a;
    }
}
