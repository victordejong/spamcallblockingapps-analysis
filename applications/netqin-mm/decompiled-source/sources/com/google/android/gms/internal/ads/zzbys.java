package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.doubleclick.AppEventListener;
import com.google.android.gms.ads.internal.overlay.zzp;
import com.google.android.gms.ads.reward.AdMetadataListener;
import com.google.android.gms.common.util.Clock;
import java.util.HashSet;
import java.util.Set;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbys.class */
public class zzbys {

    /* renamed from: a */
    public final Set<zzcab<zzux>> f25598a;

    /* renamed from: b */
    public final Set<zzcab<zzbuh>> f25599b;

    /* renamed from: c */
    public final Set<zzcab<zzbuz>> f25600c;

    /* renamed from: d */
    public final Set<zzcab<zzbwb>> f25601d;

    /* renamed from: e */
    public final Set<zzcab<zzbvs>> f25602e;

    /* renamed from: f */
    public final Set<zzcab<zzbui>> f25603f;

    /* renamed from: g */
    public final Set<zzcab<zzbuv>> f25604g;

    /* renamed from: h */
    public final Set<zzcab<AdMetadataListener>> f25605h;

    /* renamed from: i */
    public final Set<zzcab<AppEventListener>> f25606i;

    /* renamed from: j */
    public final Set<zzcab<zzbwl>> f25607j;

    /* renamed from: k */
    public final Set<zzcab<zzp>> f25608k;

    /* renamed from: l */
    public final zzdls f25609l;

    /* renamed from: m */
    public zzbug f25610m;

    /* renamed from: n */
    public zzcwj f25611n;

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbys$zza.class */
    public static final class zza {

        /* renamed from: a */
        public Set<zzcab<zzux>> f25612a = new HashSet();

        /* renamed from: b */
        public Set<zzcab<zzbuh>> f25613b = new HashSet();

        /* renamed from: c */
        public Set<zzcab<zzbuz>> f25614c = new HashSet();

        /* renamed from: d */
        public Set<zzcab<zzbwb>> f25615d = new HashSet();

        /* renamed from: e */
        public Set<zzcab<zzbvs>> f25616e = new HashSet();

        /* renamed from: f */
        public Set<zzcab<zzbui>> f25617f = new HashSet();

        /* renamed from: g */
        public Set<zzcab<AdMetadataListener>> f25618g = new HashSet();

        /* renamed from: h */
        public Set<zzcab<AppEventListener>> f25619h = new HashSet();

        /* renamed from: i */
        public Set<zzcab<zzbuv>> f25620i = new HashSet();

        /* renamed from: j */
        public Set<zzcab<zzbwl>> f25621j = new HashSet();

        /* renamed from: k */
        public Set<zzcab<zzp>> f25622k = new HashSet();

        /* renamed from: l */
        public zzdls f25623l;

        /* renamed from: a */
        public final zza m14922a(AppEventListener appEventListener, Executor executor) {
            this.f25619h.add(new zzcab<>(appEventListener, executor));
            return this;
        }

        /* renamed from: a */
        public final zza m14921a(zzp zzpVar, Executor executor) {
            this.f25622k.add(new zzcab<>(zzpVar, executor));
            return this;
        }

        /* renamed from: a */
        public final zza m14920a(AdMetadataListener adMetadataListener, Executor executor) {
            this.f25618g.add(new zzcab<>(adMetadataListener, executor));
            return this;
        }

        /* renamed from: a */
        public final zza m14919a(zzbuh zzbuhVar, Executor executor) {
            this.f25613b.add(new zzcab<>(zzbuhVar, executor));
            return this;
        }

        /* renamed from: a */
        public final zza m14918a(zzbui zzbuiVar, Executor executor) {
            this.f25617f.add(new zzcab<>(zzbuiVar, executor));
            return this;
        }

        /* renamed from: a */
        public final zza m14917a(zzbuv zzbuvVar, Executor executor) {
            this.f25620i.add(new zzcab<>(zzbuvVar, executor));
            return this;
        }

        /* renamed from: a */
        public final zza m14916a(zzbuz zzbuzVar, Executor executor) {
            this.f25614c.add(new zzcab<>(zzbuzVar, executor));
            return this;
        }

