package p081h.p203i.p204a.p224e.p253f;

import android.content.Context;
import com.google.android.gms.dynamite.DynamiteModule;
/* renamed from: h.i.a.e.f.a */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/f/a.class */
public final class C7119a implements DynamiteModule.AbstractC3568b {
    @Override // com.google.android.gms.dynamite.DynamiteModule.AbstractC3568b
    /* renamed from: a */
    public final DynamiteModule.AbstractC3568b.C3569a mo21052a(Context context, String str, DynamiteModule.AbstractC3568b.AbstractC3570b bVar) throws DynamiteModule.C3567a {
        DynamiteModule.AbstractC3568b.C3569a aVar = new DynamiteModule.AbstractC3568b.C3569a();
        aVar.f6684b = bVar.mo21053a(context, str, true);
        if (aVar.f6684b != 0) {
            aVar.f6685c = 1;
        } else {
            aVar.f6683a = bVar.mo21054a(context, str);
            if (aVar.f6683a != 0) {
                aVar.f6685c = -1;
            }
        }
        return aVar;
    }
}
