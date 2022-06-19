package com.twitter.sdk.android.core.internal;

import com.twitter.sdk.android.core.models.User;
/* renamed from: com.twitter.sdk.android.core.internal.i */
/* loaded from: classes4-dex2jar.jar:com/twitter/sdk/android/core/internal/i.class */
public final class C17257i {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.twitter.sdk.android.core.internal.i$1 */
    /* loaded from: classes4-dex2jar.jar:com/twitter/sdk/android/core/internal/i$1.class */
    public static final /* synthetic */ class C172581 {

        /* renamed from: a */
        static final /* synthetic */ int[] f61009a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x0041 -> B:22:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:14:0x0045 -> B:20:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:15:0x0049 -> B:18:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x004d -> B:24:0x0035). Please submit an issue!!! */
        static {
            int[] iArr = new int[EnumC17259a.values().length];
            f61009a = iArr;
            try {
                iArr[EnumC17259a.NORMAL.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f61009a[EnumC17259a.BIGGER.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f61009a[EnumC17259a.MINI.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f61009a[EnumC17259a.ORIGINAL.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f61009a[EnumC17259a.REASONABLY_SMALL.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
        }
    }

    /* renamed from: com.twitter.sdk.android.core.internal.i$a */
    /* loaded from: classes4-dex2jar.jar:com/twitter/sdk/android/core/internal/i$a.class */
    public enum EnumC17259a {
        NORMAL("_normal"),
        BIGGER("_bigger"),
        MINI("_mini"),
        ORIGINAL("_original"),
        REASONABLY_SMALL("_reasonably_small");
        
        private final String suffix;

        EnumC17259a(String str) {
            this.suffix = str;
        }

        final String getSuffix() {
            return this.suffix;
        }
    }

    private C17257i() {
    }

    /* renamed from: a */
    public static String m5658a(User user, EnumC17259a enumC17259a) {
        if (user == null || user.profileImageUrlHttps == null) {
            return null;
        }
        String str = user.profileImageUrlHttps;
        String str2 = str;
        if (enumC17259a != null) {
            if (str == null) {
                str2 = str;
            } else {
                int i = C172581.f61009a[enumC17259a.ordinal()];
                if (i != 1 && i != 2 && i != 3 && i != 4 && i != 5) {
                    return str;
                }
                str2 = str.replace(EnumC17259a.NORMAL.getSuffix(), enumC17259a.getSuffix());
            }
        }
        return str2;
    }
}