        /* renamed from: a */
        public final zza m14915a(zzbvs zzbvsVar, Executor executor) {
            this.f25616e.add(new zzcab<>(zzbvsVar, executor));
            return this;
        }

        /* renamed from: a */
        public final zza m14914a(zzbwb zzbwbVar, Executor executor) {
            this.f25615d.add(new zzcab<>(zzbwbVar, executor));
            return this;
        }

        /* renamed from: a */
        public final zza m14913a(zzbwl zzbwlVar, Executor executor) {
            this.f25621j.add(new zzcab<>(zzbwlVar, executor));
            return this;
        }

        /* renamed from: a */
        public final zza m14911a(zzdls zzdlsVar) {
            this.f25623l = zzdlsVar;
            return this;
        }

        /* renamed from: a */
        public final zza m14910a(zzux zzuxVar, Executor executor) {
            this.f25612a.add(new zzcab<>(zzuxVar, executor));
            return this;
        }

        /* renamed from: a */
        public final zza m14909a(zzxk zzxkVar, Executor executor) {
            if (this.f25619h != null) {
                zzczr zzczrVar = new zzczr();
                zzczrVar.m13730a(zzxkVar);
                this.f25619h.add(new zzcab<>(zzczrVar, executor));
            }
            return this;
        }

        /* renamed from: a */
        public final zzbys m14923a() {
            return new zzbys(this);
        }
    }

    public zzbys(zza zzaVar) {
        this.f25598a = zzaVar.f25612a;
        this.f25600c = zzaVar.f25614c;
        this.f25601d = zzaVar.f25615d;
        this.f25599b = zzaVar.f25613b;
        this.f25602e = zzaVar.f25616e;
        this.f25603f = zzaVar.f25617f;
        this.f25604g = zzaVar.f25620i;
        this.f25605h = zzaVar.f25618g;
        this.f25606i = zzaVar.f25619h;
        this.f25607j = zzaVar.f25621j;
        this.f25609l = zzaVar.f25623l;
        this.f25608k = zzaVar.f25622k;
    }

    /* renamed from: a */
    public final zzbug m14935a(Set<zzcab<zzbui>> set) {
        if (this.f25610m == null) {
            this.f25610m = new zzbug(set);
        }
        return this.f25610m;
    }

    /* renamed from: a */
    public final zzcwj m14936a(Clock clock, zzcwl zzcwlVar, zzctd zzctdVar) {
        if (this.f25611n == null) {
            this.f25611n = new zzcwj(clock, zzcwlVar, zzctdVar);
        }
        return this.f25611n;
    }

    /* renamed from: a */
    public final Set<zzcab<zzbuh>> m14937a() {
        return this.f25599b;
    }

    /* renamed from: b */
    public final Set<zzcab<zzbvs>> m14934b() {
        return this.f25602e;
    }

    /* renamed from: c */
    public final Set<zzcab<zzbui>> m14933c() {
        return this.f25603f;
    }

    /* renamed from: d */
    public final Set<zzcab<zzbuv>> m14932d() {
        return this.f25604g;
    }

    /* renamed from: e */
    public final Set<zzcab<AdMetadataListener>> m14931e() {
        return this.f25605h;
    }

    /* renamed from: f */
    public final Set<zzcab<AppEventListener>> m14930f() {
        return this.f25606i;
    }

    /* renamed from: g */
    public final Set<zzcab<zzux>> m14929g() {
        return this.f25598a;
    }

    /* renamed from: h */
    public final Set<zzcab<zzbuz>> m14928h() {
        return this.f25600c;
    }

    /* renamed from: i */
    public final Set<zzcab<zzbwb>> m14927i() {
        return this.f25601d;
    }

    /* renamed from: j */
    public final Set<zzcab<zzbwl>> m14926j() {
        return this.f25607j;
    }

    /* renamed from: k */
    public final Set<zzcab<zzp>> m14925k() {
        return this.f25608k;
    }

    /* renamed from: l */
    public final zzdls m14924l() {
        return this.f25609l;
    }
}
