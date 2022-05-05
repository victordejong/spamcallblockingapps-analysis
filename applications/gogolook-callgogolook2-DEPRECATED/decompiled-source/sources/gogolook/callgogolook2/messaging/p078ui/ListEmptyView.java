package gogolook.callgogolook2.messaging.p078ui;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import gogolook.callgogolook2.R$id;
/* renamed from: gogolook.callgogolook2.messaging.ui.ListEmptyView */
/* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/messaging/ui/ListEmptyView.class */
public class ListEmptyView extends LinearLayout {

    /* renamed from: a */
    public ImageView f11478a;

    /* renamed from: b */
    public TextView f11479b;

    public ListEmptyView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    /* renamed from: a */
    public void m27364a(int i) {
        this.f11478a.setImageResource(i);
    }

    /* renamed from: b */
    public void m27363b(int i) {
        this.f11479b.setText(getResources().getText(i));
    }

    @Override // android.view.View
    public void onFinishInflate() {
        super.onFinishInflate();
        this.f11478a = (ImageView) findViewById(R$id.empty_image_hint);
        this.f11479b = (TextView) findViewById(R$id.empty_text_hint);
    }
}
