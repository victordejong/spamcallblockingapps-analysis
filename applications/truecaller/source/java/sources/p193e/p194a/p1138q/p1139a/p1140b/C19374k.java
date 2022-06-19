package p193e.p194a.p1138q.p1139a.p1140b;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import com.razorpay.AnalyticsConstants;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.contactfeedback.C3744R;
import com.truecaller.contactfeedback.model.Profile;
import java.util.List;
import java.util.Objects;
import p193e.p1451f.p1452a.C22234h;
import p193e.p194a.p1053m0.C17891a1;
import p193e.p194a.p1406z3.C21853e;
import s1.z.c.l;
/* renamed from: e.a.q.a.b.k */
/* loaded from: classes4-dex2jar.jar:e/a/q/a/b/k.class */
public final class C19374k extends BaseAdapter {

    /* renamed from: a */
    public final Context f53870a;

    /* renamed from: b */
    public final List<Profile> f53871b;

    /* renamed from: c */
    public final AbstractC19375l f53872c;

    public C19374k(Context context, List<Profile> list, AbstractC19375l abstractC19375l) {
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(list, "profiles");
        l.e(abstractC19375l, "spinnerItemSelectedListener");
        this.f53870a = context;
        this.f53871b = list;
        this.f53872c = abstractC19375l;
    }

    /* renamed from: a */
    public final void m13395a(Profile profile, C19376m c19376m) {
        C21853e m15664K1 = C17891a1.C17902k.m15664K1(this.f53870a);
        l.d(m15664K1, "GlideApp.with(context)");
        Uri uri = null;
        String str = profile != null ? profile.f11338b : null;
        l.e(m15664K1, "$this$loadAsAvatar");
        if (str != null) {
            uri = Uri.parse(str);
        }
        C22234h<Drawable> m15653O0 = C17891a1.C17902k.m15653O0(m15664K1, uri, -1);
        int i = C3744R.C3745drawable.ic_tcx_default_avatar_48dp;
        m15653O0.mo8087u(i).mo8097k(i).m8427O(c19376m.f53874b);
        Resources resources = this.f53870a.getResources();
        if (profile == null) {
            c19376m.f53873a.setText(resources.getString(C3744R.string.spam_categories_anonymous_message));
        } else {
            c19376m.f53873a.setText(resources.getString(C3744R.string.spam_categories_user_name_message, profile.f11337a));
        }
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.f53871b.size();
    }

    @Override // android.widget.BaseAdapter, android.widget.SpinnerAdapter
    public View getDropDownView(int i, View view, ViewGroup viewGroup) {
        C19376m c19376m;
        l.e(viewGroup, "parent");
        if (view == null) {
            view = LayoutInflater.from(this.f53870a).inflate(C3744R.layout.item_dropdown_profile_name, viewGroup, false);
            l.d(view, "inflater.inflate(R.layou…file_name, parent, false)");
            c19376m = new C19376m(view);
            view.setTag(c19376m);
        } else {
            Object tag = view.getTag();
            Objects.requireNonNull(tag, "null cannot be cast to non-null type com.truecaller.contactfeedback.presentation.addcomment.ViewHolder");
            c19376m = (C19376m) tag;
        }
        Profile profile = this.f53871b.get(i);
        m13395a(profile, c19376m);
        view.setPadding(0, i == 0 ? this.f53870a.getResources().getDimensionPixelSize(C3744R.dimen.simple_chip_tcx_padding) : 0, 0, i == getCount() - 1 ? this.f53870a.getResources().getDimensionPixelSize(C3744R.dimen.simple_chip_tcx_padding) : 0);
        view.setOnClickListener(new View$OnClickListenerC19373j(this, profile, i));
        if (i == 0) {
            view.setBackgroundResource(C3744R.C3745drawable.profile_name_top_item_bg);
        }
        boolean z = false;
        if (i == getCount() - 1) {
            z = true;
        }
        if (z) {
            view.setBackgroundResource(C3744R.C3745drawable.profile_name_bottom_item_bg);
        }
        return view;
    }

    @Override // android.widget.Adapter
    public Object getItem(int i) {
        return this.f53871b.get(i);
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return i * 1;
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        l.e(viewGroup, "parent");
        Profile profile = this.f53871b.get(i);
        View inflate = LayoutInflater.from(this.f53870a).inflate(C3744R.layout.item_selected_profile_name, viewGroup, false);
        l.d(inflate, ViewAction.VIEW);
        l.e(inflate, "itemView");
        View findViewById = inflate.findViewById(C3744R.C3746id.name);
        l.d(findViewById, "itemView.findViewById(R.id.name)");
        TextView textView = (TextView) findViewById;
        View findViewById2 = inflate.findViewById(C3744R.C3746id.avatar);
        l.d(findViewById2, "itemView.findViewById(R.id.avatar)");
        ImageView imageView = (ImageView) findViewById2;
        C21853e m15664K1 = C17891a1.C17902k.m15664K1(this.f53870a);
        l.d(m15664K1, "GlideApp.with(context)");
        Uri uri = null;
        String str = profile != null ? profile.f11338b : null;
        l.e(m15664K1, "$this$loadAsAvatar");
        if (str != null) {
            uri = Uri.parse(str);
        }
        C22234h<Drawable> m15653O0 = C17891a1.C17902k.m15653O0(m15664K1, uri, -1);
        int i2 = C3744R.C3745drawable.ic_tcx_default_avatar_48dp;
        m15653O0.mo8087u(i2).mo8097k(i2).m8427O(imageView);
        Resources resources = this.f53870a.getResources();
        if (profile == null) {
            textView.setText(resources.getString(C3744R.string.spam_categories_anonymous_message));
        } else {
            textView.setText(resources.getString(C3744R.string.spam_categories_user_name_message, profile.f11337a));
        }
        return inflate;
    }
}
