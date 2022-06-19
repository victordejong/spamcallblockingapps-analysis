package com.truecaller.contextcall.utils.view;

import android.content.Context;
import android.content.res.ColorStateList;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.google.android.material.textfield.TextInputLayout;
import com.razorpay.AnalyticsConstants;
import com.truecaller.contextcall.C3771R;
import kotlin.Metadata;
import p1727n3.p1807k.p1809b.C26467a;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1080o.p1097b.p1098a.C18696e;
import p193e.p194a.p1080o.p1097b.p1098a.C18697f;
import p193e.p194a.p1080o.p1097b.p1098a.C18698g;
import p193e.p194a.p1080o.p1102o.C18802o;
import s1.g;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��8\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0006\u0018��2\u00020\u0001:\u0002&'J\u000f\u0010\u0003\u001a\u00020\u0002H\u0014¢\u0006\u0004\b\u0003\u0010\u0004J\u0015\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0007\u0010\bJ\u0015\u0010\n\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\u0005¢\u0006\u0004\b\n\u0010\bJ\r\u0010\u000b\u001a\u00020\u0002¢\u0006\u0004\b\u000b\u0010\u0004R\u0015\u0010\u000e\u001a\u0004\u0018\u00010\u00058F@\u0006¢\u0006\u0006\u001a\u0004\b\f\u0010\rR.\u0010\u0017\u001a\u0004\u0018\u00010\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u000f8\u0006@FX\u0086\u000e¢\u0006\u0012\n\u0004\b\u0011\u0010\u0012\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0015\u0010\u0016R\u0016\u0010\u001b\u001a\u00020\u00188\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0019\u0010\u001aR\u001d\u0010!\u001a\u00020\u001c8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u001d\u0010\u001e\u001a\u0004\b\u001f\u0010 R\u0016\u0010%\u001a\u00020\"8B@\u0002X\u0082\u0004¢\u0006\u0006\u001a\u0004\b#\u0010$¨\u0006("}, d2 = {"Lcom/truecaller/contextcall/utils/view/CustomTextInputLayout;", "Landroidx/constraintlayout/widget/ConstraintLayout;", "Ls1/s;", "onAttachedToWindow", "()V", "", "text", "setTextMessage", "(Ljava/lang/String;)V", "errorMessage", "M", "h1", "getMessage", "()Ljava/lang/String;", "message", "Lcom/truecaller/contextcall/utils/view/CustomTextInputLayout$a;", "value", "u", "Lcom/truecaller/contextcall/utils/view/CustomTextInputLayout$a;", "getCustomTextInputLayoutCallback", "()Lcom/truecaller/contextcall/utils/view/CustomTextInputLayout$a;", "setCustomTextInputLayoutCallback", "(Lcom/truecaller/contextcall/utils/view/CustomTextInputLayout$a;)V", "customTextInputLayoutCallback", "Lcom/truecaller/contextcall/utils/view/CustomTextInputLayout$b;", "v", "Lcom/truecaller/contextcall/utils/view/CustomTextInputLayout$b;", "inputState", "Le/a/o/o/o;", "t", "Ls1/g;", "getBinding", "()Le/a/o/o/o;", "binding", "", "getMessageLength", "()I", "messageLength", "a", C22021b.f61237c, "context-call_release"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes8-dex2jar.jar:com/truecaller/contextcall/utils/view/CustomTextInputLayout.class */
public final class CustomTextInputLayout extends ConstraintLayout {

    /* renamed from: u */
    public AbstractC3791a f11452u;

    /* renamed from: t */
    public final g f11451t = C25225a.m3978P1(new C18696e(this));

    /* renamed from: v */
    public EnumC3792b f11453v = EnumC3792b.DEFAULT;

    /* renamed from: com.truecaller.contextcall.utils.view.CustomTextInputLayout$a */
    /* loaded from: classes8-dex2jar.jar:com/truecaller/contextcall/utils/view/CustomTextInputLayout$a.class */
    public interface AbstractC3791a {
        /* renamed from: T */
        void mo14750T(CharSequence charSequence);

        /* renamed from: w1 */
        void mo14749w1(String str);
    }

    /* renamed from: com.truecaller.contextcall.utils.view.CustomTextInputLayout$b */
    /* loaded from: classes8-dex2jar.jar:com/truecaller/contextcall/utils/view/CustomTextInputLayout$b.class */
    public enum EnumC3792b {
        DEFAULT,
        ERROR
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CustomTextInputLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        l.e(context, AnalyticsConstants.CONTEXT);
        LayoutInflater.from(context).inflate(C3771R.layout.view_custom_text_input_context_call, (ViewGroup) this, true);
    }

