package com.google.i18n.phonenumbers;
/* loaded from: classes4-dex2jar.jar:com/google/i18n/phonenumbers/NumberParseException.class */
public class NumberParseException extends Exception {

    /* renamed from: a  reason: collision with root package name */
    a f32818a;

    /* renamed from: b  reason: collision with root package name */
    private String f32819b;

    /* loaded from: classes4-dex2jar.jar:com/google/i18n/phonenumbers/NumberParseException$a.class */
    public enum a {
        INVALID_COUNTRY_CODE,
        NOT_A_NUMBER,
        TOO_SHORT_AFTER_IDD,
        TOO_SHORT_NSN,
        TOO_LONG
    }

    public NumberParseException(a aVar, String str) {
        super(str);
        this.f32819b = str;
        this.f32818a = aVar;
    }

    @Override // java.lang.Throwable
    public String toString() {
        return "Error type: " + this.f32818a + ". " + this.f32819b;
    }
}
