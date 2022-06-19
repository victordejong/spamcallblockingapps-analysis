package com.google.android.gms.common.internal.safeparcel;

import android.os.Parcelable;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/safeparcel/SafeParcelable.class */
public interface SafeParcelable extends Parcelable {
    public static final String NULL = "SAFE_PARCELABLE_NULL_STRING";

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/safeparcel/SafeParcelable$Class.class */
    public @interface Class {
        String creator();

        boolean doNotParcelTypeDefaultValues() default false;

        boolean validate() default false;
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/safeparcel/SafeParcelable$Constructor.class */
    public @interface Constructor {
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/safeparcel/SafeParcelable$Field.class */
    public @interface Field {
        String defaultValue() default "SAFE_PARCELABLE_NULL_STRING";

        String defaultValueUnchecked() default "SAFE_PARCELABLE_NULL_STRING";

        String getter() default "SAFE_PARCELABLE_NULL_STRING";

        /* renamed from: id */
        int m4805id();

        String type() default "SAFE_PARCELABLE_NULL_STRING";
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/safeparcel/SafeParcelable$Indicator.class */
    public @interface Indicator {
        String getter() default "SAFE_PARCELABLE_NULL_STRING";
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/safeparcel/SafeParcelable$Param.class */
    public @interface Param {
        /* renamed from: id */
        int m4804id();
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/safeparcel/SafeParcelable$Reserved.class */
    public @interface Reserved {
        int[] value();
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/safeparcel/SafeParcelable$VersionField.class */
    public @interface VersionField {
        String getter() default "SAFE_PARCELABLE_NULL_STRING";

        /* renamed from: id */
        int m4803id();

        String type() default "SAFE_PARCELABLE_NULL_STRING";
    }
}
