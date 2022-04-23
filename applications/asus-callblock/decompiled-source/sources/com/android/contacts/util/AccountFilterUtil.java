package com.android.contacts.util;

import android.content.Context;
import android.content.Intent;
import android.util.Log;
import android.view.View;
import android.widget.TextView;
import com.android.contacts.list.ContactListFilter;
import com.android.contacts.list.r;
/* loaded from: classes-dex2jar.jar:com/android/contacts/util/AccountFilterUtil.class */
public class AccountFilterUtil {
    public static final String KEY_EXTRA_CONTACT_LIST_FILTER = "contactListFilter";
    private static final String TAG = AccountFilterUtil.class.getSimpleName();

    public static void handleAccountFilterResult(r rVar, int i, Intent intent) {
        ContactListFilter contactListFilter;
        if (i == -1 && (contactListFilter = (ContactListFilter) intent.getParcelableExtra(KEY_EXTRA_CONTACT_LIST_FILTER)) != null) {
            if (contactListFilter.f1712a == -3) {
                rVar.b();
            } else {
                rVar.a(contactListFilter);
            }
        }
    }

    public static String handleSqliteEscapeForOrderString(String str) {
        char[] charArray = str.replace("/", "//").replace("'", "''").replace("[", "/[").replace("]", "/]").replace("%", "/%").replace("(", "/(").replace(")", "/)").toCharArray();
        boolean[] zArr = new boolean[charArray.length];
        int i = 0;
        for (int i2 = 0; i2 < charArray.length; i2++) {
            if (charArray[i2] == 0) {
                zArr[i2] = false;
            } else {
                zArr[i2] = true;
                i++;
            }
        }
        char[] cArr = new char[i];
        int i3 = 0;
        for (int i4 = 0; i4 < zArr.length; i4++) {
            if (zArr[i4]) {
                cArr[i3] = charArray[i4];
                i3++;
            }
        }
        return String.valueOf(cArr);
    }

    public static String handleSqliteEscapeString(String str) {
        return str.replace("/", "//").replace("'", "''").replace("[", "/[").replace("]", "/]").replace("%", "/%").replace("(", "/(").replace(")", "/)");
    }

    private static boolean updateAccountFilterTitle(View view, ContactListFilter contactListFilter, boolean z, boolean z2) {
        boolean z3;
        Context context = view.getContext();
        TextView textView = (TextView) view.findViewById(2131296348);
        view.findViewById(2131296350);
        if (textView != null) {
            if (z2) {
                textView.setText(2131755815);
                z3 = true;
            } else if (contactListFilter.f1712a == -2) {
                if (z) {
                    textView.setText(2131755758);
                    z3 = true;
                }
            } else if (contactListFilter.f1712a == 0) {
                textView.setText(context.getString(2131755750, contactListFilter.c));
                z3 = true;
            } else if (contactListFilter.f1712a == -3) {
                textView.setText(2131755815);
                z3 = true;
            } else if (contactListFilter.f1712a == -6) {
                textView.setText(2131755752);
                z3 = true;
            } else {
                Log.w(TAG, "Asus Filter type \"" + contactListFilter.f1712a + "\" isn't expected.");
            }
            return z3;
        }
        z3 = false;
        return z3;
    }

    public static boolean updateAccountFilterTitleForPeople(View view, ContactListFilter contactListFilter, boolean z) {
        return updateAccountFilterTitle(view, contactListFilter, z, false);
    }

    public static boolean updateAccountFilterTitleForPhone(View view, ContactListFilter contactListFilter, boolean z) {
        return updateAccountFilterTitle(view, contactListFilter, z, true);
    }
}
