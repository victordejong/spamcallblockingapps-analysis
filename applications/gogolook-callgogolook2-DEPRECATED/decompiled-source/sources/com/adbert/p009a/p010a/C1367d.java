package com.adbert.p009a.p010a;

import android.content.Context;
import android.graphics.Bitmap;
import android.os.Handler;
import android.os.Looper;
import com.adbert.p009a.p010a.C1361b;
import java.io.File;
import java.io.FileOutputStream;
/* renamed from: com.adbert.a.a.d */
/* loaded from: classes-dex2jar.jar:com/adbert/a/a/d.class */
public class C1367d {

    /* renamed from: b */
    public C1361b.AbstractC1363a f356b;

    /* renamed from: e */
    public Bitmap f359e;

    /* renamed from: g */
    public Context f361g;

    /* renamed from: a */
    public int f355a = 0;

    /* renamed from: c */
    public int f357c = 0;

    /* renamed from: d */
    public String f358d = "";

    /* renamed from: f */
    public String f360f = "";

    /* renamed from: h */
    public boolean f362h = true;

    public C1367d(Context context) {
        this.f361g = context;
    }

    /* renamed from: a */
    private void m37260a(String str, C1360a aVar) {
        m37244j().m37223a(aVar);
    }

    /* renamed from: d */
    public static boolean m37250d(String str) {
        if (!str.isEmpty()) {
            return str.endsWith(".gif") || str.contains(".gif?");
        }
        return false;
    }

    /* renamed from: a */
    public int m37266a() {
        return this.f355a;
    }

    /* renamed from: a */
    public C1367d m37265a(int i) {
        this.f355a = i;
        return this;
    }

    /* renamed from: a */
    public C1367d m37262a(C1361b.AbstractC1363a aVar) {
        this.f356b = aVar;
        return this;
    }

    /* renamed from: a */
    public void m37264a(Bitmap bitmap) {
        this.f359e = bitmap;
    }

    /* renamed from: a */
    public void m37261a(String str) {
        this.f358d = str;
    }

    /* renamed from: a */
    public void m37259a(String str, String str2) {
        C1360a aVar = new C1360a(EnumC1366c.post);
        aVar.m37278a(str);
        aVar.m37276b(str2);
        m37260a(str, aVar);
    }

    /* renamed from: a */
    public boolean m37263a(Bitmap bitmap, String str) {
        boolean d = m37250d(str);
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(str);
            if (d) {
                bitmap.compress(Bitmap.CompressFormat.JPEG, 100, fileOutputStream);
            } else {
                bitmap.compress(Bitmap.CompressFormat.PNG, 100, fileOutputStream);
            }
            fileOutputStream.flush();
            fileOutputStream.close();
            return new File(str).exists();
        } catch (Exception e) {
            return false;
        }
    }

    /* renamed from: b */
    public C1361b.AbstractC1363a m37258b() {
        return this.f356b;
    }

    /* renamed from: b */
    public void m37257b(int i) {
        this.f357c = i;
    }

    /* renamed from: b */
    public void m37256b(String str) {
        this.f360f = str;
    }

    /* renamed from: b */
    public void m37255b(String str, String str2) {
        C1360a aVar = new C1360a(EnumC1366c.getFile);
        aVar.m37278a(str);
        aVar.m37274c(str2);
        m37260a(str, aVar);
    }

    /* renamed from: c */
    public int m37254c() {
        return this.f357c;
    }

    /* renamed from: c */
    public void m37252c(String str) {
        C1360a aVar = new C1360a(EnumC1366c.getImage);
        aVar.m37278a(str);
        m37260a(str, aVar);
    }

    /* renamed from: c */
    public boolean m37253c(int i) {
        if (i != 200) {
            return i == 302 || i == 301 || i == 303 || i == 307;
        }
        return false;
    }

    /* renamed from: d */
    public String m37251d() {
        return this.f358d;
    }

    /* renamed from: e */
    public Bitmap m37249e() {
        return this.f359e;
    }

    /* renamed from: f */
    public String m37248f() {
        return this.f360f;
    }

    /* renamed from: g */
    public void m37247g() {
        Bitmap bitmap = this.f359e;
        if (bitmap != null && !bitmap.isRecycled()) {
            this.f359e.recycle();
        }
    }

    /* renamed from: h */
    public void m37246h() {
        if (m37258b() != null) {
            m37258b().onConnectionFail(this);
        }
    }

    /* renamed from: i */
    public void m37245i() {
        if (m37258b() != null) {
            new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.adbert.a.a.d.1
                @Override // java.lang.Runnable
                public void run() {
                    int c = C1367d.this.m37254c();
                    if (c == 200) {
                        C1367d.this.m37258b().onConnectionSuccess(C1367d.this);
                    } else if (C1367d.this.m37258b() instanceof C1361b.AbstractC1364b) {
                        C1361b.AbstractC1364b bVar = (C1361b.AbstractC1364b) C1367d.this.m37258b();
                        if (c == -1001) {
                            bVar.m37268a(C1367d.this);
                        } else {
                            bVar.m37267b(C1367d.this);
                        }
                    } else {
                        C1367d.this.m37258b().onConnectionFail(C1367d.this);
                    }
                }
            });
        }
    }

    /* renamed from: j */
    public C1371f m37244j() {
        return new C1371f(this.f361g, this);
    }
}
