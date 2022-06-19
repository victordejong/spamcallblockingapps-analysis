package p000;

import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import com.google.android.gms.common.internal.ImagesContract;
import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: je1 */
/* loaded from: classes3-dex2jar.jar:je1.class */
public class je1 implements Runnable {

    /* renamed from: c */
    public static ArrayList<pe1> f6835c;

    /* renamed from: a */
    public Handler f6836a;

    /* renamed from: b */
    public String f6837b;

    public je1(Handler handler, String str) {
        this.f6836a = handler;
        this.f6837b = str;
    }

    /* renamed from: a */
    public final void m1481a(JSONObject jSONObject) {
        JSONArray jSONArray;
        String str;
        String str2;
        String str3;
        String str4;
        String str5;
        int i = 0;
        if (jSONObject == null) {
            m1480b(false);
            return;
        }
        try {
            jSONArray = jSONObject.getJSONArray("items");
            f6835c = new ArrayList<>();
        } catch (JSONException e) {
            j91.m1504l(this, "JSONException", e);
            return;
        }
        while (true) {
            if (i >= jSONArray.length()) {
                m1480b(true);
                return;
            }
            try {
                JSONObject jSONObject2 = jSONArray.getJSONObject(i).getJSONObject("snippet");
                try {
                    str = jSONObject2.getJSONObject("resourceId").getString("videoId");
                } catch (JSONException e2) {
                    j91.m1516H(this, "JSONException", e2);
                    str = null;
                }
                try {
                    str2 = jSONObject2.getString("title");
                } catch (JSONException e3) {
                    j91.m1516H(this, "JSONException", e3);
                    str2 = null;
                }
                try {
                    str3 = jSONObject2.getString("publishedAt");
                } catch (JSONException e4) {
                    j91.m1516H(this, "JSONException", e4);
                    str3 = null;
                }
                try {
                    str4 = jSONObject2.getString("description");
                } catch (JSONException e5) {
                    j91.m1517G(this, "JSONException" + e5.toString());
                    str4 = null;
                }
                try {
                    str5 = jSONObject2.getJSONObject("thumbnails").getJSONObject(oe1.m1073m() >= 320 ? "high" : "medium").getString(ImagesContract.URL);
                } catch (JSONException e6) {
                    j91.m1517G(this, "JSONException" + e6.toString());
                    str5 = null;
                }
                pe1 pe1Var = new pe1();
                pe1Var.m922f(str);
                pe1Var.m920h(str5);
                pe1Var.m919i(str2);
                pe1Var.m923e(str4);
                pe1Var.m921g(str3);
                f6835c.add(pe1Var);
            } catch (JSONException e7) {
                j91.m1516H(this, "JSONException", e7);
            }
            i++;
            j91.m1504l(this, "JSONException", e);
            return;
        }
    }

    /* renamed from: b */
    public final void m1480b(boolean z) {
        Bundle bundle = new Bundle();
        bundle.putBoolean("isLoadedAndParsed", z);
        bundle.putSerializable("videos", f6835c);
        Message obtain = Message.obtain();
        obtain.setData(bundle);
        this.f6836a.sendMessage(obtain);
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x00f5 A[Catch: all -> 0x0145, IOException -> 0x014e, TryCatch #6 {IOException -> 0x014e, all -> 0x0145, blocks: (B:4:0x0009, B:18:0x00a2, B:26:0x00e3, B:28:0x00f5, B:30:0x011a, B:32:0x012d, B:22:0x00b2), top: B:46:0x0009, inners: #3 }] */
    /* JADX WARN: Removed duplicated region for block: B:42:0x011a A[EXC_TOP_SPLITTER, SYNTHETIC] */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void run() {
        /*
            Method dump skipped, instructions count: 353
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p000.je1.run():void");
    }
}
