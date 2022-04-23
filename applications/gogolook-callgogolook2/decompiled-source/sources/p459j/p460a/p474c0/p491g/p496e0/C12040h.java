package p459j.p460a.p474c0.p491g.p496e0;

import android.database.Cursor;
import android.database.MatrixCursor;
import android.database.MergeCursor;
import android.graphics.drawable.ColorDrawable;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.ListAdapter;
import androidx.appcompat.app.ActionBar;
import gogolook.callgogolook2.R$drawable;
import gogolook.callgogolook2.R$id;
import gogolook.callgogolook2.R$layout;
import gogolook.callgogolook2.R$string;
import gogolook.callgogolook2.messaging.datamodel.data.MessagePartData;
import gogolook.callgogolook2.messaging.p078ui.mediapicker.GalleryGridView;
import gogolook.callgogolook2.realm.obj.favorite.FavoriteGroupRealmObject;
import p459j.p460a.p474c0.AbstractC11516a;
import p459j.p460a.p474c0.p475c.p477x.C11592f;
import p459j.p460a.p474c0.p475c.p478y.C11624k;
import p459j.p460a.p474c0.p475c.p478y.C11627m;
import p459j.p460a.p474c0.p499h.C12151d;
import p459j.p460a.p582w0.C13878a3;
/* renamed from: j.a.c0.g.e0.h */
/* loaded from: classes3-dex2jar.jar:j/a/c0/g/e0/h.class */
public class C12040h extends AbstractC12046k implements GalleryGridView.AbstractC4831b, C11627m.AbstractC11630c {

    /* renamed from: i */
    public final C12039g f26970i = new C12039g(AbstractC11516a.m9413n().mo9412a(), null);

    /* renamed from: j */
    public GalleryGridView f26971j;

    /* renamed from: k */
    public View f26972k;

    /* renamed from: j.a.c0.g.e0.h$a */
    /* loaded from: classes3-dex2jar.jar:j/a/c0/g/e0/h$a.class */
    public class View$OnClickListenerC12041a implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ MenuItem f26973a;

