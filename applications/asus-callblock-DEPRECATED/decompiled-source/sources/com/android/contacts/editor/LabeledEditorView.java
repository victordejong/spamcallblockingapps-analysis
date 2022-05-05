package com.android.contacts.editor;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.app.AlertDialog;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.Handler;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.util.AttributeSet;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import android.widget.TextView;
import android.widget.Toast;
import com.android.contacts.editor.d;
import com.android.contacts.model.RawContactDelta;
import com.android.contacts.model.a.b;
import com.android.contacts.model.account.a;
import com.android.contacts.model.f;
import com.android.contacts.q;
import com.android.contacts.util.DialogManager;
import com.android.contacts.util.PhoneCapabilityTester;
import com.asus.updatesdk.BuildConfig;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/android/contacts/editor/LabeledEditorView.class */
public abstract class LabeledEditorView extends LinearLayout implements d, DialogManager.DialogShowingView {
    public static final a.d h = new a.d(0, 0);

    /* renamed from: a  reason: collision with root package name */
    b f1156a;

    /* renamed from: b  reason: collision with root package name */
    RawContactDelta.ValuesDelta f1157b;
    RawContactDelta c;
    boolean d;
    ViewIdGenerator e;
    protected int f;
    private Spinner i;
    private a j;
    private View k;
    private ImageView l;
    private boolean o;
    private a.d p;
    private d.a r;
    private boolean m = true;
    private boolean n = true;
    private DialogManager q = null;
    int g = 1;
    private AdapterView.OnItemSelectedListener s = new AdapterView.OnItemSelectedListener() { // from class: com.android.contacts.editor.LabeledEditorView.1
        @Override // android.widget.AdapterView.OnItemSelectedListener
        public final void onItemSelected(AdapterView<?> adapterView, View view, int i, long j) {
            LabeledEditorView.this.a(i);
        }

        @Override // android.widget.AdapterView.OnItemSelectedListener
        public final void onNothingSelected(AdapterView<?> adapterView) {
        }
    };

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/android/contacts/editor/LabeledEditorView$a.class */
    public final class a extends ArrayAdapter<a.d> {

        /* renamed from: a  reason: collision with root package name */
        boolean f1167a;
        private final LayoutInflater c;
        private int d;

        public a(Context context) {
            super(context, 0);
            this.c = (LayoutInflater) context.getSystemService("layout_inflater");
            this.d = context.getResources().getColor(2131034400);
            if (!(LabeledEditorView.this.p == null || LabeledEditorView.this.p.e == null || LabeledEditorView.this.f1157b.a(LabeledEditorView.this.p.e) == null)) {
                add(LabeledEditorView.h);
                this.f1167a = true;
            }
            addAll(f.a(LabeledEditorView.this.c, LabeledEditorView.this.f1156a, LabeledEditorView.this.p));
        }

        private View a(int i, View view, ViewGroup viewGroup, int i2) {
            TextView textView;
            String string;
            if (view == null) {
                textView = (TextView) this.c.inflate(i2, viewGroup, false);
                textView.setGravity(19);
                textView.setTextColor(this.d);
                textView.setEllipsize(TextUtils.TruncateAt.END);
            } else {
                textView = (TextView) view;
            }
            a.d item = getItem(i);
            if (item == LabeledEditorView.h) {
                String a2 = LabeledEditorView.this.f1157b.a(LabeledEditorView.this.p.e);
                if (!TextUtils.isEmpty(a2)) {
                    Log.d("LabeledEditorView", "text length = " + a2.length());
                }
                string = a2;
                if (!TextUtils.isEmpty(a2)) {
                    string = a2;
                    if (a2.length() > 100) {
                        string = a2.substring(0, 100).replace("\n", " ");
                    }
                }
            } else {
                string = getContext().getString(item.f2007b);
            }
            textView.setText(string);
            return textView;
        }

        @Override // android.widget.ArrayAdapter, android.widget.BaseAdapter, android.widget.SpinnerAdapter
        public final View getDropDownView(int i, View view, ViewGroup viewGroup) {
            return a(i, view, viewGroup, Resources.getSystem().getIdentifier("simple_spinner_dropdown_item", "layout", "android"));
        }

        @Override // android.widget.ArrayAdapter, android.widget.Adapter
        public final View getView(int i, View view, ViewGroup viewGroup) {
            return a(i, view, viewGroup, Resources.getSystem().getIdentifier("simple_spinner_item", "layout", "android"));
        }
    }

    public LabeledEditorView(Context context) {
        super(context);
        a(context);
    }

