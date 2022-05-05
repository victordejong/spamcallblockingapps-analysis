package gogolook.callgogolook2.gson;

import android.text.TextUtils;
import gogolook.callgogolook2.MyApplication;
import p459j.p460a.p582w0.C14093n4;
import p459j.p460a.p582w0.C14108o4;
import p459j.p460a.p582w0.C14217x3;
/* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/gson/BasicPhoneNumber.class */
public class BasicPhoneNumber {
    public String displayNumber;
    public boolean isContact;
    public boolean isIncomingSuspiciousNumber;
    public boolean isUnknown;
    public String name;
    public String number;

    public BasicPhoneNumber(String str) {
        this.number = str;
        boolean z = !CallStats.m28534h().m28539c().m28529B();
        this.isIncomingSuspiciousNumber = z && !TextUtils.isEmpty(str) && C14093n4.m2569f(str);
        this.displayNumber = C14108o4.m2493a(str, true, z);
        this.name = C14217x3.m2146e(MyApplication.m29013o(), str);
        this.isContact = C14217x3.m2133i(MyApplication.m29013o(), str);
        this.isUnknown = C14108o4.m2496a(str, C14108o4.EnumC14110b.OTHERS);
    }
}
