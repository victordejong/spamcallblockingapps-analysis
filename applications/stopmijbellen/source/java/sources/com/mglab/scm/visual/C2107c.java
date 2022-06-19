package com.mglab.scm.visual;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.PorterDuff;
import android.support.p012v4.media.C0082b;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.CheckBox;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.ProgressBar;
import android.widget.Spinner;
import android.widget.TextView;
import androidx.appcompat.widget.RunnableC0198a1;
import androidx.appcompat.widget.SwitchCompat;
import androidx.recyclerview.widget.C0608b;
import ba.AbstractC0762k;
import ba.C0748b;
import com.afollestad.materialdialogs.internal.MDButton;
import com.mglab.scm.visual.C2107c;
import com.mglab.scm.visual.CallItem;
import com.rengwuxian.materialedittext.MaterialAutoCompleteTextView;
import com.rengwuxian.materialedittext.MaterialEditText;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import org.greenrobot.eventbus.ThreadMode;
import p007a6.C0033h;
import p066d0.C2134a;
import p078e2.EnumC2524b;
import p078e2.View$OnClickListenerC2530g;
import p095f8.C2779g;
import p095f8.C2780h;
import p117h8.C3026c;
import p117h8.C3027d;
import p117h8.C3030g;
import p117h8.C3033i;
import p117h8.C3034j;
import p117h8.C3036l;
import p117h8.C3037m;
import p117h8.C3043q;
import p117h8.C3050w;
import p117h8.C3051x;
import p149k8.C3382a;
import p149k8.C3389e;
import p149k8.C3390f;
import p149k8.C3396l;
import p160l8.View$OnClickListenerC3533p;
import p160l8.View$OnClickListenerC3534q;
import p171m8.C3670d;
import p171m8.C3674h;
import p171m8.View$OnClickListenerC3671e;
import p171m8.View$OnClickListenerC3672f;
import p193o8.AbstractC3956i;
import p193o8.C3948e;
import p193o8.C3957j;
import p193o8.C3970w;
import p229s2.C4280b;
import p278w8.AbstractC4787n;
import p278w8.C4775f;
import p278w8.C4776g;
import p278w8.C4782k;
import p278w8.C4788o;
import p278w8.C4790q;
import p278w8.C4791r;
import p289x8.AbstractC4932a;
import p289x8.C4933b;
import p293y2.C4995l;
import p293y2.RunnableC4984d;
import p303z2.C5051l;
import p303z2.C5056q;
/* renamed from: com.mglab.scm.visual.c */
/* loaded from: classes2-dex2jar.jar:com/mglab/scm/visual/c.class */
public class C2107c {
    @SuppressLint({"StaticFieldLeak"})

    /* renamed from: k */
    public static View$OnClickListenerC2530g f7645k;

    /* renamed from: a */
    public final Context f7646a;

    /* renamed from: b */
    public View f7647b;

    /* renamed from: c */
    public FrameLayout f7648c;

    /* renamed from: d */
    public int f7649d;

    /* renamed from: e */
    public boolean f7650e;

    /* renamed from: f */
    public CallItem f7651f;

    /* renamed from: g */
    public C3957j f7652g;

    /* renamed from: h */
    public List<AbstractC3956i> f7653h = new ArrayList();

    /* renamed from: i */
    public List<AbstractC3956i> f7654i = new ArrayList();

    /* renamed from: j */
    public ListView f7655j;

    /* renamed from: com.mglab.scm.visual.c$a */
    /* loaded from: classes2-dex2jar.jar:com/mglab/scm/visual/c$a.class */
    public class C2108a implements AdapterView.OnItemSelectedListener {

        /* renamed from: a */
        public final /* synthetic */ SwitchCompat f7656a;

        public C2108a(SwitchCompat switchCompat) {
            C2107c.this = r4;
            this.f7656a = switchCompat;
        }

        @Override // android.widget.AdapterView.OnItemSelectedListener
        public void onItemSelected(AdapterView<?> adapterView, View view, int i, long j) {
            this.f7656a.setEnabled(i != 0);
            this.f7656a.setChecked(false);
            C2107c.this.m3917o(this.f7656a);
        }

        @Override // android.widget.AdapterView.OnItemSelectedListener
        public void onNothingSelected(AdapterView<?> adapterView) {
        }
    }

    /* renamed from: com.mglab.scm.visual.c$b */
    /* loaded from: classes2-dex2jar.jar:com/mglab/scm/visual/c$b.class */
    public class C2109b implements AdapterView.OnItemSelectedListener {

        /* renamed from: a */
        public final /* synthetic */ SwitchCompat f7658a;

        public C2109b(SwitchCompat switchCompat) {
            C2107c.this = r4;
            this.f7658a = switchCompat;
        }

        @Override // android.widget.AdapterView.OnItemSelectedListener
        public void onItemSelected(AdapterView<?> adapterView, View view, int i, long j) {
            this.f7658a.setEnabled(i != 0);
            SwitchCompat switchCompat = this.f7658a;
            boolean z = false;
            if (i != 0) {
                z = false;
                if (C2780h.m3052f(C2107c.this.f7646a, "dlgbwlsoc", true)) {
                    z = true;
                }
            }
            switchCompat.setChecked(z);
            C2107c.this.m3917o(this.f7658a);
        }

        @Override // android.widget.AdapterView.OnItemSelectedListener
        public void onNothingSelected(AdapterView<?> adapterView) {
        }
    }

