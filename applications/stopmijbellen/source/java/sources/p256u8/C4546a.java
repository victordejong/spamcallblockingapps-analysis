package p256u8;

import android.content.ContentResolver;
import android.database.ContentObserver;
import android.net.Uri;
import com.raizlabs.android.dbflow.config.FlowManager;
import java.util.List;
import p024b9.AbstractC0744d;
import p024b9.C0740a;
import p267v8.C4658d;
import p278w8.AbstractC4787n;
/* renamed from: u8.a */
/* loaded from: classes2-dex2jar.jar:u8/a.class */
public class C4546a implements AbstractC4552d {
    public C4546a(String str) {
    }

    @Override // p256u8.AbstractC4552d
    /* renamed from: a */
    public <T> void mo846a(T t, AbstractC0744d<T> abstractC0744d, C0740a.EnumC0741a enumC0741a) {
        if (C4551c.f13981a.get() > 0) {
            ContentResolver contentResolver = FlowManager.m3910c().getContentResolver();
            Class<Object> mo2690b = abstractC0744d.mo2690b();
            List<AbstractC4787n> list = abstractC0744d.mo2689c(t).f14708f;
            char[] cArr = C4658d.f14356a;
            Uri.Builder appendQueryParameter = new Uri.Builder().scheme("dbflow").authority("com.dbflow.authority").appendQueryParameter("tableName", FlowManager.m3904i(mo2690b));
            if (enumC0741a != null) {
                appendQueryParameter.fragment(enumC0741a.name());
            }
            if (list != null) {
                for (AbstractC4787n abstractC4787n : list) {
                    appendQueryParameter.appendQueryParameter(Uri.encode(abstractC4787n.mo466a()), Uri.encode(String.valueOf(abstractC4787n.value())));
                }
            }
            contentResolver.notifyChange(appendQueryParameter.build(), (ContentObserver) null, true);
        }
    }

    @Override // p256u8.AbstractC4552d
    /* renamed from: b */
    public <T> void mo845b(Class<T> cls, C0740a.EnumC0741a enumC0741a) {
        if (C4551c.f13981a.get() > 0) {
            ContentResolver contentResolver = FlowManager.m3910c().getContentResolver();
            char[] cArr = C4658d.f14356a;
            Uri.Builder appendQueryParameter = new Uri.Builder().scheme("dbflow").authority("com.dbflow.authority").appendQueryParameter("tableName", FlowManager.m3904i(cls));
            if (enumC0741a != null) {
                appendQueryParameter.fragment(enumC0741a.name());
            }
            contentResolver.notifyChange(appendQueryParameter.build(), (ContentObserver) null, true);
        }
    }
}
