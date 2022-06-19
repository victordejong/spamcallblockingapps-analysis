package com.facebook;

import com.facebook.internal.C10291l;
import com.facebook.internal.p299b.p302c.C10255b;
import java.util.Random;
/* loaded from: classes3-dex2jar.jar:com/facebook/FacebookException.class */
public class FacebookException extends RuntimeException {
    public FacebookException() {
    }

    public FacebookException(final String str) {
        super(str);
        Random random = new Random();
        if (str == null || !C10181g.m23306a() || random.nextInt(100) <= 50) {
            return;
        }
        C10291l.m23050a(C10291l.EnumC10293b.ErrorReport, new C10291l.AbstractC10292a() { // from class: com.facebook.FacebookException.1
            @Override // com.facebook.internal.C10291l.AbstractC10292a
            /* renamed from: a */
            public final void mo23045a(boolean z) {
                if (z) {
                    try {
                        C10255b.m23100a(str);
                    } catch (Exception e) {
                    }
                }
            }
        });
    }

    public FacebookException(String str, Throwable th) {
        super(str, th);
    }

    public FacebookException(String str, Object... objArr) {
        this(String.format(str, objArr));
    }

    public FacebookException(Throwable th) {
        super(th);
    }

    @Override // java.lang.Throwable
    public String toString() {
        return getMessage();
    }
}
