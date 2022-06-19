package com.callapp.contacts.widget.floatingwidget.p240ui;

import android.content.Context;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.callapp.contacts.util.ImageUtils;
import com.facebook.rebound.C10413d;
import com.facebook.rebound.C10414e;
import com.facebook.rebound.C10422k;
import com.facebook.rebound.C10423l;
/* renamed from: com.callapp.contacts.widget.floatingwidget.ui.ChatHeadCloseButton */
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/floatingwidget/ui/ChatHeadCloseButton.class */
public class ChatHeadCloseButton extends ConstraintLayout {

    /* renamed from: a */
    protected int f29068a;

    /* renamed from: b */
    protected int f29069b;

    /* renamed from: c */
    protected C10414e f29070c;

    /* renamed from: d */
    protected C10414e f29071d;

    /* renamed from: e */
    protected C10414e f29072e;

    /* renamed from: f */
    protected boolean f29073f;

    /* renamed from: g */
    protected ChatHeadManager f29074g;

    /* renamed from: h */
    protected int f29075h;

    /* renamed from: i */
    protected int f29076i;

    /* renamed from: j */
    protected Runnable f29077j;

    /* renamed from: k */
    private CloseButtonListener f29078k;

    /* renamed from: l */
    private TextView f29079l = (TextView) findViewById(2131364463);

    /* renamed from: m */
    private ImageView f29080m = (ImageView) findViewById(2131363036);

    /* renamed from: n */
    private ViewGroup f29081n = (ViewGroup) findViewById(2131363028);

    /* renamed from: com.callapp.contacts.widget.floatingwidget.ui.ChatHeadCloseButton$ChatHeadCloseButtonStruct */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/floatingwidget/ui/ChatHeadCloseButton$ChatHeadCloseButtonStruct.class */
    public static class ChatHeadCloseButtonStruct {

        /* renamed from: a */
        private final String f29088a;

        /* renamed from: b */
        private final int f29089b;

        /* renamed from: c */
        private Runnable f29090c;

        public ChatHeadCloseButtonStruct(String str, int i, Runnable runnable) {
            this.f29088a = str;
            this.f29089b = i;
            this.f29090c = runnable;
        }
    }

    /* renamed from: com.callapp.contacts.widget.floatingwidget.ui.ChatHeadCloseButton$CloseButtonListener */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/floatingwidget/ui/ChatHeadCloseButton$CloseButtonListener.class */
    public interface CloseButtonListener {
        /* renamed from: c */
        void mo26411c();

        /* renamed from: d */
        void mo26409d();
    }

    public ChatHeadCloseButton(Context context, final ChatHeadManager chatHeadManager, int i, int i2) {
        super(context);
        LayoutInflater.from(getContext()).inflate(2131558823, (ViewGroup) this, true);
        this.f29074g = chatHeadManager;
        C10422k m22825c = C10422k.m22825c();
        C10414e a = m22825c.m22856a();
        this.f29071d = a;
        a.m22842a(new C10413d() { // from class: com.callapp.contacts.widget.floatingwidget.ui.ChatHeadCloseButton.1
            @Override // com.facebook.rebound.C10413d, com.facebook.rebound.AbstractC10420i
            /* renamed from: a */
            public final void mo22809a(C10414e c10414e) {
                super.mo22809a(c10414e);
                chatHeadManager.getChatHeadContainer().mo26395a(ChatHeadCloseButton.this, ChatHeadCloseButton.this.m26522b(c10414e));
            }
        });
        C10414e a2 = m22825c.m22856a();
        this.f29072e = a2;
        a2.m22842a(new C10413d() { // from class: com.callapp.contacts.widget.floatingwidget.ui.ChatHeadCloseButton.2
            @Override // com.facebook.rebound.C10413d, com.facebook.rebound.AbstractC10420i
            /* renamed from: a */
            public final void mo22809a(C10414e c10414e) {
                super.mo22809a(c10414e);
                chatHeadManager.getChatHeadContainer().mo26389b(ChatHeadCloseButton.this, ChatHeadCloseButton.this.m26525a(c10414e));
            }
        });
        C10414e a3 = m22825c.m22856a();
        this.f29070c = a3;
        a3.m22842a(new C10413d() { // from class: com.callapp.contacts.widget.floatingwidget.ui.ChatHeadCloseButton.3
            @Override // com.facebook.rebound.C10413d, com.facebook.rebound.AbstractC10420i
            /* renamed from: a */
            public final void mo22809a(C10414e c10414e) {
                float f = (float) c10414e.f34074d.f34085a;
                ChatHeadCloseButton.this.setScaleX(f);
                ChatHeadCloseButton.this.setScaleY(f);
            }
        });
    }

