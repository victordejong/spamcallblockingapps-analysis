package com.truecaller.flashsdk.p166ui.customviews;

import android.content.Context;
import android.text.Editable;
import android.util.AttributeSet;
import android.view.View;
import android.widget.EditText;
import android.widget.ImageView;
import com.razorpay.AnalyticsConstants;
import com.truecaller.flashsdk.C3909R;
import kotlin.Metadata;
import p193e.p1451f.p1452a.C22234h;
import p193e.p194a.p1053m0.C17891a1;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p1365y.p1366a.p1372g.AbstractView$OnClickListenerC21506d;
import p193e.p194a.p1365y.p1366a.p1372g.View$OnFocusChangeListenerC21508e;
import p193e.p194a.p1406z3.C21852d;
import p193e.p194a.p1406z3.C21853e;
import s1.s;
import s1.z.b.l;
import s1.z.b.p;
import s1.z.c.b;
import s1.z.c.j;
@Metadata(bv = {1, 0, 3}, d1 = {"��P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\u000b\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\u0018��2\b\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003:\u00014J\u000f\u0010\u0005\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0005\u0010\u0006J\u000f\u0010\b\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\b\u0010\tJ\u0017\u0010\f\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\nH\u0016¢\u0006\u0004\b\f\u0010\rJ%\u0010\u0013\u001a\u00020\u00072\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0010\u001a\u00020\u000e2\u0006\u0010\u0012\u001a\u00020\u0011¢\u0006\u0004\b\u0013\u0010\u0014J\r\u0010\u0015\u001a\u00020\u000e¢\u0006\u0004\b\u0015\u0010\u0016J\u0017\u0010\u0018\u001a\u00020\u00072\b\u0010\u0017\u001a\u0004\u0018\u00010\u000e¢\u0006\u0004\b\u0018\u0010\u0019J\r\u0010\u001a\u001a\u00020\u0007¢\u0006\u0004\b\u001a\u0010\tJ\r\u0010\u001b\u001a\u00020\u0007¢\u0006\u0004\b\u001b\u0010\tJ\u0015\u0010\u001e\u001a\u00020\u00072\u0006\u0010\u001d\u001a\u00020\u001c¢\u0006\u0004\b\u001e\u0010\u001fJ\r\u0010 \u001a\u00020\u0004¢\u0006\u0004\b \u0010\u0006J\r\u0010!\u001a\u00020\u0004¢\u0006\u0004\b!\u0010\u0006J\r\u0010\"\u001a\u00020\u0007¢\u0006\u0004\b\"\u0010\tJ\r\u0010#\u001a\u00020\u0007¢\u0006\u0004\b#\u0010\tJ\u0015\u0010%\u001a\u00020\u00072\u0006\u0010$\u001a\u00020\u000e¢\u0006\u0004\b%\u0010\u0019J\u0017\u0010'\u001a\u00020\u00072\u0006\u0010&\u001a\u00020\u0004H\u0002¢\u0006\u0004\b'\u0010(R\u0016\u0010,\u001a\u00020)8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b*\u0010+R\u0016\u00100\u001a\u00020-8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b.\u0010/R\u0016\u00103\u001a\u00020\n8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b1\u00102¨\u00065"}, d2 = {"Lcom/truecaller/flashsdk/ui/customviews/FlashReceiveFooterView;", "Le/a/y/a/g/d;", "Lcom/truecaller/flashsdk/ui/customviews/FlashReceiveFooterView$a;", "Landroid/view/View$OnClickListener;", "", "getLayoutResource", "()I", "Ls1/s;", "f1", "()V", "Landroid/view/View;", "v", "onClick", "(Landroid/view/View;)V", "", "placeName", "locationImageUrl", "Le/a/z3/e;", "glideRequests", "v1", "(Ljava/lang/String;Ljava/lang/String;Le/a/z3/e;)V", "getMessageText", "()Ljava/lang/String;", "draft", "setMessageText", "(Ljava/lang/String;)V", "u1", "t1", "", "cursorVisible", "setMessageCursorVisible", "(Z)V", "getSelectionStart", "getSelectionEnd", "q1", "r1", "hint", "setCameraModeHint", "mapViewVisibility", "w1", "(I)V", "Landroid/widget/ImageView;", "C", "Landroid/widget/ImageView;", "mapView", "Landroid/widget/EditText;", "B", "Landroid/widget/EditText;", "editMessageText", "D", "Landroid/view/View;", "extraSpace", "a", "flash_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: com.truecaller.flashsdk.ui.customviews.FlashReceiveFooterView */
/* loaded from: classes9-dex2jar.jar:com/truecaller/flashsdk/ui/customviews/FlashReceiveFooterView.class */
public final class FlashReceiveFooterView extends AbstractView$OnClickListenerC21506d<AbstractC3948a> implements View.OnClickListener {

    /* renamed from: E */
    public static final /* synthetic */ int f12111E = 0;

    /* renamed from: B */
    public EditText f12112B;

    /* renamed from: C */
    public ImageView f12113C;

    /* renamed from: D */
    public View f12114D;

    /* renamed from: com.truecaller.flashsdk.ui.customviews.FlashReceiveFooterView$a */
    /* loaded from: classes9-dex2jar.jar:com/truecaller/flashsdk/ui/customviews/FlashReceiveFooterView$a.class */
    public interface AbstractC3948a extends AbstractView$OnClickListenerC21506d.AbstractC21507a {
        /* renamed from: N2 */
        void mo35343N2(CharSequence charSequence, boolean z);

        /* renamed from: T0 */
        void mo35342T0(CharSequence charSequence);

        /* renamed from: V */
        void mo35341V(boolean z);
    }

    /* renamed from: com.truecaller.flashsdk.ui.customviews.FlashReceiveFooterView$b */
    /* loaded from: classes9-dex2jar.jar:com/truecaller/flashsdk/ui/customviews/FlashReceiveFooterView$b.class */
    public static final /* synthetic */ class C3949b extends j implements l<CharSequence, s> {
        public C3949b(FlashReceiveFooterView flashReceiveFooterView) {
            super(1, flashReceiveFooterView, FlashReceiveFooterView.class, "onMessageTextChanged", "onMessageTextChanged(Ljava/lang/CharSequence;)V", 0);
        }

        /* renamed from: d */
        public Object m35345d(Object obj) {
            CharSequence charSequence = (CharSequence) obj;
            FlashReceiveFooterView flashReceiveFooterView = (FlashReceiveFooterView) ((b) this).b;
            int i = FlashReceiveFooterView.f12111E;
            AbstractC3948a actionListener = flashReceiveFooterView.getActionListener();
            if (actionListener != null) {
                actionListener.mo35342T0(charSequence);
            }
            return s.a;
        }
    }

    /* renamed from: com.truecaller.flashsdk.ui.customviews.FlashReceiveFooterView$c */
    /* loaded from: classes9-dex2jar.jar:com/truecaller/flashsdk/ui/customviews/FlashReceiveFooterView$c.class */
    public static final /* synthetic */ class C3950c extends j implements p<View, Boolean, s> {
        public C3950c(FlashReceiveFooterView flashReceiveFooterView) {
            super(2, flashReceiveFooterView, FlashReceiveFooterView.class, "onFocusChange", "onFocusChange(Landroid/view/View;Z)V", 0);
        }

        /* renamed from: k */
        public Object m35344k(Object obj, Object obj2) {
            View view = (View) obj;
            boolean booleanValue = ((Boolean) obj2).booleanValue();
            FlashReceiveFooterView flashReceiveFooterView = (FlashReceiveFooterView) ((b) this).b;
            int i = FlashReceiveFooterView.f12111E;
            AbstractC3948a actionListener = flashReceiveFooterView.getActionListener();
            if (actionListener != null) {
                actionListener.mo35341V(booleanValue);
            }
            return s.a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FlashReceiveFooterView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        s1.z.c.l.e(context, AnalyticsConstants.CONTEXT);
    }

    @Override // p193e.p194a.p1365y.p1366a.p1372g.AbstractView$OnClickListenerC21506d
    /* renamed from: f1 */
    public void mo9585f1() {
        super.mo9585f1();
        View findViewById = findViewById(C3909R.C3911id.edit_message_text);
        s1.z.c.l.d(findViewById, "findViewById(R.id.edit_message_text)");
        this.f12112B = (EditText) findViewById;
        View findViewById2 = findViewById(C3909R.C3911id.map_view);
        s1.z.c.l.d(findViewById2, "findViewById(R.id.map_view)");
        this.f12113C = (ImageView) findViewById2;
        View findViewById3 = findViewById(C3909R.C3911id.textPadding);
        s1.z.c.l.d(findViewById3, "findViewById(R.id.textPadding)");
        this.f12114D = findViewById3;
        EditText editText = this.f12112B;
        if (editText == null) {
            s1.z.c.l.l("editMessageText");
            throw null;
        }
        C17891a1.C17902k.m15603j(editText, new C3949b(this));
        EditText editText2 = this.f12112B;
        if (editText2 == null) {
            s1.z.c.l.l("editMessageText");
            throw null;
        }
        editText2.setOnFocusChangeListener(new View$OnFocusChangeListenerC21508e(new C3950c(this)));
        EditText editText3 = this.f12112B;
        if (editText3 != null) {
            C17891a1.C17902k.m15619d1(editText3);
        } else {
            s1.z.c.l.l("editMessageText");
            throw null;
        }
    }

    @Override // p193e.p194a.p1365y.p1366a.p1372g.AbstractView$OnClickListenerC21506d
    public int getLayoutResource() {
        return C3909R.layout.flash_receive_footer;
    }

    public final String getMessageText() {
        EditText editText = this.f12112B;
        if (editText != null) {
            return editText.getText().toString();
        }
        s1.z.c.l.l("editMessageText");
        throw null;
    }

    public final int getSelectionEnd() {
        EditText editText = this.f12112B;
        if (editText != null) {
            return editText.getSelectionEnd();
        }
        s1.z.c.l.l("editMessageText");
        throw null;
    }

    public final int getSelectionStart() {
        EditText editText = this.f12112B;
        if (editText != null) {
            return editText.getSelectionStart();
        }
        s1.z.c.l.l("editMessageText");
        throw null;
    }

    @Override // p193e.p194a.p1365y.p1366a.p1372g.AbstractView$OnClickListenerC21506d, android.view.View.OnClickListener
    public void onClick(View view) {
        s1.z.c.l.e(view, "v");
        if (view.getId() != C3909R.C3911id.sendMessage) {
            super.onClick(view);
            return;
        }
        AbstractC3948a actionListener = getActionListener();
        if (actionListener == null) {
            return;
        }
        EditText editText = this.f12112B;
        if (editText == null) {
            s1.z.c.l.l("editMessageText");
            throw null;
        }
        Editable text = editText.getText();
        s1.z.c.l.d(text, "editMessageText.text");
        ImageView imageView = this.f12113C;
        if (imageView != null) {
            actionListener.mo35343N2(text, imageView.getVisibility() == 0);
        } else {
            s1.z.c.l.l("mapView");
            throw null;
        }
    }

    /* renamed from: q1 */
    public final void m35351q1() {
        getSendLocation().setVisibility(4);
        getSendLocation().setClickable(false);
        View view = this.f12114D;
        if (view == null) {
            s1.z.c.l.l("extraSpace");
            throw null;
        }
        view.setVisibility(4);
        View view2 = this.f12114D;
        if (view2 != null) {
            view2.setClickable(false);
        } else {
            s1.z.c.l.l("extraSpace");
            throw null;
        }
    }

    /* renamed from: r1 */
    public final void m35350r1() {
        getSendLocation().setVisibility(8);
        View view = this.f12114D;
        if (view != null) {
            view.setVisibility(8);
        } else {
            s1.z.c.l.l("extraSpace");
            throw null;
        }
    }

    public final void setCameraModeHint(String str) {
        s1.z.c.l.e(str, "hint");
        EditText editText = this.f12112B;
        if (editText != null) {
            editText.setHint(str);
        } else {
            s1.z.c.l.l("editMessageText");
            throw null;
        }
    }

    public final void setMessageCursorVisible(boolean z) {
        EditText editText = this.f12112B;
        if (editText != null) {
            editText.setCursorVisible(z);
        } else {
            s1.z.c.l.l("editMessageText");
            throw null;
        }
    }

    public final void setMessageText(String str) {
        EditText editText = this.f12112B;
        if (editText == null) {
            s1.z.c.l.l("editMessageText");
            throw null;
        }
        editText.setText(str);
        EditText editText2 = this.f12112B;
        if (editText2 != null) {
            editText2.setSelection(str != null ? str.length() : 0);
        } else {
            s1.z.c.l.l("editMessageText");
            throw null;
        }
    }

    /* renamed from: t1 */
    public final void m35349t1() {
        EditText editText = this.f12112B;
        if (editText != null) {
            editText.requestFocus();
        } else {
            s1.z.c.l.l("editMessageText");
            throw null;
        }
    }

    /* renamed from: u1 */
    public final void m35348u1() {
        EditText editText = this.f12112B;
        if (editText != null) {
            C19286f.m13679Y(editText, true, 0L, 2);
        } else {
            s1.z.c.l.l("editMessageText");
            throw null;
        }
    }

    /* renamed from: v1 */
    public final void m35347v1(String str, String str2, C21853e c21853e) {
        s1.z.c.l.e(str, "placeName");
        s1.z.c.l.e(str2, "locationImageUrl");
        s1.z.c.l.e(c21853e, "glideRequests");
        C22234h mo8414k = c21853e.mo8414k();
        C21852d c21852d = (C21852d) mo8414k;
        c21852d.f61767J = str2;
        c21852d.f61771N = true;
        C21852d mo8087u = ((C21852d) mo8414k).mo8087u(C3909R.C3910drawable.ic_map_placeholder);
        ImageView imageView = this.f12113C;
        if (imageView == null) {
            s1.z.c.l.l("mapView");
            throw null;
        }
        mo8087u.m8427O(imageView);
        EditText editText = this.f12112B;
        if (editText == null) {
            s1.z.c.l.l("editMessageText");
            throw null;
        }
        editText.setText(str);
        EditText editText2 = this.f12112B;
        if (editText2 == null) {
            s1.z.c.l.l("editMessageText");
            throw null;
        }
        editText2.setSelection(Math.min(str.length(), 80));
        m35346w1(0);
    }

    /* renamed from: w1 */
    public final void m35346w1(int i) {
        boolean z = false;
        int i2 = i == 0 ? 8 : 0;
        ImageView imageView = this.f12113C;
        if (imageView == null) {
            s1.z.c.l.l("mapView");
            throw null;
        }
        imageView.setVisibility(i);
        getRecentEmojiLayout().setVisibility(i2);
        getMoreEmojis().setVisibility(i2);
        if (i == 0) {
            z = true;
        }
        m9575o1(z);
    }
}
