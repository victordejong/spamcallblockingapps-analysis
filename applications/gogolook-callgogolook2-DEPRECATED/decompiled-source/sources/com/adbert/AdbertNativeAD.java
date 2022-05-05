package com.adbert;

import android.content.Context;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import com.adbert.p009a.C1402g;
import com.adbert.p009a.C1409j;
import com.adbert.p009a.p010a.C1361b;
import com.adbert.p009a.p010a.C1369e;
import com.adbert.p009a.p011b.C1378c;
import com.adbert.p009a.p012c.EnumC1383c;
import com.adbert.p009a.p012c.EnumC1387g;
import com.adbert.p009a.p014e.C1397b;
import com.adbert.p015b.C1457j;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/adbert/AdbertNativeAD.class */
public class AdbertNativeAD {

    /* renamed from: b */
    public Context f289b;

    /* renamed from: c */
    public String f290c;

    /* renamed from: d */
    public String f291d;

    /* renamed from: g */
    public AdbertNativeADListener f294g;

    /* renamed from: i */
    public C1378c f296i;

    /* renamed from: e */
    public String f292e = "";

    /* renamed from: f */
    public String f293f = "";

    /* renamed from: h */
    public boolean f295h = false;

    /* renamed from: j */
    public boolean f297j = false;

    /* renamed from: a */
    public View f288a = null;

    /* renamed from: k */
    public boolean f298k = false;

    public AdbertNativeAD(Context context, String str, String str2) {
        this.f290c = "";
        this.f291d = "";
        this.f289b = context;
        this.f290c = str.trim();
        this.f291d = str2.trim();
    }

