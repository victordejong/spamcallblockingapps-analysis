package com.android.contacts.editor;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.android.contacts.b;
import com.android.contacts.editor.d;
import com.android.contacts.model.RawContactDelta;
import com.android.contacts.model.a.b;
import com.android.contacts.model.f;
import com.android.contacts.util.CoverUtils;
import com.android.contacts.util.PhoneCapabilityTester;
import com.android.contacts.util.SchedulingUtils;
import com.android.contacts.vcard.SelectAccountActivity;
import com.asus.updatesdk.BuildConfig;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/android/contacts/editor/KindSectionView.class */
public class KindSectionView extends LinearLayout implements d.a {

    /* renamed from: a  reason: collision with root package name */
    ViewGroup f1147a;

    /* renamed from: b  reason: collision with root package name */
    String f1148b;
    b c;
    private TextView d;
    private Button e;
    private RawContactDelta f;
    private boolean g;
    private ViewIdGenerator h;
    private LayoutInflater i;
    private final ArrayList<Runnable> j;
    private boolean k;
    private boolean l;
    private a m;

    /* loaded from: classes-dex2jar.jar:com/android/contacts/editor/KindSectionView$a.class */
    public interface a {
        void d();
    }

    public KindSectionView(Context context) {
        this(context, null);
    }