    /* renamed from: com.mglab.scm.visual.c$c */
    /* loaded from: classes2-dex2jar.jar:com/mglab/scm/visual/c$c.class */
    public class C2110c implements TextWatcher {
        public C2110c() {
            C2107c.this = r4;
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            synchronized (this) {
                C2107c.this.f7654i.clear();
                MaterialEditText materialEditText = (MaterialEditText) C2107c.f7645k.findViewById(2131296617);
                if (materialEditText.getText() != null && !materialEditText.getText().toString().trim().isEmpty()) {
                    String lowerCase = materialEditText.getText().toString().trim().toLowerCase();
                    Iterator<AbstractC3956i> it2 = C2107c.this.f7653h.iterator();
                    while (it2.hasNext()) {
                        ContactItem contactItem = (ContactItem) it2.next();
                        if (contactItem.f7357c.toLowerCase().contains(lowerCase) || contactItem.f7356b.toLowerCase().contains(lowerCase)) {
                            if (!contactItem.f7359e) {
                                contactItem.f7359e = false;
                            }
                            C2107c.this.f7654i.add(contactItem);
                        }
                    }
                    C2107c c2107c = C2107c.this;
                    C2107c c2107c2 = C2107c.this;
                    c2107c.f7652g = new C3957j(c2107c2.f7646a, c2107c2.f7654i);
                    C2107c c2107c3 = C2107c.this;
                    c2107c3.f7655j.setAdapter((ListAdapter) c2107c3.f7652g);
                    C2107c.this.f7652g.notifyDataSetChanged();
                    View$OnClickListenerC2530g view$OnClickListenerC2530g = C2107c.f7645k;
                    EnumC2524b enumC2524b = EnumC2524b.POSITIVE;
                    view$OnClickListenerC2530g.m3481c(enumC2524b).setEnabled(false);
                    C2107c.f7645k.m3481c(enumC2524b).setText(2131820943);
                }
                Iterator<AbstractC3956i> it3 = C2107c.this.f7653h.iterator();
                while (it3.hasNext()) {
                    ContactItem contactItem2 = (ContactItem) it3.next();
                    if (!contactItem2.f7359e) {
                        contactItem2.f7359e = false;
                    }
                    C2107c.this.f7654i.add(contactItem2);
                }
                C2107c c2107c4 = C2107c.this;
                C2107c c2107c22 = C2107c.this;
                c2107c4.f7652g = new C3957j(c2107c22.f7646a, c2107c22.f7654i);
                C2107c c2107c32 = C2107c.this;
                c2107c32.f7655j.setAdapter((ListAdapter) c2107c32.f7652g);
                C2107c.this.f7652g.notifyDataSetChanged();
                View$OnClickListenerC2530g view$OnClickListenerC2530g2 = C2107c.f7645k;
                EnumC2524b enumC2524b2 = EnumC2524b.POSITIVE;
                view$OnClickListenerC2530g2.m3481c(enumC2524b2).setEnabled(false);
                C2107c.f7645k.m3481c(enumC2524b2).setText(2131820943);
            }
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }
    }

    /* renamed from: com.mglab.scm.visual.c$d */
    /* loaded from: classes2-dex2jar.jar:com/mglab/scm/visual/c$d.class */
    public class C2111d implements TextWatcher {

        /* renamed from: a */
        public boolean f7661a = false;

        /* renamed from: b */
        public boolean f7662b = false;

        /* renamed from: c */
        public EditText f7663c;

        /* renamed from: d */
        public String f7664d;

        /* renamed from: e */
        public int f7665e;

        /* renamed from: f */
        public int f7666f;

        public C2111d(EditText editText, int i) {
            C2107c.this = r4;
            this.f7666f = i;
            this.f7663c = editText;
        }

        /* renamed from: a */
        public void m3914a() {
            boolean z;
            boolean z2;
            EnumC2524b enumC2524b = EnumC2524b.POSITIVE;
            boolean z3 = true;
            C2107c.f7645k.m3481c(enumC2524b).setEnabled(!this.f7664d.isEmpty());
            if (this.f7664d.isEmpty()) {
                this.f7663c.setError(C2107c.this.f7646a.getResources().getString(2131820730));
                return;
            }
            C2107c c2107c = C2107c.this;
            int i = c2107c.f7649d;
            if (i != 2) {
                if (i != 1) {
                    return;
                }
                String str = this.f7664d;
                int i2 = this.f7666f;
                Iterator it2 = new C4791r(new C4776g(new C4788o(new AbstractC4932a[0]), C3050w.class), C3051x.f10383j.m234g(-1)).mo456l().iterator();
                while (true) {
                    if (!it2.hasNext()) {
                        z = false;
                        break;
                    }
                    C3050w c3050w = (C3050w) it2.next();
                    if (c3050w.f10374b != i2 && C3043q.m2697y(c3050w.f10375c, str)) {
                        z = true;
                        break;
                    }
                }
                if (!z) {
                    return;
                }
                C2107c.f7645k.m3481c(enumC2524b).setEnabled(false);
                this.f7663c.setError(C2107c.this.f7646a.getResources().getString(2131820732));
            } else if (!c2107c.f7650e) {
                String str2 = this.f7664d;
                int i3 = this.f7666f;
                Iterator it3 = new C4791r(new C4776g(new C4788o(new AbstractC4932a[0]), C3026c.class), C3027d.f10159j.m234g(-1)).mo456l().iterator();
                while (true) {
                    if (!it3.hasNext()) {
                        z2 = false;
                        break;
                    }
                    C3026c c3026c = (C3026c) it3.next();
                    if (c3026c.f10149b != i3 && C3043q.m2697y(c3026c.f10150c, str2)) {
                        z2 = true;
                        break;
                    }
                }
                if (!z2) {
                    return;
                }
                C2107c.f7645k.m3481c(enumC2524b).setEnabled(false);
                this.f7663c.setError(C2107c.this.f7646a.getResources().getString(2131820732));
            } else {
                String str3 = this.f7664d;
                Iterator it4 = new C4791r(new C4776g(new C4788o(new AbstractC4932a[0]), C3026c.class), C3027d.f10159j.m236e(-1), C3027d.f10155f.m234g(Integer.valueOf(this.f7666f))).mo456l().iterator();
                while (true) {
                    if (!it4.hasNext()) {
                        z3 = false;
                        break;
                    }
                    C3026c c3026c2 = (C3026c) it4.next();
                    if (c3026c2.f10153f == -1 && c3026c2.f10150c.length() <= str3.length()) {
                        String str4 = c3026c2.f10150c;
                        if (str4.equals(str3.substring(0, str4.length()))) {
                            break;
                        }
                    }
                }
                if (!z3) {
                    return;
                }
                C2107c.f7645k.m3481c(enumC2524b).setEnabled(false);
                this.f7663c.setError(C2107c.this.f7646a.getResources().getString(2131820727));
            }
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            synchronized (this) {
                if (!this.f7662b) {
                    this.f7662b = true;
                    if (this.f7665e > this.f7664d.length()) {
                        this.f7665e = this.f7664d.length();
                    }
                    this.f7663c.setText(this.f7664d);
                    this.f7663c.setSelection(this.f7665e);
                    this.f7661a = false;
                    this.f7662b = false;
                    m3914a();
                }
            }
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            synchronized (this) {
            }
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            boolean z;
            boolean z2;
            synchronized (this) {
                if (!this.f7661a) {
                    this.f7661a = true;
                    StringBuilder sb = new StringBuilder();
                    int i4 = 0;
                    boolean z3 = false;
                    while (true) {
                        z = z3;
                        if (i4 >= charSequence.length()) {
                            break;
                        }
                        char charAt = charSequence.charAt(i4);
                        if (charAt < '0' || charAt > '9') {
                            z2 = z;
                            if (charAt != '+') {
                                i4++;
                                z3 = z2;
                            }
                        }
                        if (charAt != '+' || i4 == 0) {
                            sb.append(charAt);
                            z2 = z;
                        } else {
                            z2 = true;
                        }
                        i4++;
                        z3 = z2;
                    }
                    this.f7665e = this.f7663c.getSelectionStart();
                    this.f7664d = sb.toString();
                    if (z) {
                        this.f7665e--;
                    }
                }
            }
        }
    }

