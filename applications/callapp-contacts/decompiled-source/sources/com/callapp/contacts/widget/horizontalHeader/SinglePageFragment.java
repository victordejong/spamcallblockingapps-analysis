package com.callapp.contacts.widget.horizontalHeader;

import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.bumptech.glide.e.a.j;
import com.bumptech.glide.e.g;
import com.bumptech.glide.load.a;
import com.bumptech.glide.load.engine.GlideException;
import com.callapp.contacts.activity.contact.cards.framework.horizontal.pager.HorizontalPagerFragment;
import com.callapp.contacts.util.ThemeUtils;
import com.callapp.contacts.util.ViewUtils;
import com.callapp.contacts.util.glide.GlideUtils;
import com.callapp.contacts.widget.horizontalHeader.HorizontalPagerHeader;
import com.callapp.framework.util.StringUtils;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/horizontalHeader/SinglePageFragment.class */
public class SinglePageFragment extends HorizontalPagerFragment<ViewHolder, HorizontalPagerHeader.SinglePageData> {

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/horizontalHeader/SinglePageFragment$ViewHolder.class */
    class ViewHolder {

        /* renamed from: b  reason: collision with root package name */
        private final View f16819b;

        /* renamed from: c  reason: collision with root package name */
        private final TextView f16820c;

        /* renamed from: d  reason: collision with root package name */
        private final TextView f16821d;
        private final TextView e;
        private final ViewGroup f;

        public ViewHolder(View view) {
            this.f16819b = view;
            int color = ThemeUtils.getColor(2131100228);
            TextView textView = (TextView) view.findViewById(2131364130);
            this.f16820c = textView;
            textView.setTextColor(color);
            TextView textView2 = (TextView) view.findViewById(2131364030);
            this.f16821d = textView2;
            textView2.setTextColor(color);
            this.f = (ViewGroup) view.findViewById(2131362512);
            TextView textView3 = (TextView) view.findViewById(2131362510);
            this.e = textView3;
            textView3.setTextColor(color);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setAccordingToData(final HorizontalPagerHeader.SinglePageData singlePageData) {
            if (singlePageData == null) {
                this.f16819b.setOnClickListener(null);
                this.f16820c.setText("");
                this.f16821d.setText("");
                SinglePageFragment.this.setBackgroundDrawable(null);
                return;
            }
            this.f16819b.setOnClickListener(singlePageData.getClickListener());
            SinglePageFragment.a(this.f16820c, singlePageData.getTitle());
            SinglePageFragment.a(this.f16821d, singlePageData.getSubtitle());
            SinglePageFragment.a(this.f16820c, singlePageData.getTitleColor());
            SinglePageFragment.a(this.f16821d, singlePageData.getSubtitleColor());
            if (StringUtils.a((CharSequence) singlePageData.getBtnText())) {
                this.f.setVisibility(8);
            } else {
                this.f.setVisibility(0);
                this.e.setTextColor(singlePageData.getBtnTextColor());
                this.e.setBackgroundResource(2131232210);
                this.e.setText(singlePageData.getBtnText());
                ViewUtils.a(this.e, Integer.valueOf(singlePageData.getBtnBorderColor()), Integer.valueOf(singlePageData.getBtnBorderColor()));
            }
            ImageView imageView = (ImageView) this.f16819b.findViewById(2131362092);
            imageView.setScaleType(singlePageData.getScaleType());
            GlideUtils.GlideRequestBuilder glideRequestBuilder = new GlideUtils.GlideRequestBuilder(imageView, singlePageData.getImageUrl(), SinglePageFragment.this.getContext());
            glideRequestBuilder.n = new g() { // from class: com.callapp.contacts.widget.horizontalHeader.SinglePageFragment.ViewHolder.1
                @Override // com.bumptech.glide.e.g
                public final boolean a(GlideException glideException, Object obj, j jVar, boolean z) {
                    return false;
                }

                @Override // com.bumptech.glide.e.g
                public final boolean a(Object obj, Object obj2, j jVar, a aVar, boolean z) {
                    singlePageData.getImageLoadedListener().onDone();
                    return false;
                }
            };
            glideRequestBuilder.q = true;
            glideRequestBuilder.d();
        }
    }

    static /* synthetic */ void a(TextView textView, int i) {
        if (i != 0) {
            textView.setTextColor(i);
        }
    }

    static /* synthetic */ void a(TextView textView, String str) {
        textView.setText(str);
        textView.setVisibility(StringUtils.a((CharSequence) str) ? 8 : 0);
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.horizontal.pager.HorizontalPagerFragment
    public final /* synthetic */ ViewHolder a(View view) {
        view.setOnTouchListener(this.f11898a);
        return new ViewHolder(view);
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.horizontal.pager.HorizontalPagerFragment
    public final /* bridge */ /* synthetic */ void a(ViewHolder viewHolder, HorizontalPagerHeader.SinglePageData singlePageData) {
        viewHolder.setAccordingToData(singlePageData);
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.horizontal.pager.HorizontalPagerFragment
    public int getLayoutResId() {
        return 2131559026;
    }
}
