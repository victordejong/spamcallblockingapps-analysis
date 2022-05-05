package p459j.p460a.p474c0.p488f;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.XmlResourceParser;
import android.os.Bundle;
import android.util.SparseArray;
import gogolook.callgogolook2.R$xml;
import p065f.p066a.p068b.p069a.AbstractC4246d;
import p459j.p460a.p474c0.p488f.C11819b;
import p459j.p460a.p474c0.p499h.AbstractC12181l0;
import p459j.p460a.p474c0.p499h.C12153d0;
import p459j.p460a.p582w0.C14017g4;
/* renamed from: j.a.c0.f.d */
/* loaded from: classes2-dex2jar.jar:j/a/c0/f/d.class */
public class C11825d implements AbstractC4246d {

    /* renamed from: c */
    public final Context f26519c;

    /* renamed from: d */
    public final SparseArray<Bundle> f26520d = new SparseArray<>();

    /* renamed from: j.a.c0.f.d$a */
    /* loaded from: classes2-dex2jar.jar:j/a/c0/f/d$a.class */
    public class C11826a implements C11819b.AbstractC11821b {

        /* renamed from: a */
        public final /* synthetic */ Bundle f26521a;

        public C11826a(C11825d dVar, Bundle bundle) {
            this.f26521a = bundle;
        }

        @Override // p459j.p460a.p474c0.p488f.C11819b.AbstractC11821b
        /* renamed from: a */
        public void mo8199a(String str, String str2, String str3, String str4) {
            C11825d.m8202a(this.f26521a, str4, str2, str3);
        }
    }

    public C11825d(Context context) {
        this.f26519c = context;
    }

    /* renamed from: a */
    public static Context m8203a(Context context, int i) {
        if (!C14017g4.m2804t()) {
            return context;
        }
        int[] h = AbstractC12181l0.m6895b(i).mo6873h();
        int i2 = h[0];
        int i3 = h[1];
        Configuration configuration = new Configuration();
        if (i2 == 0 && i3 == 0) {
            Configuration configuration2 = context.getResources().getConfiguration();
            configuration.mcc = configuration2.mcc;
            configuration.mnc = configuration2.mnc;
        } else {
            configuration.mcc = i2;
            configuration.mnc = i3;
        }
        return context.createConfigurationContext(configuration);
    }

    /* renamed from: a */
    public static void m8202a(Bundle bundle, String str, String str2, String str3) {
        try {
            if ("int".equals(str)) {
                bundle.putInt(str2, Integer.parseInt(str3));
            } else if ("bool".equals(str)) {
                bundle.putBoolean(str2, Boolean.parseBoolean(str3));
            } else if ("string".equals(str)) {
                bundle.putString(str2, str3);
            }
        } catch (NumberFormatException e) {
            C12153d0.m6981e("MessagingApp", "Add carrier values: invalid " + str2 + "," + str3 + "," + str);
        }
    }

    /* renamed from: c */
    public static void m8200c(int i, Bundle bundle) {
        try {
            Bundle carrierConfigValues = AbstractC12181l0.m6895b(i).mo6871j().getCarrierConfigValues();
            if (carrierConfigValues != null) {
                bundle.putAll(carrierConfigValues);
            }
        } catch (Exception e) {
            C12153d0.m6982d("MessagingApp", "Calling system getCarrierConfigValues exception", e);
        }
    }

    /* renamed from: a */
    public void m8205a() {
        synchronized (this) {
            this.f26520d.clear();
        }
    }

    /* renamed from: a */
    public final void m8204a(int i, Bundle bundle) {
        XmlResourceParser xml;
        XmlResourceParser xmlResourceParser = null;
        XmlResourceParser xmlResourceParser2 = null;
        try {
            try {
                xml = m8203a(this.f26519c, i).getResources().getXml(R$xml.mms_config);
                C11819b a = C11819b.m8231a(xml);
                a.m8235a(new C11826a(this, bundle));
                xmlResourceParser2 = xml;
                xmlResourceParser = xml;
                a.m8239a();
            } catch (Resources.NotFoundException e) {
                C12153d0.m6981e("MessagingApp", "Can not find mms_config.xml");
                if (xmlResourceParser == null) {
                    return;
                }
            }
            if (xml != null) {
                xmlResourceParser = xml;
                xmlResourceParser.close();
            }
        } catch (Throwable th) {
            if (xmlResourceParser2 != null) {
                xmlResourceParser2.close();
            }
            throw th;
        }
    }

    /* renamed from: b */
    public final String m8201b(int i, Bundle bundle) {
        m8204a(i, bundle);
        if (!C14017g4.m2805s()) {
            return "resources";
        }
        m8200c(i, bundle);
        return "resources+system";
    }

    @Override // p065f.p066a.p068b.p069a.AbstractC4246d
    public Bundle get(int i) {
        Bundle bundle;
        String str;
        int a = AbstractC12181l0.m6886t().mo6881a(i);
        synchronized (this) {
            bundle = this.f26520d.get(a);
            if (bundle == null) {
                bundle = new Bundle();
                this.f26520d.put(a, bundle);
                str = m8201b(a, bundle);
            } else {
                str = null;
            }
        }
        if (str != null) {
            C12153d0.m6985c("MessagingApp", "Carrier configs loaded: " + bundle + " from " + str + " for subId=" + a);
        }
        return bundle;
    }
}
