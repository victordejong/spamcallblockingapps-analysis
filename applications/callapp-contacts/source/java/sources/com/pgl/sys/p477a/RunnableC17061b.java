package com.pgl.sys.p477a;

import android.content.Context;
import com.explorestack.iab.vast.VastError;
import com.pgl.p474a.p475a.C17049a;
import com.pgl.p474a.p476b.C17058f;
import com.pgl.sys.ces.C17064a;
import com.pgl.sys.ces.C17072b;
import com.pgl.sys.p477a.p478a.AbstractC17060a;
import com.pgl.sys.p477a.p479b.C17062a;
import java.util.Calendar;
import org.json.JSONObject;
/* renamed from: com.pgl.sys.a.b */
/* loaded from: classes4-dex2jar.jar:com/pgl/sys/a/b.class */
public final class RunnableC17061b implements Runnable {

    /* renamed from: a */
    private AbstractC17060a f60585a;

    /* renamed from: b */
    private Context f60586b;

    public RunnableC17061b(Context context, AbstractC17060a abstractC17060a) {
        this.f60585a = abstractC17060a;
        this.f60586b = context;
    }

    /* JADX WARN: Type inference failed for: r0v100, types: [long] */
    /* JADX WARN: Type inference failed for: r0v103, types: [long] */
    @Override // java.lang.Runnable
    public final void run() {
        StringBuilder sb;
        C17072b c17072b;
        String str;
        byte[] bArr;
        int i;
        JSONObject jSONObject;
        long currentTimeMillis = System.currentTimeMillis();
        try {
            str = C17049a.m5958b() + "/v1/getInfoPgl";
            char c = 0;
            char timeInMillis = C17072b.m5917a().f60602a ? Calendar.getInstance().getTimeInMillis() : (char) 0;
            bArr = (byte[]) C17064a.meta(VastError.ERROR_CODE_BAD_URI, this.f60586b, null);
            if (C17072b.m5917a().f60602a) {
                c = Calendar.getInstance().getTimeInMillis();
            }
            if (C17072b.m5917a().f60602a) {
                new StringBuilder("[Efficient] selas : ").append(c - timeInMillis);
            }
        } catch (Throwable th) {
            try {
                C17059a.f60579a = 500;
                c17072b = C17072b.m5917a();
                sb = new StringBuilder("SS-");
            } catch (Throwable th2) {
                C17072b.m5917a().reportNow("SS-" + C17059a.f60579a);
                throw th2;
            }
        }
        if (bArr == null || bArr.length <= 0) {
            throw new NullPointerException("NullPointerException");
        }
        String str2 = str + "?os=android&app_key=" + C17059a.f60581c + "&did=" + C17072b.m5909c() + "&version=1.0.5&version_code=5&time=" + String.valueOf(currentTimeMillis);
        int i2 = 0;
        int i3 = 504;
        while (true) {
            i = i3;
            if (i2 >= 3) {
                break;
            }
            jSONObject = new JSONObject(C17062a.m5943a(str2, bArr));
            i3 = jSONObject.getInt("code");
            if (i3 == 200 || i3 == 202) {
                break;
            }
            i2++;
            C17058f.m5946a(i2 * 3 * 1000);
        }
        if (i3 == 200) {
            C17059a.f60580b = true;
            C17059a.f60582d = jSONObject.getString("token_id");
        }
        i = i3;
        if (i3 == 202) {
            C17059a.f60580b = true;
            String string = jSONObject.getString("token_id");
            C17059a.f60582d = string;
            C17064a.meta(VastError.ERROR_CODE_EXCEEDED_WRAPPER_LIMIT, this.f60586b, string);
            i = i3;
        }
        C17059a.f60579a = i;
        c17072b = C17072b.m5917a();
        sb = new StringBuilder("SS-");
        sb.append(C17059a.f60579a);
        c17072b.reportNow(sb.toString());
        AbstractC17060a abstractC17060a = this.f60585a;
        if (abstractC17060a == null) {
            return;
        }
        abstractC17060a.mo5904a(C17059a.m5945a());
    }
}
