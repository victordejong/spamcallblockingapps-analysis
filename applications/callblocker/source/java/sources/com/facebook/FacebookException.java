package com.facebook;

import com.facebook.internal.C2039j;
import com.facebook.internal.p108a.p110b.C2008b;
import java.util.Random;
/* loaded from: classes-dex2jar.jar:com/facebook/FacebookException.class */
public class FacebookException extends RuntimeException {
    public FacebookException() {
    }

    public FacebookException(final String str) {
        super(str);
        Random random = new Random();
        if (str == null || !C2095j.m15374a() || random.nextInt(100) <= 50) {
            return;
        }
        C2039j.m15624a(C2039j.EnumC2043b.ErrorReport, new C2039j.AbstractC2042a() { // from class: com.facebook.FacebookException.1
            @Override // com.facebook.internal.C2039j.AbstractC2042a
            /* renamed from: a */
            public void mo15345a(boolean z) {
                if (z) {
                    try {
                        C2008b.m15667a(str);
                    } catch (Exception e) {
                    }
                }
            }
        });
    }

    public FacebookException(String str, Throwable th) {
        super(str, th);
    }

    public FacebookException(Throwable th) {
        super(th);
    }

    @Override // java.lang.Throwable
    public String toString() {
        return getMessage();
    }
}