    /* renamed from: com.mglab.scm.visual.c$e */
    /* loaded from: classes2-dex2jar.jar:com/mglab/scm/visual/c$e.class */
    public class C2112e implements TextWatcher {

        /* renamed from: a */
        public boolean f7668a = false;

        /* renamed from: b */
        public boolean f7669b = false;

        /* renamed from: c */
        public EditText f7670c;

        /* renamed from: d */
        public String f7671d;

        /* renamed from: e */
        public int f7672e;

        public C2112e(EditText editText) {
            C2107c.this = r4;
            this.f7670c = editText;
        }

        /* renamed from: a */
        public void m3913a() {
            View$OnClickListenerC2530g view$OnClickListenerC2530g = C2107c.f7645k;
            EnumC2524b enumC2524b = EnumC2524b.POSITIVE;
            view$OnClickListenerC2530g.m3481c(enumC2524b).setEnabled(!this.f7671d.isEmpty());
            if (this.f7671d.isEmpty()) {
                this.f7670c.setError(C2107c.this.f7646a.getResources().getString(2131820730));
                return;
            }
            C2107c c2107c = C2107c.this;
            int i = c2107c.f7649d;
            if (i == 2) {
                if (c2107c.f7650e) {
                    if (!C3043q.m2720b(this.f7671d)) {
                        return;
                    }
                    C2107c.f7645k.m3481c(enumC2524b).setEnabled(false);
                    this.f7670c.setError(C2107c.this.f7646a.getResources().getString(2131820727));
                } else if (!C3043q.m2719c(this.f7671d)) {
                } else {
                    C2107c.f7645k.m3481c(enumC2524b).setEnabled(false);
                    this.f7670c.setError(C2107c.this.f7646a.getResources().getString(2131820732));
                }
            } else if (i != 1) {
            } else {
                if (c2107c.f7650e) {
                    if (!C3043q.m2714h(this.f7671d)) {
                        return;
                    }
                    C2107c.f7645k.m3481c(enumC2524b).setEnabled(false);
                    this.f7670c.setError(C2107c.this.f7646a.getResources().getString(2131820727));
                } else if (!C3043q.m2713i(this.f7671d)) {
                } else {
                    C2107c.f7645k.m3481c(enumC2524b).setEnabled(false);
                    this.f7670c.setError(C2107c.this.f7646a.getResources().getString(2131820732));
                }
            }
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            synchronized (this) {
                if (!this.f7669b) {
                    this.f7669b = true;
                    if (this.f7672e > this.f7671d.length()) {
                        this.f7672e = this.f7671d.length();
                    }
                    this.f7670c.setText(this.f7671d);
                    this.f7670c.setSelection(this.f7672e);
                    this.f7668a = false;
                    this.f7669b = false;
                    m3913a();
                }
            }
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            synchronized (this) {
            }
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            boolean z;
            boolean z2;
            synchronized (this) {
                if (!this.f7668a) {
                    this.f7668a = true;
                    StringBuilder sb = new StringBuilder();
                    int i4 = 0;
                    boolean z3 = false;
                    while (true) {
                        z = z3;
                        if (i4 >= charSequence.length()) {
                            break;
                        }
                        char charAt = charSequence.charAt(i4);
                        if ((charAt < '0' || charAt > '9') && charAt != '+') {
                            z2 = z;
                            if (charAt != '*') {
                                i4++;
                                z3 = z2;
                            }
                        }
                        if ((charAt == '+' || charAt == '*') && i4 != 0) {
                            z2 = true;
                        } else {
                            sb.append(charAt);
                            z2 = z;
                        }
                        i4++;
                        z3 = z2;
                    }
                    this.f7672e = this.f7670c.getSelectionStart();
                    this.f7671d = sb.toString();
                    if (z) {
                        this.f7672e--;
                    }
                }
            }
        }
    }

    public C2107c(Context context, View view) {
        this.f7646a = context;
        this.f7647b = view;
        C0748b.m7409b().m7400k(this);
    }

    /* renamed from: a */
    public static void m3931a(C2107c c2107c) {
        Objects.requireNonNull(c2107c);
        try {
            c2107c.f7653h.clear();
            c2107c.f7654i.clear();
            boolean m3066W = C2780h.m3066W(c2107c.f7646a);
            C4933b<String> c4933b = C3034j.f10203h;
            C4933b<String> c4933b2 = C3034j.f10204i;
            C4933b<String> c4933b3 = C3034j.f10205j;
            C4933b<String> c4933b4 = C3034j.f10207l;
            C4791r c4791r = new C4791r(new C4776g(new C4788o(c4933b, c4933b2, c4933b3, c4933b4), C3033i.class), new AbstractC4787n[0]);
            c4791r.m454n(c4933b, c4933b2, c4933b3, c4933b4);
            if (m3066W) {
                c4933b2 = c4933b3;
            }
            c4791r.m453o(c4933b2, true);
            for (C3033i c3033i : c4791r.mo456l()) {
                ContactItem contactItem = new ContactItem(c3033i.f10195d, m3066W ? c3033i.f10197f : c3033i.f10196e, c3033i.f10199h);
                c2107c.f7653h.add(contactItem);
                c2107c.f7654i.add(contactItem);
            }
            if (c2107c.f7653h.size() > 0) {
                C0748b.m7409b().m7404g(new C3390f(1));
            } else {
                C0748b.m7409b().m7404g(new C3390f(2));
            }
            c2107c.f7653h.size();
        } catch (Exception e) {
            C0748b.m7409b().m7404g(new C3390f(2));
            e.printStackTrace();
        }
    }

