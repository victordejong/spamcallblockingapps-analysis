package p459j.p460a.p463b0.p468u;

import androidx.annotation.UiThread;
import java.util.ArrayList;
import java.util.List;
import p459j.p460a.p582w0.p590x4.C14247d;
import p459j.p460a.p582w0.p590x4.C14282k;
import p459j.p460a.p582w0.p590x4.p591a0.AbstractC14238e;
import p459j.p460a.p582w0.p590x4.p591a0.C14231a;
import p459j.p460a.p582w0.p590x4.p591a0.C14236d;
import p626l.p641z.p643d.C15149k;
/* renamed from: j.a.b0.u.b */
/* loaded from: classes2-dex2jar.jar:j/a/b0/u/b.class */
public final class C11397b {

    /* renamed from: a */
    public static C14282k f25503a;

    /* renamed from: c */
    public static boolean f25505c;

    /* renamed from: d */
    public static final C11397b f25506d = new C11397b();

    /* renamed from: b */
    public static final List<String> f25504b = new ArrayList();

    /* renamed from: a */
    public static final void m9696a(String str) {
        C15149k.m377b(str, "drawerItemName");
        f25504b.add(str);
    }

    @UiThread
    /* renamed from: a */
    public static final void m9695a(String str, String str2) {
        C15149k.m377b(str, "item");
        C14282k kVar = f25503a;
        if (kVar != null) {
            kVar.m1920a("clicked_item_name", str);
            kVar.m1920a("clicked_item_url", String.valueOf(str2));
        }
    }

    @UiThread
    /* renamed from: a */
    public static /* synthetic */ void m9694a(String str, String str2, int i, Object obj) {
        if ((i & 2) != 0) {
            str2 = null;
        }
        m9695a(str, str2);
    }

    @UiThread
    /* renamed from: b */
    public static final void m9692b() {
        f25504b.clear();
        f25505c = false;
    }

    @UiThread
    /* renamed from: c */
    public static final void m9691c() {
        C14282k a = f25506d.m9697a();
        a.m1920a("red_dot", Integer.valueOf(f25505c ? 1 : 0));
        a.m1920a("item_list", f25504b.toString());
        f25503a = a;
    }

    @UiThread
    /* renamed from: d */
    public static final void m9690d() {
        C14282k kVar = f25503a;
        if (kVar != null) {
            kVar.m1923a();
        }
        f25503a = null;
    }

    /* renamed from: a */
    public final C14282k m9697a() {
        C14231a aVar = new C14231a();
        aVar.m2100a("version", 1);
        aVar.m2100a("red_dot", 0);
        aVar.m2100a("item_list", C14247d.f31851f);
        aVar.m2100a("clicked_item_name", "none");
        aVar.m2100a("clicked_item_url", "none");
        return new C14282k(new AbstractC14238e[]{new C14236d("whoscall_main_drawer")}, aVar);
    }

    /* renamed from: a */
    public final void m9693a(boolean z) {
        f25505c = z;
    }
}
