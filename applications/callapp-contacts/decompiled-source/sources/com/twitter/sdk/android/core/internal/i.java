package com.twitter.sdk.android.core.internal;

import com.twitter.sdk.android.core.models.User;
/* loaded from: classes4-dex2jar.jar:com/twitter/sdk/android/core/internal/i.class */
public final class i {

    /* renamed from: com.twitter.sdk.android.core.internal.i$1  reason: invalid class name */
    /* loaded from: classes4-dex2jar.jar:com/twitter/sdk/android/core/internal/i$1.class */
    static final /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f35161a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x0041 -> B:22:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:14:0x0045 -> B:20:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:15:0x0049 -> B:18:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x004d -> B:24:0x0035). Please submit an issue!!! */
        static {
            int[] iArr = new int[a.values().length];
            f35161a = iArr;
            try {
                iArr[a.NORMAL.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f35161a[a.BIGGER.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f35161a[a.MINI.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f35161a[a.ORIGINAL.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f35161a[a.REASONABLY_SMALL.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/twitter/sdk/android/core/internal/i$a.class */
    public enum a {
        NORMAL("_normal"),
        BIGGER("_bigger"),
        MINI("_mini"),
        ORIGINAL("_original"),
        REASONABLY_SMALL("_reasonably_small");
        
        private final String suffix;

        a(String str) {
            this.suffix = str;
        }

        final String getSuffix() {
            return this.suffix;
        }
    }

    private i() {
    }

    public static String a(User user, a aVar) {
        if (user == null || user.profileImageUrlHttps == null) {
            return null;
        }
        String str = user.profileImageUrlHttps;
        String str2 = str;
        if (aVar != null) {
            if (str == null) {
                str2 = str;
            } else {
                int i = AnonymousClass1.f35161a[aVar.ordinal()];
                if (i != 1 && i != 2 && i != 3 && i != 4 && i != 5) {
                    return str;
                }
                str2 = str.replace(a.NORMAL.getSuffix(), aVar.getSuffix());
            }
        }
        return str2;
    }
}
