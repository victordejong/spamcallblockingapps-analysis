package gogolook.callgogolook2.messaging.p078ui.mediapicker;

import android.content.Context;
import android.database.Cursor;
import android.util.AttributeSet;
import android.view.View;
import android.widget.CheckBox;
import android.widget.FrameLayout;
import android.widget.ImageView;
import gogolook.callgogolook2.R$color;
import gogolook.callgogolook2.R$dimen;
import gogolook.callgogolook2.R$drawable;
import gogolook.callgogolook2.R$id;
import gogolook.callgogolook2.R$string;
import gogolook.callgogolook2.messaging.p078ui.AsyncImageView;
import java.util.concurrent.TimeUnit;
import p459j.p460a.p474c0.p475c.AbstractC11528g;
import p459j.p460a.p474c0.p475c.p478y.C11624k;
import p459j.p460a.p474c0.p475c.p479z.AbstractC11667n;
import p459j.p460a.p474c0.p475c.p479z.C11681v;
import p459j.p460a.p474c0.p499h.C12205r;
/* renamed from: gogolook.callgogolook2.messaging.ui.mediapicker.GalleryGridItemView */
/* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/messaging/ui/mediapicker/GalleryGridItemView.class */
public class GalleryGridItemView extends FrameLayout {

    /* renamed from: b */
    public AsyncImageView f11855b;

    /* renamed from: c */
    public CheckBox f11856c;

    /* renamed from: d */
    public View f11857d;

    /* renamed from: e */
    public AbstractC4828c f11858e;

    /* renamed from: f */
    public final View.OnClickListener f11859f = new View$OnClickListenerC4826a();

    /* renamed from: a */
    public C11624k f11854a = AbstractC11528g.m9259k().mo9248b();

    /* renamed from: gogolook.callgogolook2.messaging.ui.mediapicker.GalleryGridItemView$a */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/messaging/ui/mediapicker/GalleryGridItemView$a.class */
    public class View$OnClickListenerC4826a implements View.OnClickListener {
        public View$OnClickListenerC4826a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            AbstractC4828c cVar = GalleryGridItemView.this.f11858e;
            GalleryGridItemView galleryGridItemView = GalleryGridItemView.this;
            cVar.mo26997a(galleryGridItemView, galleryGridItemView.f11854a, false);
        }
    }

    /* renamed from: gogolook.callgogolook2.messaging.ui.mediapicker.GalleryGridItemView$b */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/messaging/ui/mediapicker/GalleryGridItemView$b.class */
    public class View$OnLongClickListenerC4827b implements View.OnLongClickListener {
        public View$OnLongClickListenerC4827b() {
        }

        @Override // android.view.View.OnLongClickListener
        public boolean onLongClick(View view) {
            GalleryGridItemView.this.f11858e.mo26997a(view, GalleryGridItemView.this.f11854a, true);
            return true;
        }
    }

    /* renamed from: gogolook.callgogolook2.messaging.ui.mediapicker.GalleryGridItemView$c */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/messaging/ui/mediapicker/GalleryGridItemView$c.class */
    public interface AbstractC4828c {
        /* renamed from: a */
        void mo26997a(View view, C11624k kVar, boolean z);

        /* renamed from: a */
        boolean mo27001a();

        /* renamed from: a */
        boolean mo26994a(C11624k kVar);
    }

    public GalleryGridItemView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    /* renamed from: a */
    public final void m27005a() {
        if (this.f11854a.m8774e()) {
            this.f11855b.setScaleType(ImageView.ScaleType.CENTER);
            setBackgroundResource(R$drawable.app_gallery_picker_document_background);
            this.f11855b.m27439b((AbstractC11667n) null);
            this.f11855b.setImageResource(R$drawable.ip_gallery_btn);
            this.f11855b.setContentDescription(getResources().getString(R$string.pick_image_from_document_library_content_description));
            this.f11857d.setVisibility(4);
            return;
        }
        this.f11855b.setScaleType(ImageView.ScaleType.CENTER_CROP);
        setBackgroundColor(getResources().getColor(R$color.gallery_image_default_background));
        if (C12205r.m6804i(this.f11854a.m8780a())) {
            this.f11855b.m27439b(new C11681v(this.f11854a.m8775d()));
            this.f11857d.setVisibility(0);
        } else {
            this.f11855b.m27439b(this.f11854a.m8776c());
            this.f11857d.setVisibility(4);
        }
        long b = this.f11854a.m8777b();
        this.f11855b.setContentDescription(String.format(getResources().getString((b > 0L ? 1 : (b == 0L ? 0 : -1)) > 0 ? R$string.mediapicker_gallery_image_item_description : R$string.mediapicker_gallery_image_item_description_no_date), Long.valueOf(b * TimeUnit.SECONDS.toMillis(1L))));
    }

    /* renamed from: a */
    public void m27004a(Cursor cursor, AbstractC4828c cVar) {
        int dimensionPixelSize = getResources().getDimensionPixelSize(R$dimen.gallery_image_cell_size);
        this.f11854a.m8779a(cursor, dimensionPixelSize, dimensionPixelSize);
        this.f11858e = cVar;
        m27002b();
    }

    /* renamed from: b */
    public final void m27002b() {
        m27005a();
        if (!this.f11858e.mo27001a() || this.f11854a.m8774e()) {
            this.f11856c.setVisibility(8);
            this.f11856c.setClickable(false);
            return;
        }
        this.f11856c.setVisibility(0);
        this.f11856c.setClickable(true);
        this.f11856c.setChecked(this.f11858e.mo26994a(this.f11854a));
    }

    @Override // android.view.View
    public void onFinishInflate() {
        super.onFinishInflate();
        this.f11855b = (AsyncImageView) findViewById(2131362371);
        this.f11856c = (CheckBox) findViewById(2131362065);
        this.f11857d = findViewById(R$id.video_icon);
        this.f11856c.setOnClickListener(this.f11859f);
        setOnClickListener(this.f11859f);
        View$OnLongClickListenerC4827b bVar = new View$OnLongClickListenerC4827b();
        setOnLongClickListener(bVar);
        this.f11856c.setOnLongClickListener(bVar);
    }

    @Override // android.widget.FrameLayout, android.view.View
    public void onMeasure(int i, int i2) {
        super.onMeasure(i, i);
    }
}