    /* renamed from: b */
    public static void m3930b(C2107c c2107c, View view) {
        EnumC2524b enumC2524b = EnumC2524b.POSITIVE;
        for (int i = 0; i < c2107c.f7654i.size(); i++) {
            ContactItem contactItem = (ContactItem) c2107c.f7654i.get(i);
            if (!contactItem.f7359e) {
                contactItem.f7359e = true;
            }
        }
        if (c2107c.f7654i.size() > 0) {
            StringBuilder m7624k = C0608b.m7624k(c2107c.f7646a.getString(2131820943), " [");
            m7624k.append(c2107c.f7654i.size());
            m7624k.append("]");
            f7645k.m3481c(enumC2524b).setText(m7624k.toString());
            f7645k.m3481c(enumC2524b).setEnabled(true);
        } else {
            f7645k.m3481c(enumC2524b).setText(2131820943);
            f7645k.m3481c(enumC2524b).setEnabled(false);
        }
        C3957j c3957j = new C3957j(c2107c.f7646a, c2107c.f7654i);
        c2107c.f7652g = c3957j;
        c2107c.f7655j.setAdapter((ListAdapter) c3957j);
        c2107c.f7652g.notifyDataSetChanged();
    }

    /* renamed from: c */
    public static void m3929c(C2107c c2107c, View view) {
        for (int i = 0; i < c2107c.f7654i.size(); i++) {
            ContactItem contactItem = (ContactItem) c2107c.f7654i.get(i);
            if (contactItem.f7359e) {
                contactItem.f7359e = false;
            }
        }
        View$OnClickListenerC2530g view$OnClickListenerC2530g = f7645k;
        EnumC2524b enumC2524b = EnumC2524b.POSITIVE;
        view$OnClickListenerC2530g.m3481c(enumC2524b).setText(2131820943);
        f7645k.m3481c(enumC2524b).setEnabled(false);
        C3957j c3957j = new C3957j(c2107c.f7646a, c2107c.f7654i);
        c2107c.f7652g = c3957j;
        c2107c.f7655j.setAdapter((ListAdapter) c3957j);
        c2107c.f7652g.notifyDataSetChanged();
    }

    /* renamed from: p */
    public static void m3916p(Context context) {
        boolean m3081H = C2780h.m3081H(context);
        View$OnClickListenerC2530g.C2531a c2531a = new View$OnClickListenerC2530g.C2531a(context);
        c2531a.m3464k(2131820578);
        c2531a.m3463l(2131099739);
        c2531a.f8840E = C2779g.m3125H(C2134a.C2136b.m3841b(context, 17301545), C2134a.m3845b(context, 2131099739));
        c2531a.m3472c(m3081H ? 2131099742 : 2131099699);
        int i = 2131099742;
        if (m3081H) {
            i = 2131099793;
        }
        c2531a.m3474a(i);
        c2531a.f8874y = true;
        c2531a.f8875z = true;
        c2531a.m3471d(2131492942, false);
        c2531a.m3466i(2131820723);
        c2531a.m3468g(2131820578);
        c2531a.f8870u = C5051l.f15335k;
        c2531a.f8871v = new C3970w(context, 1);
        View$OnClickListenerC2530g m3465j = c2531a.m3465j();
        View view = m3465j.f8822c.f8864o;
        m3465j.m3481c(EnumC2524b.NEGATIVE).setEnabled(false);
        CheckBox checkBox = (CheckBox) view.findViewById(2131296460);
        checkBox.setOnClickListener(new View$OnClickListenerC3672f(m3465j, checkBox, 1));
    }

    /* renamed from: q */
    public static void m3915q(Context context) {
        boolean m3081H = C2780h.m3081H(context);
        View$OnClickListenerC2530g.C2531a c2531a = new View$OnClickListenerC2530g.C2531a(context);
        c2531a.m3464k(2131821066);
        c2531a.m3463l(2131099739);
        c2531a.m3470e(2131230956);
        c2531a.m3472c(m3081H ? 2131099742 : 2131099699);
        c2531a.f8874y = true;
        c2531a.f8875z = true;
        int i = 2131099742;
        if (m3081H) {
            i = 2131099793;
        }
        c2531a.m3474a(i);
        c2531a.m3473b(context.getText(2131821067));
        c2531a.m3466i(2131820943);
        c2531a.f8870u = new C4280b(context);
        c2531a.m3468g(2131820654).m3465j();
    }

    /* renamed from: d */
    public void m3928d(int i, CallItem callItem) {
        m3927e(i, false, callItem.m3955d(), callItem.m3954e());
    }

