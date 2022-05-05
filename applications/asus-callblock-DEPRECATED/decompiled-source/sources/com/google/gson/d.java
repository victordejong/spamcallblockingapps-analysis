package com.google.gson;

import java.lang.reflect.Field;
/* loaded from: classes-dex2jar.jar:com/google/gson/d.class */
public enum d implements e {
    IDENTITY { // from class: com.google.gson.d.1
        @Override // com.google.gson.e
        public final String a(Field field) {
            return field.getName();
        }
    },
    UPPER_CAMEL_CASE { // from class: com.google.gson.d.2
        @Override // com.google.gson.e
        public final String a(Field field) {
            return d.a(field.getName());
        }
    },
    UPPER_CAMEL_CASE_WITH_SPACES { // from class: com.google.gson.d.3
        @Override // com.google.gson.e
        public final String a(Field field) {
            return d.a(d.a(field.getName(), " "));
        }
    },
    LOWER_CASE_WITH_UNDERSCORES { // from class: com.google.gson.d.4
        @Override // com.google.gson.e
        public final String a(Field field) {
            return d.a(field.getName(), "_").toLowerCase();
        }
    },
    LOWER_CASE_WITH_DASHES { // from class: com.google.gson.d.5
        @Override // com.google.gson.e
        public final String a(Field field) {
            return d.a(field.getName(), "-").toLowerCase();
        }
    };

    /* synthetic */ d(byte b2) {
        this();
    }

    static /* synthetic */ String a(String str) {
        String str2;
        int i = 0;
        StringBuilder sb = new StringBuilder();
        char charAt = str.charAt(0);
        while (i < str.length() - 1 && !Character.isLetter(charAt)) {
            sb.append(charAt);
            i++;
            charAt = str.charAt(i);
        }
        if (i == str.length()) {
            str2 = sb.toString();
        } else {
            str2 = str;
            if (!Character.isUpperCase(charAt)) {
                char upperCase = Character.toUpperCase(charAt);
                int i2 = i + 1;
                str2 = sb.append(i2 < str.length() ? upperCase + str.substring(i2) : String.valueOf(upperCase)).toString();
            }
        }
        return str2;
    }

    static /* synthetic */ String a(String str, String str2) {
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < str.length(); i++) {
            char charAt = str.charAt(i);
            if (Character.isUpperCase(charAt) && sb.length() != 0) {
                sb.append(str2);
            }
            sb.append(charAt);
        }
        return sb.toString();
    }
}
