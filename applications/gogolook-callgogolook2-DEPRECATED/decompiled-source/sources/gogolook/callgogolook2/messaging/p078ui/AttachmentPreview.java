package gogolook.callgogolook2.messaging.p078ui;

import android.animation.Animator;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.graphics.Rect;
import android.os.Handler;
import android.os.Looper;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageButton;
import android.widget.ScrollView;
import gogolook.callgogolook2.R$id;
import gogolook.callgogolook2.messaging.datamodel.data.MediaPickerMessagePartData;
import gogolook.callgogolook2.messaging.datamodel.data.MessagePartData;
import gogolook.callgogolook2.messaging.datamodel.data.PendingAttachmentData;
import gogolook.callgogolook2.messaging.p078ui.MultiAttachmentLayout;
import gogolook.callgogolook2.messaging.p078ui.conversation.ComposeMessageView;
import java.util.ArrayList;
import java.util.List;
import p459j.p460a.p474c0.p475c.p478y.C11617j;
import p459j.p460a.p474c0.p491g.AbstractC12126w;
import p459j.p460a.p474c0.p491g.p498z.C12129a;
import p459j.p460a.p474c0.p499h.C12212s0;
/* renamed from: gogolook.callgogolook2.messaging.ui.AttachmentPreview */
/* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/messaging/ui/AttachmentPreview.class */
public class AttachmentPreview extends ScrollView implements MultiAttachmentLayout.AbstractC4692b {

    /* renamed from: a */
    public FrameLayout f11393a;

    /* renamed from: b */
    public ComposeMessageView f11394b;

    /* renamed from: c */
    public ImageButton f11395c;

    /* renamed from: e */
    public Animator f11397e;

    /* renamed from: f */
    public boolean f11398f;

    /* renamed from: h */
    public Runnable f11400h;

    /* renamed from: i */
    public boolean f11401i;

    /* renamed from: d */
    public int f11396d = -1;

    /* renamed from: j */
    public C11617j f11402j = null;

    /* renamed from: g */
    public Handler f11399g = new Handler(Looper.getMainLooper());

