package com.bytedance.sdk.openadsdk.preload.p193a;

import com.sinch.verification.core.verification.VerificationLanguage;
import java.lang.reflect.Field;
import java.util.Locale;
import org.apache.commons.lang3.StringUtils;
/* renamed from: com.bytedance.sdk.openadsdk.preload.a.d */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/preload/a/d.class */
public enum EnumC5237d implements AbstractC5249e {
    IDENTITY { // from class: com.bytedance.sdk.openadsdk.preload.a.d.1
        @Override // com.bytedance.sdk.openadsdk.preload.p193a.AbstractC5249e
        /* renamed from: a */
        public final String mo32737a(Field field) {
            return field.getName();
        }
    },
    UPPER_CAMEL_CASE { // from class: com.bytedance.sdk.openadsdk.preload.a.d.2
        @Override // com.bytedance.sdk.openadsdk.preload.p193a.AbstractC5249e
        /* renamed from: a */
        public final String mo32737a(Field field) {
            return m32803a(field.getName());
        }
    },
    UPPER_CAMEL_CASE_WITH_SPACES { // from class: com.bytedance.sdk.openadsdk.preload.a.d.3
        @Override // com.bytedance.sdk.openadsdk.preload.p193a.AbstractC5249e
        /* renamed from: a */
        public final String mo32737a(Field field) {
            return m32803a(m32802a(field.getName(), StringUtils.SPACE));
        }
    },
    LOWER_CASE_WITH_UNDERSCORES { // from class: com.bytedance.sdk.openadsdk.preload.a.d.4
        @Override // com.bytedance.sdk.openadsdk.preload.p193a.AbstractC5249e
        /* renamed from: a */
        public final String mo32737a(Field field) {
            return m32802a(field.getName(), "_").toLowerCase(Locale.ENGLISH);
        }
    },
    LOWER_CASE_WITH_DASHES { // from class: com.bytedance.sdk.openadsdk.preload.a.d.5
        @Override // com.bytedance.sdk.openadsdk.preload.p193a.AbstractC5249e
        /* renamed from: a */
        public final String mo32737a(Field field) {
            return m32802a(field.getName(), VerificationLanguage.REGION_PREFIX).toLowerCase(Locale.ENGLISH);
        }
    },
    LOWER_CASE_WITH_DOTS { // from class: com.bytedance.sdk.openadsdk.preload.a.d.6
        @Override // com.bytedance.sdk.openadsdk.preload.p193a.AbstractC5249e
        /* renamed from: a */
        public final String mo32737a(Field field) {
            return m32802a(field.getName(), ".").toLowerCase(Locale.ENGLISH);
        }
    };

    /* renamed from: a */
    static String m32803a(String str) {
        int length = str.length();
        int i = 0;
        while (!Character.isLetter(str.charAt(i)) && i < length - 1) {
            i++;
        }
        char charAt = str.charAt(i);
        if (Character.isUpperCase(charAt)) {
            return str;
        }
        char upperCase = Character.toUpperCase(charAt);
        if (i == 0) {
            return upperCase + str.substring(1);
        }
        return str.substring(0, i) + upperCase + str.substring(i + 1);
    }

    /* renamed from: a */
    static String m32802a(String str, String str2) {
        StringBuilder sb = new StringBuilder();
        int length = str.length();
        for (int i = 0; i < length; i++) {
            char charAt = str.charAt(i);
            if (Character.isUpperCase(charAt) && sb.length() != 0) {
                sb.append(str2);
            }
            sb.append(charAt);
        }
        return sb.toString();
    }
}