    /* renamed from: g1 */
    public static final void m35577g1(CustomTextInputLayout customTextInputLayout) {
        EnumC3792b enumC3792b = customTextInputLayout.f11453v;
        EnumC3792b enumC3792b2 = EnumC3792b.DEFAULT;
        if (enumC3792b == enumC3792b2) {
            return;
        }
        Context context = customTextInputLayout.getContext();
        int i = C3771R.color.context_call_light_brand_blue;
        Object obj = C26467a.f74235a;
        int m1787a = C26467a.C26471d.m1787a(context, i);
        C18802o binding = customTextInputLayout.getBinding();
        TextInputLayout textInputLayout = binding.f52829b;
        l.d(textInputLayout, "etCustomMsg");
        textInputLayout.setBoxStrokeColor(m1787a);
        TextInputLayout textInputLayout2 = binding.f52829b;
        l.d(textInputLayout2, "etCustomMsg");
        textInputLayout2.setHintTextColor(ColorStateList.valueOf(m1787a));
        binding.f52830c.setTextColor(m1787a);
        customTextInputLayout.f11453v = enumC3792b2;
    }

    public final C18802o getBinding() {
        return (C18802o) this.f11451t.getValue();
    }

    private final int getMessageLength() {
        String message = getMessage();
        return message != null ? message.length() : 0;
    }

    /* renamed from: M */
    public final void m35579M(String str) {
        l.e(str, "errorMessage");
        EnumC3792b enumC3792b = this.f11453v;
        EnumC3792b enumC3792b2 = EnumC3792b.ERROR;
        if (enumC3792b == enumC3792b2) {
            return;
        }
        Context context = getContext();
        int i = C3771R.color.call_context_error_theme;
        Object obj = C26467a.f74235a;
        int m1787a = C26467a.C26471d.m1787a(context, i);
        C18802o binding = getBinding();
        TextInputLayout textInputLayout = binding.f52829b;
        l.d(textInputLayout, "etCustomMsg");
        textInputLayout.setBoxStrokeColor(m1787a);
        TextInputLayout textInputLayout2 = binding.f52829b;
        l.d(textInputLayout2, "etCustomMsg");
        textInputLayout2.setHintTextColor(ColorStateList.valueOf(m1787a));
        binding.f52830c.setTextColor(m1787a);
        TextView textView = binding.f52830c;
        textView.append(' ' + str);
        this.f11453v = enumC3792b2;
    }

    public final AbstractC3791a getCustomTextInputLayoutCallback() {
        return this.f11452u;
    }

    public final String getMessage() {
        TextInputLayout textInputLayout = getBinding().f52829b;
        l.d(textInputLayout, "binding.etCustomMsg");
        EditText editText = textInputLayout.getEditText();
        return String.valueOf(editText != null ? editText.getText() : null);
    }

    /* renamed from: h1 */
    public final void m35576h1() {
        getBinding().f52829b.requestFocus();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        TextView textView = getBinding().f52830c;
        l.d(textView, "binding.txtCounter");
        textView.setText(getResources().getString(C3771R.string.context_call_custom_message_counter, Integer.valueOf(getMessageLength()), Integer.valueOf(getResources().getInteger(C3771R.integer.context_call_custom_message_max_length))));
        getBinding().f52829b.requestFocus();
        TextInputLayout textInputLayout = getBinding().f52829b;
        l.d(textInputLayout, "binding.etCustomMsg");
        EditText editText = textInputLayout.getEditText();
        if (editText != null) {
            editText.addTextChangedListener(new C18698g(this));
        }
        TextInputLayout textInputLayout2 = getBinding().f52829b;
        l.d(textInputLayout2, "binding.etCustomMsg");
        EditText editText2 = textInputLayout2.getEditText();
        if (editText2 != null) {
            editText2.setOnEditorActionListener(new C18697f(this));
        }
    }

    public final void setCustomTextInputLayoutCallback(AbstractC3791a abstractC3791a) {
        if (abstractC3791a != null) {
            abstractC3791a.mo14750T(getMessage());
        }
        this.f11452u = abstractC3791a;
    }

    public final void setTextMessage(String str) {
        l.e(str, "text");
        TextInputLayout textInputLayout = getBinding().f52829b;
        l.d(textInputLayout, "binding.etCustomMsg");
        EditText editText = textInputLayout.getEditText();
        if (editText != null) {
            editText.setText(str);
        }
    }
}
