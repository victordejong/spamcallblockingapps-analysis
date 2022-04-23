package com.android.contacts.list;

import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import com.android.contacts.list.ContactTileView;
import com.android.contacts.list.w;
import com.android.contacts.q;
import com.android.contacts.util.ViewUtil;
/* loaded from: classes-dex2jar.jar:com/android/contacts/list/ContactTilePhoneFrequentView.class */
public class ContactTilePhoneFrequentView extends ContactTileView {
    private String i;

    public ContactTilePhoneFrequentView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // com.android.contacts.list.ContactTileView
    protected final int a() {
        return ViewUtil.getConstantPreLayoutWidth(this.f1736b);
    }

    @Override // com.android.contacts.list.ContactTileView
    public final void a(w.a aVar) {
        super.a(aVar);
        this.i = null;
        if (aVar != null) {
            this.i = aVar.e;
        }
    }

    @Override // com.android.contacts.list.ContactTileView
    protected final View.OnClickListener b() {
        return new View.OnClickListener() { // from class: com.android.contacts.list.ContactTilePhoneFrequentView.1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                if (ContactTilePhoneFrequentView.this.d != null) {
                    if (TextUtils.isEmpty(ContactTilePhoneFrequentView.this.i)) {
                        ContactTileView.a aVar = ContactTilePhoneFrequentView.this.d;
                        Uri uri = ContactTilePhoneFrequentView.this.f1735a;
                        ContactTilePhoneFrequentView.this.getContext();
                        q.a(ContactTilePhoneFrequentView.this);
                        aVar.a(uri);
                        return;
                    }
                    ContactTileView.a aVar2 = ContactTilePhoneFrequentView.this.d;
                    String unused = ContactTilePhoneFrequentView.this.i;
                    aVar2.a();
                }
            }
        };
    }
}
