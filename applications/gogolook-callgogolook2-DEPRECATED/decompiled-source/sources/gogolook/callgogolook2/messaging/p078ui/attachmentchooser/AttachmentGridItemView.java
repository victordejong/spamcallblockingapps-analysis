package gogolook.callgogolook2.messaging.p078ui.attachmentchooser;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.TouchDelegate;
import android.view.View;
import android.widget.CheckBox;
import android.widget.FrameLayout;
import gogolook.callgogolook2.R$dimen;
import gogolook.callgogolook2.R$id;
import gogolook.callgogolook2.messaging.datamodel.data.MessagePartData;
import p459j.p460a.p474c0.p491g.C11904a;
import p459j.p460a.p474c0.p499h.C12151d;
/* renamed from: gogolook.callgogolook2.messaging.ui.attachmentchooser.AttachmentGridItemView */
/* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/messaging/ui/attachmentchooser/AttachmentGridItemView.class */
public class AttachmentGridItemView extends FrameLayout {

    /* renamed from: a */
    public MessagePartData f11571a;

    /* renamed from: b */
    public FrameLayout f11572b;

    /* renamed from: c */
    public CheckBox f11573c;

    /* renamed from: d */
    public AbstractC4713d f11574d;

    /* renamed from: gogolook.callgogolook2.messaging.ui.attachmentchooser.AttachmentGridItemView$a */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/messaging/ui/attachmentchooser/AttachmentGridItemView$a.class */
    public class View$OnClickListenerC4710a implements View.OnClickListener {
        public View$OnClickListenerC4710a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            AbstractC4713d dVar = AttachmentGridItemView.this.f11574d;
            AttachmentGridItemView attachmentGridItemView = AttachmentGridItemView.this;
            dVar.mo27279b(attachmentGridItemView, attachmentGridItemView.f11571a);
        }
    }

    /* renamed from: gogolook.callgogolook2.messaging.ui.attachmentchooser.AttachmentGridItemView$b */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/messaging/ui/attachmentchooser/AttachmentGridItemView$b.class */
    public class View$OnClickListenerC4711b implements View.OnClickListener {
        public View$OnClickListenerC4711b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            AbstractC4713d dVar = AttachmentGridItemView.this.f11574d;
            AttachmentGridItemView attachmentGridItemView = AttachmentGridItemView.this;
            dVar.mo27282a(attachmentGridItemView, attachmentGridItemView.f11571a);
        }
    }

    /* renamed from: gogolook.callgogolook2.messaging.ui.attachmentchooser.AttachmentGridItemView$c */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/messaging/ui/attachmentchooser/AttachmentGridItemView$c.class */
    public class View$OnLayoutChangeListenerC4712c implements View.OnLayoutChangeListener {
        public View$OnLayoutChangeListenerC4712c() {
        }

        @Override // android.view.View.OnLayoutChangeListener
        public void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
            int dimensionPixelOffset = AttachmentGridItemView.this.getResources().getDimensionPixelOffset(R$dimen.attachment_grid_checkbox_area_increase);
            Rect rect = new Rect();
            AttachmentGridItemView.this.f11573c.getHitRect(rect);
            int i9 = -dimensionPixelOffset;
            rect.inset(i9, i9);
            AttachmentGridItemView attachmentGridItemView = AttachmentGridItemView.this;
            attachmentGridItemView.setTouchDelegate(new TouchDelegate(rect, attachmentGridItemView.f11573c));
        }
    }

    /* renamed from: gogolook.callgogolook2.messaging.ui.attachmentchooser.AttachmentGridItemView$d */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/messaging/ui/attachmentchooser/AttachmentGridItemView$d.class */
    public interface AbstractC4713d {
        /* renamed from: a */
        void mo27282a(AttachmentGridItemView attachmentGridItemView, MessagePartData messagePartData);

        /* renamed from: a */
        boolean mo27283a(MessagePartData messagePartData);

        /* renamed from: b */
        void mo27279b(AttachmentGridItemView attachmentGridItemView, MessagePartData messagePartData);
    }

    public AttachmentGridItemView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    /* renamed from: a */
    public final void m27289a() {
        this.f11572b.removeAllViews();
        this.f11572b.addView(C11904a.m7956a(LayoutInflater.from(getContext()), this.f11571a, this.f11572b, 3, true, null));
    }

    /* renamed from: a */
    public void m27288a(MessagePartData messagePartData, AbstractC4713d dVar) {
        C12151d.m6999b(messagePartData.m27562v());
        this.f11574d = dVar;
        m27286b();
        MessagePartData messagePartData2 = this.f11571a;
        if (messagePartData2 == null || !messagePartData2.equals(messagePartData)) {
            this.f11571a = messagePartData;
            m27289a();
        }
    }

    /* renamed from: b */
    public void m27286b() {
        this.f11573c.setChecked(this.f11574d.mo27283a(this.f11571a));
    }

    @Override // android.view.View
    public void onFinishInflate() {
        super.onFinishInflate();
        this.f11572b = (FrameLayout) findViewById(R$id.attachment_container);
        this.f11573c = (CheckBox) findViewById(2131362065);
        this.f11573c.setOnClickListener(new View$OnClickListenerC4710a());
        setOnClickListener(new View$OnClickListenerC4711b());
        addOnLayoutChangeListener(new View$OnLayoutChangeListenerC4712c());
    }

    @Override // android.widget.FrameLayout, android.view.View
    public void onMeasure(int i, int i2) {
        super.onMeasure(i, i);
    }
}
