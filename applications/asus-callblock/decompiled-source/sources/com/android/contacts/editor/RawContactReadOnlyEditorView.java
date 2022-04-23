package com.android.contacts.editor;

import android.content.ContentUris;
import android.content.Context;
import android.content.res.Resources;
import android.net.Uri;
import android.provider.ContactsContract;
import android.telephony.PhoneNumberUtils;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;
import com.android.contacts.editor.KindSectionView;
import com.android.contacts.model.RawContactDelta;
import com.android.contacts.model.a.b;
import com.android.contacts.model.account.AccountWithDataSet;
import com.android.contacts.model.f;
import com.android.contacts.q;
import com.android.contacts.simcardmanage.SimCardContact;
import com.android.contacts.util.CoverUtils;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/android/contacts/editor/RawContactReadOnlyEditorView.class */
public class RawContactReadOnlyEditorView extends BaseRawContactEditorView implements View.OnClickListener {

    /* renamed from: b  reason: collision with root package name */
    private LayoutInflater f1179b;
    private TextView c;
    private Button d;
    private ViewGroup e;
    private View f;
    private ImageView g;
    private TextView h;
    private TextView i;
    private String j;
    private String k;
    private String l;
    private long m = -1;
    private a n;

    /* loaded from: classes-dex2jar.jar:com/android/contacts/editor/RawContactReadOnlyEditorView$a.class */
    public interface a {
        void a(AccountWithDataSet accountWithDataSet, Uri uri);
    }

    public RawContactReadOnlyEditorView(Context context) {
        super(context);
    }

    public RawContactReadOnlyEditorView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    private void a(CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, boolean z) {
        View inflate = this.f1179b.inflate(2131427593, this.e, false);
        View findViewById = inflate.findViewById(2131296757);
        if (z) {
            ((TextView) inflate.findViewById(2131296980)).setText(charSequence);
            findViewById.setVisibility(8);
        } else {
            inflate.findViewById(2131296981).setVisibility(8);
            findViewById.setVisibility(0);
        }
        ((TextView) inflate.findViewById(2131296630)).setText(charSequence2);
        TextView textView = (TextView) inflate.findViewById(2131297424);
        if (!TextUtils.isEmpty(charSequence3)) {
            textView.setText(charSequence3);
        } else {
            textView.setVisibility(8);
        }
        this.e.addView(inflate);
    }

