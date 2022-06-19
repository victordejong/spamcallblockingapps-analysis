package com.iab.omid.library.verizonmedia.p453g.p454a;

import android.text.TextUtils;
import com.iab.omid.library.verizonmedia.adsession.C16492k;
import com.iab.omid.library.verizonmedia.p448b.C16494a;
import com.iab.omid.library.verizonmedia.p448b.C16500e;
import com.iab.omid.library.verizonmedia.p450d.C16511b;
import com.iab.omid.library.verizonmedia.p452f.AbstractC16518a;
import com.iab.omid.library.verizonmedia.p453g.p454a.AbstractAsyncTaskC16528b;
import java.util.Collections;
import java.util.HashSet;
import org.json.JSONObject;
/* renamed from: com.iab.omid.library.verizonmedia.g.a.f */
/* loaded from: classes4-dex2jar.jar:com/iab/omid/library/verizonmedia/g/a/f.class */
public final class AsyncTaskC16534f extends AbstractAsyncTaskC16527a {
    public AsyncTaskC16534f(AbstractAsyncTaskC16528b.AbstractC16530b abstractC16530b, HashSet<String> hashSet, JSONObject jSONObject, long j) {
        super(abstractC16530b, hashSet, jSONObject, j);
    }

    @Override // com.iab.omid.library.verizonmedia.p453g.p454a.AbstractAsyncTaskC16528b
    /* renamed from: a */
    public final void onPostExecute(String str) {
        C16494a m7145a;
        if (!TextUtils.isEmpty(str) && (m7145a = C16494a.m7145a()) != null) {
            for (C16492k c16492k : Collections.unmodifiableCollection(m7145a.f58055a)) {
                if (this.f58124a.contains(c16492k.f58048f)) {
                    AbstractC16518a abstractC16518a = c16492k.f58045c;
                    if (this.f58126c >= abstractC16518a.f58101e) {
                        abstractC16518a.f58100d = AbstractC16518a.EnumC16519a.f58103b;
                        C16500e.m7136a().m7128b(abstractC16518a.m7089c(), str);
                    }
                }
            }
        }
        super.onPostExecute(str);
    }

    @Override // android.os.AsyncTask
    protected final /* synthetic */ String doInBackground(Object[] objArr) {
        if (C16511b.m7106b(this.f58125b, this.f58128e.mo7066a())) {
            return null;
        }
        this.f58128e.mo7065a(this.f58125b);
        return this.f58125b.toString();
    }
}