    /* renamed from: e */
    public void m3927e(int i, boolean z, String str, String str2) {
        if (i == 2 || i == 1) {
            this.f7649d = i;
            this.f7650e = z;
            boolean m3081H = C2780h.m3081H(this.f7646a);
            String string = this.f7650e ? this.f7646a.getResources().getString(2131820698) : i == 2 ? this.f7646a.getResources().getString(2131820700) : this.f7646a.getResources().getString(2131820701);
            View$OnClickListenerC2530g.C2531a c2531a = new View$OnClickListenerC2530g.C2531a(this.f7646a);
            c2531a.f8851b = string;
            c2531a.m3463l(2131099739);
            c2531a.m3470e(17301566);
            c2531a.m3472c(2131099739);
            c2531a.m3474a(m3081H ? 2131099793 : 2131099742);
            c2531a.f8874y = true;
            c2531a.f8875z = true;
            c2531a.m3471d(2131492938, true);
            c2531a.m3466i(2131820943);
            c2531a.f8870u = new C4995l(this, 14);
            View$OnClickListenerC2530g m3465j = c2531a.m3468g(2131820654).m3465j();
            f7645k = m3465j;
            View view = m3465j.f8822c.f8864o;
            final MaterialEditText materialEditText = (MaterialEditText) view.findViewById(2131296744);
            materialEditText.addTextChangedListener(new C2112e(materialEditText));
            String string2 = this.f7650e ? this.f7646a.getResources().getString(2131820733) : this.f7646a.getResources().getString(2131820731);
            materialEditText.setHint(string2);
            materialEditText.setFloatingLabelText(string2);
            MaterialAutoCompleteTextView materialAutoCompleteTextView = (MaterialAutoCompleteTextView) view.findViewById(2131296841);
            String string3 = this.f7646a.getResources().getString(2131820728);
            materialAutoCompleteTextView.setHint(string3);
            materialAutoCompleteTextView.setFloatingLabelText(string3);
            materialAutoCompleteTextView.setAdapter(new ArrayAdapter(this.f7646a, 17367043, C3043q.m2706p()));
            if (m3081H) {
                materialAutoCompleteTextView.setDropDownBackgroundResource(2131099699);
            }
            FrameLayout frameLayout = (FrameLayout) view.findViewById(2131296802);
            this.f7648c = frameLayout;
            frameLayout.setVisibility((this.f7650e || i == 1) ? 8 : 0);
            f7645k.m3481c(EnumC2524b.POSITIVE).setEnabled(false);
            materialAutoCompleteTextView.setText(str);
            materialEditText.setText(str2);
            final ImageView imageView = (ImageView) view.findViewById(2131296745);
            int i2 = 8;
            if (!this.f7650e) {
                i2 = 0;
            }
            imageView.setVisibility(i2);
            imageView.setOnClickListener(new View.OnClickListener() { // from class: o8.z
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    C2107c c2107c = C2107c.this;
                    ImageView imageView2 = imageView;
                    MaterialEditText materialEditText2 = materialEditText;
                    c2107c.f7650e = true;
                    c2107c.f7648c.setVisibility(8);
                    imageView2.setVisibility(8);
                    C2107c.f7645k.setTitle(2131820698);
                    String string4 = c2107c.f7646a.getResources().getString(2131820733);
                    materialEditText2.setHint(string4);
                    materialEditText2.setFloatingLabelText(string4);
                    Editable text = materialEditText2.getText();
                    Objects.requireNonNull(text);
                    if (text.length() > 8) {
                        materialEditText2.setText(materialEditText2.getText().toString().substring(0, 8));
                    }
                }
            });
            SwitchCompat switchCompat = (SwitchCompat) view.findViewById(2131297029);
            ((Spinner) view.findViewById(2131296453)).setOnItemSelectedListener(new C2109b(switchCompat));
            switchCompat.setOnClickListener(new View$OnClickListenerC3672f(this, switchCompat, 2));
        }
    }

    /* renamed from: f */
    public void m3926f(int i) {
        if (i == 2 || i == 1) {
            this.f7649d = i;
            boolean m3081H = C2780h.m3081H(this.f7646a);
            View$OnClickListenerC2530g.C2531a c2531a = new View$OnClickListenerC2530g.C2531a(this.f7646a);
            c2531a.f8851b = this.f7646a.getResources().getString(2131820706);
            c2531a.m3463l(2131099739);
            c2531a.m3470e(17301558);
            c2531a.m3472c(m3081H ? 2131099742 : 2131099699);
            int i2 = 2131099742;
            if (m3081H) {
                i2 = 2131099793;
            }
            c2531a.m3474a(i2);
            c2531a.f8874y = true;
            c2531a.f8875z = true;
            c2531a.m3471d(2131492939, false);
            c2531a.m3466i(2131820943);
            c2531a.f8870u = new C2106b(this, i, 1);
            c2531a.m3468g(2131820654);
            View$OnClickListenerC2530g m3465j = c2531a.m3465j();
            f7645k = m3465j;
            m3465j.m3481c(EnumC2524b.POSITIVE).setEnabled(false);
            Objects.requireNonNull(f7645k);
            ListView listView = (ListView) f7645k.findViewById(2131296733);
            final ArrayList arrayList = new ArrayList();
            Context context = this.f7646a;
            if (C2134a.m3846a(context, "android.permission.READ_CALL_LOG") != 0) {
                C0748b.m7409b().m7404g(new C3390f(3));
            } else {
                new Thread(new RunnableC4984d(this, arrayList, 3)).start();
            }
            final C3948e c3948e = new C3948e(context, arrayList);
            listView.setAdapter((ListAdapter) c3948e);
            listView.setOnItemClickListener(new AdapterView.OnItemClickListener() { // from class: o8.b0
                @Override // android.widget.AdapterView.OnItemClickListener
                public final void onItemClick(AdapterView adapterView, View view, int i3, long j) {
                    int i4;
                    List list = arrayList;
                    C3948e c3948e2 = c3948e;
                    CallItem callItem = (CallItem) list.get(i3);
                    boolean z = true;
                    boolean z2 = !callItem.f7344e;
                    callItem.f7344e = z2;
                    callItem.checkBox.setChecked(z2);
                    ListView listView2 = (ListView) C2107c.f7645k.findViewById(2131296733);
                    int i5 = 0;
                    int i6 = 0;
                    while (true) {
                        i4 = i6;
                        if (i5 >= listView2.getCount()) {
                            break;
                        }
                        int i7 = i4;
                        if (listView2.getItemAtPosition(i5).getClass().getName().equals(CallItem.class.getName())) {
                            i7 = i4;
                            if (((CallItem) listView2.getItemAtPosition(i5)).f7344e) {
                                i7 = i4 + 1;
                            }
                        }
                        i5++;
                        i6 = i7;
                    }
                    View$OnClickListenerC2530g view$OnClickListenerC2530g = C2107c.f7645k;
                    EnumC2524b enumC2524b = EnumC2524b.POSITIVE;
                    MDButton m3481c = view$OnClickListenerC2530g.m3481c(enumC2524b);
                    if (i4 <= 0) {
                        z = false;
                    }
                    m3481c.setEnabled(z);
                    if (i4 > 0) {
                        C2107c.f7645k.m3481c(enumC2524b).setText(callItem.f7340a.getString(2131820943) + " [" + i4 + "]");
                    } else {
                        C2107c.f7645k.m3481c(enumC2524b).setText(2131820943);
                    }
                    c3948e2.notifyDataSetChanged();
                }
            });
        }
    }

    public void finalize() throws Throwable {
        super.finalize();
        C0748b.m7409b().m7398m(this);
    }

    /* renamed from: g */
    public void m3925g(int i) {
        List<AbstractC3956i> list;
        if (i == 2 || i == 1) {
            this.f7649d = i;
            boolean m3081H = C2780h.m3081H(this.f7646a);
            View$OnClickListenerC2530g.C2531a c2531a = new View$OnClickListenerC2530g.C2531a(this.f7646a);
            c2531a.f8851b = this.f7646a.getResources().getString(2131820710);
            c2531a.m3463l(2131099739);
            c2531a.m3470e(2131230974);
            c2531a.m3472c(m3081H ? 2131099742 : 2131099699);
            int i2 = 2131099742;
            if (m3081H) {
                i2 = 2131099793;
            }
            c2531a.m3474a(i2);
            c2531a.f8874y = true;
            c2531a.f8875z = true;
            c2531a.m3471d(2131492940, false);
            c2531a.m3466i(2131820943);
            c2531a.f8870u = new C2106b(this, i, 0);
            c2531a.m3468g(2131820654);
            View$OnClickListenerC2530g m3465j = c2531a.m3465j();
            f7645k = m3465j;
            m3465j.m3481c(EnumC2524b.POSITIVE).setEnabled(false);
            Objects.requireNonNull(f7645k);
            this.f7655j = (ListView) f7645k.findViewById(2131296733);
            Context context = this.f7646a;
            if (C2134a.m3846a(context, "android.permission.READ_CONTACTS") != 0) {
                C0748b.m7409b().m7404g(new C3390f(3));
                list = this.f7653h;
            } else {
                new Thread(new RunnableC0198a1(this, 4)).start();
                list = this.f7654i;
            }
            C3957j c3957j = new C3957j(context, list);
            this.f7652g = c3957j;
            this.f7655j.setAdapter((ListAdapter) c3957j);
            this.f7655j.setOnItemClickListener(new AdapterView.OnItemClickListener() { // from class: com.mglab.scm.visual.a
                @Override // android.widget.AdapterView.OnItemClickListener
                public final void onItemClick(AdapterView adapterView, View view, int i3, long j) {
                    int i4;
                    C2107c c2107c = C2107c.this;
                    ContactItem contactItem = (ContactItem) c2107c.f7654i.get(i3);
                    boolean z = true;
                    boolean z2 = !contactItem.f7359e;
                    contactItem.f7359e = z2;
                    contactItem.checkBox.setChecked(z2);
                    ListView listView = (ListView) C2107c.f7645k.findViewById(2131296733);
                    int i5 = 0;
                    int i6 = 0;
                    while (true) {
                        i4 = i6;
                        if (i5 >= listView.getCount()) {
                            break;
                        }
                        int i7 = i4;
                        if (((ContactItem) listView.getItemAtPosition(i5)).f7359e) {
                            i7 = i4 + 1;
                        }
                        i5++;
                        i6 = i7;
                    }
                    View$OnClickListenerC2530g view$OnClickListenerC2530g = C2107c.f7645k;
                    EnumC2524b enumC2524b = EnumC2524b.POSITIVE;
                    MDButton m3481c = view$OnClickListenerC2530g.m3481c(enumC2524b);
                    if (i4 <= 0) {
                        z = false;
                    }
                    m3481c.setEnabled(z);
                    if (i4 > 0) {
                        C2107c.f7645k.m3481c(enumC2524b).setText(contactItem.f7355a.getString(2131820943) + " [" + i4 + "]");
                    } else {
                        C2107c.f7645k.m3481c(enumC2524b).setText(2131820943);
                    }
                    c2107c.f7652g.notifyDataSetChanged();
                }
            });
            ((MaterialEditText) f7645k.findViewById(2131296617)).addTextChangedListener(new C2110c());
            ((ImageButton) f7645k.findViewById(2131297002)).setOnClickListener(new View$OnClickListenerC3534q(this, 3));
            ((ImageButton) f7645k.findViewById(2131296535)).setOnClickListener(new View$OnClickListenerC3533p(this, 3));
        }
    }

    /* renamed from: h */
    public void m3924h(int i) {
        m3923i(i, 0, null);
    }

    /* renamed from: i */
    public void m3923i(final int i, final int i2, final C4782k.C4784b c4784b) {
        String str;
        if (i == 2 || i == 1 || i == 4 || i == 5) {
            boolean m3081H = C2780h.m3081H(this.f7646a);
            if (i == 4) {
                str = "Clear cache?";
            } else {
                StringBuilder sb = new StringBuilder();
                Context context = this.f7646a;
                str = C0082b.m8754h(sb, i2 == 0 ? context.getString(2131820668) : context.getString(2131820696, String.valueOf(i2)), "?");
            }
            View$OnClickListenerC2530g.C2531a c2531a = new View$OnClickListenerC2530g.C2531a(this.f7646a);
            c2531a.f8851b = str;
            c2531a.m3463l(2131099739);
            c2531a.m3470e(2131230972);
            c2531a.m3474a(m3081H ? 2131099793 : 2131099742);
            c2531a.m3472c(m3081H ? 2131099742 : 2131099699);
            c2531a.f8874y = true;
            c2531a.f8875z = true;
            c2531a.m3466i(2131820943);
            c2531a.f8870u = new View$OnClickListenerC2530g.AbstractC2533c() { // from class: o8.c0
                @Override // p078e2.View$OnClickListenerC2530g.AbstractC2533c
                /* renamed from: g */
                public final void mo96g(View$OnClickListenerC2530g view$OnClickListenerC2530g, EnumC2524b enumC2524b) {
                    C2107c c2107c = C2107c.this;
                    int i3 = i;
                    int i4 = i2;
                    C4782k.C4784b c4784b2 = c4784b;
                    Objects.requireNonNull(c2107c);
                    if (i3 == 1) {
                        if (i4 == 0) {
                            new C4776g(new C4775f(), C3050w.class).mo458i();
                        } else {
                            new C4791r(new C4776g(new C4775f(), C3050w.class), c4784b2).mo458i();
                        }
                        C0033h.m8884m(1, C0748b.m7409b());
                        C2779g.m3129D(c2107c.f7646a);
                    } else if (i3 == 2) {
                        if (i4 == 0) {
                            new C4776g(new C4775f(), C3026c.class).mo458i();
                        } else {
                            new C4791r(new C4776g(new C4775f(), C3026c.class), c4784b2).mo458i();
                        }
                        C0748b.m7409b().m7404g(new C3382a(1));
                        C2779g.m3129D(c2107c.f7646a);
                    } else if (i3 == 4) {
                        new C4776g(new C4775f(), C3030g.class).mo458i();
                        C0748b.m7409b().m7404g(new C3389e("Cache cleared"));
                    } else if (i3 == 5) {
                        int m3061a0 = C2780h.m3061a0(c2107c.f7646a);
                        if (m3061a0 == 1) {
                            new C4791r(new C4790q(C3036l.class).m460a(C3037m.f10294n.m239a(1)), C3037m.f10289i.m237d(0)).mo458i();
                        } else if (m3061a0 != 2) {
                            new C4790q(C3036l.class).m460a(C3037m.f10294n.m239a(1)).mo458i();
                        } else {
                            new C4791r(new C4790q(C3036l.class).m460a(C3037m.f10294n.m239a(1)), C3037m.f10289i.m232i(0)).mo458i();
                        }
                        C0748b.m7409b().m7404g(new C3396l("list cleared"));
                    }
                    C2779g.m3122K(c2107c.f7646a, c2107c.f7647b, i4 == 0 ? 2131820829 : 2131820971);
                }
            };
            c2531a.m3468g(2131820654);
            f7645k = c2531a.m3465j();
        }
    }

    /* renamed from: j */
    public void m3922j(int i, CallItem callItem) {
        this.f7651f = callItem;
        m3921k(i, false, callItem.m3955d(), callItem.m3954e());
    }

    /* renamed from: k */
    public final void m3921k(int i, boolean z, String str, String str2) {
        Resources resources;
        int i2;
        if (i == 2 || i == 1 || i == 5) {
            this.f7649d = i;
            this.f7650e = z;
            boolean m3081H = C2780h.m3081H(this.f7646a);
            String string = z ? this.f7646a.getResources().getString(2131820713) : i == 2 ? this.f7646a.getResources().getString(2131820712) : i == 1 ? this.f7646a.getResources().getString(2131820715) : this.f7646a.getResources().getString(2131820714);
            View$OnClickListenerC2530g.C2531a c2531a = new View$OnClickListenerC2530g.C2531a(this.f7646a);
            c2531a.f8851b = string;
            c2531a.m3463l(2131099739);
            c2531a.m3470e(2131230972);
            if (m3081H) {
                resources = this.f7646a.getResources();
                i2 = 2131099793;
            } else {
                resources = this.f7646a.getResources();
                i2 = 2131099742;
            }
            c2531a.f8845J = resources.getColor(i2);
            c2531a.m3472c(2131099739);
            c2531a.f8874y = true;
            c2531a.f8875z = true;
            c2531a.m3471d(2131492938, true);
            c2531a.m3466i(2131820943);
            c2531a.f8870u = new C5056q(this, 10);
            View$OnClickListenerC2530g m3465j = c2531a.m3468g(2131820654).m3465j();
            f7645k = m3465j;
            View view = m3465j.f8822c.f8864o;
            MaterialEditText materialEditText = (MaterialEditText) view.findViewById(2131296744);
            String string2 = z ? this.f7646a.getResources().getString(2131820733) : this.f7646a.getResources().getString(2131820731);
            materialEditText.setHint(string2);
            materialEditText.setFloatingLabelText(string2);
            int i3 = 0;
            materialEditText.setEnabled(false);
            materialEditText.setFocusable(false);
            MaterialAutoCompleteTextView materialAutoCompleteTextView = (MaterialAutoCompleteTextView) view.findViewById(2131296841);
            String string3 = this.f7646a.getResources().getString(2131820728);
            materialAutoCompleteTextView.setHint(string3);
            materialAutoCompleteTextView.setFloatingLabelText(string3);
            materialAutoCompleteTextView.setFocusable(false);
            materialAutoCompleteTextView.setEnabled(false);
            if (str == null) {
                materialAutoCompleteTextView.setVisibility(8);
            } else {
                if (str.isEmpty()) {
                    i3 = 8;
                }
                materialAutoCompleteTextView.setVisibility(i3);
            }
            FrameLayout frameLayout = (FrameLayout) view.findViewById(2131296802);
            this.f7648c = frameLayout;
            frameLayout.setVisibility(8);
            materialAutoCompleteTextView.setText(str);
            materialEditText.setText(str2);
            ((ImageView) view.findViewById(2131296745)).setVisibility(8);
        }
    }

    /* renamed from: l */
    public void m3920l(BWLItem bWLItem) {
        int i = bWLItem.f7336b != null ? 2 : 1;
        boolean m3958e = bWLItem.m3958e();
        C3026c c3026c = bWLItem.f7336b;
        m3921k(i, m3958e, c3026c != null ? c3026c.f10151d : bWLItem.f7337c.f10376d, bWLItem.m3959d());
    }

    /* renamed from: m */
    public void m3919m(BWLItem bWLItem) {
        Resources resources;
        int i;
        this.f7649d = bWLItem.f7336b != null ? 2 : 1;
        this.f7650e = bWLItem.m3958e();
        boolean m3081H = C2780h.m3081H(this.f7646a);
        String string = this.f7650e ? this.f7646a.getResources().getString(2131820717) : this.f7646a.getResources().getString(2131820718);
        View$OnClickListenerC2530g.C2531a c2531a = new View$OnClickListenerC2530g.C2531a(this.f7646a);
        c2531a.f8851b = string;
        c2531a.m3463l(2131099739);
        if (m3081H) {
            resources = this.f7646a.getResources();
            i = 2131099793;
        } else {
            resources = this.f7646a.getResources();
            i = 2131099742;
        }
        c2531a.f8845J = resources.getColor(i);
        c2531a.m3470e(17301566);
        c2531a.m3472c(2131099739);
        c2531a.f8874y = true;
        c2531a.f8875z = true;
        c2531a.m3471d(2131492938, true);
        c2531a.m3466i(2131820943);
        c2531a.f8870u = new C3674h(this, bWLItem);
        c2531a.m3468g(2131820654);
        View$OnClickListenerC2530g m3465j = c2531a.m3465j();
        f7645k = m3465j;
        View view = m3465j.f8822c.f8864o;
        final MaterialEditText materialEditText = (MaterialEditText) view.findViewById(2131296744);
        materialEditText.addTextChangedListener(new C2111d(materialEditText, bWLItem.m3960c()));
        String string2 = this.f7650e ? this.f7646a.getResources().getString(2131820733) : this.f7646a.getResources().getString(2131820731);
        materialEditText.setHint(string2);
        materialEditText.setFloatingLabelText(string2);
        MaterialAutoCompleteTextView materialAutoCompleteTextView = (MaterialAutoCompleteTextView) view.findViewById(2131296841);
        String string3 = this.f7646a.getResources().getString(2131820728);
        materialAutoCompleteTextView.setHint(string3);
        materialAutoCompleteTextView.setFloatingLabelText(string3);
        Context context = this.f7646a;
        int m3960c = bWLItem.m3960c();
        ArrayList arrayList = new ArrayList();
        for (C3026c c3026c : new C4791r(new C4776g(new C4788o(new AbstractC4932a[0]), C3026c.class), C3027d.f10155f.m234g(Integer.valueOf(m3960c))).mo456l()) {
            if (C3043q.m2721a(c3026c.f10151d, arrayList)) {
                arrayList.add(c3026c.f10151d);
            }
        }
        for (C3050w c3050w : new C4791r(new C4776g(new C4788o(new AbstractC4932a[0]), C3050w.class), C3051x.f10379f.m234g(Integer.valueOf(m3960c))).mo456l()) {
            if (C3043q.m2721a(c3050w.f10376d, arrayList)) {
                arrayList.add(c3050w.f10376d);
            }
        }
        materialAutoCompleteTextView.setAdapter(new ArrayAdapter(context, 17367043, arrayList));
        FrameLayout frameLayout = (FrameLayout) view.findViewById(2131296802);
        this.f7648c = frameLayout;
        frameLayout.setVisibility((this.f7650e || this.f7649d == 1) ? 8 : 0);
        f7645k.m3481c(EnumC2524b.POSITIVE).setEnabled(false);
        C3026c c3026c2 = bWLItem.f7336b;
        materialAutoCompleteTextView.setText(c3026c2 != null ? c3026c2.f10151d : bWLItem.f7337c.f10376d);
        materialEditText.setText(bWLItem.m3959d());
        final ImageView imageView = (ImageView) view.findViewById(2131296745);
        int i2 = 8;
        if (!this.f7650e) {
            i2 = 8;
            if (this.f7649d == 2) {
                i2 = 0;
            }
        }
        imageView.setVisibility(i2);
        imageView.setOnClickListener(new View.OnClickListener() { // from class: o8.y
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                C2107c c2107c = C2107c.this;
                ImageView imageView2 = imageView;
                MaterialEditText materialEditText2 = materialEditText;
                c2107c.f7650e = true;
                c2107c.f7648c.setVisibility(8);
                imageView2.setVisibility(8);
                C2107c.f7645k.setTitle(2131820717);
                String string4 = c2107c.f7646a.getResources().getString(2131820733);
                materialEditText2.setHint(string4);
                materialEditText2.setFloatingLabelText(string4);
                Editable text = materialEditText2.getText();
                Objects.requireNonNull(text);
                if (text.length() > 8) {
                    materialEditText2.setText(materialEditText2.getText().toString().substring(0, 8));
                }
            }
        });
        SwitchCompat switchCompat = (SwitchCompat) view.findViewById(2131297029);
        Spinner spinner = (Spinner) view.findViewById(2131296453);
        C3026c c3026c3 = bWLItem.f7336b;
        int i3 = 0;
        if (c3026c3 != null) {
            i3 = c3026c3.f10153f;
        }
        spinner.setSelection(i3);
        spinner.setEnabled(true);
        spinner.setOnItemSelectedListener(new C2108a(switchCompat));
        switchCompat.setOnClickListener(new View$OnClickListenerC3671e(this, switchCompat, 1));
    }

    /* renamed from: n */
    public final void m3918n(C3670d c3670d, boolean z) {
        String obj = ((EditText) f7645k.findViewById(2131296841)).getText().toString();
        String obj2 = ((EditText) f7645k.findViewById(2131297108)).getText().toString();
        int selectedItemPosition = ((Spinner) f7645k.findViewById(2131296927)).getSelectedItemPosition();
        int selectedItemPosition2 = ((Spinner) f7645k.findViewById(2131296453)).getSelectedItemPosition();
        c3670d.f12009d = obj;
        c3670d.f12010e = obj2;
        c3670d.f12012g = selectedItemPosition2;
        c3670d.f12011f = selectedItemPosition - 1;
        c3670d.f12017l = new Date();
        c3670d.f12013h = 0;
        c3670d.f12014i = 0;
        c3670d.m1903g(z);
    }

    /* renamed from: o */
    public final void m3917o(SwitchCompat switchCompat) {
        switchCompat.setTextColor(C2134a.m3845b(this.f7646a, 2131100228));
        if (!switchCompat.isEnabled()) {
            switchCompat.getTrackDrawable().setColorFilter(C2134a.m3845b(this.f7646a, 2131099802), PorterDuff.Mode.SRC_IN);
            switchCompat.setTextColor(C2134a.m3845b(this.f7646a, 2131099803));
        } else if (switchCompat.isChecked()) {
        } else {
            switchCompat.getTrackDrawable().setColorFilter(C2134a.m3845b(this.f7646a, 2131099803), PorterDuff.Mode.SRC_IN);
        }
    }

    @AbstractC0762k(threadMode = ThreadMode.MAIN)
    public void onMessageEventDialog(C3390f c3390f) {
        TextView textView = (TextView) f7645k.findViewById(2131297184);
        ProgressBar progressBar = (ProgressBar) f7645k.findViewById(2131296957);
        ListView listView = (ListView) f7645k.findViewById(2131296733);
        int i = c3390f.f11437a;
        if (i == 1) {
            listView.setVisibility(0);
            progressBar.setVisibility(8);
            textView.setVisibility(8);
            if (f7645k.findViewById(2131296617) != null) {
                f7645k.findViewById(2131296617).setVisibility(0);
            }
            if (f7645k.findViewById(2131296492) == null) {
                return;
            }
            f7645k.findViewById(2131296492).setVisibility(0);
        } else if (i == 2) {
            listView.setVisibility(8);
            progressBar.setVisibility(8);
            textView.setVisibility(0);
            textView.setText(this.f7646a.getResources().getString(2131820752));
            if (f7645k.findViewById(2131296492) == null) {
                return;
            }
            f7645k.findViewById(2131296492).setVisibility(0);
        } else if (i != 3) {
        } else {
            listView.setVisibility(8);
            progressBar.setVisibility(8);
            textView.setVisibility(0);
            textView.setText(this.f7646a.getResources().getString(2131820923));
            if (f7645k.findViewById(2131296492) == null) {
                return;
            }
            f7645k.findViewById(2131296492).setVisibility(8);
        }
    }
}