    @Override // com.android.contacts.editor.BaseRawContactEditorView
    public final long a() {
        return this.m;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view.getId() == 2131296416 && this.n != null) {
            this.n.a(new AccountWithDataSet(this.j, this.k, this.l), ContentUris.withAppendedId(ContactsContract.RawContacts.CONTENT_URI, this.m));
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.android.contacts.editor.BaseRawContactEditorView, android.view.View
    public void onFinishInflate() {
        super.onFinishInflate();
        this.f1179b = (LayoutInflater) getContext().getSystemService("layout_inflater");
        this.c = (TextView) findViewById(2131297221);
        this.d = (Button) findViewById(2131296416);
        this.d.setOnClickListener(this);
        this.e = (ViewGroup) findViewById(2131297266);
        this.f = findViewById(2131296266);
        this.g = (ImageView) findViewById(2131296268);
        this.h = (TextView) findViewById(2131296274);
        this.i = (TextView) findViewById(2131296273);
    }

    public void setListener(a aVar) {
        this.n = aVar;
    }

    @Override // com.android.contacts.editor.BaseRawContactEditorView
    public void setSimCardState(RawContactDelta rawContactDelta, com.android.contacts.model.account.a aVar, ViewIdGenerator viewIdGenerator, boolean z, int i, List<SimCardContact> list, KindSectionView.a aVar2) {
    }

    @Override // com.android.contacts.editor.BaseRawContactEditorView
    public void setState(RawContactDelta rawContactDelta, com.android.contacts.model.account.a aVar, ViewIdGenerator viewIdGenerator, boolean z, KindSectionView.a aVar2) {
        this.e.removeAllViews();
        if (rawContactDelta != null && aVar != null) {
            f.a(rawContactDelta, aVar, "vnd.android.cursor.item/name");
            this.j = rawContactDelta.b();
            this.k = rawContactDelta.c();
            this.l = rawContactDelta.d();
            if (!z) {
                CharSequence a2 = aVar.a(getContext());
                CharSequence charSequence = a2;
                if (TextUtils.isEmpty(a2)) {
                    charSequence = getContext().getString(2131755023);
                }
                if (!TextUtils.isEmpty(this.j)) {
                    this.i.setVisibility(0);
                    this.i.setText(getContext().getString(2131755661, this.j));
                } else {
                    this.i.setVisibility(8);
                }
                this.h.setText(getContext().getString(2131755024, charSequence));
            } else if (TextUtils.isEmpty(this.j)) {
                this.i.setVisibility(8);
                this.h.setText(2131755764);
            } else {
                this.h.setText(getContext().getString(2131755633, aVar.a(getContext())));
                this.i.setText(this.j);
            }
            this.h.setTextColor(getContext().getResources().getColor(2131034400));
            this.g.setImageDrawable(aVar.d(getContext()));
            this.m = rawContactDelta.a().longValue();
            b a3 = aVar.a("vnd.android.cursor.item/photo");
            if (a3 != null) {
                f.a(rawContactDelta, aVar, "vnd.android.cursor.item/photo");
                a(aVar.a("vnd.android.cursor.item/photo") != null);
                this.f1104a.setValues(a3, rawContactDelta.a("vnd.android.cursor.item/photo"), rawContactDelta, !aVar.d(), viewIdGenerator);
            }
            RawContactDelta.ValuesDelta a4 = rawContactDelta.a("vnd.android.cursor.item/name");
            this.c.setText(a4 != null ? a4.a(CoverUtils.CoverData.COVER_URI) : getContext().getString(2131755855));
            if (aVar.e() != null) {
                this.f.setBackgroundDrawable(null);
                this.f.setEnabled(false);
                this.d.setVisibility(0);
            } else {
                this.f.setOnClickListener(new View.OnClickListener() { // from class: com.android.contacts.editor.RawContactReadOnlyEditorView.1
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        Toast.makeText(RawContactReadOnlyEditorView.this.getContext(), RawContactReadOnlyEditorView.this.getContext().getString(2131755450), 0).show();
                    }
                });
                this.d.setVisibility(8);
            }
            Resources resources = getContext().getResources();
            ArrayList<RawContactDelta.ValuesDelta> a5 = rawContactDelta.a("vnd.android.cursor.item/phone_v2", false);
            if (a5 != null) {
                int i = 0;
                while (i < a5.size()) {
                    RawContactDelta.ValuesDelta valuesDelta = a5.get(i);
                    if (!TextUtils.isEmpty(valuesDelta.a(CoverUtils.CoverData.COVER_URI))) {
                        a(getContext().getText(2131755945), PhoneNumberUtils.formatNumber(valuesDelta.a(CoverUtils.CoverData.COVER_URI), valuesDelta.a("data4"), q.a(getContext())), valuesDelta.s() ? ContactsContract.CommonDataKinds.Phone.getTypeLabel(resources, valuesDelta.t(), valuesDelta.a(CoverUtils.CoverData.USER_SET)) : null, i == 0);
                    } else {
                        a(getContext().getText(2131755945), valuesDelta.a(CoverUtils.CoverData.COVER_URI), valuesDelta.s() ? ContactsContract.CommonDataKinds.Phone.getTypeLabel(resources, valuesDelta.t(), valuesDelta.a(CoverUtils.CoverData.USER_SET)) : null, i == 0);
                    }
                    i++;
                }
            }
            ArrayList<RawContactDelta.ValuesDelta> a6 = rawContactDelta.a("vnd.android.cursor.item/email_v2", false);
            if (a6 != null) {
                int i2 = 0;
                while (i2 < a6.size()) {
                    RawContactDelta.ValuesDelta valuesDelta2 = a6.get(i2);
                    a(getContext().getText(2131755601), valuesDelta2.a(CoverUtils.CoverData.COVER_URI), valuesDelta2.b(CoverUtils.CoverData.COVER_TYPE) ? ContactsContract.CommonDataKinds.Email.getTypeLabel(resources, valuesDelta2.e(CoverUtils.CoverData.COVER_TYPE).intValue(), valuesDelta2.a(CoverUtils.CoverData.USER_SET)) : null, i2 == 0);
                    i2++;
                }
            }
            if (this.e.getChildCount() > 0) {
                this.e.setVisibility(0);
            } else {
                this.e.setVisibility(8);
            }
        }
    }
}
