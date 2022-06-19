package com.google.firebase.crashlytics.p293d.p301k;

import android.content.Context;
import com.google.android.datatransport.AbstractC4603c;
import com.google.android.datatransport.AbstractC4645d;
import com.google.android.datatransport.AbstractC4646e;
import com.google.android.datatransport.AbstractC4647f;
import com.google.android.datatransport.C4602b;
import com.google.android.datatransport.cct.C4604a;
import com.google.android.datatransport.p232h.C4679r;
import com.google.android.gms.tasks.AbstractC7966g;
import com.google.android.gms.tasks.C7968h;
import com.google.firebase.crashlytics.internal.common.AbstractC9115n;
import com.google.firebase.crashlytics.p293d.p297h.AbstractC9004v;
import com.google.firebase.crashlytics.p293d.p297h.p298x.C9051h;
/* renamed from: com.google.firebase.crashlytics.d.k.c */
/* loaded from: classes2-dex2jar.jar:com/google/firebase/crashlytics/d/k/c.class */
public class C9067c {

    /* renamed from: a */
    private static final C9051h f39229a = new C9051h();

    /* renamed from: b */
    private static final String f39230b = m1983d("hts/cahyiseot-agolai.o/1frlglgc/aclg", "tp:/rsltcrprsp.ogepscmv/ieo/eaybtho");

    /* renamed from: c */
    private static final String f39231c = m1983d("AzSBpY4F0rHiHFdinTvM", "IayrSTFL9eJ69YeSUO2");

    /* renamed from: d */
    private static final AbstractC4645d<AbstractC9004v, byte[]> f39232d = C9066b.m1987b();

    /* renamed from: e */
    private final AbstractC4646e<AbstractC9004v> f39233e;

    /* renamed from: f */
    private final AbstractC4645d<AbstractC9004v, byte[]> f39234f;

    C9067c(AbstractC4646e<AbstractC9004v> abstractC4646e, AbstractC4645d<AbstractC9004v, byte[]> abstractC4645d) {
        this.f39233e = abstractC4646e;
        this.f39234f = abstractC4645d;
    }

    /* renamed from: a */
    public static C9067c m1986a(Context context) {
        C4679r.m22008f(context);
        AbstractC4647f m22007g = C4679r.m22011c().m22007g(new C4604a(f39230b, f39231c));
        C4602b m22183b = C4602b.m22183b("json");
        AbstractC4645d<AbstractC9004v, byte[]> abstractC4645d = f39232d;
        return new C9067c(m22007g.mo1361a("FIREBASE_CRASHLYTICS_REPORT", AbstractC9004v.class, m22183b, abstractC4645d), abstractC4645d);
    }

    /* renamed from: b */
    public static /* synthetic */ void m1985b(C7968h c7968h, AbstractC9115n abstractC9115n, Exception exc) {
        if (exc != null) {
            c7968h.m5804d(exc);
        } else {
            c7968h.m5803e(abstractC9115n);
        }
    }

    /* renamed from: d */
    private static String m1983d(String str, String str2) {
        int length = str.length() - str2.length();
        if (length < 0 || length > 1) {
            throw new IllegalArgumentException("Invalid input received");
        }
        StringBuilder sb = new StringBuilder(str.length() + str2.length());
        for (int i = 0; i < str.length(); i++) {
            sb.append(str.charAt(i));
            if (str2.length() > i) {
                sb.append(str2.charAt(i));
            }
        }
        return sb.toString();
    }

    /* renamed from: e */
    public AbstractC7966g<AbstractC9115n> m1982e(AbstractC9115n abstractC9115n) {
        AbstractC9004v mo1801b = abstractC9115n.mo1801b();
        C7968h c7968h = new C7968h();
        this.f39233e.mo1362b(AbstractC4603c.m22178e(mo1801b), C9065a.m1988b(c7968h, abstractC9115n));
        return c7968h.m5807a();
    }
}
