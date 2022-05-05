package com.android.contacts.util;

import java.text.Collator;
import java.util.Locale;
/* loaded from: classes-dex2jar.jar:com/android/contacts/util/PhonebookCollatorFactory.class */
public final class PhonebookCollatorFactory {
    public static final Collator getCollator() {
        Locale locale = Locale.getDefault();
        String locale2 = locale.toString();
        if ("ja".equals(locale2) || "ja_JP".equals(locale2)) {
            locale = new Locale("ja@collation=phonebook");
        }
        return Collator.getInstance(locale);
    }
}