    /* renamed from: a */
    private static double m26527a(double d, float f, int i) {
        float f2 = f * i;
        return C10423l.m22824a(d, i, (-f2) / 2.0f, f2 / 2.0f);
    }

    /* renamed from: a */
    protected final int m26525a(C10414e c10414e) {
        return (this.f29076i + ((int) c10414e.f34074d.f34085a)) - (getMeasuredHeight() / 2);
    }

    /* renamed from: a */
    public final void m26528a() {
        if (isEnabled()) {
            this.f29072e.m22843a(SpringConfigsHolder.f29139a);
            this.f29071d.m22843a(SpringConfigsHolder.f29139a);
            this.f29070c.m22840b(0.800000011920929d);
            ViewParent parent = getParent();
            if (parent instanceof ViewGroup) {
                ViewGroup viewGroup = (ViewGroup) parent;
                if (viewGroup.indexOfChild(this) != viewGroup.getChildCount() - 1) {
                    bringToFront();
                }
            }
            this.f29073f = false;
        }
    }

    /* renamed from: a */
    public final void m26526a(float f, float f2) {
        if (isEnabled()) {
            double m26527a = m26527a(f, 0.1f, this.f29068a);
            double m26527a2 = m26527a(f2, 0.05f, this.f29069b);
            if (this.f29073f) {
                return;
            }
            this.f29071d.m22840b(m26527a);
            this.f29072e.m22840b(m26527a2);
            CloseButtonListener closeButtonListener = this.f29078k;
            if (closeButtonListener == null) {
                return;
            }
            closeButtonListener.mo26411c();
        }
    }

    /* renamed from: a */
    public final void m26524a(boolean z) {
        this.f29072e.m22840b((this.f29069b - this.f29076i) + this.f29074g.getConfig().getCloseButtonHeight());
        this.f29072e.m22843a(SpringConfigsHolder.f29139a);
        this.f29071d.m22840b(0.0d);
        this.f29072e.m22842a(new C10413d() { // from class: com.callapp.contacts.widget.floatingwidget.ui.ChatHeadCloseButton.4
            @Override // com.facebook.rebound.C10413d, com.facebook.rebound.AbstractC10420i
            /* renamed from: b */
            public final void mo22808b(C10414e c10414e) {
                super.mo22808b(c10414e);
                ChatHeadCloseButton.this.f29072e.m22839b(this);
            }
        });
        this.f29070c.m22840b(0.10000000149011612d);
        if (!z) {
            this.f29072e.m22845a(this.f29069b, true);
            this.f29071d.m22845a(0.0d, true);
        }
        this.f29073f = true;
        CloseButtonListener closeButtonListener = this.f29078k;
        if (closeButtonListener != null) {
            closeButtonListener.mo26409d();
        }
    }

    /* renamed from: b */
    protected final int m26522b(C10414e c10414e) {
        return (this.f29075h + ((int) c10414e.f34074d.f34085a)) - (getMeasuredWidth() / 2);
    }

    /* renamed from: b */
    public final void m26523b() {
        this.f29070c.m22840b(1.0d);
    }

    /* renamed from: d */
    public final void m26521d() {
        this.f29070c.m22840b(0.8d);
    }

    /* renamed from: e */
    public final void m26520e() {
        this.f29068a = this.f29074g.getMaxWidth();
        this.f29069b = this.f29074g.getMaxHeight();
    }

    public int getEndValueX() {
        return m26522b(this.f29071d);
    }

    public int getEndValueY() {
        return m26525a(this.f29072e);
    }

    public Runnable getOnCapturedViewCallback() {
        return this.f29077j;
    }

    public boolean isDisappeared() {
        return this.f29073f;
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        m26524a(false);
    }

    public void setCenter(int i, int i2) {
        if ((i == this.f29075h && i2 == this.f29076i) ? false : true) {
            this.f29075h = i;
            this.f29076i = i2;
            this.f29071d.m22845a(0.0d, false);
            this.f29072e.m22845a(0.0d, false);
        }
    }

    public void setChatHeadCloseButtonData(ChatHeadCloseButtonStruct chatHeadCloseButtonStruct) {
        this.f29079l.setText(chatHeadCloseButtonStruct.f29088a);
        if (chatHeadCloseButtonStruct.f29089b == -1) {
            this.f29080m.setVisibility(8);
            this.f29081n.removeView(this.f29080m);
            ((LinearLayout.LayoutParams) this.f29079l.getLayoutParams()).leftMargin = 0;
        } else {
            ImageUtils.m27529a(this.f29080m, chatHeadCloseButtonStruct.f29089b, new PorterDuffColorFilter(-1, PorterDuff.Mode.SRC_IN));
        }
        this.f29077j = chatHeadCloseButtonStruct.f29090c;
    }

    public void setListener(CloseButtonListener closeButtonListener) {
        this.f29078k = closeButtonListener;
    }
}
