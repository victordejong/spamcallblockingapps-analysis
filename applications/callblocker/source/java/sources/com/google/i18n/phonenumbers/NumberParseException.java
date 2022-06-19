package com.google.i18n.phonenumbers;
/* loaded from: classes-dex2jar.jar:com/google/i18n/phonenumbers/NumberParseException.class */
public class NumberParseException extends Exception {

    /* renamed from: a */
    private EnumC5042a f21293a;

    /* renamed from: b */
    private String f21294b;

    /* renamed from: com.google.i18n.phonenumbers.NumberParseException$a */
    /* loaded from: classes-dex2jar.jar:com/google/i18n/phonenumbers/NumberParseException$a.class */
    public enum EnumC5042a {
        INVALID_COUNTRY_CODE,
        NOT_A_NUMBER,
        TOO_SHORT_AFTER_IDD,
        TOO_SHORT_NSN,
        TOO_LONG
    }

    public NumberParseException(EnumC5042a enumC5042a, String str) {
        super(str);
        this.f21294b = str;
        this.f21293a = enumC5042a;
    }

    /* renamed from: a */
    public EnumC5042a m1762a() {
        return this.f21293a;
    }

    @Override // java.lang.Throwable
    public String toString() {
        return "Error type: " + this.f21293a + ". " + this.f21294b;
    }
}
