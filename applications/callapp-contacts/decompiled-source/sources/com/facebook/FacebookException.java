package com.facebook;

import com.facebook.internal.b.c.b;
import com.facebook.internal.l;
import java.util.Random;
/* loaded from: classes3-dex2jar.jar:com/facebook/FacebookException.class */
public class FacebookException extends RuntimeException {
    public FacebookException() {
    }

    public FacebookException(final String str) {
        super(str);
        Random random = new Random();
        if (str != null && g.a() && random.nextInt(100) > 50) {
            l.a(l.b.ErrorReport, new l.a() { // from class: com.facebook.FacebookException.1
                @Override // com.facebook.internal.l.a
                public final void a(boolean z) {
                    if (z) {
                        try {
                            b.a(str);
                        } catch (Exception e) {
                        }
                    }
                }
            });
        }
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
