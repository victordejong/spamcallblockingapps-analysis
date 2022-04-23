package com.android.contacts.list;

import android.content.Context;
import android.net.Uri;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ImageButton;
import com.android.contacts.list.ContactTileView;
import com.android.contacts.q;
/* loaded from: classes-dex2jar.jar:com/android/contacts/list/ContactTileSecondaryTargetView.class */
public class ContactTileSecondaryTargetView extends ContactTileStarredView {
    private ImageButton i;
    private ContactTileView.a j;

    public ContactTileSecondaryTargetView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.android.contacts.list.ContactTileView, android.view.View
    public void onFinishInflate() {
        super.onFinishInflate();
        this.i = (ImageButton) findViewById(2131296597);
        this.i.setOnClickListener(new View.OnClickListener() { // from class: com.android.contacts.list.ContactTileSecondaryTargetView.1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ContactTileSecondaryTargetView.this.j = ContactTileSecondaryTargetView.this.c();
                if (ContactTileSecondaryTargetView.this.j != null) {
                    ContactTileView.a aVar = ContactTileSecondaryTargetView.this.j;
                    Uri uri = ContactTileSecondaryTargetView.this.f1735a;
                    ContactTileSecondaryTargetView.this.getContext();
                    q.a(ContactTileSecondaryTargetView.this);
                    aVar.a(uri, ContactTileSecondaryTargetView.this.e);
                }
            }
        });
    }
}
