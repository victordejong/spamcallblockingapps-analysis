package com.freshchat.consumer.sdk.p047b;

import java.util.regex.Pattern;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: com.freshchat.consumer.sdk.b.g */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/b/g.class */
public class C1468g {

    /* renamed from: dN */
    public Pattern f4077dN;

    /* renamed from: dO */
    public Pattern f4078dO;

    /* renamed from: dP */
    public Pattern f4079dP;

    public C1468g(String str) {
        StringBuilder m8728C = C22128a.m8728C("(?:");
        m8728C.append(Pattern.quote(str.trim()));
        m8728C.append(")");
        this.f4077dN = Pattern.compile(m8728C.toString(), 2);
        StringBuilder m8728C2 = C22128a.m8728C("^");
        m8728C2.append(Pattern.quote(str.trim()));
        this.f4078dO = Pattern.compile(m8728C2.toString(), 2);
        StringBuilder m8728C3 = C22128a.m8728C("\\b(?:");
        m8728C3.append(Pattern.quote(str.trim()));
        m8728C3.append(")\\b");
        this.f4079dP = Pattern.compile(m8728C3.toString(), 2);
    }

    /* renamed from: a */
    public int m40872a(String str, String str2) {
        int i = this.f4077dN.matcher(str2).find() ? 1 : 0;
        int i2 = i;
        if (this.f4077dN.matcher(str).find()) {
            i2 = i + 2;
        }
        int i3 = i2;
        if (this.f4078dO.matcher(str2).find()) {
            i3 = i2 + 1;
        }
        int i4 = i3;
        if (this.f4078dO.matcher(str).find()) {
            i4 = i3 + 2;
        }
        int i5 = i4;
        if (this.f4079dP.matcher(str2).find()) {
            i5 = i4 + 1;
        }
        int i6 = i5;
        if (this.f4079dP.matcher(str).find()) {
            i6 = i5 + 2;
        }
        return i6;
    }
}
