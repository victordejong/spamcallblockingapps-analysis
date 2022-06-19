package com.facebook.login;

import android.content.ActivityNotFoundException;
import android.content.Intent;
import android.os.Bundle;
import android.os.Parcel;
import com.facebook.EnumC1981d;
import com.facebook.FacebookException;
import com.facebook.internal.C2077v;
import com.facebook.internal.C2079x;
import com.facebook.login.C2141j;
/* renamed from: com.facebook.login.p */
/* loaded from: classes-dex2jar.jar:com/facebook/login/p.class */
public abstract class AbstractC2163p extends AbstractC2161n {
    public AbstractC2163p(Parcel parcel) {
        super(parcel);
    }

    public AbstractC2163p(C2141j c2141j) {
        super(c2141j);
    }

    /* renamed from: a */
    private C2141j.C2147d m15080a(C2141j.C2145c c2145c, Intent intent) {
        C2141j.C2147d c2147d;
        Bundle extras = intent.getExtras();
        String m15081a = m15081a(extras);
        String obj = extras.get("error_code") != null ? extras.get("error_code").toString() : null;
        String m15079b = m15079b(extras);
        String string = extras.getString("e2e");
        if (!C2079x.m15472a(string)) {
            m15087b(string);
        }
        if (m15081a == null && obj == null && m15079b == null) {
            try {
                c2147d = C2141j.C2147d.m15146a(c2145c, m15089a(c2145c.m15160a(), extras, EnumC1981d.FACEBOOK_APPLICATION_WEB, c2145c.m15155d()));
            } catch (FacebookException e) {
                c2147d = C2141j.C2147d.m15144a(c2145c, null, e.getMessage());
            }
        } else {
            c2147d = null;
            if (!C2077v.f6109a.contains(m15081a)) {
                c2147d = C2077v.f6110b.contains(m15081a) ? C2141j.C2147d.m15145a(c2145c, (String) null) : C2141j.C2147d.m15143a(c2145c, m15081a, m15079b, obj);
            }
        }
        return c2147d;
    }

    /* renamed from: a */
    private String m15081a(Bundle bundle) {
        String string = bundle.getString("error");
        String str = string;
        if (string == null) {
            str = bundle.getString("error_type");
        }
        return str;
    }

    /* renamed from: b */
    private C2141j.C2147d m15078b(C2141j.C2145c c2145c, Intent intent) {
        Bundle extras = intent.getExtras();
        String m15081a = m15081a(extras);
        String obj = extras.get("error_code") != null ? extras.get("error_code").toString() : null;
        return "CONNECTION_FAILURE".equals(obj) ? C2141j.C2147d.m15143a(c2145c, m15081a, m15079b(extras), obj) : C2141j.C2147d.m15145a(c2145c, m15081a);
    }

    /* renamed from: b */
    private String m15079b(Bundle bundle) {
        String string = bundle.getString("error_message");
        String str = string;
        if (string == null) {
            str = bundle.getString("error_description");
        }
        return str;
    }

    @Override // com.facebook.login.AbstractC2161n
    /* renamed from: a */
    public boolean mo15083a(int i, int i2, Intent intent) {
        C2141j.C2145c m15178c = this.f6340b.m15178c();
        C2141j.C2147d m15145a = intent == null ? C2141j.C2147d.m15145a(m15178c, "Operation canceled") : i2 == 0 ? m15078b(m15178c, intent) : i2 != -1 ? C2141j.C2147d.m15144a(m15178c, "Unexpected resultCode from authorization.", null) : m15080a(m15178c, intent);
        if (m15145a != null) {
            this.f6340b.m15186a(m15145a);
            return true;
        }
        this.f6340b.m15169i();
        return true;
    }

    /* renamed from: a */
    public boolean m15082a(Intent intent, int i) {
        boolean z = false;
        if (intent != null) {
            try {
                this.f6340b.m15192a().startActivityForResult(intent, i);
                z = true;
            } catch (ActivityNotFoundException e) {
            }
        }
        return z;
    }

    @Override // com.facebook.login.AbstractC2161n
    /* renamed from: a */
    public abstract boolean mo15067a(C2141j.C2145c c2145c);
}
