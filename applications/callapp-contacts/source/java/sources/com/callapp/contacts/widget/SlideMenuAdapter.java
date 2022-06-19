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
import androidx.lifecycle.AbstractC1253j;
import androidx.lifecycle.AbstractC1262o;
import androidx.lifecycle.AbstractC1269v;
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
import com.google.android.material.C14376a;
import java.io.Serializable;
import java.util.ArrayList;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/SlideMenuAdapter.class */
public class SlideMenuAdapter extends RecyclerView.AbstractC2626a<RecyclerView.AbstractC2657v> {

    /* renamed from: a */
    private ArrayList<SlideMenuListItemData> f28944a;

    /* renamed from: b */
    private SlideMenuEvents f28945b;

    /* renamed from: c */
    private ProfilePictureView f28946c;

    /* renamed from: d */
    private TextView f28947d;

    /* renamed from: e */
    private TextView f28948e;

    /* renamed from: f */
    private ImageView f28949f;

    /* renamed from: g */
    private ImageView f28950g;

    /* renamed from: h */
    private ImageView f28951h;

    /* renamed from: i */
    private ImageView f28952i;

    /* renamed from: j */
    private AbstractC1253j f28953j;

    /* renamed from: k */
    private GlideUtils.GifPlayer f28954k;

    /* renamed from: l */
    private GlideUtils.GifPlayer f28955l;

    /* renamed from: m */
    private ImageView f28956m;

    /* renamed from: n */
    private boolean f28957n;

    /* renamed from: o */
    private ConstraintLayout f28958o;

    /* renamed from: p */
    private LinearLayout f28959p;

    /* renamed from: q */
    private TextView f28960q;

    /* renamed from: r */
    private ImageView f28961r;

    /* renamed from: s */
    private FrameLayout f28962s;

    /* renamed from: t */
    private ImageView f28963t;

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/SlideMenuAdapter$SlideMenuEvents.class */
    public interface SlideMenuEvents {
        /* renamed from: a */
        void mo26585a(boolean z);

        /* renamed from: b */
        void mo26584b(int i);

        /* renamed from: h */
        void mo26583h();

        /* renamed from: i */
        void mo26582i();

        /* renamed from: j */
        void mo26581j();

        /* renamed from: k */
        void mo26580k();
    }

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/SlideMenuAdapter$SlideMenuHeaderViewsHolder.class */
    public class SlideMenuHeaderViewsHolder extends RecyclerView.AbstractC2657v implements AbstractC1262o, OnSlideMenuOpenedListener {

        /* renamed from: s */
        private ImageView f28974s;

