package p086f;

import android.view.View;
import android.widget.AbsListView;
import androidx.appcompat.app.AlertController;
/* renamed from: f.f */
/* loaded from: classes-dex2jar.jar:f/f.class */
public class C2647f implements AbsListView.OnScrollListener {

    /* renamed from: a */
    public final /* synthetic */ View f9088a;

    /* renamed from: b */
    public final /* synthetic */ View f9089b;

    public C2647f(AlertController alertController, View view, View view2) {
        this.f9088a = view;
        this.f9089b = view2;
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScroll(AbsListView absListView, int i, int i2, int i3) {
        AlertController.m8730c(absListView, this.f9088a, this.f9089b);
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScrollStateChanged(AbsListView absListView, int i) {
    }
}
