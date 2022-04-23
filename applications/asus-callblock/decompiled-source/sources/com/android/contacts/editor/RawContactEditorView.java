package com.android.contacts.editor;

import android.animation.ObjectAnimator;
import android.content.Context;
import android.database.Cursor;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.PopupMenu;
import android.widget.TextView;
import com.android.contacts.activities.NecessaryPermissionDenyActivity;
import com.android.contacts.b;
import com.android.contacts.editor.KindSectionView;
import com.android.contacts.model.RawContactDelta;
import com.android.contacts.model.a.b;
import com.android.contacts.model.account.a;
import com.android.contacts.model.f;
import com.android.contacts.simcardmanage.SimCardContact;
import com.android.contacts.simcardmanage.e;
import com.android.contacts.util.PhoneCapabilityTester;
import com.android.contacts.util.SchedulingUtils;
import com.android.contacts.vcard.SelectAccountActivity;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/android/contacts/editor/RawContactEditorView.class */
public class RawContactEditorView extends BaseRawContactEditorView {

    /* renamed from: b  reason: collision with root package name */
    StructuredNameEditorView f1173b;
    PhoneticNameEditorView c;
    private LayoutInflater e;
    private GroupMembershipView f;
    private ViewGroup g;
    private ImageView h;
    private TextView i;
    private TextView j;
    private Button k;
    private Cursor m;
    private b n;
    private RawContactDelta o;
    private boolean p;
    private PopupMenu r;
    long d = -1;
    private boolean l = true;
    private int q = 0;

    public RawContactEditorView(Context context) {
        super(context);
    }

    public RawContactEditorView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    private String a(int i) {
        return com.android.contacts.simcardmanage.b.f(getContext(), i);
    }

    static /* synthetic */ void a(RawContactEditorView rawContactEditorView) {
        final ArrayList<KindSectionView> d = rawContactEditorView.d();
        rawContactEditorView.r = new PopupMenu(rawContactEditorView.getContext(), rawContactEditorView.k);
        Menu menu = rawContactEditorView.r.getMenu();
        for (int i = 0; i < d.size(); i++) {
            menu.add(0, i, 0, d.get(i).f1148b);
        }
        rawContactEditorView.r.setOnMenuItemClickListener(new PopupMenu.OnMenuItemClickListener() { // from class: com.android.contacts.editor.RawContactEditorView.3
            @Override // android.widget.PopupMenu.OnMenuItemClickListener
            public final boolean onMenuItemClick(MenuItem menuItem) {
                boolean z;
                KindSectionView kindSectionView = (KindSectionView) d.get(menuItem.getItemId());
                if ("#phoneticName".equals(kindSectionView.c.f1997b)) {
                    RawContactEditorView.this.p = true;
                    RawContactEditorView.this.c();
                    kindSectionView.setFocusOnPhonetic(RawContactEditorView.this.c);
                } else {
                    kindSectionView.b();
                    String str = kindSectionView.c.f1997b;
                    if (NecessaryPermissionDenyActivity.startPermissionActivity(RawContactEditorView.this.getContext())) {
                        z = false;
                        return z;
                    } else if (RawContactEditorView.this.q > 0) {
                        if ("vnd.android.cursor.item/email_v2".equals(str)) {
                            int b2 = e.a(RawContactEditorView.this.getContext()).b(RawContactEditorView.this.q, 3);
                            int a2 = e.a(RawContactEditorView.this.getContext()).a(RawContactEditorView.this.q, 2);
                            kindSectionView.a();
                            if (b2 + 1 > a2 && kindSectionView.a()) {
                                kindSectionView.setEnabled(false);
                                kindSectionView.setClickable(false);
                                kindSectionView.setFocusable(false);
                                Log.d("RawContactEditorView", "onMenuItemClick_memoryIsFull");
                            }
                        } else if ("vnd.android.cursor.item/nickname".equals(str) && e.a(RawContactEditorView.this.getContext()).b(RawContactEditorView.this.q, 4) + 1 > e.a(RawContactEditorView.this.getContext()).a(RawContactEditorView.this.q, 4) && kindSectionView.a()) {
                            kindSectionView.setEnabled(false);
                            kindSectionView.setClickable(false);
                            kindSectionView.setFocusable(false);
                        }
                    }
                }
                if (d.size() == 1) {
                    RawContactEditorView.this.k.setVisibility(8);
                }
                z = true;
                return z;
            }
        });
        rawContactEditorView.r.show();
    }