        public View$OnClickListenerC12041a(MenuItem menuItem) {
            this.f26973a = menuItem;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            C12040h.this.mo7407a(this.f26973a);
        }
    }

    public C12040h(FragmentC12048l lVar) {
        super(lVar);
    }

    @Override // p459j.p460a.p474c0.p491g.p496e0.AbstractC12046k
    /* renamed from: A */
    public boolean mo7426A() {
        return this.f26971j.m26983b();
    }

    @Override // p459j.p460a.p474c0.p491g.p496e0.AbstractC12046k
    /* renamed from: B */
    public int mo7425B() {
        return R$string.mediapicker_gallery_title;
    }

    @Override // p459j.p460a.p474c0.p491g.p496e0.AbstractC12046k
    /* renamed from: D */
    public int mo7423D() {
        return R$string.mediapicker_galleryChooserDescription;
    }

    @Override // p459j.p460a.p474c0.p491g.p496e0.AbstractC12046k
    /* renamed from: G */
    public int mo7420G() {
        return 3;
    }

    @Override // p459j.p460a.p474c0.p491g.p496e0.AbstractC12046k
    /* renamed from: J */
    public boolean mo7417J() {
        this.f26971j.m26987j();
        return super.mo7417J();
    }

    @Override // p459j.p460a.p474c0.p491g.p496e0.AbstractC12046k
    /* renamed from: K */
    public void mo7416K() {
    }

    @Override // p459j.p460a.p474c0.p491g.p496e0.AbstractC12046k
    /* renamed from: L */
    public void mo7415L() {
    }

    @Override // p459j.p460a.p474c0.p491g.p496e0.AbstractC12046k
    /* renamed from: N */
    public void mo7413N() {
        if (C13878a3.m3195w()) {
            m7445Q();
        }
    }

    /* renamed from: P */
    public void m7446P() {
        m7404a(new String[]{"android.permission.READ_EXTERNAL_STORAGE"}, 5);
    }

    /* renamed from: Q */
    public final void m7445Q() {
        this.f26991d.mo9033b().m8767a(1, this.f26991d, null, this);
    }

    @Override // p459j.p460a.p474c0.p491g.p496e0.AbstractC12046k
    /* renamed from: a */
    public int mo7411a(int i) {
        return R$drawable.ic_media_picker_tab_gallery;
    }

    @Override // p459j.p460a.p474c0.p491g.p496e0.AbstractC12046k
    /* renamed from: a */
    public void mo7410a(int i, String[] strArr, int[] iArr) {
        super.mo7410a(i, strArr, iArr);
        if (i == 5) {
            boolean z = false;
            if (iArr[0] == 0) {
                z = true;
            }
            if (z) {
                m7445Q();
            }
            m7441f(z);
        }
    }

    @Override // p459j.p460a.p474c0.p491g.p496e0.AbstractC12046k
    /* renamed from: a */
    public void mo7408a(MenuInflater menuInflater, Menu menu, ActionBar actionBar) {
        if (this.f26897a != null) {
            this.f26971j.m26999a(menuInflater, menu);
            if (actionBar != null && this.f26971j.m26989h().isVisible()) {
                actionBar.setCustomView((View) null);
                actionBar.setDisplayShowCustomEnabled(false);
            }
        }
    }

    @Override // p459j.p460a.p474c0.p491g.p496e0.AbstractC12046k
    /* renamed from: a */
    public void mo7406a(ActionBar actionBar) {
        super.mo7406a(actionBar);
        GalleryGridView galleryGridView = this.f26971j;
        if (galleryGridView != null) {
            int g = galleryGridView.m26990g();
            if (g > 0 && this.f26971j.mo27001a()) {
                actionBar.setTitle(m7424C().getResources().getString(R$string.mediapicker_gallery_title_selection, Integer.valueOf(g)));
            }
            if (actionBar != null) {
                View customView = actionBar.getCustomView();
                View view = customView;
                if (customView == null) {
                    view = m7421F().inflate(R$layout.action_button_container, (ViewGroup) null, false);
                    ActionBar.LayoutParams layoutParams = new ActionBar.LayoutParams(-2, -1);
                    layoutParams.gravity = 8388629;
                    actionBar.setCustomView(view, layoutParams);
                    actionBar.setBackgroundDrawable(new ColorDrawable(m7424C().getResources().getColor(2131100157)));
                }
                ViewGroup viewGroup = view.findViewById(R$id.action_button_container) == null ? (ViewGroup) view : (ViewGroup) view.findViewById(R$id.action_button_container);
                if (viewGroup != null) {
                    int childCount = viewGroup.getChildCount();
                    for (int i = 0; i < childCount; i++) {
                        View childAt = viewGroup.getChildAt(i);
                        childAt.setVisibility(8);
                        childAt.setOnClickListener(null);
                    }
                }
                viewGroup.removeAllViews();
                if (!this.f26971j.mo27001a() || g <= 0) {
                    actionBar.setDisplayShowCustomEnabled(false);
                    return;
                }
                MenuItem d = this.f26971j.m26991d();
                d.setVisible(false);
                ImageView imageView = (ImageView) viewGroup.findViewById(d.getItemId());
                ImageView imageView2 = imageView;
                if (imageView == null) {
                    imageView2 = new ImageView(viewGroup.getContext());
                    imageView2.setId(d.getItemId());
                    imageView2.setImageDrawable(d.getIcon());
                    viewGroup.addView(imageView2, 0);
                }
                imageView2.setVisibility(0);
                imageView2.setOnClickListener(new View$OnClickListenerC12041a(d));
                actionBar.setDisplayShowCustomEnabled(true);
            }
        }
    }

    @Override // p459j.p460a.p474c0.p475c.p478y.C11627m.AbstractC11630c
    /* renamed from: a */
    public void mo7444a(C11627m mVar, Object obj, int i) {
        this.f26991d.mo9034a((C11592f<C11627m>) mVar);
        C12151d.m7012a(1, i);
        Cursor cursor = obj instanceof Cursor ? (Cursor) obj : null;
        MatrixCursor matrixCursor = new MatrixCursor(C11624k.f26100f);
        matrixCursor.addRow(new Object[]{FavoriteGroupRealmObject.PARENDID_DELETED});
        this.f26970i.swapCursor(new MergeCursor(new Cursor[]{matrixCursor, cursor}));
    }

    @Override // p459j.p460a.p474c0.p491g.p496e0.AbstractC12046k
    /* renamed from: a */
    public void mo7405a(boolean z, int i) {
        super.mo7405a(z, i);
        if (z && !C13878a3.m3195w()) {
            m7446P();
        }
    }

    @Override // p459j.p460a.p474c0.p491g.p496e0.AbstractC12046k
    /* renamed from: a */
    public boolean mo7407a(MenuItem menuItem) {
        return this.f26897a != null ? this.f26971j.m26998a(menuItem) : false;
    }

    @Override // p459j.p460a.p474c0.p491g.AbstractC12006e
    /* renamed from: b */
    public View mo7182b(ViewGroup viewGroup) {
        View inflate = m7421F().inflate(R$layout.mediapicker_image_chooser, viewGroup, false);
        this.f26971j = (GalleryGridView) inflate.findViewById(R$id.gallery_grid_view);
        this.f26970i.m7447a(this.f26971j);
        this.f26971j.setAdapter((ListAdapter) this.f26970i);
        this.f26971j.m26996a(this);
        this.f26971j.m26995a(this.f26990c.m7357z());
        if (C13878a3.m3195w()) {
            m7445Q();
        }
        this.f26972k = inflate.findViewById(R$id.missing_permission_view);
        m7441f(C13878a3.m3195w());
        return inflate;
    }

    @Override // gogolook.callgogolook2.messaging.p078ui.mediapicker.GalleryGridView.AbstractC4831b
    /* renamed from: b */
    public void mo7443b(MessagePartData messagePartData) {
        this.f26990c.m7370b(messagePartData);
    }

    @Override // gogolook.callgogolook2.messaging.p078ui.mediapicker.GalleryGridView.AbstractC4831b
    /* renamed from: c */
    public void mo7442c(MessagePartData messagePartData) {
        this.f26990c.m7380a(messagePartData, !this.f26971j.mo27001a());
    }

    @Override // p459j.p460a.p474c0.p491g.AbstractC12006e, p459j.p460a.p474c0.p491g.AbstractC12099o
    /* renamed from: e */
    public View mo7170e() {
        this.f26971j.setAdapter((ListAdapter) null);
        this.f26970i.m7447a(null);
        if (C13878a3.m3195w()) {
            this.f26991d.mo9033b().m8768a(1);
        }
        return super.mo7170e();
    }

    /* renamed from: f */
    public final void m7441f(boolean z) {
        GalleryGridView galleryGridView = this.f26971j;
        if (galleryGridView != null) {
            int i = 0;
            galleryGridView.setVisibility(z ? 0 : 8);
            View view = this.f26972k;
            if (z) {
                i = 8;
            }
            view.setVisibility(i);
        }
    }

    @Override // gogolook.callgogolook2.messaging.p078ui.mediapicker.GalleryGridView.AbstractC4831b
    public void onUpdate() {
        this.f26990c.m7395D();
    }

    @Override // gogolook.callgogolook2.messaging.p078ui.mediapicker.GalleryGridView.AbstractC4831b
    /* renamed from: q */
    public void mo7440q() {
        C12151d.m6999b(this.f26971j.mo27001a());
        this.f26990c.m7362q();
    }

    @Override // gogolook.callgogolook2.messaging.p078ui.mediapicker.GalleryGridView.AbstractC4831b
    /* renamed from: v */
    public void mo7439v() {
        this.f26990c.m7390I();
    }
}
