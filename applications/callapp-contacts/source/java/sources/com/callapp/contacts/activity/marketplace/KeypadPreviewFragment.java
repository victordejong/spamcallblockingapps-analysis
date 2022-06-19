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
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/marketplace/KeypadPreviewFragment.class */
public class KeypadPreviewFragment extends BaseFragment {

    /* renamed from: a */
    private ImageView f23406a;

    /* renamed from: b */
    private String f23407b;

    /* renamed from: a */
    public final void m30093a(String str, String str2) {
        this.f23407b = str;
        if (StringUtils.m26045b((CharSequence) str)) {
            GlideUtils.GlideRequestBuilder glideRequestBuilder = new GlideUtils.GlideRequestBuilder(this.f23406a, this.f23407b, getContext());
            glideRequestBuilder.f28251q = true;
            if (str2 != null) {
                glideRequestBuilder.f28252r = str2;
            }
            glideRequestBuilder.m27013d();
        }
    }

    public ImageView getKeypadImageView() {
        return this.f23406a;
    }

    @Override // com.callapp.contacts.activity.base.BaseFragment
    public int getLayoutResourceId() {
        return 2131558667;
    }

    @Override // com.callapp.contacts.activity.base.BaseFragment, androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        final View onCreateView = super.onCreateView(layoutInflater, viewGroup, bundle);
        if (onCreateView == null) {
            return null;
        }
        this.f23406a = (ImageView) onCreateView.findViewById(2131363141);
        setKeypadImageUrl(this.f23407b);
        onCreateView.getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() { // from class: com.callapp.contacts.activity.marketplace.KeypadPreviewFragment.1
            @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
            public void onGlobalLayout() {
                onCreateView.getViewTreeObserver().removeOnGlobalLayoutListener(this);
                float width = onCreateView.getWidth();
                float height = onCreateView.getHeight();
                ImageView imageView = (ImageView) onCreateView.findViewById(2131363508);
                float min = Math.min(width / imageView.getDrawable().getIntrinsicWidth(), height / imageView.getDrawable().getIntrinsicHeight());
                ViewUtils.m27295c(KeypadPreviewFragment.this.f23406a, (int) (ViewUtils.getDimension(2131165700) * min));
                ViewUtils.m27300b(KeypadPreviewFragment.this.f23406a, (int) (ViewUtils.getDimension(2131165702) * min), (int) (min * ViewUtils.getDimension(2131165701)));
            }
        });
        return onCreateView;
    }

    public void setKeypadImageUrl(String str) {
        m30093a(str, null);
    }
}
