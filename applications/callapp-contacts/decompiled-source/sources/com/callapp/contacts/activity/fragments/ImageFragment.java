package com.callapp.contacts.activity.fragments;

import android.app.Activity;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import com.bumptech.glide.e.a.j;
import com.bumptech.glide.e.g;
import com.bumptech.glide.load.a;
import com.bumptech.glide.load.engine.GlideException;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.glide.GlideUtils;
import com.callapp.framework.util.StringUtils;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/fragments/ImageFragment.class */
public class ImageFragment extends Fragment {

    /* renamed from: a  reason: collision with root package name */
    int f12876a;

    /* renamed from: b  reason: collision with root package name */
    private String f12877b;

    public static ImageFragment a(String str) {
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
        this.f12877b = getArguments() != null ? getArguments().getString("url") : null;
        this.f12876a = getArguments() != null ? getArguments().getInt("target_size") : 600;
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        final View inflate = layoutInflater.inflate(2131558681, viewGroup, false);
        ImageView imageView = (ImageView) inflate.findViewById(2131363013);
        if (StringUtils.b((CharSequence) this.f12877b)) {
            GlideUtils.GlideRequestBuilder glideRequestBuilder = new GlideUtils.GlideRequestBuilder(imageView, this.f12877b, getContext());
            glideRequestBuilder.n = new g() { // from class: com.callapp.contacts.activity.fragments.ImageFragment.1
                @Override // com.bumptech.glide.e.g
                public final boolean a(GlideException glideException, Object obj, j jVar, boolean z) {
                    return false;
                }

                @Override // com.bumptech.glide.e.g
                public final boolean a(Object obj, Object obj2, j jVar, a aVar, boolean z) {
                    FragmentActivity activity = ImageFragment.this.getActivity();
                    if (!Activities.a((Activity) activity)) {
                        return false;
                    }
                    activity.runOnUiThread(new Runnable() { // from class: com.callapp.contacts.activity.fragments.ImageFragment.1.1
                        @Override // java.lang.Runnable
                        public void run() {
                            inflate.findViewById(2131363583).setVisibility(8);
                        }
                    });
                    return false;
                }
            };
            glideRequestBuilder.q = true;
            glideRequestBuilder.d();
        }
        return inflate;
    }
}