    private void b() {
        ArrayList<RawContactDelta.ValuesDelta> a2;
        if (this.l && this.m != null && !this.m.isClosed() && this.o != null && (a2 = this.o.a("vnd.android.cursor.item/group_membership", false)) != null) {
            Iterator<RawContactDelta.ValuesDelta> it = a2.iterator();
            while (it.hasNext()) {
                Long q = it.next().q();
                if (q != null && q.longValue() != 0) {
                    return;
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c() {
        boolean z;
        if (!getContext().getResources().getBoolean(2130968586)) {
            RawContactDelta.ValuesDelta valuesDelta = this.c.f1157b;
            if (valuesDelta != null) {
                z = !TextUtils.isEmpty(valuesDelta.a("data9")) || !TextUtils.isEmpty(valuesDelta.a("data8")) || !TextUtils.isEmpty(valuesDelta.a("data7"));
            } else {
                z = false;
            }
            if (!z && !this.p) {
                this.c.setVisibility(8);
                return;
            }
        }
        this.c.setVisibility(0);
    }

    private ArrayList<KindSectionView> d() {
        ArrayList<KindSectionView> arrayList = new ArrayList<>(this.g.getChildCount());
        for (int i = 0; i < this.g.getChildCount(); i++) {
            View childAt = this.g.getChildAt(i);
            if (childAt instanceof KindSectionView) {
                KindSectionView kindSectionView = (KindSectionView) childAt;
                if (kindSectionView.f1147a.getChildCount() <= 0) {
                    b bVar = kindSectionView.c;
                    if ((bVar.m != 1 || kindSectionView.f1147a.getChildCount() == 0) && !"#displayName".equals(bVar.f1997b) && (!"#phoneticName".equals(bVar.f1997b) || this.c.getVisibility() != 0)) {
                        arrayList.add(kindSectionView);
                    }
                }
            }
        }
        return arrayList;
    }

    @Override // com.android.contacts.editor.BaseRawContactEditorView
    public final long a() {
        return this.d;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        if (this.r != null) {
            this.r.dismiss();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.android.contacts.editor.BaseRawContactEditorView, android.view.View
    public void onFinishInflate() {
        super.onFinishInflate();
        this.e = (LayoutInflater) getContext().getSystemService("layout_inflater");
        this.f1173b = (StructuredNameEditorView) findViewById(2131296773);
        this.f1173b.setDeletable(false);
        this.c = (PhoneticNameEditorView) findViewById(2131296777);
        this.c.setDeletable(false);
        this.g = (ViewGroup) findViewById(2131297265);
        this.h = (ImageView) findViewById(2131296268);
        this.i = (TextView) findViewById(2131296274);
        this.j = (TextView) findViewById(2131296273);
        this.k = (Button) findViewById(2131296415);
        this.k.setOnClickListener(new View.OnClickListener() { // from class: com.android.contacts.editor.RawContactEditorView.1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                RawContactEditorView.a(RawContactEditorView.this);
            }
        });
    }

    public void setAutoAddToDefaultGroup(boolean z) {
        this.l = z;
    }

    @Override // android.view.View
    public void setEnabled(boolean z) {
        super.setEnabled(z);
        PhotoEditorView photoEditorView = this.f1104a;
        if (photoEditorView != null) {
            photoEditorView.setEnabled(z);
        }
        if (this.f1173b != null) {
            this.f1173b.setEnabled(z);
        }
        if (this.c != null) {
            this.c.setEnabled(z);
        }
        if (this.g != null) {
            int childCount = this.g.getChildCount();
            for (int i = 0; i < childCount; i++) {
                this.g.getChildAt(i).setEnabled(z);
            }
        }
        if (this.f != null) {
            this.f.setEnabled(z);
        }
        this.k.setEnabled(z);
    }

    @Override // com.android.contacts.editor.BaseRawContactEditorView
    public void setGroupMetaData(Cursor cursor) {
        this.m = cursor;
        b();
        if (this.f != null) {
            this.f.setGroupMetaData(cursor);
        }
    }

    @Override // com.android.contacts.editor.BaseRawContactEditorView
    public void setHasPhoneNumber(boolean z) {
        if (this.f != null) {
            this.f.setHasPhoneNumber(z);
        }
    }

    @Override // com.android.contacts.editor.BaseRawContactEditorView
    public void setSimCardState(RawContactDelta rawContactDelta, a aVar, ViewIdGenerator viewIdGenerator, boolean z, int i, List<SimCardContact> list, KindSectionView.a aVar2) {
        this.f1104a.setVisibility(0);
        this.f1104a.setEnabled(false);
        this.c.setVisibility(8);
        this.g.removeAllViews();
        rawContactDelta.b();
        rawContactDelta.c();
        if (!(rawContactDelta == null || aVar == null)) {
            setId(viewIdGenerator.a(rawContactDelta, null, null, -1));
            f.a(rawContactDelta, aVar, "vnd.android.cursor.item/name");
            f.a(rawContactDelta, aVar, "vnd.android.cursor.item/phone_v2");
            RawContactDelta.ValuesDelta valuesDelta = rawContactDelta.f1987a;
            String a2 = valuesDelta.a(SelectAccountActivity.ACCOUNT_NAME);
            CharSequence a3 = aVar.a(getContext());
            CharSequence charSequence = a3;
            if (TextUtils.isEmpty(a3)) {
                charSequence = getContext().getString(2131755023);
            }
            boolean IsAsusDevice = PhoneCapabilityTester.IsAsusDevice();
            if (IsAsusDevice) {
                if (!TextUtils.isEmpty(a2)) {
                    if (a2.equals(b.a.c)) {
                        String str = null;
                        if (com.android.contacts.simcardmanage.b.a(getContext())) {
                            String str2 = aVar.o().f2008a;
                            if (str2.equals(b.a.d)) {
                                str = a(1);
                            } else {
                                str = null;
                                if (str2.equals("asus.local.simcard2")) {
                                    str = a(2);
                                }
                            }
                        }
                        String str3 = str;
                        if (str == null) {
                            str3 = "SIM card";
                        }
                        this.j.setText(str3);
                    } else {
                        this.j.setText(getContext().getString(2131755661, getContext().getString(2131756143)));
                    }
                }
            } else if (!TextUtils.isEmpty(charSequence)) {
                if (charSequence.equals(b.a.d)) {
                    String str4 = null;
                    if (com.android.contacts.simcardmanage.b.a(getContext())) {
                        String str5 = aVar.o().f2008a;
                        if (a2.equals(b.a.c)) {
                            str4 = a(1);
                        } else {
                            str4 = null;
                            if (a2.equals("SIM2")) {
                                str4 = a(2);
                            }
                        }
                    }
                    String str6 = str4;
                    if (str4 == null) {
                        str6 = "SIM card";
                    }
                    this.j.setText(str6);
                } else {
                    this.j.setText(getContext().getString(2131755661, getContext().getString(2131756143)));
                }
            }
            this.i.setText(getContext().getString(2131755024, charSequence));
            if (IsAsusDevice) {
                this.h.setImageDrawable(aVar.d(getContext()));
            } else {
                this.h.setImageDrawable(aVar.a(getContext(), a2));
            }
            this.d = valuesDelta.d("_id").longValue();
            this.g.setVisibility(0);
            this.g.setEnabled(true);
            this.f1173b.setEnabled(isEnabled());
            this.f1173b.setVisibility(0);
            this.f1173b.setEnabled(true);
            int size = aVar.r().size();
            for (int i2 = 0; i2 < size && aVar.r().size() > i2; i2++) {
                com.android.contacts.model.a.b bVar = aVar.r().get(i2);
                if (bVar.g) {
                    String str7 = bVar.f1997b;
                    if ("vnd.android.cursor.item/name".equals(str7)) {
                        RawContactDelta.ValuesDelta a4 = rawContactDelta.a(str7);
                        this.f1173b.setValues(bVar, a4, rawContactDelta, false, viewIdGenerator);
                        this.f1173b.setSimCardStyle(1);
                        this.f1104a.setValues(bVar, a4, rawContactDelta, false, viewIdGenerator);
                    } else if ("vnd.android.cursor.item/phone_v2".equals(str7)) {
                        if (bVar.o != null) {
                            KindSectionView kindSectionView = (KindSectionView) this.e.inflate(2131427591, this.g, false);
                            e a5 = e.a(getContext());
                            kindSectionView.setSimAdditionNumberFull(a5.a(list, 5) + 1 > a5.a(i, 3));
                            kindSectionView.setState(bVar, rawContactDelta, false, viewIdGenerator);
                            kindSectionView.setListener(aVar2);
                            kindSectionView.setSimCardStyle(2);
                            this.g.addView(kindSectionView, new LinearLayout.LayoutParams(-1, -2));
                        }
                    } else if ("vnd.android.cursor.item/nickname".equals(str7)) {
                        int a6 = e.a(getContext()).a(list, 4);
                        int a7 = e.a(getContext()).a(i, 4);
                        KindSectionView kindSectionView2 = (KindSectionView) this.e.inflate(2131427591, this.g, false);
                        kindSectionView2.setListener(aVar2);
                        if (a6 + 1 > a7 && this.d < 0 && kindSectionView2.a()) {
                            kindSectionView2.setEnabled(false);
                            kindSectionView2.setClickable(false);
                            kindSectionView2.setFocusable(false);
                            kindSectionView2.setState(bVar, rawContactDelta, false, viewIdGenerator);
                            this.g.addView(kindSectionView2);
                        } else if (bVar.o != null) {
                            kindSectionView2.setEnabled(isEnabled());
                            kindSectionView2.setState(bVar, rawContactDelta, false, viewIdGenerator);
                            this.g.addView(kindSectionView2);
                            kindSectionView2.setSimCardStyle(5);
                        }
                    } else if ("vnd.android.cursor.item/email_v2".equals(str7)) {
                        int a8 = e.a(getContext()).a(list, 3);
                        int a9 = e.a(getContext()).a(i, 2);
                        KindSectionView kindSectionView3 = (KindSectionView) this.e.inflate(2131427591, this.g, false);
                        kindSectionView3.setListener(aVar2);
                        if (a8 + 1 > a9 && this.d < 0 && kindSectionView3.a()) {
                            kindSectionView3.setEnabled(false);
                            kindSectionView3.setClickable(false);
                            kindSectionView3.setFocusable(false);
                            kindSectionView3.setState(bVar, rawContactDelta, false, viewIdGenerator);
                            this.g.addView(kindSectionView3);
                        } else if (bVar.o != null) {
                            kindSectionView3.setEnabled(isEnabled());
                            kindSectionView3.setState(bVar, rawContactDelta, false, viewIdGenerator);
                            this.g.addView(kindSectionView3);
                            kindSectionView3.setSimCardStyle(3);
                        }
                    } else if (bVar.o != null) {
                        KindSectionView kindSectionView4 = (KindSectionView) this.e.inflate(2131427591, this.g, false);
                        kindSectionView4.setEnabled(isEnabled());
                        kindSectionView4.setState(bVar, rawContactDelta, false, viewIdGenerator);
                        kindSectionView4.setListener(aVar2);
                        this.g.addView(kindSectionView4);
                    }
                }
            }
            this.k.setVisibility(d().size() > 0 ? 0 : 8);
            this.k.setEnabled(isEnabled());
            this.q = i;
        }
    }

    @Override // com.android.contacts.editor.BaseRawContactEditorView
    public void setState(RawContactDelta rawContactDelta, a aVar, ViewIdGenerator viewIdGenerator, boolean z, KindSectionView.a aVar2) {
        KindSectionView kindSectionView;
        int i = 0;
        this.o = rawContactDelta;
        this.g.removeAllViews();
        if (rawContactDelta != null && aVar != null) {
            setId(viewIdGenerator.a(rawContactDelta, null, null, -1));
            f.a(rawContactDelta, aVar, "vnd.android.cursor.item/name");
            f.a(rawContactDelta, aVar, "vnd.android.cursor.item/organization");
            this.d = rawContactDelta.a().longValue();
            if (z) {
                String b2 = rawContactDelta.b();
                if (TextUtils.isEmpty(b2)) {
                    this.j.setVisibility(8);
                    this.i.setText(2131755764);
                } else {
                    this.i.setText(getContext().getString(2131755633, aVar.a(getContext())));
                    if (aVar.g) {
                        this.j.setVisibility(8);
                    } else {
                        this.j.setText(b2);
                        this.j.setVisibility(0);
                    }
                }
            } else {
                String b3 = rawContactDelta.b();
                CharSequence a2 = aVar.a(getContext());
                CharSequence charSequence = a2;
                if (TextUtils.isEmpty(a2)) {
                    charSequence = getContext().getString(2131755023);
                }
                if (TextUtils.isEmpty(b3) || aVar.g) {
                    this.j.setVisibility(8);
                } else {
                    this.j.setVisibility(0);
                    this.j.setText(getContext().getString(2131755661, b3));
                }
                this.i.setText(getContext().getString(2131755024, charSequence));
            }
            this.h.setImageDrawable(aVar.d(getContext()));
            f.a(rawContactDelta, aVar, "vnd.android.cursor.item/photo");
            a(aVar.a("vnd.android.cursor.item/photo") != null);
            this.f1104a.setEnabled(isEnabled());
            this.f1173b.setEnabled(isEnabled());
            this.c.setEnabled(isEnabled());
            this.g.setVisibility(0);
            this.f1173b.setVisibility(0);
            this.c.setVisibility(0);
            this.n = aVar.a("vnd.android.cursor.item/group_membership");
            if (this.n != null) {
                this.f = (GroupMembershipView) this.e.inflate(2131427590, this.g, false);
                this.f.setKind(this.n);
                this.f.setEnabled(isEnabled());
            }
            Iterator<com.android.contacts.model.a.b> it = aVar.r().iterator();
            while (it.hasNext()) {
                com.android.contacts.model.a.b next = it.next();
                if (next.g) {
                    String str = next.f1997b;
                    if ("vnd.android.cursor.item/name".equals(str)) {
                        RawContactDelta.ValuesDelta a3 = rawContactDelta.a(str);
                        this.f1173b.setValues(aVar.a("#displayName"), a3, rawContactDelta, false, viewIdGenerator);
                        if (!PhoneCapabilityTester.isATTSku() || !"com.att.aab".equals(aVar.f2000a)) {
                            this.c.setValues(aVar.a("#phoneticName"), a3, rawContactDelta, false, viewIdGenerator);
                        }
                    } else if ("vnd.android.cursor.item/photo".equals(str)) {
                        this.f1104a.setValues(next, rawContactDelta.a(str), rawContactDelta, false, viewIdGenerator);
                    } else if ("vnd.android.cursor.item/group_membership".equals(str)) {
                        if (this.f != null) {
                            this.f.setState(rawContactDelta);
                        }
                    } else if ("vnd.android.cursor.item/organization".equals(str)) {
                        KindSectionView kindSectionView2 = (KindSectionView) this.e.inflate(2131427591, this.g, false);
                        kindSectionView2.setTitleVisible(false);
                        kindSectionView2.setEnabled(isEnabled());
                        kindSectionView2.setState(next, rawContactDelta, false, viewIdGenerator);
                        kindSectionView2.setListener(aVar2);
                        kindSectionView = kindSectionView2;
                        if (kindSectionView2.a()) {
                            View inflate = this.e.inflate(2131427611, this.g, false);
                            final View findViewById = inflate.findViewById(2131296301);
                            final ViewGroup viewGroup = (ViewGroup) inflate.findViewById(2131296604);
                            viewGroup.addView(kindSectionView2);
                            findViewById.setOnClickListener(new View.OnClickListener() { // from class: com.android.contacts.editor.RawContactEditorView.2
                                @Override // android.view.View.OnClickListener
                                public final void onClick(View view) {
                                    final e a4 = e.a();
                                    final View view2 = findViewById;
                                    final ViewGroup viewGroup2 = viewGroup;
                                    a4.f1214a.a();
                                    viewGroup2.setVisibility(0);
                                    viewGroup2.setAlpha(0.0f);
                                    viewGroup2.requestFocus();
                                    SchedulingUtils.doAfterLayout(view2, new Runnable() { // from class: com.android.contacts.editor.e.2
                                        @Override // java.lang.Runnable
                                        public final void run() {
                                            int height = viewGroup2.getHeight();
                                            int height2 = view2.getHeight();
                                            ArrayList arrayList = new ArrayList();
                                            ObjectAnimator ofFloat = ObjectAnimator.ofFloat(view2, View.ALPHA, 1.0f, 0.0f);
                                            ofFloat.setDuration(200L);
                                            arrayList.add(ofFloat);
                                            e.a(arrayList, e.a(viewGroup2), -(height - height2), 0.0f, 0);
                                            ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(viewGroup2, View.ALPHA, 0.0f, 1.0f);
                                            ofFloat2.setDuration(200L);
                                            ofFloat2.setStartDelay(200L);
                                            arrayList.add(ofFloat2);
                                            a4.f1214a.a(arrayList, null);
                                        }
                                    });
                                    findViewById.setEnabled(false);
                                }
                            });
                            this.g.addView(inflate);
                        } else {
                            this.g.addView(kindSectionView);
                        }
                    } else if (next.o != null) {
                        kindSectionView = (KindSectionView) this.e.inflate(2131427591, this.g, false);
                        kindSectionView.setEnabled(isEnabled());
                        kindSectionView.setListener(aVar2);
                        if (z) {
                            kindSectionView.setState2(next, rawContactDelta, false, viewIdGenerator);
                        } else {
                            kindSectionView.setState(next, rawContactDelta, false, viewIdGenerator);
                        }
                        this.g.addView(kindSectionView);
                    }
                }
            }
            if (this.f != null && !z) {
                this.g.addView(this.f);
            }
            c();
            b();
            this.q = 0;
            int size = d().size();
            Button button = this.k;
            if (size <= 0) {
                i = 8;
            }
            button.setVisibility(i);
            this.k.setEnabled(isEnabled());
        }
    }
}
