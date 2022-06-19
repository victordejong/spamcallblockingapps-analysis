package io.bidmachine.utils;
/* loaded from: classes5-dex2jar.jar:io/bidmachine/utils/Gender.class */
public enum Gender {
    Female("F", 1),
    Male("M", 2),
    Omitted("O", 0);
    
    private String ortbValue;
    private final int serverValue;

    Gender(String str, int i) {
        this.ortbValue = str;
        this.serverValue = i;
    }

    public static Gender fromInt(Integer num) {
        if (num == null) {
            return null;
        }
        int intValue = num.intValue();
        if (intValue == 0) {
            return Omitted;
        }
        if (intValue == 1) {
            return Female;
        }
        if (intValue == 2) {
            return Male;
        }
        return null;
    }

    public final String getOrtbValue() {
        return this.ortbValue;
    }

    public final int getServerValue() {
        return this.serverValue;
    }
}
