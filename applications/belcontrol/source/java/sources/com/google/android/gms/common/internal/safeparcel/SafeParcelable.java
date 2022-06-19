package com.google.android.gms.common.internal.safeparcel;

import android.os.Parcelable;
import androidx.annotation.RecentlyNonNull;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/safeparcel/SafeParcelable.class */
public interface SafeParcelable extends Parcelable {
    @RecentlyNonNull
    public static final String NULL = "SAFE_PARCELABLE_NULL_STRING";

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/safeparcel/SafeParcelable$Class.class */
    public @interface Class {
        @RecentlyNonNull
        String creator();

        boolean validate() default false;
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/safeparcel/SafeParcelable$Constructor.class */
    public @interface Constructor {
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/safeparcel/SafeParcelable$Field.class */
    public @interface Field {
        @RecentlyNonNull
        String defaultValue() default "SAFE_PARCELABLE_NULL_STRING";

        @RecentlyNonNull
        String defaultValueUnchecked() default "SAFE_PARCELABLE_NULL_STRING";

        @RecentlyNonNull
        String getter() default "SAFE_PARCELABLE_NULL_STRING";

        /* renamed from: id */
        int m4429id();

        @RecentlyNonNull
        String type() default "SAFE_PARCELABLE_NULL_STRING";
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/safeparcel/SafeParcelable$Indicator.class */
    public @interface Indicator {
        @RecentlyNonNull
        String getter() default "SAFE_PARCELABLE_NULL_STRING";
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/safeparcel/SafeParcelable$Param.class */
    public @interface Param {
        /* renamed from: id */
        int m4428id();
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/safeparcel/SafeParcelable$Reserved.class */
    public @interface Reserved {
        @RecentlyNonNull
        int[] value();
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/safeparcel/SafeParcelable$VersionField.class */
    public @interface VersionField {
        @RecentlyNonNull
        String getter() default "SAFE_PARCELABLE_NULL_STRING";

        /* renamed from: id */
        int m4427id();

        @RecentlyNonNull
        String type() default "SAFE_PARCELABLE_NULL_STRING";
    }
}