    /* renamed from: a */
    private void m37337a(View view) {
        this.f288a = view;
        view.setClickable(true);
        m37324c(view);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public void m37331a(String str) {
        AdbertNativeADListener adbertNativeADListener = this.f294g;
        if (adbertNativeADListener != null) {
            adbertNativeADListener.onReceived(str);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public void m37330b() {
        String str = this.f297j ? "&testMode=1" : "";
        C1361b.m37272a().m37269a(this.f289b, EnumC1383c.nativeADURL.m37191a(this.f292e), new C1369e(this.f289b).m37237a(this.f290c, this.f291d, this.f292e, "", this.f293f) + str, new C1361b.AbstractC1365c() { // from class: com.adbert.AdbertNativeAD.2
            @Override // com.adbert.p009a.p010a.C1361b.AbstractC1365c
            public void onEnd(int i, String str2) {
                AdbertNativeAD adbertNativeAD;
                View view;
                if (i != 200) {
                    AdbertNativeAD.this.m37326b(EnumC1387g.ERROR_SERVICE.m37184a());
                } else if (str2 != null && str2.isEmpty()) {
                    AdbertNativeAD.this.m37326b(EnumC1387g.ERROR_JSON_EMPTY.m37184a());
                } else if (str2 != null && !str2.isEmpty()) {
                    AdbertNativeAD adbertNativeAD2 = AdbertNativeAD.this;
                    adbertNativeAD2.f296i = new C1397b(adbertNativeAD2.f289b, str2, "native_normal").m37164a();
                    if (!AdbertNativeAD.this.f296i.f436e.isEmpty() && (view = (adbertNativeAD = AdbertNativeAD.this).f288a) != null) {
                        adbertNativeAD.m37329b(view);
                    }
                    AdbertNativeAD.this.f295h = true;
                    AdbertNativeAD.this.m37331a("Success");
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public void m37329b(View view) {
        Context context;
        if (!this.f298k && (context = this.f289b) != null) {
            try {
                C1457j jVar = new C1457j(context);
                ((ViewGroup) view).addView(jVar);
                jVar.loadUrl(this.f296i.f436e);
                this.f298k = true;
            } catch (Exception e) {
                C1402g.m37141a(e);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public void m37326b(String str) {
        AdbertNativeADListener adbertNativeADListener = this.f294g;
        if (adbertNativeADListener != null) {
            adbertNativeADListener.onFailReceived(str);
        }
    }

    /* renamed from: c */
    private void m37325c() {
        C1378c cVar = this.f296i;
        if (!cVar.f441j && !cVar.f432a.isEmpty()) {
            this.f296i.f441j = true;
            C1369e eVar = new C1369e(this.f289b);
            C1378c cVar2 = this.f296i;
            C1361b.m37272a().m37269a(this.f289b, this.f296i.f432a, eVar.m37239a(cVar2.f437f, cVar2.f438g, this.f292e, cVar2.f440i), new C1361b.AbstractC1365c() { // from class: com.adbert.AdbertNativeAD.4
                @Override // com.adbert.p009a.p010a.C1361b.AbstractC1365c
                public void onEnd(int i, String str) {
                    AdbertNativeAD.this.f296i.f441j = i == 200;
                }
            });
        }
    }

    /* renamed from: c */
    private void m37324c(View view) {
        view.setClickable(true);
        view.setOnTouchListener(new View.OnTouchListener() { // from class: com.adbert.AdbertNativeAD.5

            /* renamed from: b */
            public long f304b = 0;

            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view2, MotionEvent motionEvent) {
                if (Math.abs(this.f304b - motionEvent.getEventTime()) < 250) {
                    return true;
                }
                int round = Math.round(motionEvent.getY());
                int round2 = Math.round(motionEvent.getX());
                int round3 = motionEvent.getHistorySize() > 0 ? Math.round(motionEvent.getHistoricalY(0)) : round;
                int round4 = motionEvent.getHistorySize() > 0 ? Math.round(motionEvent.getHistoricalX(0)) : round2;
                if (motionEvent.getAction() != 1 || Math.abs(round2 - round4) >= 3 || Math.abs(round - round3) >= 3) {
                    return false;
                }
                if (this.f304b > motionEvent.getDownTime()) {
                    return true;
                }
                AdbertNativeAD.this.m37338a();
                this.f304b = motionEvent.getEventTime();
                return true;
            }
        });
        if (this.f295h && !this.f296i.f436e.isEmpty() && view != null) {
            m37329b(view);
        }
    }

    /* renamed from: d */
    private void m37321d() {
        C1369e eVar = new C1369e(this.f289b);
        C1378c cVar = this.f296i;
        C1361b.m37272a().m37270a(this.f289b, this.f296i.f434c, eVar.m37236a(cVar.f437f, cVar.f438g, this.f292e, cVar.f443l.toString(), this.f296i.f440i, ""));
    }

    /* renamed from: a */
    public void m37338a() {
        int a;
        if (this.f295h && (a = this.f296i.f443l.m37182a()) >= 0) {
            m37325c();
            m37321d();
            C1409j.m37112a(this.f289b).m37107a(this.f296i.m37198a(), a, (C1409j.AbstractC1410a) null);
        }
    }

    public JSONObject getData() {
        C1378c cVar = this.f296i;
        return cVar != null ? cVar.f445n : new JSONObject();
    }

    public boolean isReady() {
        return this.f295h;
    }

    public void loadAD() {
        if (this.f290c.isEmpty() || this.f291d.isEmpty()) {
            m37326b(EnumC1387g.ERROR_ID_NULL.m37184a());
        } else if (C1402g.m37132c(this.f289b)) {
            C1402g.m37146a(this.f289b, new C1402g.AbstractC1405a() { // from class: com.adbert.AdbertNativeAD.1
                @Override // com.adbert.p009a.C1402g.AbstractC1405a
                public void onResult(String str) {
                    AdbertNativeAD.this.f292e = str;
                    AdbertNativeAD.this.m37330b();
                }
            });
        } else {
            m37326b(EnumC1387g.ERROR_CONNECTION.m37184a());
        }
    }

    public void registerView(View view) {
        m37337a(view);
    }

    public void setListener(AdbertNativeADListener adbertNativeADListener) {
        this.f294g = adbertNativeADListener;
    }

    public void setPageInfo(String str) {
        this.f293f = str;
    }

    public void setTestMode() {
        this.f297j = true;
    }

    public void unregisterView(View view) {
        if (view != null) {
            view.setClickable(false);
            view.setOnTouchListener(new View.OnTouchListener() { // from class: com.adbert.AdbertNativeAD.3
                @Override // android.view.View.OnTouchListener
                public boolean onTouch(View view2, MotionEvent motionEvent) {
                    return false;
                }
            });
        }
    }
}
