package gogolook.callgogolook2.view.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.core.app.NotificationCompatJellybean;
import androidx.core.content.ContextCompat;
import androidx.core.widget.NestedScrollView;
import gogolook.callgogolook2.R$drawable;
import gogolook.callgogolook2.R$id;
import gogolook.callgogolook2.R$layout;
import gogolook.callgogolook2.R$styleable;
import java.util.HashMap;
import kotlin.Metadata;
import p626l.AbstractC14974f;
import p626l.C14975g;
import p626l.p629c0.AbstractC14906i;
import p626l.p641z.p642c.AbstractC15107a;
import p626l.p641z.p643d.AbstractC15150l;
import p626l.p641z.p643d.C15131a0;
import p626l.p641z.p643d.C15149k;
import p626l.p641z.p643d.C15157s;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u000e\n��\n\u0002\u0010\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\b\u0018��2\u00020\u0001B\u000f\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004B\u0019\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006¢\u0006\u0002\u0010\u0007B!\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\b\u001a\u00020\t¢\u0006\u0002\u0010\nJ\u0006\u0010\u0014\u001a\u00020\u0015J\u000e\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0015J\u000e\u0010\u0019\u001a\u00020\u00172\u0006\u0010\u001a\u001a\u00020\tJ\u0010\u0010\u001b\u001a\u00020\u00172\u0006\u0010\u001c\u001a\u00020\tH\u0002J\u000e\u0010\u001d\u001a\u00020\u00172\u0006\u0010\u001e\u001a\u00020\tJ\u000e\u0010\u001f\u001a\u00020\u00172\u0006\u0010 \u001a\u00020\u0015J\u000e\u0010!\u001a\u00020\u00172\u0006\u0010\"\u001a\u00020#J\u000e\u0010$\u001a\u00020\u00172\u0006\u0010%\u001a\u00020&J\u000e\u0010'\u001a\u00020\u00172\u0006\u0010(\u001a\u00020\u0015J\u000e\u0010)\u001a\u00020\u00172\u0006\u0010*\u001a\u00020\u0015J\u000e\u0010+\u001a\u00020\u00172\u0006\u0010,\u001a\u00020&J\u000e\u0010-\u001a\u00020\u00172\u0006\u0010,\u001a\u00020&R\u001b\u0010\u000b\u001a\u00020\f8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\r\u0010\u000eR\u001b\u0010\u0011\u001a\u00020\f8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0013\u0010\u0010\u001a\u0004\b\u0012\u0010\u000e¨\u0006."}, m815d2 = {"Lgogolook/callgogolook2/view/widget/LabeledEditText;", "Landroid/widget/FrameLayout;", "context", "Landroid/content/Context;", "(Landroid/content/Context;)V", "attrs", "Landroid/util/AttributeSet;", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "defStyleAttr", "", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "bgGenericDrawable", "Landroid/graphics/drawable/Drawable;", "getBgGenericDrawable", "()Landroid/graphics/drawable/Drawable;", "bgGenericDrawable$delegate", "Lkotlin/Lazy;", "bgWarningDrawable", "getBgWarningDrawable", "bgWarningDrawable$delegate", "getText", "", "setHint", "", "hint", "setImeOptions", "options", "setInputHeight", "size", "setInputType", "type", "setLabelText", NotificationCompatJellybean.KEY_LABEL, "setOnFocusChangedListener", "listener", "Landroid/view/View$OnFocusChangeListener;", "setSingleLine", "singleLine", "", "setText", "text", "setWarningText", "warning", "showLabel", "show", "showWarning", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/view/widget/LabeledEditText.class */
public final class LabeledEditText extends FrameLayout {

    /* renamed from: d */
    public static final /* synthetic */ AbstractC14906i[] f13275d;

    /* renamed from: a */
    public final AbstractC14974f f13276a;

    /* renamed from: b */
    public final AbstractC14974f f13277b;

    /* renamed from: c */
    public HashMap f13278c;

    /* renamed from: gogolook.callgogolook2.view.widget.LabeledEditText$a */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/view/widget/LabeledEditText$a.class */
    public static final class C5318a extends AbstractC15150l implements AbstractC15107a<Drawable> {
        public C5318a() {
            super(0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // p626l.p641z.p642c.AbstractC15107a
        public final Drawable invoke() {
            Drawable drawable = ContextCompat.getDrawable(LabeledEditText.this.getContext(), R$drawable.bg_labeled_edit_text);
            if (drawable != null) {
                return drawable.mutate();
            }
            C15149k.m378b();
            throw null;
        }
    }

    /* renamed from: gogolook.callgogolook2.view.widget.LabeledEditText$b */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/view/widget/LabeledEditText$b.class */
    public static final class C5319b extends AbstractC15150l implements AbstractC15107a<Drawable> {
        public C5319b() {
            super(0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // p626l.p641z.p642c.AbstractC15107a
        public final Drawable invoke() {
            Drawable drawable = ContextCompat.getDrawable(LabeledEditText.this.getContext(), R$drawable.bg_labeled_edit_text_warning);
            if (drawable != null) {
                return drawable.mutate();
            }
            C15149k.m378b();
            throw null;
        }
    }

    /* renamed from: gogolook.callgogolook2.view.widget.LabeledEditText$c */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/view/widget/LabeledEditText$c.class */
    public static final class View$OnFocusChangeListenerC5320c implements View.OnFocusChangeListener {

        /* renamed from: b */
        public final /* synthetic */ View.OnFocusChangeListener f13282b;

        public View$OnFocusChangeListenerC5320c(View.OnFocusChangeListener onFocusChangeListener) {
            this.f13282b = onFocusChangeListener;
        }

        @Override // android.view.View.OnFocusChangeListener
        public final void onFocusChange(View view, boolean z) {
            this.f13282b.onFocusChange(LabeledEditText.this, z);
        }
    }

    static {
        C15157s sVar = new C15157s(C15131a0.m419a(LabeledEditText.class), "bgWarningDrawable", "getBgWarningDrawable()Landroid/graphics/drawable/Drawable;");
        C15131a0.m412a(sVar);
        C15157s sVar2 = new C15157s(C15131a0.m419a(LabeledEditText.class), "bgGenericDrawable", "getBgGenericDrawable()Landroid/graphics/drawable/Drawable;");
        C15131a0.m412a(sVar2);
        f13275d = new AbstractC14906i[]{sVar, sVar2};
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public LabeledEditText(Context context) {
        this(context, null);
        C15149k.m377b(context, "context");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public LabeledEditText(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
        C15149k.m377b(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LabeledEditText(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        C15149k.m377b(context, "context");
        this.f13276a = C14975g.m662a(new C5319b());
        this.f13277b = C14975g.m662a(new C5318a());
        LayoutInflater.from(context).inflate(R$layout.layout_labeled_edit_text, (ViewGroup) this, true);
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.LabeledEditText);
            String string = obtainStyledAttributes.getString(6);
            m25697b(string == null ? "" : string);
            String string2 = obtainStyledAttributes.getString(0);
            m25693c(string2 == null ? "" : string2);
            m25692d(obtainStyledAttributes.getInt(2, 0));
            m25698b(obtainStyledAttributes.getInt(3, 0));
            m25700a(obtainStyledAttributes.getBoolean(1, false));
            m25694c(obtainStyledAttributes.getDimensionPixelSize(5, -2));
            String string3 = obtainStyledAttributes.getString(4);
            m25701a(string3 == null ? "" : string3);
            String string4 = obtainStyledAttributes.getString(7);
            m25691d(string4 == null ? "" : string4);
            obtainStyledAttributes.recycle();
        }
    }

    /* renamed from: a */
    public final Drawable m25704a() {
        AbstractC14974f fVar = this.f13277b;
        AbstractC14906i iVar = f13275d[1];
        return (Drawable) fVar.getValue();
    }

    /* renamed from: a */
    public View m25703a(int i) {
        if (this.f13278c == null) {
            this.f13278c = new HashMap();
        }
        View view = (View) this.f13278c.get(Integer.valueOf(i));
        View view2 = view;
        if (view == null) {
            view2 = findViewById(i);
            this.f13278c.put(Integer.valueOf(i), view2);
        }
        return view2;
    }

    /* renamed from: a */
    public final void m25702a(View.OnFocusChangeListener onFocusChangeListener) {
        C15149k.m377b(onFocusChangeListener, "listener");
        EditText editText = (EditText) m25703a(R$id.et_content);
        C15149k.m383a((Object) editText, "et_content");
        editText.setOnFocusChangeListener(new View$OnFocusChangeListenerC5320c(onFocusChangeListener));
    }

    /* renamed from: a */
    public final void m25701a(String str) {
        C15149k.m377b(str, "hint");
        EditText editText = (EditText) m25703a(R$id.et_content);
        C15149k.m383a((Object) editText, "et_content");
        editText.setHint(str);
    }

    /* renamed from: a */
    public final void m25700a(boolean z) {
        ((EditText) m25703a(R$id.et_content)).setSingleLine(z);
    }

    /* renamed from: b */
    public final Drawable m25699b() {
        AbstractC14974f fVar = this.f13276a;
        AbstractC14906i iVar = f13275d[0];
        return (Drawable) fVar.getValue();
    }

    /* renamed from: b */
    public final void m25698b(int i) {
        EditText editText = (EditText) m25703a(R$id.et_content);
        C15149k.m383a((Object) editText, "et_content");
        editText.setImeOptions(i);
    }

    /* renamed from: b */
    public final void m25697b(String str) {
        C15149k.m377b(str, NotificationCompatJellybean.KEY_LABEL);
        TextView textView = (TextView) m25703a(R$id.tv_label);
        C15149k.m383a((Object) textView, "tv_label");
        textView.setText(str);
    }

    /* renamed from: b */
    public final void m25696b(boolean z) {
        if (z) {
            NestedScrollView nestedScrollView = (NestedScrollView) m25703a(R$id.sv_content);
            C15149k.m383a((Object) nestedScrollView, "sv_content");
            nestedScrollView.setBackground(m25699b());
            TextView textView = (TextView) m25703a(R$id.tv_warning);
            C15149k.m383a((Object) textView, "tv_warning");
            textView.setVisibility(0);
            return;
        }
        NestedScrollView nestedScrollView2 = (NestedScrollView) m25703a(R$id.sv_content);
        C15149k.m383a((Object) nestedScrollView2, "sv_content");
        nestedScrollView2.setBackground(m25704a());
        TextView textView2 = (TextView) m25703a(R$id.tv_warning);
        C15149k.m383a((Object) textView2, "tv_warning");
        textView2.setVisibility(8);
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x0020, code lost:
        if (r4 != null) goto L_0x0029;
     */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.String m25695c() {
        /*
            r3 = this;
            r0 = r3
            int r1 = gogolook.callgogolook2.R$id.et_content
            android.view.View r0 = r0.m25703a(r1)
            android.widget.EditText r0 = (android.widget.EditText) r0
            r4 = r0
            r0 = r4
            java.lang.String r1 = "et_content"
            p626l.p641z.p643d.C15149k.m383a(r0, r1)
            r0 = r4
            android.text.Editable r0 = r0.getText()
            r4 = r0
            r0 = r4
            if (r0 == 0) goto L_0x0026
            r0 = r4
            java.lang.String r0 = r0.toString()
            r4 = r0
            r0 = r4
            if (r0 == 0) goto L_0x0026
            goto L_0x0029
        L_0x0026:
            java.lang.String r0 = ""
            r4 = r0
        L_0x0029:
            r0 = r4
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: gogolook.callgogolook2.view.widget.LabeledEditText.m25695c():java.lang.String");
    }

    /* renamed from: c */
    public final void m25694c(int i) {
        NestedScrollView nestedScrollView = (NestedScrollView) m25703a(R$id.sv_content);
        C15149k.m383a((Object) nestedScrollView, "sv_content");
        nestedScrollView.getLayoutParams().height = i;
    }

    /* renamed from: c */
    public final void m25693c(String str) {
        C15149k.m377b(str, "text");
        ((EditText) m25703a(R$id.et_content)).setText(str);
    }

    /* renamed from: d */
    public final void m25692d(int i) {
        EditText editText = (EditText) m25703a(R$id.et_content);
        C15149k.m383a((Object) editText, "et_content");
        editText.setInputType(i);
    }

    /* renamed from: d */
    public final void m25691d(String str) {
        C15149k.m377b(str, "warning");
        TextView textView = (TextView) m25703a(R$id.tv_warning);
        C15149k.m383a((Object) textView, "tv_warning");
        textView.setText(str);
    }
}