    /* renamed from: gogolook.callgogolook2.messaging.ui.AttachmentPreview$a */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/messaging/ui/AttachmentPreview$a.class */
    public class View$OnClickListenerC4679a implements View.OnClickListener {
        public View$OnClickListenerC4679a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            AttachmentPreview.this.f11394b.m27217d();
        }
    }

    /* renamed from: gogolook.callgogolook2.messaging.ui.AttachmentPreview$b */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/messaging/ui/AttachmentPreview$b.class */
    public class View$OnLayoutChangeListenerC4680b implements View.OnLayoutChangeListener {

        /* renamed from: gogolook.callgogolook2.messaging.ui.AttachmentPreview$b$a */
        /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/messaging/ui/AttachmentPreview$b$a.class */
        public class RunnableC4681a implements Runnable {
            public RunnableC4681a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                int childCount = AttachmentPreview.this.getChildCount();
                if (childCount > 0) {
                    View childAt = AttachmentPreview.this.getChildAt(childCount - 1);
                    AttachmentPreview attachmentPreview = AttachmentPreview.this;
                    attachmentPreview.scrollTo(attachmentPreview.getScrollX(), childAt.getBottom() - AttachmentPreview.this.getHeight());
                }
            }
        }

        public View$OnLayoutChangeListenerC4680b() {
        }

        @Override // android.view.View.OnLayoutChangeListener
        public void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
            AttachmentPreview.this.post(new RunnableC4681a());
        }
    }

    /* renamed from: gogolook.callgogolook2.messaging.ui.AttachmentPreview$c */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/messaging/ui/AttachmentPreview$c.class */
    public class RunnableC4682c implements Runnable {
        public RunnableC4682c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (!AttachmentPreview.this.f11401i) {
                AttachmentPreview.this.f11393a.removeAllViews();
                AttachmentPreview.this.setVisibility(8);
            }
        }
    }

    /* renamed from: gogolook.callgogolook2.messaging.ui.AttachmentPreview$d */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/messaging/ui/AttachmentPreview$d.class */
    public class RunnableC4683d implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ List f11407a;

        /* renamed from: b */
        public final /* synthetic */ List f11408b;

        public RunnableC4683d(List list, List list2) {
            this.f11407a = list;
            this.f11408b = list2;
        }

        @Override // java.lang.Runnable
        public void run() {
            AttachmentPreview.this.f11400h = null;
            if (this.f11407a.size() + this.f11408b.size() == 0) {
                AttachmentPreview.this.m27426c();
            }
        }
    }

    public AttachmentPreview(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    /* renamed from: a */
    public static void m27433a(MessagePartData messagePartData, View view) {
        if (messagePartData instanceof MediaPickerMessagePartData) {
            new C12129a(((MediaPickerMessagePartData) messagePartData).m27647F(), view).m7053g();
        }
    }

    /* renamed from: a */
    public final void m27434a() {
        Animator animator = this.f11397e;
        if (animator != null) {
            animator.cancel();
            this.f11397e = null;
        }
        this.f11396d = -1;
    }

    /* renamed from: a */
    public void m27430a(ComposeMessageView composeMessageView) {
        this.f11394b = composeMessageView;
    }

    @Override // gogolook.callgogolook2.messaging.p078ui.MultiAttachmentLayout.AbstractC4692b
    /* renamed from: a */
    public boolean mo27122a(MessagePartData messagePartData, Rect rect) {
        this.f11394b.m27194n();
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:40:0x01c6  */
    /* JADX WARN: Removed duplicated region for block: B:47:? A[RETURN, SYNTHETIC] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean m27429a(p459j.p460a.p474c0.p475c.p478y.C11617j r8) {
        /*
            Method dump skipped, instructions count: 474
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: gogolook.callgogolook2.messaging.p078ui.AttachmentPreview.m27429a(j.a.c0.c.y.j):boolean");
    }

    /* renamed from: b */
    public final void m27428b() {
        this.f11401i = true;
    }

    @Override // gogolook.callgogolook2.messaging.p078ui.MultiAttachmentLayout.AbstractC4692b
    /* renamed from: b */
    public boolean mo27113b(MessagePartData messagePartData, Rect rect) {
        if (messagePartData instanceof PendingAttachmentData) {
            return false;
        }
        if (messagePartData.m27560x()) {
            ArrayList<String> arrayList = new ArrayList<>();
            for (MessagePartData messagePartData2 : this.f11402j.m8792s()) {
                if (messagePartData2.m27560x()) {
                    arrayList.add(messagePartData2.m27567q().toString());
                }
            }
            this.f11394b.m27225a(arrayList, messagePartData.m27567q(), rect);
            return true;
        } else if (!messagePartData.m27585A() || getContext() == null || messagePartData.m27567q() == null) {
            return false;
        } else {
            AbstractC12126w.m7095a().mo7065c(getContext(), messagePartData.m27567q());
            return true;
        }
    }

    /* renamed from: c */
    public void m27426c() {
        if (getVisibility() != 8) {
            m27424d();
            if (this.f11393a.getChildCount() > 0) {
                this.f11401i = false;
                C12212s0.m6791a(this.f11393a.getChildCount() > 1 ? this.f11393a : this.f11393a.getChildAt(0), 4, new RunnableC4682c());
                return;
            }
            this.f11393a.removeAllViews();
            setVisibility(8);
        }
    }

    /* renamed from: d */
    public final void m27424d() {
        m27434a();
        this.f11397e = ObjectAnimator.ofInt(this, "animatedHeight", getHeight(), 0);
        this.f11397e.start();
    }

    @Override // android.view.View
    public void onFinishInflate() {
        super.onFinishInflate();
        this.f11395c = (ImageButton) findViewById(R$id.close_button);
        this.f11395c.setOnClickListener(new View$OnClickListenerC4679a());
        this.f11393a = (FrameLayout) findViewById(R$id.attachment_view);
        addOnLayoutChangeListener(new View$OnLayoutChangeListenerC4680b());
        this.f11398f = true;
    }

    @Override // android.widget.ScrollView, android.widget.FrameLayout, android.view.View
    public void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        if (this.f11396d >= 0) {
            setMeasuredDimension(getMeasuredWidth(), this.f11396d);
        }
    }

    public void setAnimatedHeight(int i) {
        if (this.f11396d != i) {
            this.f11396d = i;
            requestLayout();
        }
    }
}
