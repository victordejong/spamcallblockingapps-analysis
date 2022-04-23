package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbtp.class */
public class zzbtp {

    /* renamed from: a */
    public final Context f25524a;

    /* renamed from: b */
    public final zzdok f25525b;

    /* renamed from: c */
    public Bundle f25526c;

    /* renamed from: d */
    public final String f25527d;

    /* renamed from: e */
    public final zzdoj f25528e;

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbtp$zza.class */
    public static final class zza {

        /* renamed from: a */
        public Context f25529a;

        /* renamed from: b */
        public zzdok f25530b;

        /* renamed from: c */
        public Bundle f25531c;

        /* renamed from: d */
        public String f25532d;

        /* renamed from: e */
        public zzdoj f25533e;

        /* renamed from: a */
        public final zza m15065a(Context context) {
            this.f25529a = context;
            return this;
        }

        /* renamed from: a */
        public final zza m15064a(Bundle bundle) {
            this.f25531c = bundle;
            return this;
        }

        /* renamed from: a */
        public final zza m15062a(zzdoj zzdojVar) {
            this.f25533e = zzdojVar;
            return this;
        }

        /* renamed from: a */
        public final zza m15061a(zzdok zzdokVar) {
            this.f25530b = zzdokVar;
            return this;
        }

        /* renamed from: a */
        public final zza m15060a(String str) {
            this.f25532d = str;
            return this;
        }

        /* renamed from: a */
        public final zzbtp m15066a() {
            return new zzbtp(this);
        }
    }

    public zzbtp(zza zzaVar) {
        this.f25524a = zzaVar.f25529a;
        this.f25525b = zzaVar.f25530b;
        this.f25526c = zzaVar.f25531c;
        this.f25527d = zzaVar.f25532d;
        this.f25528e = zzaVar.f25533e;
    }

    /* renamed from: a */
    public final Context m15071a(Context context) {
        return this.f25527d != null ? context : this.f25524a;
    }

    /* renamed from: a */
    public final zza m15072a() {
        zza zzaVar = new zza();
        zzaVar.m15065a(this.f25524a);
        zzaVar.m15061a(this.f25525b);
        zzaVar.m15060a(this.f25527d);
        zzaVar.m15064a(this.f25526c);
        return zzaVar;
    }

    /* renamed from: b */
    public final zzdok m15070b() {
        return this.f25525b;
    }

    /* renamed from: c */
    public final zzdoj m15069c() {
        return this.f25528e;
    }

    /* renamed from: d */
    public final Bundle m15068d() {
        return this.f25526c;
    }

    /* renamed from: e */
    public final String m15067e() {
        return this.f25527d;
    }
}
