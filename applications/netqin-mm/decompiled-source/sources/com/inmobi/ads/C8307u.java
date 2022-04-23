package com.inmobi.ads;

import android.graphics.Canvas;
import android.graphics.Movie;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import com.inmobi.ads.AbstractC8305t;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
/* renamed from: com.inmobi.ads.u */
/* loaded from: classes2-dex2jar.jar:com/inmobi/ads/u.class */
public final class C8307u implements AbstractC8305t {

    /* renamed from: a */
    public Movie f32313a;

    /* renamed from: c */
    public long f32315c;

    /* renamed from: e */
    public AbstractC8305t.AbstractC8306a f32317e;

    /* renamed from: f */
    public ExecutorService f32318f;

    /* renamed from: g */
    public Runnable f32319g;

    /* renamed from: b */
    public int f32314b = 0;

    /* renamed from: d */
    public volatile boolean f32316d = false;

    public C8307u(String str) throws IOException {
        File file = new File(str);
        byte[] bArr = new byte[(int) file.length()];
        FileInputStream fileInputStream = new FileInputStream(file);
        int read = fileInputStream.read(bArr);
        fileInputStream.close();
        this.f32313a = Movie.decodeByteArray(bArr, 0, read);
    }

    @Override // com.inmobi.ads.AbstractC8305t
    /* renamed from: a */
    public final void mo5955a() {
        this.f32318f = Executors.newSingleThreadExecutor();
        this.f32319g = new Runnable() { // from class: com.inmobi.ads.u.1
            @Override // java.lang.Runnable
            public final void run() {
                C8307u uVar = C8307u.this;
                if (uVar.f32314b + 20 >= uVar.f32313a.duration()) {
                    final C8307u uVar2 = C8307u.this;
                    new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.inmobi.ads.u.2
                        @Override // java.lang.Runnable
                        public final void run() {
                            C8307u uVar3 = C8307u.this;
                            uVar3.f32314b = 0;
                            uVar3.mo5952a(false);
                        }
                    });
                }
            }
        };
    }

    @Override // com.inmobi.ads.AbstractC8305t
    /* renamed from: a */
    public final void mo5954a(Canvas canvas, float f, float f2) {
        this.f32313a.draw(canvas, f, f2);
        this.f32318f.execute(this.f32319g);
    }

    @Override // com.inmobi.ads.AbstractC8305t
    /* renamed from: a */
    public final void mo5953a(AbstractC8305t.AbstractC8306a aVar) {
        this.f32317e = aVar;
    }

    @Override // com.inmobi.ads.AbstractC8305t
    /* renamed from: a */
    public final void mo5952a(boolean z) {
        this.f32316d = z;
        if (!this.f32316d) {
            this.f32315c = SystemClock.uptimeMillis() - this.f32314b;
        }
        AbstractC8305t.AbstractC8306a aVar = this.f32317e;
        if (aVar != null) {
            aVar.mo5956a();
        }
    }

    @Override // com.inmobi.ads.AbstractC8305t
    /* renamed from: b */
    public final int mo5951b() {
        return this.f32313a.width();
    }

    @Override // com.inmobi.ads.AbstractC8305t
    /* renamed from: c */
    public final int mo5950c() {
        return this.f32313a.height();
    }

    @Override // com.inmobi.ads.AbstractC8305t
    /* renamed from: d */
    public final boolean mo5949d() {
        return !this.f32316d;
    }

    @Override // com.inmobi.ads.AbstractC8305t
    /* renamed from: e */
    public final void mo5948e() {
        long uptimeMillis = SystemClock.uptimeMillis();
        if (this.f32315c == 0) {
            this.f32315c = uptimeMillis;
        }
        int duration = this.f32313a.duration();
        int i = duration;
        if (duration == 0) {
            i = 1000;
        }
        int i2 = (int) ((uptimeMillis - this.f32315c) % i);
        this.f32314b = i2;
        this.f32313a.setTime(i2);
    }
}
