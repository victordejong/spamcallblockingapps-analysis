package com.callapp.contacts.widget;

import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.lifecycle.j;
import androidx.lifecycle.o;
import androidx.lifecycle.v;
import androidx.recyclerview.widget.RecyclerView;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.activity.analytics.data.AnalyticsDataManager;
import com.callapp.contacts.activity.contact.header.ThemeState;
import com.callapp.contacts.activity.interfaces.OnSlideMenuOpenedListener;
import com.callapp.contacts.event.EventBusManager;
import com.callapp.contacts.manager.UserProfileManager;
import com.callapp.contacts.manager.asset.managers.StoreItemAssetManager;
import com.callapp.contacts.manager.asset.mappers.AssetListenerMapper;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.manager.task.Task;
import com.callapp.contacts.util.DefaultInterfaceImplUtils;
import com.callapp.contacts.util.LocaleUtils;
import com.callapp.contacts.util.ThemeUtils;
import com.callapp.contacts.util.glide.GlideUtils;
import com.callapp.contacts.widget.SlideMenuAdapter;
import com.callapp.framework.util.StringUtils;
import com.google.android.material.a;
import java.io.Serializable;
import java.util.ArrayList;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/SlideMenuAdapter.class */
public class SlideMenuAdapter extends RecyclerView.a<RecyclerView.v> {

    /* renamed from: a  reason: collision with root package name */
    private ArrayList<SlideMenuListItemData> f16637a;

    /* renamed from: b  reason: collision with root package name */
    private SlideMenuEvents f16638b;

    /* renamed from: c  reason: collision with root package name */
    private ProfilePictureView f16639c;

    /* renamed from: d  reason: collision with root package name */
    private TextView f16640d;
    private TextView e;
    private ImageView f;
    private ImageView g;
    private ImageView h;
    private ImageView i;
    private j j;
    private GlideUtils.GifPlayer k;
    private GlideUtils.GifPlayer l;
    private ImageView m;
    private boolean n;
    private ConstraintLayout o;
    private LinearLayout p;
    private TextView q;
    private ImageView r;
    private FrameLayout s;
    private ImageView t;

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/SlideMenuAdapter$SlideMenuEvents.class */
    public interface SlideMenuEvents {
        void a(boolean z);

        void b(int i);

        void h();

        void i();

        void j();

        void k();
    }

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/SlideMenuAdapter$SlideMenuHeaderViewsHolder.class */
    class SlideMenuHeaderViewsHolder extends RecyclerView.v implements o, OnSlideMenuOpenedListener {
        private ImageView s;
        private StoreItemAssetManager t;

