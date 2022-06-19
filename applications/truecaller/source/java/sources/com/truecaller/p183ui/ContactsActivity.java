package com.truecaller.p183ui;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import com.truecaller.C2752R;
import p193e.p194a.p372b0.p430q.C8613t;
import p193e.p194a.p682e.AbstractC13325w0;
import p193e.p194a.p937j4.p939b.p940a.C15571h;
/* renamed from: com.truecaller.ui.ContactsActivity */
/* loaded from: classes15-dex2jar.jar:com/truecaller/ui/ContactsActivity.class */
public class ContactsActivity extends AbstractC13325w0 {
    /* JADX WARN: Multi-variable type inference failed */
    @Override // p193e.p194a.p682e.AbstractC13325w0
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if ("android.intent.action.CREATE_SHORTCUT".equals(getIntent().getAction())) {
            C15571h.m18626y("shortcutInstalled", true);
            Intent intent = new Intent((Context) this, (Class<?>) ContactsActivity.class);
            intent.setAction("android.intent.action.MAIN");
            intent.addCategory("android.intent.category.DEFAULT");
            intent.addFlags(335544320);
            setResult(-1, C8613t.m28207e(this, C2752R.string.tab_contacts, C2752R.mipmap.ic_launcher_contacts, intent));
        } else {
            startActivity(TruecallerInit.m34553xa(this, "contacts", "homescreenShortcut"));
        }
        finish();
    }
}
