package com.callapp.contacts.widget.floatingwidget.ui;

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
import com.facebook.rebound.d;
import com.facebook.rebound.e;
import com.facebook.rebound.k;
import com.facebook.rebound.l;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/floatingwidget/ui/ChatHeadCloseButton.class */
public class ChatHeadCloseButton extends ConstraintLayout {

    /* renamed from: a  reason: collision with root package name */
    protected int f16702a;

    /* renamed from: b  reason: collision with root package name */
    protected int f16703b;

    /* renamed from: c  reason: collision with root package name */
    protected e f16704c;

    /* renamed from: d  reason: collision with root package name */
    protected e f16705d;
    protected e e;
    protected boolean f;
    protected ChatHeadManager g;
    protected int h;
    protected int i;
    protected Runnable j;
    private CloseButtonListener k;
    private TextView l = (TextView) findViewById(2131364463);
    private ImageView m = (ImageView) findViewById(2131363036);
    private ViewGroup n = (ViewGroup) findViewById(2131363028);

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/floatingwidget/ui/ChatHeadCloseButton$ChatHeadCloseButtonStruct.class */
    public static class ChatHeadCloseButtonStruct {

        /* renamed from: a  reason: collision with root package name */
        private final String f16712a;

        /* renamed from: b  reason: collision with root package name */
        private final int f16713b;

        /* renamed from: c  reason: collision with root package name */
        private Runnable f16714c;

        public ChatHeadCloseButtonStruct(String str, int i, Runnable runnable) {
            this.f16712a = str;
            this.f16713b = i;
            this.f16714c = runnable;
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/floatingwidget/ui/ChatHeadCloseButton$CloseButtonListener.class */
    public interface CloseButtonListener {
        void c();

        void d();
    }

    public ChatHeadCloseButton(Context context, final ChatHeadManager chatHeadManager, int i, int i2) {
        super(context);
        LayoutInflater.from(getContext()).inflate(2131558823, (ViewGroup) this, true);
        this.g = chatHeadManager;
        k c2 = k.c();
        e a2 = c2.a();
        this.f16705d = a2;
        a2.a(new d() { // from class: com.callapp.contacts.widget.floatingwidget.ui.ChatHeadCloseButton.1
            @Override // com.facebook.rebound.d, com.facebook.rebound.i
            public final void a(e eVar) {
                super.a(eVar);
                chatHeadManager.getChatHeadContainer().a(ChatHeadCloseButton.this, ChatHeadCloseButton.this.b(eVar));
            }
        });
        e a3 = c2.a();
        this.e = a3;
        a3.a(new d() { // from class: com.callapp.contacts.widget.floatingwidget.ui.ChatHeadCloseButton.2
            @Override // com.facebook.rebound.d, com.facebook.rebound.i
            public final void a(e eVar) {
                super.a(eVar);
                chatHeadManager.getChatHeadContainer().b(ChatHeadCloseButton.this, ChatHeadCloseButton.this.a(eVar));
            }
        });
        e a4 = c2.a();
        this.f16704c = a4;
        a4.a(new d() { // from class: com.callapp.contacts.widget.floatingwidget.ui.ChatHeadCloseButton.3
            @Override // com.facebook.rebound.d, com.facebook.rebound.i
            public final void a(e eVar) {
                float f = (float) eVar.f20128d.f20129a;
                ChatHeadCloseButton.this.setScaleX(f);
                ChatHeadCloseButton.this.setScaleY(f);
            }
        });
    }

    private static double a(double d2, float f, int i) {
        float f2 = f * i;
        return l.a(d2, i, (-f2) / 2.0f, f2 / 2.0f);
    }

    protected final int a(e eVar) {
        return (this.i + ((int) eVar.f20128d.f20129a)) - (getMeasuredHeight() / 2);
    }

    public final void a() {
        if (isEnabled()) {
            this.e.a(SpringConfigsHolder.f16736a);
            this.f16705d.a(SpringConfigsHolder.f16736a);
            this.f16704c.b(0.800000011920929d);
            ViewParent parent = getParent();
            if (parent instanceof ViewGroup) {
                ViewGroup viewGroup = (ViewGroup) parent;
                if (viewGroup.indexOfChild(this) != viewGroup.getChildCount() - 1) {
                    bringToFront();
                }
            }
            this.f = false;
        }
    }

    public final void a(float f, float f2) {
        if (isEnabled()) {
            double a2 = a(f, 0.1f, this.f16702a);
            double a3 = a(f2, 0.05f, this.f16703b);
            if (!this.f) {
                this.f16705d.b(a2);
                this.e.b(a3);
                CloseButtonListener closeButtonListener = this.k;
                if (closeButtonListener != null) {
                    closeButtonListener.c();
                }
            }
        }
    }

    public final void a(boolean z) {
        this.e.b((this.f16703b - this.i) + this.g.getConfig().getCloseButtonHeight());
        this.e.a(SpringConfigsHolder.f16736a);
        this.f16705d.b(0.0d);
        this.e.a(new d() { // from class: com.callapp.contacts.widget.floatingwidget.ui.ChatHeadCloseButton.4
            @Override // com.facebook.rebound.d, com.facebook.rebound.i
            public final void b(e eVar) {
                super.b(eVar);
                ChatHeadCloseButton.this.e.b(this);
            }
        });
        this.f16704c.b(0.10000000149011612d);
        if (!z) {
            this.e.a(this.f16703b, true);
            this.f16705d.a(0.0d, true);
        }
        this.f = true;
        CloseButtonListener closeButtonListener = this.k;
        if (closeButtonListener != null) {
            closeButtonListener.d();
        }
    }

    protected final int b(e eVar) {
        return (this.h + ((int) eVar.f20128d.f20129a)) - (getMeasuredWidth() / 2);
    }

    public final void b() {
        this.f16704c.b(1.0d);
    }

    public final void d() {
        this.f16704c.b(0.8d);
    }

    public final void e() {
        this.f16702a = this.g.getMaxWidth();
        this.f16703b = this.g.getMaxHeight();
    }

    public int getEndValueX() {
        return b(this.f16705d);
    }

    public int getEndValueY() {
        return a(this.e);
    }

    public Runnable getOnCapturedViewCallback() {
        return this.j;
    }

    public boolean isDisappeared() {
        return this.f;
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        a(false);
    }

    public void setCenter(int i, int i2) {
        if ((i == this.h && i2 == this.i) ? false : true) {
            this.h = i;
            this.i = i2;
            this.f16705d.a(0.0d, false);
            this.e.a(0.0d, false);
        }
    }

    public void setChatHeadCloseButtonData(ChatHeadCloseButtonStruct chatHeadCloseButtonStruct) {
        this.l.setText(chatHeadCloseButtonStruct.f16712a);
        if (chatHeadCloseButtonStruct.f16713b == -1) {
            this.m.setVisibility(8);
            this.n.removeView(this.m);
            ((LinearLayout.LayoutParams) this.l.getLayoutParams()).leftMargin = 0;
        } else {
            ImageUtils.a(this.m, chatHeadCloseButtonStruct.f16713b, new PorterDuffColorFilter(-1, PorterDuff.Mode.SRC_IN));
        }
        this.j = chatHeadCloseButtonStruct.f16714c;
    }

    public void setListener(CloseButtonListener closeButtonListener) {
        this.k = closeButtonListener;
    }
}
