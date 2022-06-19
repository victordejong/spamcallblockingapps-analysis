package com.iab.omid.library.mopub.p435g.p436a;

import android.text.TextUtils;
import com.iab.omid.library.mopub.adsession.C16360k;
import com.iab.omid.library.mopub.p430b.C16362a;
import com.iab.omid.library.mopub.p430b.C16368e;
import com.iab.omid.library.mopub.p432d.C16379b;
import com.iab.omid.library.mopub.p434f.AbstractC16386a;
import com.iab.omid.library.mopub.p435g.p436a.AbstractAsyncTaskC16396b;
import java.util.Collections;
import java.util.HashSet;
import org.json.JSONObject;
/* renamed from: com.iab.omid.library.mopub.g.a.f */
/* loaded from: classes4-dex2jar.jar:com/iab/omid/library/mopub/g/a/f.class */
public final class AsyncTaskC16402f extends AbstractAsyncTaskC16395a {
    public AsyncTaskC16402f(AbstractAsyncTaskC16396b.AbstractC16398b abstractC16398b, HashSet<String> hashSet, JSONObject jSONObject, long j) {
        super(abstractC16398b, hashSet, jSONObject, j);
    }

    @Override // com.iab.omid.library.mopub.p435g.p436a.AbstractAsyncTaskC16396b
    /* renamed from: a */
    public final void onPostExecute(String str) {
        C16362a m7365a;
        if (!TextUtils.isEmpty(str) && (m7365a = C16362a.m7365a()) != null) {
            for (C16360k c16360k : Collections.unmodifiableCollection(m7365a.f57794a)) {
                if (this.f57863a.contains(c16360k.f57787f)) {
                    AbstractC16386a abstractC16386a = c16360k.f57784c;
                    if (this.f57865c >= abstractC16386a.f57840e) {
                        abstractC16386a.f57839d = AbstractC16386a.EnumC16387a.f57842b;
                        C16368e.m7358a().m7350b(abstractC16386a.m7311c(), str);
                    }
                }
            }
        }
        super.onPostExecute(str);
    }

    @Override // android.os.AsyncTask
    protected final /* synthetic */ String doInBackground(Object[] objArr) {
        if (C16379b.m7329b(this.f57864b, this.f57867e.mo7288a())) {
            return null;
        }
        this.f57867e.mo7287a(this.f57864b);
        return this.f57864b.toString();
    }
}
