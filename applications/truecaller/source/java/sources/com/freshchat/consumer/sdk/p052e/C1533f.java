package com.freshchat.consumer.sdk.p052e;

import android.content.Context;
import com.freshchat.consumer.sdk.exception.AppDeletedException;
import com.freshchat.consumer.sdk.exception.DeletedException;
import com.freshchat.consumer.sdk.exception.UserDeletedException;
import com.freshchat.consumer.sdk.p047b.C1460a;
import com.freshchat.consumer.sdk.p047b.C1466e;
import com.freshchat.consumer.sdk.p047b.p048a.C1461a;
import com.freshchat.consumer.sdk.p057j.C1594aa;
import com.freshchat.consumer.sdk.p057j.C1626as;
import com.freshchat.consumer.sdk.p057j.C1733y;
import com.freshchat.consumer.sdk.service.p067d.C1870d;
import com.freshchat.consumer.sdk.service.p068e.C1908l;
/* renamed from: com.freshchat.consumer.sdk.e.f */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/e/f.class */
public class C1533f {
    /* renamed from: ar */
    private static void m40590ar(String str) throws UserDeletedException, AppDeletedException {
        if (C1626as.m40233a(str)) {
            C1461a c1461a = new C1461a(str);
            if (!c1461a.m41026cn()) {
                return;
            }
            if (c1461a.m41025db()) {
                throw new UserDeletedException();
            }
            if (c1461a.m41024fJ()) {
                throw new AppDeletedException();
            }
        }
    }

    /* renamed from: bV */
    public static void m40589bV(Context context) {
        C1870d.m39385b(context, new C1908l(C1733y.m39777aG(context)));
    }

    /* renamed from: o */
    public static void m40588o(Context context, String str) throws DeletedException {
        try {
            m40590ar(str);
        } catch (AppDeletedException e) {
            C1466e m40905i = C1466e.m40905i(context);
            C1908l c1908l = new C1908l(C1733y.m39777aG(context));
            C1594aa.m40353aK(context);
            C1733y.m39779a(context, c1908l);
            m40905i.setAccountActive(false);
            m40905i.m40993bA();
            C1460a.m41056W(context);
            throw new DeletedException();
        } catch (UserDeletedException e2) {
            C1594aa.m40359a(context, false, true);
            C1460a.m41056W(context);
            throw new DeletedException();
        }
    }
}
