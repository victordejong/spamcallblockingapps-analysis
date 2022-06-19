package com.callapp.contacts.activity.marketplace;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.ImageView;
import com.callapp.contacts.activity.base.BaseFragment;
import com.callapp.contacts.util.ViewUtils;
import com.callapp.contacts.util.glide.GlideUtils;
import com.callapp.framework.util.StringUtils;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/marketplace/CoverPreviewFragment.class */
public class CoverPreviewFragment extends BaseFragment {

    /* renamed from: a */
    private ImageView f23358a;

    /* renamed from: b */
    private String f23359b;

    @Override // com.callapp.contacts.activity.base.BaseFragment
    public int getLayoutResourceId() {
        return 2131558666;
    }

    @Override // com.callapp.contacts.activity.base.BaseFragment, androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        final View onCreateView = super.onCreateView(layoutInflater, viewGroup, bundle);
        if (onCreateView == null) {
            return null;
        }
        this.f23358a = (ImageView) onCreateView.findViewById(2131362497);
        setCoverImageUrl(this.f23359b);
        onCreateView.getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() { // from class: com.callapp.contacts.activity.marketplace.CoverPreviewFragment.1
            @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
            public void onGlobalLayout() {
                onCreateView.getViewTreeObserver().removeOnGlobalLayoutListener(this);
                float width = onCreateView.getWidth();
                float height = onCreateView.getHeight();
                ImageView imageView = (ImageView) onCreateView.findViewById(2131363508);
                float min = Math.min(width / imageView.getDrawable().getIntrinsicWidth(), height / imageView.getDrawable().getIntrinsicHeight());
                ViewUtils.m27291d(CoverPreviewFragment.this.f23358a, (int) (ViewUtils.getDimension(2131166009) * min));
                ViewUtils.m27300b(CoverPreviewFragment.this.f23358a, (int) (ViewUtils.getDimension(2131165441) * min), (int) (min * ViewUtils.getDimension(2131165440)));
            }
        });
        return onCreateView;
    }

    public void setCoverImageUrl(String str) {
        this.f23359b = str;
        if (StringUtils.m26045b((CharSequence) str)) {
            GlideUtils.GlideRequestBuilder glideRequestBuilder = new GlideUtils.GlideRequestBuilder(this.f23358a, this.f23359b, getContext());
            glideRequestBuilder.f28251q = true;
            glideRequestBuilder.m27013d();
        }
    }
}
