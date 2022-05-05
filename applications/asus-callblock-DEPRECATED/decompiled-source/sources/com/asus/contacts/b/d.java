package com.asus.contacts.b;

import android.app.FragmentManager;
import android.os.Bundle;
import com.android.contacts.activities.ContactDetailCallogActivity;
import com.android.contacts.b;
import com.android.contacts.model.account.AccountWithDataSet;
import com.android.contacts.util.PhoneCapabilityTester;
/* loaded from: classes-dex2jar.jar:com/asus/contacts/b/d.class */
public final class d {
    public static void a(FragmentManager fragmentManager, AccountWithDataSet accountWithDataSet, long j, boolean z) {
        Bundle bundle = new Bundle();
        bundle.putParcelable("selected_account", accountWithDataSet);
        bundle.putLong(ContactDetailCallogActivity.EXTRA_CONTACT_ID, j);
        bundle.putBoolean("is_sim", z);
        f.a(bundle).show(fragmentManager, (String) null);
    }

    public static boolean a(AccountWithDataSet accountWithDataSet) {
        return PhoneCapabilityTester.IsAsusDevice() ? accountWithDataSet.name.equals(b.a.c) : accountWithDataSet.type.equals(b.a.d);
    }
}
