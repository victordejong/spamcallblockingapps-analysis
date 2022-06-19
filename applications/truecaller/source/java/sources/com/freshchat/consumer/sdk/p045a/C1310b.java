package com.freshchat.consumer.sdk.p045a;

import android.content.Context;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.freshchat.consumer.sdk.C1298R;
import com.freshchat.consumer.sdk.FreshchatImageLoader;
import com.freshchat.consumer.sdk.FreshchatImageLoaderRequest;
import com.freshchat.consumer.sdk.beans.ICategory;
import com.freshchat.consumer.sdk.p057j.C1610af;
import com.freshchat.consumer.sdk.p057j.C1612ah;
import com.freshchat.consumer.sdk.p057j.C1626as;
import com.freshchat.consumer.sdk.p057j.C1630aw;
import java.util.List;
/* renamed from: com.freshchat.consumer.sdk.a.b */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/a/b.class */
public class C1310b<T extends ICategory> extends RecyclerView.AbstractC0317g<RecyclerView.AbstractC0313c0> {

    /* renamed from: ah */
    private final List<T> f3536ah;

    /* renamed from: ch */
    private final boolean f3537ch;

    /* renamed from: ci */
    private final boolean f3538ci;

    /* renamed from: cj */
    private final AbstractC1312a f3539cj;
    private final Context context;

    /* renamed from: com.freshchat.consumer.sdk.a.b$a */
    /* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/a/b$a.class */
    public interface AbstractC1312a {
        /* renamed from: a */
        void mo41081a(View view, int i);
    }

    /* renamed from: com.freshchat.consumer.sdk.a.b$b */
    /* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/a/b$b.class */
    public static class C1313b extends RecyclerView.AbstractC0313c0 {

        /* renamed from: cm */
        private final View f3542cm;

        /* renamed from: cn */
        private final TextView f3543cn;

        /* renamed from: co */
        private final TextView f3544co;

        /* renamed from: cp */
        private final ImageView f3545cp;

        /* renamed from: cq */
        private final TextView f3546cq;

        public C1313b(View view, boolean z) {
            super(view);
            this.f3542cm = view;
            this.f3543cn = (TextView) view.findViewById(C1298R.C1300id.freshchat_category_name);
            this.f3545cp = (ImageView) view.findViewById(C1298R.C1300id.freshchat_category_icon);
            this.f3546cq = (TextView) view.findViewById(C1298R.C1300id.freshchat_category_icon_alt_text);
            this.f3544co = z ? (TextView) view.findViewById(C1298R.C1300id.freshchat_category_desc) : null;
        }

        /* renamed from: aN */
        public TextView m41526aN() {
            return this.f3543cn;
        }

        /* renamed from: aO */
        public TextView m41525aO() {
            return this.f3544co;
        }

        /* renamed from: aP */
        public ImageView m41524aP() {
            return this.f3545cp;
        }

        /* renamed from: aQ */
        public TextView m41523aQ() {
            return this.f3546cq;
        }

        public View getRootView() {
            return this.f3542cm;
        }
    }

    public C1310b(Context context, List<T> list, boolean z, AbstractC1312a abstractC1312a) {
        this.f3539cj = abstractC1312a;
        this.context = context;
        this.f3536ah = list;
        this.f3537ch = z;
        this.f3538ci = !z;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0317g
    public int getItemCount() {
        List<T> list = this.f3536ah;
        if (list != null) {
            return list.size();
        }
        return 0;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0317g
    public void onBindViewHolder(RecyclerView.AbstractC0313c0 abstractC0313c0, final int i) {
        String str;
        TextView textView;
        int i2;
        TextView textView2;
        T t = this.f3536ah.get(i);
        C1313b c1313b = (C1313b) abstractC0313c0;
        c1313b.m41526aN().setText(t.getTitle());
        if (C1630aw.m40199eX()) {
            if (this.f3537ch) {
                textView2 = c1313b.m41526aN();
                i2 = 4;
            } else {
                textView2 = c1313b.m41526aN();
                i2 = 5;
            }
            textView2.setTextAlignment(i2);
            c1313b.m41526aN().setTextDirection(C1612ah.getTextDirection());
        }
        if (this.f3538ci) {
            if (!TextUtils.isEmpty(t.getDescription())) {
                textView = c1313b.m41525aO();
                str = t.getDescription();
            } else {
                textView = c1313b.m41525aO();
                str = "";
            }
            textView.setText(str);
        }
        if (!C1626as.isEmpty(t.getIconUrl()) || !C1626as.m40233a(t.getTitle())) {
            c1313b.m41524aP().setVisibility(0);
            c1313b.m41523aQ().setVisibility(8);
            int dimensionPixelSize = this.context.getResources().getDimensionPixelSize(C1298R.dimen.freshchat_category_icon_size);
            FreshchatImageLoaderRequest m41530dM = new FreshchatImageLoaderRequest.C1297a(t.getIconUrl()).m41533a(dimensionPixelSize, dimensionPixelSize).m41530dM();
            FreshchatImageLoader m40305eK = C1610af.m40305eK();
            if (m40305eK != null) {
                m40305eK.load(m41530dM, c1313b.m41524aP());
            }
        } else {
            c1313b.m41524aP().setVisibility(8);
            c1313b.m41523aQ().setVisibility(0);
            c1313b.m41523aQ().setText(t.getTitle().substring(0, 1).toUpperCase(C1612ah.m40290bb(this.context)));
        }
        c1313b.getRootView().setOnClickListener(new View.OnClickListener() { // from class: com.freshchat.consumer.sdk.a.b.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                C1310b.this.f3539cj.mo41081a(view, i);
            }
        });
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0317g
    public RecyclerView.AbstractC0313c0 onCreateViewHolder(ViewGroup viewGroup, int i) {
        int i2 = C1298R.layout.freshchat_listitem_category;
        if (this.f3537ch) {
            i2 = C1298R.layout.freshchat_listitem_category_for_grid;
        }
        return new C1313b(LayoutInflater.from(viewGroup.getContext()).inflate(i2, viewGroup, false), this.f3538ci);
    }
}
