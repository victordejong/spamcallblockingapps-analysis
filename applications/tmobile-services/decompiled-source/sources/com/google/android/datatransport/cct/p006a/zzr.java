package com.google.android.datatransport.cct.p006a;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.datatransport.cct.p006a.zzk;
import com.google.auto.value.AutoValue;
import com.google.firebase.encoders.annotations.Encodable;
import java.util.List;
@AutoValue
/* renamed from: com.google.android.datatransport.cct.a.zzr */
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/cct/a/zzr.class */
public abstract class zzr {

    @AutoValue.Builder
    /* renamed from: com.google.android.datatransport.cct.a.zzr$zza */
    /* loaded from: classes-dex2jar.jar:com/google/android/datatransport/cct/a/zzr$zza.class */
    public static abstract class zza {
        @NonNull
        /* renamed from: a */
        public zza m15499a(int i) {
            mo15495e(Integer.valueOf(i));
            return this;
        }

        @NonNull
        /* renamed from: b */
        public abstract zza mo15498b(long j);

        @NonNull
        /* renamed from: c */
        public abstract zza mo15497c(@Nullable zzp zzpVar);

        @NonNull
        /* renamed from: d */
        public abstract zza mo15496d(@Nullable zzu zzuVar);

        @NonNull
        /* renamed from: e */
        abstract zza mo15495e(@Nullable Integer num);

        @NonNull
        /* renamed from: f */
        abstract zza mo15494f(@Nullable String str);

        @NonNull
        /* renamed from: g */
        public abstract zza mo15493g(@Nullable List<zzq> list);

        @NonNull
        /* renamed from: h */
        public abstract zzr mo15492h();

        @NonNull
        /* renamed from: i */
        public abstract zza mo15491i(long j);

        @NonNull
        /* renamed from: j */
        public zza m15490j(@NonNull String str) {
            mo15494f(str);
            return this;
        }
    }

    @NonNull
    /* renamed from: a */
    public static zza m15507a() {
        return new zzk.zza();
    }

    @Nullable
    /* renamed from: b */
    public abstract zzp mo15506b();

    @Nullable
    @Encodable.Field(name = "logEvent")
    /* renamed from: c */
    public abstract List<zzq> mo15505c();

    @Nullable
    /* renamed from: d */
    public abstract Integer mo15504d();

    @Nullable
    /* renamed from: e */
    public abstract String mo15503e();

    @Nullable
    /* renamed from: f */
    public abstract zzu mo15502f();

    /* renamed from: g */
    public abstract long mo15501g();

    /* renamed from: h */
    public abstract long mo15500h();
}
