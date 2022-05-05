package com.aotter.net.gson;

import java.lang.reflect.Field;
import java.util.Locale;
/* loaded from: classes-dex2jar.jar:com/aotter/net/gson/FieldNamingPolicy.class */
public enum FieldNamingPolicy implements FieldNamingStrategy {
    IDENTITY { // from class: com.aotter.net.gson.FieldNamingPolicy.1
        @Override // com.aotter.net.gson.FieldNamingStrategy
        public String translateName(Field field) {
            return field.getName();
        }
    },
    UPPER_CAMEL_CASE { // from class: com.aotter.net.gson.FieldNamingPolicy.2
        @Override // com.aotter.net.gson.FieldNamingStrategy
        public String translateName(Field field) {
            return FieldNamingPolicy.upperCaseFirstLetter(field.getName());
        }
    },
    UPPER_CAMEL_CASE_WITH_SPACES { // from class: com.aotter.net.gson.FieldNamingPolicy.3
        @Override // com.aotter.net.gson.FieldNamingStrategy
        public String translateName(Field field) {
            return FieldNamingPolicy.upperCaseFirstLetter(FieldNamingPolicy.separateCamelCase(field.getName(), " "));
        }
    },
    LOWER_CASE_WITH_UNDERSCORES { // from class: com.aotter.net.gson.FieldNamingPolicy.4
        @Override // com.aotter.net.gson.FieldNamingStrategy
        public String translateName(Field field) {
            return FieldNamingPolicy.separateCamelCase(field.getName(), "_").toLowerCase(Locale.ENGLISH);
        }
    },
    LOWER_CASE_WITH_DASHES { // from class: com.aotter.net.gson.FieldNamingPolicy.5
        @Override // com.aotter.net.gson.FieldNamingStrategy
        public String translateName(Field field) {
            return FieldNamingPolicy.separateCamelCase(field.getName(), "-").toLowerCase(Locale.ENGLISH);
        }
    };

    public static String modifyString(char c, String str, int i) {
        String str2;
        if (i < str.length()) {
            str2 = c + str.substring(i);
        } else {
            str2 = String.valueOf(c);
        }
        return str2;
    }

    public static String separateCamelCase(String str, String str2) {
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

    public static String upperCaseFirstLetter(String str) {
        char charAt;
        StringBuilder sb = new StringBuilder();
        int i = 0;
        while (true) {
            charAt = str.charAt(i);
            if (i >= str.length() - 1 || Character.isLetter(charAt)) {
                break;
            }
            sb.append(charAt);
            i++;
        }
        if (i == str.length()) {
            return sb.toString();
        }
        String str2 = str;
        if (!Character.isUpperCase(charAt)) {
            sb.append(modifyString(Character.toUpperCase(charAt), str, i + 1));
            str2 = sb.toString();
        }
        return str2;
    }
}
