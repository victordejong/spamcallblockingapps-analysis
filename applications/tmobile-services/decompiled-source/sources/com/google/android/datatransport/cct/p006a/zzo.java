package com.google.android.datatransport.cct.p006a;

import androidx.annotation.NonNull;
import com.google.auto.value.AutoValue;
import com.google.firebase.encoders.annotations.Encodable;
import java.util.List;
@AutoValue
@Encodable
/* renamed from: com.google.android.datatransport.cct.a.zzo */
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/cct/a/zzo.class */
public abstract class zzo {
    @NonNull
    /* renamed from: a */
    public static zzo m15530a(@NonNull List<zzr> list) {
        return new zze(list);
    }

    @NonNull
    @Encodable.Field(name = "logRequest")
    /* renamed from: b */
    public abstract List<zzr> mo15529b();
}