        private SlideMenuHeaderViewsHolder(View view, j jVar) {
            super(view);
            SlideMenuAdapter.this.f16640d = (TextView) view.findViewById(2131364430);
            SlideMenuAdapter.this.e = (TextView) view.findViewById(2131364431);
            SlideMenuAdapter.this.f = (ImageView) view.findViewById(2131362419);
            SlideMenuAdapter.this.g = (ImageView) view.findViewById(2131362418);
            SlideMenuAdapter.this.h = (ImageView) view.findViewById(2131362417);
            SlideMenuAdapter.this.i = (ImageView) view.findViewById(2131364490);
            SlideMenuAdapter.this.f16639c = (ProfilePictureView) view.findViewById(2131364494);
            this.s = (ImageView) this.itemView.findViewById(2131364567);
            EventBusManager.f14368a.a(OnSlideMenuOpenedListener.f12955a, this);
            jVar.addObserver(this);
            int userBadgeContributionForSlideMenu = AnalyticsDataManager.getUserBadgeContributionForSlideMenu();
            if (userBadgeContributionForSlideMenu != -1) {
                SlideMenuAdapter.this.i.setImageResource(userBadgeContributionForSlideMenu);
                SlideMenuAdapter.this.i.setVisibility(0);
            } else {
                SlideMenuAdapter.this.i.setVisibility(8);
            }
            view.setBackgroundColor(ThemeUtils.getColor(2131099927));
            view.setOnClickListener(new DefaultInterfaceImplUtils.ClickListener() { // from class: com.callapp.contacts.widget.SlideMenuAdapter.SlideMenuHeaderViewsHolder.1
                @Override // com.callapp.contacts.util.DefaultInterfaceImplUtils.ClickListener
                public final void a(View view2) {
                    if (SlideMenuAdapter.this.f16638b != null) {
                        SlideMenuAdapter.this.f16638b.j();
                    }
                }
            });
            ImageView imageView = (ImageView) view.findViewById(2131362172);
            imageView.setColorFilter(new PorterDuffColorFilter(ThemeUtils.getColor(2131100140), PorterDuff.Mode.SRC_IN));
            imageView.setOnClickListener(new DefaultInterfaceImplUtils.ClickListener() { // from class: com.callapp.contacts.widget.SlideMenuAdapter.SlideMenuHeaderViewsHolder.2
                @Override // com.callapp.contacts.util.DefaultInterfaceImplUtils.ClickListener
                public final void a(View view2) {
                    if (SlideMenuAdapter.this.f16638b != null) {
                        SlideMenuAdapter.this.f16638b.k();
                    }
                }
            });
            ((FrameLayout) view.findViewById(2131362171)).setOnClickListener(new DefaultInterfaceImplUtils.ClickListener() { // from class: com.callapp.contacts.widget.SlideMenuAdapter.SlideMenuHeaderViewsHolder.3
                @Override // com.callapp.contacts.util.DefaultInterfaceImplUtils.ClickListener
                public final void a(View view2) {
                    if (SlideMenuAdapter.this.f16638b != null) {
                        SlideMenuAdapter.this.f16638b.h();
                    }
                }
            });
            this.s.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.widget._$$Lambda$SlideMenuAdapter$SlideMenuHeaderViewsHolder$vRhR4za759cNP9eWwKjagYP7dLQ
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    SlideMenuAdapter.SlideMenuHeaderViewsHolder.this.a(view2);
                }
            });
            StoreItemAssetManager.Builder builder = new StoreItemAssetManager.Builder();
            if (Prefs.dM.isNotNull()) {
                builder.d(Prefs.dY, new StoreItemAssetManager.AssetListener() { // from class: com.callapp.contacts.widget._$$Lambda$SlideMenuAdapter$SlideMenuHeaderViewsHolder$NUj1jlRHd5ZNXfOYJrcGpNmQ_rM
                    @Override // com.callapp.contacts.manager.asset.managers.StoreItemAssetManager.AssetListener
                    public final void onAssetReady(Object obj, String str) {
                        SlideMenuAdapter.SlideMenuHeaderViewsHolder.this.b((String) obj, str);
                    }
                });
            } else {
                builder.c(Prefs.dY, new AssetListenerMapper(new StoreItemAssetManager.AssetListener() { // from class: com.callapp.contacts.widget._$$Lambda$SlideMenuAdapter$SlideMenuHeaderViewsHolder$76zqAeS964Fv5aRdLwlOBbUgZqk
                    @Override // com.callapp.contacts.manager.asset.managers.StoreItemAssetManager.AssetListener
                    public final void onAssetReady(Object obj, String str) {
                        SlideMenuAdapter.SlideMenuHeaderViewsHolder.this.a((String) obj, str);
                    }
                }));
            }
            StoreItemAssetManager a2 = builder.a();
            this.t = a2;
            a2.getAssets();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void a(View view) {
            if (SlideMenuAdapter.this.f16638b != null) {
                SlideMenuAdapter.this.f16638b.j();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void a(String str) {
            this.s.setVisibility(0);
            ImageView imageView = this.s;
            GlideUtils.GlideRequestBuilder glideRequestBuilder = new GlideUtils.GlideRequestBuilder(imageView, str, imageView.getContext());
            glideRequestBuilder.q = true;
            glideRequestBuilder.d();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void a(final String str, String str2) {
            CallAppApplication.get().d(new Runnable() { // from class: com.callapp.contacts.widget._$$Lambda$SlideMenuAdapter$SlideMenuHeaderViewsHolder$AEwfmQBpSHbZTskc8pIwqSIyaSo
                @Override // java.lang.Runnable
                public final void run() {
                    SlideMenuAdapter.SlideMenuHeaderViewsHolder.this.a(str);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void b(String str) {
            this.s.setVisibility(0);
            SlideMenuAdapter.this.k = new GlideUtils.GifPlayer(this.s.getContext(), this.s, str);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void b(final String str, String str2) {
            CallAppApplication.get().d(new Runnable() { // from class: com.callapp.contacts.widget._$$Lambda$SlideMenuAdapter$SlideMenuHeaderViewsHolder$NW8JcrDexiHeycsMEhcGwDvLNoQ
                @Override // java.lang.Runnable
                public final void run() {
                    SlideMenuAdapter.SlideMenuHeaderViewsHolder.this.b(str);
                }
            });
        }

        @Override // com.callapp.contacts.activity.interfaces.OnSlideMenuOpenedListener
        public void a(boolean z) {
            if (SlideMenuAdapter.this.k != null) {
                SlideMenuAdapter.this.k.a();
            }
            if (SlideMenuAdapter.this.m != null) {
                SlideMenuAdapter.this.l = new GlideUtils.GifPlayer(CallAppApplication.get(), SlideMenuAdapter.this.m, 2131232169, 2, true, true, 3000, new GlideUtils.AnimationEndsListener() { // from class: com.callapp.contacts.widget.SlideMenuAdapter.SlideMenuHeaderViewsHolder.4
                    @Override // com.callapp.contacts.util.glide.GlideUtils.AnimationEndsListener
                    public final void a() {
                        SlideMenuAdapter.this.m.setImageResource(2131231849);
                        if (SlideMenuAdapter.this.l != null) {
                            SlideMenuAdapter.this.l.b();
                        }
                    }
                });
            }
        }

        @v(a = j.a.ON_DESTROY)
        public void onDestroy() {
            EventBusManager.f14368a.b(OnSlideMenuOpenedListener.f12955a, this);
            SlideMenuAdapter.this.j.removeObserver(this);
            if (SlideMenuAdapter.this.k != null) {
                SlideMenuAdapter.this.k.b();
            }
            if (SlideMenuAdapter.this.l != null) {
                SlideMenuAdapter.this.l.b();
            }
            this.t.b();
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/SlideMenuAdapter$SlideMenuListItemData.class */
    public static class SlideMenuListItemData implements Serializable {

        /* renamed from: a  reason: collision with root package name */
        private final int f16657a;

        /* renamed from: b  reason: collision with root package name */
        private final int f16658b;

        /* renamed from: c  reason: collision with root package name */
        private final int f16659c;

        /* renamed from: d  reason: collision with root package name */
        private final int f16660d;
        private final boolean e;
        private String f;
        private int g;
        private int h;

        public SlideMenuListItemData(int i, int i2, int i3, boolean z) {
            this(i, i2, i3, z, 2);
        }

        public SlideMenuListItemData(int i, int i2, int i3, boolean z, int i4) {
            this(i, i2, i3, z, i4, 0);
        }

        public SlideMenuListItemData(int i, int i2, int i3, boolean z, int i4, int i5) {
            this.f = "";
            this.f16658b = i;
            this.f16659c = i2;
            this.f16660d = i3;
            this.e = z;
            this.f16657a = i4;
            this.h = i5;
        }

        public int getClickId() {
            return this.f16658b;
        }

        public String getNotification() {
            return this.f;
        }

        public void setNotification(String str) {
            setNotification$505cff1c(str);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public final void setNotification$505cff1c(String str) {
            this.f = str;
            this.g = 0;
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/SlideMenuAdapter$SlideMenuListItemViewsHolder.class */
    class SlideMenuListItemViewsHolder extends RecyclerView.v {
        private final ImageView s;
        private final TextView t;
        private final View u;
        private final TextView v;
        private View w;
        private LinearLayout x;

        private SlideMenuListItemViewsHolder(View view) {
            super(view);
            this.s = (ImageView) view.findViewById(2131363725);
            this.t = (TextView) view.findViewById(2131363730);
            this.u = view.findViewById(2131363724);
            this.v = (TextView) view.findViewById(2131363727);
            this.x = (LinearLayout) view.findViewById(2131362522);
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/SlideMenuAdapter$SlideMenuThemeViewsHolder.class */
    class SlideMenuThemeViewsHolder extends RecyclerView.v implements o, OnSlideMenuOpenedListener {
        public SlideMenuThemeViewsHolder(View view) {
            super(view);
            SlideMenuAdapter.this.p = (LinearLayout) view.findViewById(2131363709);
            SlideMenuAdapter.this.q = (TextView) view.findViewById(2131364002);
            SlideMenuAdapter.this.o = (ConstraintLayout) view.findViewById(2131364000);
            SlideMenuAdapter.this.r = (ImageView) view.findViewById(2131362804);
            SlideMenuAdapter.this.s = (FrameLayout) view.findViewById(2131362803);
            SlideMenuAdapter.this.t = (ImageView) view.findViewById(2131363999);
        }

        @Override // com.callapp.contacts.activity.interfaces.OnSlideMenuOpenedListener
        public void a(boolean z) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public SlideMenuAdapter(ArrayList<SlideMenuListItemData> arrayList, SlideMenuEvents slideMenuEvents, j jVar, boolean z) {
        this.f16637a = arrayList;
        this.f16638b = slideMenuEvents;
        this.j = jVar;
        this.n = z;
    }

    public final void a(String str) {
        if (this.f16640d != null && this.e != null) {
            ThemeState themeState = (ThemeState) Prefs.di.get();
            this.f16640d.setVisibility(StringUtils.a((CharSequence) null) ? 4 : 0);
            this.f16640d.setTextColor(ThemeUtils.getColor(2131100140));
            this.h.setColorFilter(new PorterDuffColorFilter(ThemeUtils.getColor(themeState.getEditIconColor()), PorterDuff.Mode.SRC_IN));
            this.g.setColorFilter(new PorterDuffColorFilter(ThemeUtils.getColor(themeState.getEditCircleColor()), PorterDuff.Mode.SRC_IN));
            this.f.setColorFilter(new PorterDuffColorFilter(ThemeUtils.getColor(themeState.getEditCircleStrokeColor()), PorterDuff.Mode.SRC_IN));
            this.e.setTextColor(ThemeUtils.getColor(2131100108));
            if (StringUtils.b((CharSequence) null)) {
                this.f16640d.setText(StringUtils.j(null));
            } else {
                new Task() { // from class: com.callapp.contacts.widget.SlideMenuAdapter.5
                    @Override // com.callapp.contacts.manager.task.Task
                    public void doTask() {
                        final String j = StringUtils.j(UserProfileManager.get().getUserProfileName());
                        final String j2 = UserProfileManager.get().getUserPhone() != null ? StringUtils.j(UserProfileManager.get().getUserPhone().a()) : "";
                        CallAppApplication.get().d(new Runnable() { // from class: com.callapp.contacts.widget.SlideMenuAdapter.5.1
                            @Override // java.lang.Runnable
                            public void run() {
                                SlideMenuAdapter.this.f16640d.setText(j);
                                int i = 4;
                                SlideMenuAdapter.this.f16640d.setVisibility(StringUtils.a((CharSequence) j) ? 4 : 0);
                                SlideMenuAdapter.this.f16640d.setTextColor(ThemeUtils.getColor(2131100140));
                                SlideMenuAdapter.this.e.setText(j2);
                                TextView textView = SlideMenuAdapter.this.e;
                                if (!StringUtils.a((CharSequence) j2)) {
                                    i = 0;
                                }
                                textView.setVisibility(i);
                                SlideMenuAdapter.this.e.setTextColor(ThemeUtils.getColor(2131100108));
                            }
                        });
                    }
                }.execute();
            }
        }
    }

    public final void b() {
        UserProfileManager.get().a(this.f16639c, this.n);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.a
    public int getItemCount() {
        return this.f16637a.size();
    }

    public int getItemIndexById(int i) {
        for (int i2 = 0; i2 < this.f16637a.size(); i2++) {
            if (this.f16637a.get(i2).getClickId() == i) {
                return i2;
            }
        }
        return -1;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.a
    public int getItemViewType(int i) {
        SlideMenuListItemData slideMenuListItemData = this.f16637a.get(i);
        if (slideMenuListItemData != null) {
            return slideMenuListItemData.f16657a;
        }
        return 2;
    }

    public SlideMenuListItemData getMenuItem(int i) {
        return this.f16637a.get(i);
    }

    /* JADX WARN: Removed duplicated region for block: B:34:0x0141  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x01c0  */
    @Override // androidx.recyclerview.widget.RecyclerView.a
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onBindViewHolder(androidx.recyclerview.widget.RecyclerView.v r7, int r8) {
        /*
            Method dump skipped, instructions count: 674
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.callapp.contacts.widget.SlideMenuAdapter.onBindViewHolder(androidx.recyclerview.widget.RecyclerView$v, int):void");
    }

    @Override // androidx.recyclerview.widget.RecyclerView.a
    public RecyclerView.v onCreateViewHolder(ViewGroup viewGroup, int i) {
        View view;
        if (i != 0) {
            if (i == 4) {
                view = LayoutInflater.from(viewGroup.getContext()).inflate(2131559030, viewGroup, false);
                view.findViewById(a.f.container).setBackgroundColor(ThemeUtils.getColor(2131099686));
            } else if (i == 5) {
                view = LayoutInflater.from(viewGroup.getContext()).inflate(2131559031, viewGroup, false);
            } else if (i == 6) {
                return new SlideMenuThemeViewsHolder(LayoutInflater.from(viewGroup.getContext()).inflate(2131559033, viewGroup, false));
            } else {
                view = i != 7 ? LayoutInflater.from(viewGroup.getContext()).inflate(2131559029, viewGroup, false) : LayoutInflater.from(viewGroup.getContext()).inflate(2131559032, viewGroup, false);
            }
            final SlideMenuListItemViewsHolder slideMenuListItemViewsHolder = new SlideMenuListItemViewsHolder(view);
            view.setOnClickListener(new DefaultInterfaceImplUtils.ClickListener() { // from class: com.callapp.contacts.widget.SlideMenuAdapter.2
                @Override // com.callapp.contacts.util.DefaultInterfaceImplUtils.ClickListener
                public final void a(View view2) {
                    SlideMenuAdapter.this.f16638b.b(((SlideMenuListItemData) SlideMenuAdapter.this.f16637a.get(slideMenuListItemViewsHolder.getAdapterPosition())).f16658b);
                    if (slideMenuListItemViewsHolder.v != null) {
                        slideMenuListItemViewsHolder.v.setVisibility(8);
                    }
                }
            });
            return slideMenuListItemViewsHolder;
        }
        View inflate = LayoutInflater.from(viewGroup.getContext()).inflate(2131559027, viewGroup, false);
        inflate.findViewById(2131363724).setBackgroundColor(ThemeUtils.getColor(2131099890));
        if (!StringUtils.b(LocaleUtils.b(CallAppApplication.get()), "en")) {
            TextView textView = (TextView) inflate.findViewById(2131362160);
            textView.setTextColor(ThemeUtils.getColor(2131099784));
            textView.setVisibility(0);
            textView.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.widget.SlideMenuAdapter.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    LocaleUtils.a(CallAppApplication.get(), "en", true);
                }
            });
        }
        return new SlideMenuHeaderViewsHolder(inflate, this.j);
    }
}
