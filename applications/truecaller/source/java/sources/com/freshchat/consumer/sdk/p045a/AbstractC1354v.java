package com.freshchat.consumer.sdk.p045a;

import android.view.LayoutInflater;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import com.freshchat.consumer.sdk.C1298R;
import com.freshchat.consumer.sdk.p045a.p046a.C1307a;
import com.freshchat.consumer.sdk.p045a.p046a.C1308b;
import com.freshchat.consumer.sdk.p053f.AbstractC1539e;
import com.freshchat.consumer.sdk.service.Status;
/* renamed from: com.freshchat.consumer.sdk.a.v */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/a/v.class */
public abstract class AbstractC1354v {

    /* renamed from: po */
    private final AbstractC1539e f3655po;

    /* renamed from: qU */
    private final RecyclerView.AbstractC0317g f3656qU;
    private Status status = Status.INIT_LOADING;

    public AbstractC1354v(RecyclerView.AbstractC0317g abstractC0317g, AbstractC1539e abstractC1539e) {
        this.f3656qU = abstractC0317g;
        this.f3655po = abstractC1539e;
    }

    /* renamed from: iJ */
    private boolean m41436iJ() {
        Status status = this.status;
        return status == Status.ERROR || status == Status.NO_INTERNET || status == Status.LOADING_MORE || status == Status.SUCCESS;
    }

    public int getItemCount() {
        int mo41437iH = mo41437iH();
        int i = mo41437iH;
        if (mo41437iH > 0) {
            i = mo41437iH + (m41436iJ() ? 1 : 0);
        }
        return i;
    }

    public int getItemViewType(int i) {
        if (i == mo41437iH()) {
            Status status = this.status;
            return (status == Status.ERROR || status == Status.NO_INTERNET) ? 2 : 1;
        }
        return 0;
    }

    /* renamed from: iH */
    public abstract int mo41437iH();

    public void onBindViewHolder(RecyclerView.AbstractC0313c0 abstractC0313c0, int i) {
        if (abstractC0313c0 instanceof C1307a) {
            this.status = Status.LOADING_MORE;
        } else if (!(abstractC0313c0 instanceof C1308b)) {
        } else {
            ((C1308b) abstractC0313c0).m41528a(this.status, this.f3655po);
        }
    }

    public RecyclerView.AbstractC0313c0 onCreateViewHolder(ViewGroup viewGroup, int i) {
        return (i == 2 || this.status == Status.NO_INTERNET) ? new C1308b(LayoutInflater.from(viewGroup.getContext()).inflate(C1298R.layout.freshchat_li_pagination_error_with_retry, viewGroup, false)) : new C1307a(LayoutInflater.from(viewGroup.getContext()).inflate(C1298R.layout.freshchat_faq_load_more, viewGroup, false));
    }

    public void setStatus(Status status) {
        if (this.status != status) {
            this.status = status;
            this.f3656qU.notifyDataSetChanged();
        }
    }
}
