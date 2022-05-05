package p459j.p460a.p474c0.p499h;

import android.text.TextUtils;
import gogolook.callgogolook2.R$string;
import p081h.p093b.p099c.p100a.C5607h;
import p459j.p460a.p474c0.AbstractC11516a;
import p459j.p460a.p582w0.C14108o4;
/* renamed from: j.a.c0.h.p */
/* loaded from: classes3-dex2jar.jar:j/a/c0/h/p.class */
public class C12195p {
    /* renamed from: a */
    public static C5607h m6840a(String str) {
        return m6839a(str, -1000L);
    }

    /* renamed from: a */
    public static C5607h m6839a(String str, long j) {
        return C5607h.m25035a((String) null, 40, str, -1, (String) null, j, (Long) null, j, j == -1001 ? C12155e.f27299a : null, true, (String) null);
    }

    /* renamed from: a */
    public static String m6841a(C5607h hVar) {
        return C14108o4.m2493a(hVar.m25027c(), true, false);
    }

    /* renamed from: b */
    public static C5607h m6837b(String str) {
        return m6839a(str, -1001L);
    }

    /* renamed from: b */
    public static String m6838b(C5607h hVar) {
        return hVar.m25039a() == -1001 ? AbstractC11516a.m9413n().mo9412a().getResources().getString(R$string.contact_list_send_to_text, C14108o4.m2493a(hVar.m25027c(), true, false)) : !TextUtils.isEmpty(hVar.m25023g()) ? hVar.m25023g() : m6841a(hVar);
    }

    /* renamed from: c */
    public static boolean m6836c(C5607h hVar) {
        return hVar.m25039a() == -1000;
    }

    /* renamed from: d */
    public static boolean m6835d(C5607h hVar) {
        return hVar.m25039a() == -1001;
    }
}
