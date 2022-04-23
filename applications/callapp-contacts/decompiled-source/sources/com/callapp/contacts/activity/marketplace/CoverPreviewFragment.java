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

    /* renamed from: a  reason: collision with root package name */
    private ImageView f13095a;

    /* renamed from: b  reason: collision with root package name */
    private String f13096b;

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
        this.f13095a = (ImageView) onCreateView.findViewById(2131362497);
        setCoverImageUrl(this.f13096b);
        onCreateView.getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() { // from class: com.callapp.contacts.activity.marketplace.CoverPreviewFragment.1
            @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
            public void onGlobalLayout() {
                onCreateView.getViewTreeObserver().removeOnGlobalLayoutListener(this);
                float width = onCreateView.getWidth();
                float height = onCreateView.getHeight();
                ImageView imageView = (ImageView) onCreateView.findViewById(2131363508);
                float min = Math.min(width / imageView.getDrawable().getIntrinsicWidth(), height / imageView.getDrawable().getIntrinsicHeight());
                ViewUtils.d(CoverPreviewFragment.this.f13095a, (int) (ViewUtils.getDimension(2131166009) * min));
                ViewUtils.b(CoverPreviewFragment.this.f13095a, (int) (ViewUtils.getDimension(2131165441) * min), (int) (min * ViewUtils.getDimension(2131165440)));
            }
        });
        return onCreateView;
    }

    public void setCoverImageUrl(String str) {
        this.f13096b = str;
        if (StringUtils.b((CharSequence) str)) {
            GlideUtils.GlideRequestBuilder glideRequestBuilder = new GlideUtils.GlideRequestBuilder(this.f13095a, this.f13096b, getContext());
            glideRequestBuilder.q = true;
            glideRequestBuilder.d();
        }
    }
}
