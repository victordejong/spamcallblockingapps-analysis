package p086f;

import android.view.View;
import androidx.appcompat.app.AlertController;
/* renamed from: f.g */
/* loaded from: classes-dex2jar.jar:f/g.class */
public class RunnableC2648g implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ View f9090a;

    /* renamed from: b */
    public final /* synthetic */ View f9091b;

    /* renamed from: c */
    public final /* synthetic */ AlertController f9092c;

    public RunnableC2648g(AlertController alertController, View view, View view2) {
        this.f9092c = alertController;
        this.f9090a = view;
        this.f9091b = view2;
    }

    @Override // java.lang.Runnable
    public void run() {
        AlertController.m8730c(this.f9092c.f294g, this.f9090a, this.f9091b);
    }
}
