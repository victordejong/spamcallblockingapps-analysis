package com.freshchat.consumer.sdk.p045a.p046a;

import android.view.View;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.freshchat.consumer.sdk.C1298R;
import com.freshchat.consumer.sdk.p053f.AbstractC1539e;
import com.freshchat.consumer.sdk.service.Status;
/* renamed from: com.freshchat.consumer.sdk.a.a.b */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/a/a/b.class */
public class C1308b extends RecyclerView.AbstractC0313c0 {

    /* renamed from: qV */
    private final TextView f3533qV;

    public C1308b(View view) {
        super(view);
        this.f3533qV = (TextView) view;
    }

    /* renamed from: a */
    public void m41528a(Status status, AbstractC1539e abstractC1539e) {
        int i;
        TextView textView;
        if (status == Status.NO_INTERNET) {
            textView = this.f3533qV;
            i = C1298R.string.freshchat_pagination_no_internet_with_retry;
        } else {
            textView = this.f3533qV;
            i = C1298R.string.freshchat_pagination_error_with_retry;
        }
        textView.setText(i);
        this.f3533qV.setOnClickListener(new View$OnClickListenerC1309c(this, abstractC1539e));
    }
}
