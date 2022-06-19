package com.razorpay;

import java.util.regex.Pattern;
/* loaded from: classes3-dex2jar.jar:com/razorpay/OTP.class */
public class OTP {

    /* renamed from: a */
    public String f9411a;

    /* renamed from: b */
    private String f9412b;

    /* renamed from: c */
    private String f9413c;

    public OTP(String str, String str2, String str3) {
        this.f9412b = str;
        this.f9413c = str2;
        this.f9411a = str3;
        if (!Pattern.compile("^\\d").matcher(this.f9412b).find()) {
            this.f9412b = this.f9412b.substring(1);
        }
        if (!Pattern.compile("\\d$").matcher(this.f9412b).find()) {
            String str4 = this.f9412b;
            this.f9412b = str4.substring(0, str4.length() - 1);
        }
    }

    public String toString() {
        return "Pin: " + this.f9412b + " bank: " + this.f9413c + " sender: " + this.f9411a;
    }
}