    public KindSectionView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.j = new ArrayList<>(1);
        this.k = false;
        this.l = false;
    }

    private View a(RawContactDelta.ValuesDelta valuesDelta) {
        try {
            View inflate = this.i.inflate(this.c.q, this.f1147a, false);
            inflate.setEnabled(isEnabled());
            if (inflate instanceof d) {
                d dVar = (d) inflate;
                dVar.setDeletable(true);
                dVar.setValues(this.c, valuesDelta, this.f, this.g, this.h);
                dVar.setEditorListener(this);
            }
            if (this.k && this.f1148b.equals(getContext().getResources().getString(2131755601)) && (inflate instanceof TextFieldsEditorView)) {
                ((TextFieldsEditorView) inflate).setValues2(this.c, valuesDelta);
            }
            if (PhoneCapabilityTester.isATTSku() && this.k && this.f1148b.equals(getContext().getResources().getString(2131755945)) && (inflate instanceof TextFieldsEditorView)) {
                TextFieldsEditorView textFieldsEditorView = (TextFieldsEditorView) inflate;
                if ("Mobile".equals(valuesDelta.a(CoverUtils.CoverData.USER_SET))) {
                    textFieldsEditorView.setDeleteButtonVisible(false);
                    textFieldsEditorView.setEnabled(false);
                }
            }
            this.f1147a.addView(inflate);
            return inflate;
        } catch (Exception e) {
            throw new RuntimeException("Cannot allocate editor with layout resource ID " + this.c.q + " for MIME type " + this.c.f1997b + " with error " + e.toString());
        }
    }

    static /* synthetic */ void a(KindSectionView kindSectionView, Runnable runnable) {
        if (kindSectionView.hasWindowFocus()) {
            runnable.run();
        } else {
            kindSectionView.j.add(runnable);
        }
    }

    private void a(final Runnable runnable) {
        post(new Runnable() { // from class: com.android.contacts.editor.KindSectionView.2
            @Override // java.lang.Runnable
            public final void run() {
                KindSectionView.a(KindSectionView.this, runnable);
            }
        });
    }

    private void a(boolean z) {
        boolean equals = PhoneCapabilityTester.IsAsusDevice() ? b.a.c.equals(this.f.f1987a.a(SelectAccountActivity.ACCOUNT_NAME)) : b.a.d.equals(this.f.f1987a.a(SelectAccountActivity.ACCOUNT_TYPE));
        if (!equals || !"vnd.android.cursor.item/phone_v2".equals(this.c.f1997b) || this.f1147a.getChildCount() != 1) {
            if (equals && "vnd.android.cursor.item/phone_v2".equals(this.c.f1997b) && this.f1147a.getChildCount() == 2) {
                ((TextFieldsEditorView) this.f1147a.getChildAt(1)).setSimCardStyle(4);
            }
        } else if (this.l) {
            this.e.setVisibility(8);
            return;
        }
        if (!this.g && this.c.m != 1) {
            List<View> d = d();
            if (d.size() > 1) {
                for (View view : d) {
                    if (view.findFocus() == null) {
                        this.f1147a.removeView(view);
                    }
                }
            }
            if (!(d().size() > 0) && f.a(this.f, this.c)) {
                if (z) {
                    final e a2 = e.a();
                    final Button button = this.e;
                    a2.f1214a.a();
                    if (button.getVisibility() != 0) {
                        button.setVisibility(0);
                        button.setAlpha(0.0f);
                        SchedulingUtils.doAfterLayout(button, new Runnable() { // from class: com.android.contacts.editor.e.3
                            @Override // java.lang.Runnable
                            public final void run() {
                                int height = button.getHeight();
                                ArrayList arrayList = new ArrayList();
                                e.a(arrayList, e.a(button), -height, 0.0f, 0);
                                ObjectAnimator ofFloat = ObjectAnimator.ofFloat(button, View.ALPHA, 0.0f, 1.0f);
                                ofFloat.setDuration(200L);
                                ofFloat.setStartDelay(200L);
                                arrayList.add(ofFloat);
                                a2.f1214a.a(arrayList, null);
                            }
                        });
                        return;
                    }
                    return;
                }
                this.e.setVisibility(0);
                return;
            }
        }
        if (z) {
            final e a3 = e.a();
            final Button button2 = this.e;
            a3.f1214a.a();
            if (button2.getVisibility() != 8) {
                int height = button2.getHeight();
                final List<View> a4 = e.a(button2);
                ArrayList arrayList = new ArrayList();
                ObjectAnimator ofFloat = ObjectAnimator.ofFloat(button2, View.ALPHA, 1.0f, 0.0f);
                ofFloat.setDuration(200L);
                arrayList.add(ofFloat);
                e.a(arrayList, a4, 0.0f, -height, 100);
                a3.f1214a.a(arrayList, new AnimatorListenerAdapter() { // from class: com.android.contacts.editor.e.4
                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public final void onAnimationEnd(Animator animator) {
                        for (int i = 0; i < a4.size(); i++) {
                            ((View) a4.get(i)).setTranslationY(0.0f);
                        }
                        button2.setAlpha(1.0f);
                        button2.setVisibility(8);
                    }
                });
                return;
            }
            return;
        }
        this.e.setVisibility(8);
    }

    private void c() {
        setVisibility(this.f1147a.getChildCount() != 0 ? 0 : 8);
    }

    private List<View> d() {
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < this.f1147a.getChildCount(); i++) {
            View childAt = this.f1147a.getChildAt(i);
            if (((d) childAt).a()) {
                arrayList.add(childAt);
            }
        }
        return arrayList;
    }

    @Override // com.android.contacts.editor.d.a
    public final void a(int i) {
        if (i == 3 || i == 4) {
            a(true);
        }
        if (this.m != null) {
            this.m.d();
        }
    }

    @Override // com.android.contacts.editor.d.a
    public final void a(d dVar) {
        if (this.f1147a.getChildCount() == 1) {
            dVar.c();
        } else {
            dVar.b();
        }
        a(true);
    }

    public final boolean a() {
        boolean z = false;
        int i = 0;
        while (true) {
            if (i >= this.f1147a.getChildCount()) {
                z = true;
                break;
            } else if (!((d) this.f1147a.getChildAt(i)).a()) {
                break;
            } else {
                i++;
            }
        }
        return z;
    }

    public final void b() {
        RawContactDelta.ValuesDelta valuesDelta = null;
        if (this.c.m == 1) {
            if (this.f1147a.getChildCount() != 1) {
                ArrayList<RawContactDelta.ValuesDelta> a2 = this.f.a(this.c.f1997b, false);
                valuesDelta = null;
                if (a2 != null) {
                    valuesDelta = null;
                    if (a2.size() > 0) {
                        valuesDelta = a2.get(0);
                    }
                }
            } else {
                return;
            }
        }
        RawContactDelta.ValuesDelta valuesDelta2 = valuesDelta;
        if (valuesDelta == null) {
            valuesDelta2 = f.b(this.f, this.c);
        }
        final View a3 = a(valuesDelta2);
        if (PhoneCapabilityTester.IsAsusDevice() ? b.a.c.equals(this.f.f1987a.a(SelectAccountActivity.ACCOUNT_NAME)) : b.a.d.equals(this.f.f1987a.a(SelectAccountActivity.ACCOUNT_TYPE))) {
            if (valuesDelta2.a("mimetype").equals("vnd.android.cursor.item/phone_v2")) {
                ((TextFieldsEditorView) a3).setSimCardStyle(4);
            } else if (valuesDelta2.a("mimetype").equals("vnd.android.cursor.item/nickname")) {
                ((TextFieldsEditorView) a3).setSimCardStyle(5);
            } else if (valuesDelta2.a("mimetype").equals("vnd.android.cursor.item/email_v2")) {
                ((TextFieldsEditorView) a3).setSimCardStyle(3);
            }
        }
        if (a3 instanceof d) {
            a(new Runnable() { // from class: com.android.contacts.editor.KindSectionView.3
                @Override // java.lang.Runnable
                public final void run() {
                    a3.requestFocus();
                    ((d) a3).d();
                }
            });
        }
        this.e.setVisibility(8);
        c();
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        setDrawingCacheEnabled(true);
        setAlwaysDrawnWithCacheEnabled(true);
        this.i = (LayoutInflater) getContext().getSystemService("layout_inflater");
        this.d = (TextView) findViewById(2131296980);
        this.f1147a = (ViewGroup) findViewById(2131296979);
        this.e = (Button) findViewById(2131296300);
        this.e.setOnClickListener(new View.OnClickListener() { // from class: com.android.contacts.editor.KindSectionView.1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                KindSectionView.this.e.setVisibility(8);
                KindSectionView.this.b();
            }
        });
    }

    @Override // android.view.View
    public void onWindowFocusChanged(boolean z) {
        super.onWindowFocusChanged(z);
        if (z) {
            Iterator<Runnable> it = this.j.iterator();
            while (it.hasNext()) {
                it.next().run();
            }
            this.j.clear();
        }
    }

    @Override // android.view.View
    public void setEnabled(boolean z) {
        super.setEnabled(z);
        if (this.f1147a != null) {
            int childCount = this.f1147a.getChildCount();
            for (int i = 0; i < childCount; i++) {
                this.f1147a.getChildAt(i).setEnabled(z);
            }
        }
        if (!z || this.g) {
            this.e.setVisibility(8);
        } else {
            this.e.setVisibility(0);
        }
    }

    public void setFocusOnPhonetic(final TextFieldsEditorView textFieldsEditorView) {
        if (textFieldsEditorView instanceof d) {
            a(new Runnable() { // from class: com.android.contacts.editor.KindSectionView.4
                @Override // java.lang.Runnable
                public final void run() {
                    textFieldsEditorView.requestFocus();
                    textFieldsEditorView.d();
                }
            });
        }
    }

    public void setListener(a aVar) {
        this.m = aVar;
    }

    public void setSimAdditionNumberFull(boolean z) {
        this.l = z;
    }

    public void setSimCardStyle(int i) {
        if (this.f1147a.getChildCount() > 0) {
            d dVar = (d) this.f1147a.getChildAt(0);
            switch (i) {
                case 2:
                    dVar.setDeletable(false);
                    break;
                case 3:
                    dVar.setDeletable(true);
                    break;
                case 4:
                    dVar.setDeletable(true);
                    break;
                case 5:
                    dVar.setDeletable(true);
                    break;
                default:
                    Log.d("KindSectionView", "setSimCardStyle(" + i + ")");
                    break;
            }
            if (dVar instanceof TextFieldsEditorView) {
                ((TextFieldsEditorView) dVar).setSimCardStyle(i);
            }
        }
    }

    public void setState(com.android.contacts.model.a.b bVar, RawContactDelta rawContactDelta, boolean z, ViewIdGenerator viewIdGenerator) {
        boolean z2;
        this.c = bVar;
        this.f = rawContactDelta;
        this.g = z;
        this.h = viewIdGenerator;
        setId(this.h.a(rawContactDelta, bVar, null, -1));
        this.f1148b = (bVar.c == -1 || bVar.c == 0) ? BuildConfig.FLAVOR : getResources().getString(bVar.c);
        this.d.setText(this.f1148b);
        this.f1147a.removeAllViews();
        if (this.f.b(this.c.f1997b)) {
            Iterator<RawContactDelta.ValuesDelta> it = this.f.a(this.c.f1997b, false).iterator();
            while (it.hasNext()) {
                RawContactDelta.ValuesDelta next = it.next();
                if (next.b()) {
                    if (next.m()) {
                        int size = this.c.o.size();
                        int i = 0;
                        while (true) {
                            if (i >= size) {
                                z2 = true;
                                break;
                            } else if (!TextUtils.isEmpty(next.a(this.c.o.get(i).f2004a))) {
                                z2 = false;
                                break;
                            } else {
                                i++;
                            }
                        }
                    } else {
                        z2 = false;
                    }
                    if (!z2) {
                        a(next);
                    }
                }
            }
        }
        a(false);
        c();
    }

    public void setState2(com.android.contacts.model.a.b bVar, RawContactDelta rawContactDelta, boolean z, ViewIdGenerator viewIdGenerator) {
        this.k = true;
        setState(bVar, rawContactDelta, z, viewIdGenerator);
        this.k = false;
    }

    public void setTitleVisible(boolean z) {
        findViewById(2131296981).setVisibility(z ? 0 : 8);
    }
}
