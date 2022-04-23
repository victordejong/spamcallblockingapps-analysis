package com.google.i18n.phonenumbers;
/* loaded from: classes-dex2jar.jar:com/google/i18n/phonenumbers/NumberParseException.class */
public class NumberParseException extends Exception {

    /* renamed from: f */
    private ErrorType f12234f;

    /* renamed from: g */
    private String f12235g;

    /* loaded from: classes-dex2jar.jar:com/google/i18n/phonenumbers/NumberParseException$ErrorType.class */
    public enum ErrorType {
        INVALID_COUNTRY_CODE,
        NOT_A_NUMBER,
        TOO_SHORT_AFTER_IDD,
        TOO_SHORT_NSN,
        TOO_LONG
    }

    public NumberParseException(ErrorType errorType, String str) {
        super(str);
        this.f12235g = str;
        this.f12234f = errorType;
    }

    /* renamed from: a */
    public ErrorType m8080a() {
        return this.f12234f;
    }

    @Override // java.lang.Throwable
    public String toString() {
        return "Error type: " + this.f12234f + ". " + this.f12235g;
    }
}
