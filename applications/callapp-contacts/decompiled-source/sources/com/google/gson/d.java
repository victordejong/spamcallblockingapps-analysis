package com.google.gson;

import com.sinch.verification.core.verification.VerificationLanguage;
import java.lang.reflect.Field;
import java.util.Locale;
import org.apache.commons.lang3.StringUtils;
/* loaded from: classes4-dex2jar.jar:com/google/gson/d.class */
public enum d implements e {
    IDENTITY { // from class: com.google.gson.d.1
        @Override // com.google.gson.e
        public final String translateName(Field field) {
            return field.getName();
        }
    },
    UPPER_CAMEL_CASE { // from class: com.google.gson.d.2
        @Override // com.google.gson.e
        public final String translateName(Field field) {
            return upperCaseFirstLetter(field.getName());
        }
    },
    UPPER_CAMEL_CASE_WITH_SPACES { // from class: com.google.gson.d.3
        @Override // com.google.gson.e
        public final String translateName(Field field) {
            return upperCaseFirstLetter(separateCamelCase(field.getName(), StringUtils.SPACE));
        }
    },
    LOWER_CASE_WITH_UNDERSCORES { // from class: com.google.gson.d.4
        @Override // com.google.gson.e
        public final String translateName(Field field) {
            return separateCamelCase(field.getName(), "_").toLowerCase(Locale.ENGLISH);
        }
    },
    LOWER_CASE_WITH_DASHES { // from class: com.google.gson.d.5
        @Override // com.google.gson.e
        public final String translateName(Field field) {
            return separateCamelCase(field.getName(), VerificationLanguage.REGION_PREFIX).toLowerCase(Locale.ENGLISH);
        }
    },
    LOWER_CASE_WITH_DOTS { // from class: com.google.gson.d.6
        @Override // com.google.gson.e
        public final String translateName(Field field) {
            return separateCamelCase(field.getName(), ".").toLowerCase(Locale.ENGLISH);
        }
    };

    static String separateCamelCase(String str, String str2) {
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

    static String upperCaseFirstLetter(String str) {
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
}