        /* renamed from: t */
        private StoreItemAssetManager f28975t;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        private SlideMenuHeaderViewsHolder(View view, AbstractC1253j abstractC1253j) {
            super(view);
            SlideMenuAdapter.this = r9;
            r9.f28947d = (TextView) view.findViewById(2131364430);
            r9.f28948e = (TextView) view.findViewById(2131364431);
            r9.f28949f = (ImageView) view.findViewById(2131362419);
            r9.f28950g = (ImageView) view.findViewById(2131362418);
            r9.f28951h = (ImageView) view.findViewById(2131362417);
            r9.f28952i = (ImageView) view.findViewById(2131364490);
            r9.f28946c = (ProfilePictureView) view.findViewById(2131364494);
            this.f28974s = (ImageView) this.itemView.findViewById(2131364567);
            EventBusManager.f25138a.m29048a(OnSlideMenuOpenedListener.f23129a, this);
            abstractC1253j.addObserver(this);
            int userBadgeContributionForSlideMenu = AnalyticsDataManager.getUserBadgeContributionForSlideMenu();
            if (userBadgeContributionForSlideMenu != -1) {
                r9.f28952i.setImageResource(userBadgeContributionForSlideMenu);
                r9.f28952i.setVisibility(0);
            } else {
                r9.f28952i.setVisibility(8);
            }
            view.setBackgroundColor(ThemeUtils.getColor(2131099927));
            view.setOnClickListener(new DefaultInterfaceImplUtils.ClickListener() { // from class: com.callapp.contacts.widget.SlideMenuAdapter.SlideMenuHeaderViewsHolder.1
                @Override // com.callapp.contacts.util.DefaultInterfaceImplUtils.ClickListener
                /* renamed from: a */
                public final void mo26371a(View view2) {
                    if (SlideMenuAdapter.this.f28945b != null) {
                        SlideMenuAdapter.this.f28945b.mo26581j();
                    }
                }
            });
            ImageView imageView = (ImageView) view.findViewById(2131362172);
            imageView.setColorFilter(new PorterDuffColorFilter(ThemeUtils.getColor(2131100140), PorterDuff.Mode.SRC_IN));
            imageView.setOnClickListener(new DefaultInterfaceImplUtils.ClickListener() { // from class: com.callapp.contacts.widget.SlideMenuAdapter.SlideMenuHeaderViewsHolder.2
                @Override // com.callapp.contacts.util.DefaultInterfaceImplUtils.ClickListener
                /* renamed from: a */
                public final void mo26371a(View view2) {
                    if (SlideMenuAdapter.this.f28945b != null) {
                        SlideMenuAdapter.this.f28945b.mo26580k();
                    }
                }
            });
            ((FrameLayout) view.findViewById(2131362171)).setOnClickListener(new DefaultInterfaceImplUtils.ClickListener() { // from class: com.callapp.contacts.widget.SlideMenuAdapter.SlideMenuHeaderViewsHolder.3
                @Override // com.callapp.contacts.util.DefaultInterfaceImplUtils.ClickListener
                /* renamed from: a */
                public final void mo26371a(View view2) {
                    if (SlideMenuAdapter.this.f28945b != null) {
                        SlideMenuAdapter.this.f28945b.mo26583h();
                    }
                }
            });
            this.f28974s.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.widget._$$Lambda$SlideMenuAdapter$SlideMenuHeaderViewsHolder$vRhR4za759cNP9eWwKjagYP7dLQ
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    SlideMenuAdapter.SlideMenuHeaderViewsHolder.this.m26579a(view2);
                }
            });
            StoreItemAssetManager.Builder builder = new StoreItemAssetManager.Builder();
            if (Prefs.f26395dM.isNotNull()) {
                builder.m28409d(Prefs.f26407dY, new StoreItemAssetManager.AssetListener() { // from class: com.callapp.contacts.widget._$$Lambda$SlideMenuAdapter$SlideMenuHeaderViewsHolder$NUj1jlRHd5ZNXfOYJrcGpNmQ_rM
                    @Override // com.callapp.contacts.manager.asset.managers.StoreItemAssetManager.AssetListener
                    public final void onAssetReady(Object obj, String str) {
                        SlideMenuAdapter.SlideMenuHeaderViewsHolder.this.m26575b((String) obj, str);
                    }
                });
            } else {
                builder.m28411c(Prefs.f26407dY, new AssetListenerMapper(new StoreItemAssetManager.AssetListener() { // from class: com.callapp.contacts.widget._$$Lambda$SlideMenuAdapter$SlideMenuHeaderViewsHolder$76zqAeS964Fv5aRdLwlOBbUgZqk
                    @Override // com.callapp.contacts.manager.asset.managers.StoreItemAssetManager.AssetListener
                    public final void onAssetReady(Object obj, String str) {
                        SlideMenuAdapter.SlideMenuHeaderViewsHolder.this.m26577a((String) obj, str);
                    }
                }));
            }
            StoreItemAssetManager m28417a = builder.m28417a();
            this.f28975t = m28417a;
            m28417a.getAssets();
        }

        /* renamed from: a */
        public /* synthetic */ void m26579a(View view) {
            if (SlideMenuAdapter.this.f28945b != null) {
                SlideMenuAdapter.this.f28945b.mo26581j();
            }
        }

        /* renamed from: a */
        public /* synthetic */ void m26578a(String str) {
            this.f28974s.setVisibility(0);
            ImageView imageView = this.f28974s;
            GlideUtils.GlideRequestBuilder glideRequestBuilder = new GlideUtils.GlideRequestBuilder(imageView, str, imageView.getContext());
            glideRequestBuilder.f28251q = true;
            glideRequestBuilder.m27013d();
        }

        /* renamed from: a */
        public /* synthetic */ void m26577a(final String str, String str2) {
            CallAppApplication.get().m31858d(new Runnable() { // from class: com.callapp.contacts.widget._$$Lambda$SlideMenuAdapter$SlideMenuHeaderViewsHolder$AEwfmQBpSHbZTskc8pIwqSIyaSo
                @Override // java.lang.Runnable
                public final void run() {
                    SlideMenuAdapter.SlideMenuHeaderViewsHolder.this.m26578a(str);
                }
            });
        }

        /* renamed from: b */
        public /* synthetic */ void m26576b(String str) {
            this.f28974s.setVisibility(0);
            SlideMenuAdapter.this.f28954k = new GlideUtils.GifPlayer(this.f28974s.getContext(), this.f28974s, str);
        }

        /* renamed from: b */
        public /* synthetic */ void m26575b(final String str, String str2) {
            CallAppApplication.get().m31858d(new Runnable() { // from class: com.callapp.contacts.widget._$$Lambda$SlideMenuAdapter$SlideMenuHeaderViewsHolder$NW8JcrDexiHeycsMEhcGwDvLNoQ
                @Override // java.lang.Runnable
                public final void run() {
                    SlideMenuAdapter.SlideMenuHeaderViewsHolder.this.m26576b(str);
                }
            });
        }

        @Override // com.callapp.contacts.activity.interfaces.OnSlideMenuOpenedListener
        /* renamed from: a */
        public void mo26560a(boolean z) {
            if (SlideMenuAdapter.this.f28954k != null) {
                SlideMenuAdapter.this.f28954k.m27033a();
            }
            if (SlideMenuAdapter.this.f28956m != null) {
                SlideMenuAdapter.this.f28955l = new GlideUtils.GifPlayer(CallAppApplication.get(), SlideMenuAdapter.this.f28956m, 2131232169, 2, true, true, 3000, new GlideUtils.AnimationEndsListener() { // from class: com.callapp.contacts.widget.SlideMenuAdapter.SlideMenuHeaderViewsHolder.4
                    @Override // com.callapp.contacts.util.glide.GlideUtils.AnimationEndsListener
                    /* renamed from: a */
                    public final void mo26574a() {
                        SlideMenuAdapter.this.f28956m.setImageResource(2131231849);
                        if (SlideMenuAdapter.this.f28955l != null) {
                            SlideMenuAdapter.this.f28955l.m27031b();
                        }
                    }
                });
            }
        }

        @AbstractC1269v(m43285a = AbstractC1253j.EnumC1255a.ON_DESTROY)
        public void onDestroy() {
            EventBusManager.f25138a.m29045b(OnSlideMenuOpenedListener.f23129a, this);
            SlideMenuAdapter.this.f28953j.removeObserver(this);
            if (SlideMenuAdapter.this.f28954k != null) {
                SlideMenuAdapter.this.f28954k.m27031b();
            }
            if (SlideMenuAdapter.this.f28955l != null) {
                SlideMenuAdapter.this.f28955l.m27031b();
            }
            this.f28975t.m28418b();
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/SlideMenuAdapter$SlideMenuListItemData.class */
    public static class SlideMenuListItemData implements Serializable {

        /* renamed from: a */
        private final int f28983a;

        /* renamed from: b */
        private final int f28984b;

        /* renamed from: c */
        private final int f28985c;

        /* renamed from: d */
        private final int f28986d;

        /* renamed from: e */
        private final boolean f28987e;

        /* renamed from: f */
        private String f28988f;

        /* renamed from: g */
        private int f28989g;

        /* renamed from: h */
        private int f28990h;

        public SlideMenuListItemData(int i, int i2, int i3, boolean z) {
            this(i, i2, i3, z, 2);
        }

        public SlideMenuListItemData(int i, int i2, int i3, boolean z, int i4) {
            this(i, i2, i3, z, i4, 0);
        }

        public SlideMenuListItemData(int i, int i2, int i3, boolean z, int i4, int i5) {
            this.f28988f = "";
            this.f28984b = i;
            this.f28985c = i2;
            this.f28986d = i3;
            this.f28987e = z;
            this.f28983a = i4;
            this.f28990h = i5;
        }

        public int getClickId() {
            return this.f28984b;
        }

        public String getNotification() {
            return this.f28988f;
        }

        public void setNotification(String str) {
            setNotification$505cff1c(str);
        }

        public final void setNotification$505cff1c(String str) {
            this.f28988f = str;
            this.f28989g = 0;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/SlideMenuAdapter$SlideMenuListItemViewsHolder.class */
    public class SlideMenuListItemViewsHolder extends RecyclerView.AbstractC2657v {

        /* renamed from: s */
        private final ImageView f28992s;

        /* renamed from: t */
        private final TextView f28993t;

        /* renamed from: u */
        private final View f28994u;

        /* renamed from: v */
        private final TextView f28995v;

        /* renamed from: w */
        private View f28996w;

        /* renamed from: x */
        private LinearLayout f28997x;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        private SlideMenuListItemViewsHolder(View view) {
            super(view);
            SlideMenuAdapter.this = r5;
            this.f28992s = (ImageView) view.findViewById(2131363725);
            this.f28993t = (TextView) view.findViewById(2131363730);
            this.f28994u = view.findViewById(2131363724);
            this.f28995v = (TextView) view.findViewById(2131363727);
            this.f28997x = (LinearLayout) view.findViewById(2131362522);
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/SlideMenuAdapter$SlideMenuThemeViewsHolder.class */
    class SlideMenuThemeViewsHolder extends RecyclerView.AbstractC2657v implements AbstractC1262o, OnSlideMenuOpenedListener {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public SlideMenuThemeViewsHolder(View view) {
            super(view);
            SlideMenuAdapter.this = r5;
            r5.f28959p = (LinearLayout) view.findViewById(2131363709);
            r5.f28960q = (TextView) view.findViewById(2131364002);
            r5.f28958o = (ConstraintLayout) view.findViewById(2131364000);
            r5.f28961r = (ImageView) view.findViewById(2131362804);
            r5.f28962s = (FrameLayout) view.findViewById(2131362803);
            r5.f28963t = (ImageView) view.findViewById(2131363999);
        }

        @Override // com.callapp.contacts.activity.interfaces.OnSlideMenuOpenedListener
        /* renamed from: a */
        public void mo26560a(boolean z) {
        }
    }

    public SlideMenuAdapter(ArrayList<SlideMenuListItemData> arrayList, SlideMenuEvents slideMenuEvents, AbstractC1253j abstractC1253j, boolean z) {
        this.f28944a = arrayList;
        this.f28945b = slideMenuEvents;
        this.f28953j = abstractC1253j;
        this.f28957n = z;
    }

    /* renamed from: a */
    public final void m26604a(String str) {
        if (this.f28947d == null || this.f28948e == null) {
            return;
        }
        ThemeState themeState = (ThemeState) Prefs.f26417di.get();
        this.f28947d.setVisibility(StringUtils.m26059a((CharSequence) null) ? 4 : 0);
        this.f28947d.setTextColor(ThemeUtils.getColor(2131100140));
        this.f28951h.setColorFilter(new PorterDuffColorFilter(ThemeUtils.getColor(themeState.getEditIconColor()), PorterDuff.Mode.SRC_IN));
        this.f28950g.setColorFilter(new PorterDuffColorFilter(ThemeUtils.getColor(themeState.getEditCircleColor()), PorterDuff.Mode.SRC_IN));
        this.f28949f.setColorFilter(new PorterDuffColorFilter(ThemeUtils.getColor(themeState.getEditCircleStrokeColor()), PorterDuff.Mode.SRC_IN));
        this.f28948e.setTextColor(ThemeUtils.getColor(2131100108));
        if (StringUtils.m26045b((CharSequence) null)) {
            this.f28947d.setText(StringUtils.m26020j(null));
        } else {
            new Task() { // from class: com.callapp.contacts.widget.SlideMenuAdapter.5
                @Override // com.callapp.contacts.manager.task.Task
                public void doTask() {
                    final String m26020j = StringUtils.m26020j(UserProfileManager.get().getUserProfileName());
                    final String m26020j2 = UserProfileManager.get().getUserPhone() != null ? StringUtils.m26020j(UserProfileManager.get().getUserPhone().m26101a()) : "";
                    CallAppApplication.get().m31858d(new Runnable() { // from class: com.callapp.contacts.widget.SlideMenuAdapter.5.1
                        @Override // java.lang.Runnable
                        public void run() {
                            SlideMenuAdapter.this.f28947d.setText(m26020j);
                            SlideMenuAdapter.this.f28947d.setVisibility(StringUtils.m26059a((CharSequence) m26020j) ? 4 : 0);
                            SlideMenuAdapter.this.f28947d.setTextColor(ThemeUtils.getColor(2131100140));
                            SlideMenuAdapter.this.f28948e.setText(m26020j2);
                            SlideMenuAdapter.this.f28948e.setVisibility(StringUtils.m26059a((CharSequence) m26020j2) ? 4 : 0);
                            SlideMenuAdapter.this.f28948e.setTextColor(ThemeUtils.getColor(2131100108));
                        }
                    });
                }
            }.execute();
        }
    }

    /* renamed from: b */
    public final void m26603b() {
        UserProfileManager.get().m28463a(this.f28946c, this.f28957n);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2626a
    public int getItemCount() {
        return this.f28944a.size();
    }

    public int getItemIndexById(int i) {
        for (int i2 = 0; i2 < this.f28944a.size(); i2++) {
            if (this.f28944a.get(i2).getClickId() == i) {
                return i2;
            }
        }
        return -1;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2626a
    public int getItemViewType(int i) {
        SlideMenuListItemData slideMenuListItemData = this.f28944a.get(i);
        if (slideMenuListItemData != null) {
            return slideMenuListItemData.f28983a;
        }
        return 2;
    }

    public SlideMenuListItemData getMenuItem(int i) {
        return this.f28944a.get(i);
    }

    /* JADX WARN: Removed duplicated region for block: B:34:0x0141  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x01c0  */
    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2626a
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onBindViewHolder(androidx.recyclerview.widget.RecyclerView.AbstractC2657v r7, int r8) {
        /*
            Method dump skipped, instructions count: 674
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.callapp.contacts.widget.SlideMenuAdapter.onBindViewHolder(androidx.recyclerview.widget.RecyclerView$v, int):void");
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2626a
    public RecyclerView.AbstractC2657v onCreateViewHolder(ViewGroup viewGroup, int i) {
        View view;
        if (i == 0) {
            View inflate = LayoutInflater.from(viewGroup.getContext()).inflate(2131559027, viewGroup, false);
            inflate.findViewById(2131363724).setBackgroundColor(ThemeUtils.getColor(2131099890));
            if (!StringUtils.m26042b(LocaleUtils.m27460b(CallAppApplication.get()), "en")) {
                TextView textView = (TextView) inflate.findViewById(2131362160);
                textView.setTextColor(ThemeUtils.getColor(2131099784));
                textView.setVisibility(0);
                textView.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.widget.SlideMenuAdapter.1
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view2) {
                        LocaleUtils.m27464a(CallAppApplication.get(), "en", true);
                    }
                });
            }
            return new SlideMenuHeaderViewsHolder(inflate, this.f28953j);
        }
        if (i == 4) {
            view = LayoutInflater.from(viewGroup.getContext()).inflate(2131559030, viewGroup, false);
            view.findViewById(C14376a.C14382f.container).setBackgroundColor(ThemeUtils.getColor(2131099686));
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
            /* renamed from: a */
            public final void mo26371a(View view2) {
                SlideMenuAdapter.this.f28945b.mo26584b(((SlideMenuListItemData) SlideMenuAdapter.this.f28944a.get(slideMenuListItemViewsHolder.getAdapterPosition())).f28984b);
                if (slideMenuListItemViewsHolder.f28995v != null) {
                    slideMenuListItemViewsHolder.f28995v.setVisibility(8);
                }
            }
        });
        return slideMenuListItemViewsHolder;
    }
}
