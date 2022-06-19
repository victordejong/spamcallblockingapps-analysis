package com.callapp.contacts.widget.horizontalHeader;

import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.bumptech.glide.load.EnumC3658a;
import com.bumptech.glide.load.engine.GlideException;
import com.bumptech.glide.p112e.AbstractC3604g;
import com.bumptech.glide.p112e.p113a.AbstractC3585j;
import com.callapp.contacts.activity.contact.cards.framework.horizontal.pager.HorizontalPagerFragment;
import com.callapp.contacts.util.ThemeUtils;
import com.callapp.contacts.util.ViewUtils;
import com.callapp.contacts.util.glide.GlideUtils;
import com.callapp.contacts.widget.horizontalHeader.HorizontalPagerHeader;
import com.callapp.framework.util.StringUtils;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/horizontalHeader/SinglePageFragment.class */
public class SinglePageFragment extends HorizontalPagerFragment<ViewHolder, HorizontalPagerHeader.SinglePageData> {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/horizontalHeader/SinglePageFragment$ViewHolder.class */
    public class ViewHolder {

        /* renamed from: b */
        private final View f29291b;

        /* renamed from: c */
        private final TextView f29292c;

        /* renamed from: d */
        private final TextView f29293d;

        /* renamed from: e */
        private final TextView f29294e;

        /* renamed from: f */
        private final ViewGroup f29295f;

        public ViewHolder(View view) {
            SinglePageFragment.this = r5;
            this.f29291b = view;
            int color = ThemeUtils.getColor(2131100228);
            TextView textView = (TextView) view.findViewById(2131364130);
            this.f29292c = textView;
            textView.setTextColor(color);
            TextView textView2 = (TextView) view.findViewById(2131364030);
            this.f29293d = textView2;
            textView2.setTextColor(color);
            this.f29295f = (ViewGroup) view.findViewById(2131362512);
            TextView textView3 = (TextView) view.findViewById(2131362510);
            this.f29294e = textView3;
            textView3.setTextColor(color);
        }

        public void setAccordingToData(final HorizontalPagerHeader.SinglePageData singlePageData) {
            if (singlePageData == null) {
                this.f29291b.setOnClickListener(null);
                this.f29292c.setText("");
                this.f29293d.setText("");
                SinglePageFragment.this.setBackgroundDrawable(null);
                return;
            }
            this.f29291b.setOnClickListener(singlePageData.getClickListener());
            SinglePageFragment.m26386a(this.f29292c, singlePageData.getTitle());
            SinglePageFragment.m26386a(this.f29293d, singlePageData.getSubtitle());
            SinglePageFragment.m26387a(this.f29292c, singlePageData.getTitleColor());
            SinglePageFragment.m26387a(this.f29293d, singlePageData.getSubtitleColor());
            if (StringUtils.m26059a((CharSequence) singlePageData.getBtnText())) {
                this.f29295f.setVisibility(8);
            } else {
                this.f29295f.setVisibility(0);
                this.f29294e.setTextColor(singlePageData.getBtnTextColor());
                this.f29294e.setBackgroundResource(2131232210);
                this.f29294e.setText(singlePageData.getBtnText());
                ViewUtils.m27316a(this.f29294e, Integer.valueOf(singlePageData.getBtnBorderColor()), Integer.valueOf(singlePageData.getBtnBorderColor()));
            }
            ImageView imageView = (ImageView) this.f29291b.findViewById(2131362092);
            imageView.setScaleType(singlePageData.getScaleType());
            GlideUtils.GlideRequestBuilder glideRequestBuilder = new GlideUtils.GlideRequestBuilder(imageView, singlePageData.getImageUrl(), SinglePageFragment.this.getContext());
            glideRequestBuilder.f28248n = new AbstractC3604g() { // from class: com.callapp.contacts.widget.horizontalHeader.SinglePageFragment.ViewHolder.1
                @Override // com.bumptech.glide.p112e.AbstractC3604g
                /* renamed from: a */
                public final boolean mo26384a(GlideException glideException, Object obj, AbstractC3585j abstractC3585j, boolean z) {
                    return false;
                }

                @Override // com.bumptech.glide.p112e.AbstractC3604g
                /* renamed from: a */
                public final boolean mo26383a(Object obj, Object obj2, AbstractC3585j abstractC3585j, EnumC3658a enumC3658a, boolean z) {
                    singlePageData.getImageLoadedListener().onDone();
                    return false;
                }
            };
            glideRequestBuilder.f28251q = true;
            glideRequestBuilder.m27013d();
        }
    }

    /* renamed from: a */
    static /* synthetic */ void m26387a(TextView textView, int i) {
        if (i != 0) {
            textView.setTextColor(i);
        }
    }

    /* renamed from: a */
    static /* synthetic */ void m26386a(TextView textView, String str) {
        textView.setText(str);
        textView.setVisibility(StringUtils.m26059a((CharSequence) str) ? 8 : 0);
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.horizontal.pager.HorizontalPagerFragment
    /* renamed from: a */
    public final /* synthetic */ ViewHolder mo26363a(View view) {
        view.setOnTouchListener(this.f21440a);
        return new ViewHolder(view);
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.horizontal.pager.HorizontalPagerFragment
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ void mo26362a(ViewHolder viewHolder, HorizontalPagerHeader.SinglePageData singlePageData) {
        viewHolder.setAccordingToData(singlePageData);
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.horizontal.pager.HorizontalPagerFragment
    public int getLayoutResId() {
        return 2131559026;
    }
}
