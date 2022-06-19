package com.google.i18n.phonenumbers;
/* loaded from: classes4-dex2jar.jar:com/google/i18n/phonenumbers/NumberParseException.class */
public class NumberParseException extends Exception {

    /* renamed from: a */
    EnumC16092a f56849a;

    /* renamed from: b */
    private String f56850b;

    /* renamed from: com.google.i18n.phonenumbers.NumberParseException$a */
    /* loaded from: classes4-dex2jar.jar:com/google/i18n/phonenumbers/NumberParseException$a.class */
    public enum EnumC16092a {
        INVALID_COUNTRY_CODE,
        NOT_A_NUMBER,
        TOO_SHORT_AFTER_IDD,
        TOO_SHORT_NSN,
        TOO_LONG
    }

    public NumberParseException(EnumC16092a enumC16092a, String str) {
        super(str);
        this.f56850b = str;
        this.f56849a = enumC16092a;
    }

    @Override // java.lang.Throwable
    public String toString() {
        return "Error type: " + this.f56849a + ". " + this.f56850b;
    }
}