    public LabeledEditorView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        a(context);
    }

    public LabeledEditorView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        a(context);
    }

    static void a(AlertDialog alertDialog, EditText editText) {
        alertDialog.getButton(-1).setEnabled(!TextUtils.isEmpty(editText.getText().toString().trim()));
    }

    private void a(Context context) {
        this.f = context.getResources().getDimensionPixelSize(2131100083);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void g() {
        this.j = new a(getContext());
        this.i.setAdapter((SpinnerAdapter) this.j);
        if (this.j.f1167a) {
            this.i.setSelection(this.j.getPosition(h));
        } else {
            this.i.setSelection(this.j.getPosition(this.p));
        }
    }

    protected final void a(int i) {
        a.d item = this.j.getItem(i);
        if (this.j.f1167a && item == h) {
            return;
        }
        if (this.p != item || this.p.e != null) {
            if (item.e == null) {
                this.p = item;
                this.f1157b.a(this.f1156a.l, this.p.f2006a);
                g();
                e();
                f();
            } else if (item.f2007b != 2131756260) {
                b(1);
            } else {
                this.p = item;
                this.f1157b.a(this.f1156a.l, this.p.f2006a);
                this.f1157b.a(this.p.e, getResources().getString(2131756260));
                g();
                e();
                f();
            }
        }
    }

    public void a(String str, String str2) {
        if (c(str, str2)) {
            b(str, str2);
            j();
        }
    }

    @Override // com.android.contacts.editor.d
    public final void b() {
        this.f1157b.o();
        final e a2 = e.a();
        a2.f1214a.a();
        int height = getHeight();
        final List<View> a3 = e.a(this);
        ArrayList arrayList = new ArrayList();
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this, View.ALPHA, 1.0f, 0.0f);
        ofFloat.setDuration(200L);
        arrayList.add(ofFloat);
        e.a(arrayList, a3, 0.0f, -height, 100);
        a2.f1214a.a(arrayList, new AnimatorListenerAdapter() { // from class: com.android.contacts.editor.e.1
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationEnd(Animator animator) {
                for (int i = 0; i < a3.size(); i++) {
                    ((View) a3.get(i)).setTranslationY(0.0f);
                }
                ViewGroup viewGroup = (ViewGroup) this.getParent();
                if (viewGroup != null) {
                    viewGroup.removeView(this);
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void b(int i) {
        Bundle bundle = new Bundle();
        bundle.putInt("dialog_id", i);
        if (this.q == null) {
            Context context = getContext();
            if (!(context instanceof DialogManager.DialogShowingViewActivity)) {
                throw new IllegalStateException("View must be hosted in an Activity that implements DialogManager.DialogShowingViewActivity");
            }
            this.q = ((DialogManager.DialogShowingViewActivity) context).getDialogManager();
        }
        this.q.showDialogInView(this, bundle);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void b(String str, String str2) {
        this.f1157b.a(str, str2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final boolean c(String str, String str2) {
        String a2 = this.f1157b.a(str);
        String str3 = a2;
        if (a2 == null) {
            str3 = BuildConfig.FLAVOR;
        }
        String str4 = str2;
        if (str2 == null) {
            str4 = BuildConfig.FLAVOR;
        }
        return !TextUtils.equals(str3, str4);
    }

    public Dialog createDialog(Bundle bundle) {
        if (bundle == null) {
            throw new IllegalArgumentException("bundle must not be null");
        }
        int i = bundle.getInt("dialog_id");
        switch (i) {
            case 1:
                AlertDialog.Builder builder = new AlertDialog.Builder(getContext());
                LayoutInflater from = LayoutInflater.from(builder.getContext());
                builder.setTitle(2131755487);
                View inflate = from.inflate(2131427476, (ViewGroup) null);
                final EditText editText = (EditText) inflate.findViewById(2131296626);
                editText.setInputType(8193);
                editText.setSaveEnabled(true);
                builder.setView(inflate);
                editText.requestFocus();
                builder.setPositiveButton(17039370, new DialogInterface.OnClickListener() { // from class: com.android.contacts.editor.LabeledEditorView.3
                    @Override // android.content.DialogInterface.OnClickListener
                    public final void onClick(DialogInterface dialogInterface, int i2) {
                        String trim = editText.getText().toString().trim();
                        if (q.a((CharSequence) trim)) {
                            ArrayList<a.d> a2 = f.a(LabeledEditorView.this.c, LabeledEditorView.this.f1156a, (a.d) null);
                            LabeledEditorView.this.p = null;
                            Iterator<a.d> it = a2.iterator();
                            while (true) {
                                if (!it.hasNext()) {
                                    break;
                                }
                                a.d next = it.next();
                                if (next.e != null) {
                                    LabeledEditorView.this.p = next;
                                    break;
                                }
                            }
                            if (LabeledEditorView.this.p != null) {
                                LabeledEditorView.this.f1157b.a(LabeledEditorView.this.f1156a.l, LabeledEditorView.this.p.f2006a);
                                LabeledEditorView.this.f1157b.a(LabeledEditorView.this.p.e, trim);
                                LabeledEditorView.this.g();
                                LabeledEditorView.this.e();
                                LabeledEditorView.this.f();
                                return;
                            }
                            return;
                        }
                        Toast.makeText(LabeledEditorView.this.getContext(), 2131755711, 0).show();
                    }
                });
                builder.setNegativeButton(17039360, (DialogInterface.OnClickListener) null);
                final AlertDialog create = builder.create();
                create.setOnShowListener(new DialogInterface.OnShowListener() { // from class: com.android.contacts.editor.LabeledEditorView.4
                    @Override // android.content.DialogInterface.OnShowListener
                    public final void onShow(DialogInterface dialogInterface) {
                        LabeledEditorView.a(create, editText);
                    }
                });
                editText.addTextChangedListener(new TextWatcher() { // from class: com.android.contacts.editor.LabeledEditorView.5
                    @Override // android.text.TextWatcher
                    public final void afterTextChanged(Editable editable) {
                        LabeledEditorView.a(create, editText);
                    }

                    @Override // android.text.TextWatcher
                    public final void beforeTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
                    }

                    @Override // android.text.TextWatcher
                    public final void onTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
                    }
                });
                create.getWindow().setSoftInputMode(5);
                return create;
            default:
                throw new IllegalArgumentException("Invalid dialogId: " + i);
        }
    }

    protected abstract void e();

    protected void f() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public a.d h() {
        return this.p;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void i() {
        if (this.r != null) {
            this.r.a(5);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void j() {
        if (this.r != null) {
            this.r.a(2);
        }
        boolean a2 = a();
        if (this.m != a2) {
            if (a2) {
                if (this.r != null) {
                    this.r.a(3);
                }
                if (this.n) {
                    this.k.setVisibility(4);
                }
            } else {
                if (this.r != null) {
                    this.r.a(4);
                }
                if (this.n) {
                    this.k.setVisibility(0);
                }
            }
            this.m = a2;
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.o = true;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.o = false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.View
    public void onFinishInflate() {
        this.i = (Spinner) findViewById(2131297340);
        this.i.setId(-1);
        this.i.setOnItemSelectedListener(this.s);
        this.l = (ImageView) findViewById(2131296655);
        this.k = findViewById(2131296656);
        this.k.setOnClickListener(new View.OnClickListener() { // from class: com.android.contacts.editor.LabeledEditorView.2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                new Handler().post(new Runnable() { // from class: com.android.contacts.editor.LabeledEditorView.2.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        if (LabeledEditorView.this.o && LabeledEditorView.this.r != null) {
                            LabeledEditorView.this.r.a(LabeledEditorView.this);
                        }
                    }
                });
            }
        });
    }

    @Override // com.android.contacts.editor.d
    public void setDeletable(boolean z) {
        this.n = z;
        if (this.n) {
            this.k.setVisibility(0);
            ImageView imageView = this.l;
            boolean z2 = false;
            if (!this.d) {
                z2 = false;
                if (isEnabled()) {
                    z2 = true;
                }
            }
            imageView.setEnabled(z2);
            return;
        }
        this.k.setVisibility(8);
    }

    public void setDeleteButtonVisible(boolean z) {
        if (this.n) {
            this.k.setVisibility(z ? 0 : 4);
        }
    }

    @Override // com.android.contacts.editor.d
    public void setEditorListener(d.a aVar) {
        this.r = aVar;
    }

    @Override // android.view.View
    public void setEnabled(boolean z) {
        boolean z2 = true;
        super.setEnabled(z);
        this.i.setEnabled(!this.d && z);
        ImageView imageView = this.l;
        if (this.d || !z) {
            z2 = false;
        }
        imageView.setEnabled(z2);
    }

    public void setLabelInvisible() {
        this.i.setVisibility(8);
    }

    public void setValues(b bVar, RawContactDelta.ValuesDelta valuesDelta, RawContactDelta rawContactDelta, boolean z, ViewIdGenerator viewIdGenerator) {
        this.f1156a = bVar;
        this.f1157b = valuesDelta;
        this.c = rawContactDelta;
        this.d = z;
        this.e = viewIdGenerator;
        setId(viewIdGenerator.a(rawContactDelta, bVar, valuesDelta, -1));
        if (!valuesDelta.b()) {
            setVisibility(8);
            return;
        }
        setVisibility(0);
        boolean a2 = f.a(bVar);
        if (a2) {
            this.i.setEnabled(!this.d && isEnabled());
            this.i.setVisibility(0);
        } else {
            this.i.setVisibility(8);
        }
        Spinner spinner = this.i;
        boolean z2 = false;
        if (!z) {
            z2 = false;
            if (isEnabled()) {
                z2 = true;
            }
        }
        spinner.setEnabled(z2);
        if (a2) {
            this.p = f.a(valuesDelta, bVar);
            g();
        }
        if (PhoneCapabilityTester.IsAsusDevice()) {
            if (this.c == null || this.c.c() == null || !this.c.c().equals("asus.local.simcard2")) {
                this.g = 1;
            } else {
                this.g = 2;
            }
        } else if (this.c == null || this.c.b() == null || !this.c.b().equals("SIM2")) {
            this.g = 1;
        } else {
            this.g = 2;
        }
    }
}
