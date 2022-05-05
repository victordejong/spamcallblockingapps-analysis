package com.android.contacts.list;

import android.content.Context;
import android.content.Intent;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ImageButton;
import com.android.contacts.util.ImplicitIntentsUtil;
/* loaded from: classes-dex2jar.jar:com/android/contacts/list/ContactTilePhoneStarredView.class */
public class ContactTilePhoneStarredView extends ContactTileView {
    private ImageButton i;

    public ContactTilePhoneStarredView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // com.android.contacts.list.ContactTileView
    protected final int a() {
        return this.d.b();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.android.contacts.list.ContactTileView, android.view.View
    public void onFinishInflate() {
        super.onFinishInflate();
        this.i = (ImageButton) findViewById(2131296597);
        this.i.setOnClickListener(new View.OnClickListener() { // from class: com.android.contacts.list.ContactTilePhoneStarredView.1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                Intent intent = new Intent("android.intent.action.VIEW", ContactTilePhoneStarredView.this.f1735a);
                intent.setFlags(335544320);
                ImplicitIntentsUtil.startActivityInApp(ContactTilePhoneStarredView.this.getContext(), intent);
            }
        });
    }
}
