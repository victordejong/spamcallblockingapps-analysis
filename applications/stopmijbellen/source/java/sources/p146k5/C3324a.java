package p146k5;

import p103g5.AbstractC2878v;
import p114h5.C3009a;
import p218r2.AbstractC4187e;
import p218r2.AbstractC4188f;
import p241t4.C4398d;
/* renamed from: k5.a */
/* loaded from: classes-dex2jar.jar:k5/a.class */
public class C3324a {

    /* renamed from: b */
    public static final C3009a f11276b = new C3009a();

    /* renamed from: c */
    public static final String f11277c = m2377a("hts/cahyiseot-agolai.o/1frlglgc/aclg", "tp:/rsltcrprsp.ogepscmv/ieo/eaybtho");

    /* renamed from: d */
    public static final String f11278d = m2377a("AzSBpY4F0rHiHFdinTvM", "IayrSTFL9eJ69YeSUO2");

    /* renamed from: e */
    public static final AbstractC4187e<AbstractC2878v, byte[]> f11279e = C4398d.f13702d;

    /* renamed from: a */
    public final AbstractC4188f<AbstractC2878v> f11280a;

    public C3324a(AbstractC4188f<AbstractC2878v> abstractC4188f, AbstractC4187e<AbstractC2878v, byte[]> abstractC4187e) {
        this.f11280a = abstractC4188f;
    }

    /* renamed from: a */
    public static String m2377a(String str, String str2) {
        int length = str.length() - str2.length();
        if (length < 0 || length > 1) {
            throw new IllegalArgumentException("Invalid input received");
        }
        StringBuilder sb = new StringBuilder(str2.length() + str.length());
        for (int i = 0; i < str.length(); i++) {
            sb.append(str.charAt(i));
            if (str2.length() > i) {
                sb.append(str2.charAt(i));
            }
        }
        return sb.toString();
    }
}
