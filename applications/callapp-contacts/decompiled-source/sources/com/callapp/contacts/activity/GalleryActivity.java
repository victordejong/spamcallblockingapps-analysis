package com.callapp.contacts.activity;

import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.viewpager.widget.ViewPager;
import androidx.viewpager.widget.a;
import com.callapp.contacts.activity.contact.cards.SocialImagesCard;
import com.callapp.contacts.api.helper.common.RemoteAccountHelper;
import com.callapp.contacts.util.BaseTransparentActivity;
import com.callapp.contacts.util.ThemeUtils;
import com.callapp.contacts.util.ViewUtils;
import com.callapp.contacts.util.glide.GlideUtils;
import com.callapp.framework.util.CollectionUtils;
import com.callapp.framework.util.StringUtils;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/GalleryActivity.class */
public class GalleryActivity extends BaseTransparentActivity {

    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/GalleryActivity$CustomPagerAdapter.class */
    class CustomPagerAdapter extends a {

        /* renamed from: b  reason: collision with root package name */
        private final LayoutInflater f10670b;

        /* renamed from: c  reason: collision with root package name */
        private final List<SocialImagesCard.SocialImage> f10671c;

        public CustomPagerAdapter(Context context, List<SocialImagesCard.SocialImage> list) {
            this.f10670b = (LayoutInflater) context.getSystemService("layout_inflater");
            this.f10671c = list;
        }

        @Override // androidx.viewpager.widget.a
        public final Object a(ViewGroup viewGroup, int i) {
            View inflate = this.f10670b.inflate(2131558676, viewGroup, false);
            ImageView imageView = (ImageView) inflate.findViewById(2131363000);
            ImageView imageView2 = (ImageView) inflate.findViewById(2131363910);
            View findViewById = inflate.findViewById(2131363828);
            String url = this.f10671c.get(i).getUrl();
            if (StringUtils.b((CharSequence) url)) {
                new GlideUtils.GlideRequestBuilder(imageView, url, GalleryActivity.this).d();
                imageView2.setImageResource(RemoteAccountHelper.getSocialBadgeResId(this.f10671c.get(i).getSocialId()));
                ViewUtils.a(findViewById, ThemeUtils.getDrawable(2131232196));
            }
            viewGroup.addView(inflate);
            return inflate;
        }

        @Override // androidx.viewpager.widget.a
        public final void a(ViewGroup viewGroup, int i, Object obj) {
            viewGroup.removeView((ViewGroup) obj);
        }

        @Override // androidx.viewpager.widget.a
        public final boolean a(View view, Object obj) {
            return view == obj;
        }

        @Override // androidx.viewpager.widget.a
        public int getCount() {
            return this.f10671c.size();
        }
    }

    @Override // com.callapp.contacts.util.BaseTransparentActivity, com.callapp.contacts.activity.base.BaseActivity
    public int getLayoutResourceId() {
        return 2131558466;
    }

    @Override // com.callapp.contacts.activity.base.BaseActivity
    public int getStatusBarColor() {
        return -16777216;
    }

    @Override // com.callapp.contacts.util.BaseTransparentActivity, com.callapp.contacts.activity.base.BaseActivity
    public boolean isColoringTheStatusBar() {
        return true;
    }

    @Override // com.callapp.contacts.activity.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        setKeyguardDismissAndScreenWindowFlags();
        super.onCreate(bundle);
        Bundle extras = getIntent().getExtras();
        if (extras != null) {
            int i = extras.getInt("PHOTO_CLICKED_ID", 0);
            ArrayList parcelableArrayList = extras.getParcelableArrayList("PHOTO_LIST");
            if (CollectionUtils.b(parcelableArrayList)) {
                CustomPagerAdapter customPagerAdapter = new CustomPagerAdapter(this, parcelableArrayList);
                ViewPager viewPager = (ViewPager) findViewById(2131363474);
                if (viewPager != null) {
                    viewPager.setAdapter(customPagerAdapter);
                    viewPager.setCurrentItem(i, true);
                    return;
                }
            }
        }
        finish();
    }
}
