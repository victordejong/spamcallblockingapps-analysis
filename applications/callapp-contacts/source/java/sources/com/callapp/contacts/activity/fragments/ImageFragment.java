package com.callapp.contacts.activity.fragments;

import android.app.Activity;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import com.bumptech.glide.load.EnumC3658a;
import com.bumptech.glide.load.engine.GlideException;
import com.bumptech.glide.p112e.AbstractC3604g;
import com.bumptech.glide.p112e.p113a.AbstractC3585j;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.glide.GlideUtils;
import com.callapp.framework.util.StringUtils;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/fragments/ImageFragment.class */
public class ImageFragment extends Fragment {

    /* renamed from: a */
    int f23030a;

    /* renamed from: b */
    private String f23031b;

    /* renamed from: a */
    public static ImageFragment m30262a(String str) {
        ImageFragment imageFragment = new ImageFragment();
        Bundle bundle = new Bundle();
        bundle.putString("url", str);
        bundle.putInt("target_size", 600);
        imageFragment.setArguments(bundle);
        return imageFragment;
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.f23031b = getArguments() != null ? getArguments().getString("url") : null;
        this.f23030a = getArguments() != null ? getArguments().getInt("target_size") : 600;
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        final View inflate = layoutInflater.inflate(2131558681, viewGroup, false);
        ImageView imageView = (ImageView) inflate.findViewById(2131363013);
        if (StringUtils.m26045b((CharSequence) this.f23031b)) {
            GlideUtils.GlideRequestBuilder glideRequestBuilder = new GlideUtils.GlideRequestBuilder(imageView, this.f23031b, getContext());
            glideRequestBuilder.f28248n = new AbstractC3604g() { // from class: com.callapp.contacts.activity.fragments.ImageFragment.1
                @Override // com.bumptech.glide.p112e.AbstractC3604g
                /* renamed from: a */
                public final boolean mo26384a(GlideException glideException, Object obj, AbstractC3585j abstractC3585j, boolean z) {
                    return false;
                }

                @Override // com.bumptech.glide.p112e.AbstractC3604g
                /* renamed from: a */
                public final boolean mo26383a(Object obj, Object obj2, AbstractC3585j abstractC3585j, EnumC3658a enumC3658a, boolean z) {
                    FragmentActivity activity = ImageFragment.this.getActivity();
                    if (Activities.m27696a((Activity) activity)) {
                        activity.runOnUiThread(new Runnable() { // from class: com.callapp.contacts.activity.fragments.ImageFragment.1.1
                            @Override // java.lang.Runnable
                            public void run() {
                                inflate.findViewById(2131363583).setVisibility(8);
                            }
                        });
                        return false;
                    }
                    return false;
                }
            };
            glideRequestBuilder.f28251q = true;
            glideRequestBuilder.m27013d();
        }
        return inflate;
    }
}
