package p086f;

import android.view.View;
import androidx.appcompat.app.AlertController;
/* renamed from: f.e */
/* loaded from: classes-dex2jar.jar:f/e.class */
public class RunnableC2646e implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ View f9085a;

    /* renamed from: b */
    public final /* synthetic */ View f9086b;

    /* renamed from: c */
    public final /* synthetic */ AlertController f9087c;

    public RunnableC2646e(AlertController alertController, View view, View view2) {
        this.f9087c = alertController;
        this.f9085a = view;
        this.f9086b = view2;
    }

    @Override // java.lang.Runnable
    public void run() {
        AlertController.m8730c(this.f9087c.f270A, this.f9085a, this.f9086b);
    }
}
