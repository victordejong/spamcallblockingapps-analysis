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

    /* renamed from: a  reason: collision with root package name */
    private ImageView f13131a;

    /* renamed from: b  reason: collision with root package name */
    private String f13132b;

    public final void a(String str, String str2) {
        this.f13132b = str;
        if (StringUtils.b((CharSequence) str)) {
            GlideUtils.GlideRequestBuilder glideRequestBuilder = new GlideUtils.GlideRequestBuilder(this.f13131a, this.f13132b, getContext());
            glideRequestBuilder.q = true;
            if (str2 != null) {
                glideRequestBuilder.r = str2;
            }
            glideRequestBuilder.d();
        }
    }

    public ImageView getKeypadImageView() {
        return this.f13131a;
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
        this.f13131a = (ImageView) onCreateView.findViewById(2131363141);
        setKeypadImageUrl(this.f13132b);
        onCreateView.getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() { // from class: com.callapp.contacts.activity.marketplace.KeypadPreviewFragment.1
            @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
            public void onGlobalLayout() {
                onCreateView.getViewTreeObserver().removeOnGlobalLayoutListener(this);
                float width = onCreateView.getWidth();
                float height = onCreateView.getHeight();
                ImageView imageView = (ImageView) onCreateView.findViewById(2131363508);
                float min = Math.min(width / imageView.getDrawable().getIntrinsicWidth(), height / imageView.getDrawable().getIntrinsicHeight());
                ViewUtils.c(KeypadPreviewFragment.this.f13131a, (int) (ViewUtils.getDimension(2131165700) * min));
                ViewUtils.b(KeypadPreviewFragment.this.f13131a, (int) (ViewUtils.getDimension(2131165702) * min), (int) (min * ViewUtils.getDimension(2131165701)));
            }
        });
        return onCreateView;
    }

    public void setKeypadImageUrl(String str) {
        a(str, null);
    }
}
