package com.google.android.datatransport.cct.p006a;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.datatransport.cct.p006a.zzi;
import com.google.auto.value.AutoValue;
@AutoValue
/* renamed from: com.google.android.datatransport.cct.a.zzq */
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/cct/a/zzq.class */
public abstract class zzq {

    @AutoValue.Builder
    /* renamed from: com.google.android.datatransport.cct.a.zzq$zza */
    /* loaded from: classes-dex2jar.jar:com/google/android/datatransport/cct/a/zzq$zza.class */
    public static abstract class zza {
        @NonNull
        /* renamed from: a */
        public abstract zza mo15513a(long j);

        @NonNull
        /* renamed from: b */
        public abstract zza mo15512b(@Nullable zzt zztVar);

        @NonNull
        /* renamed from: c */
        public abstract zza mo15511c(@Nullable Integer num);

        @NonNull
        /* renamed from: d */
        public abstract zzq mo15510d();

        @NonNull
        /* renamed from: e */
        public abstract zza mo15509e(long j);

        @NonNull
        /* renamed from: f */
        public abstract zza mo15508f(long j);
    }

    @NonNull
    /* renamed from: a */
    public static zza m15522a(@NonNull String str) {
        zzi.zza zzaVar = new zzi.zza();
        zzaVar.m15532g(str);
        return zzaVar;
    }

    @NonNull
    /* renamed from: b */
    public static zza m15521b(@NonNull byte[] bArr) {
        zzi.zza zzaVar = new zzi.zza();
        zzaVar.m15531h(bArr);
        return zzaVar;
    }

    @Nullable
    /* renamed from: c */
    public abstract Integer mo15520c();

    /* renamed from: d */
    public abstract long mo15519d();

    /* renamed from: e */
    public abstract long mo15518e();

    @Nullable
    /* renamed from: f */
    public abstract zzt mo15517f();

    @Nullable
    /* renamed from: g */
    public abstract byte[] mo15516g();

    @Nullable
    /* renamed from: h */
    public abstract String mo15515h();

    /* renamed from: i */
    public abstract long mo15514i();
}
