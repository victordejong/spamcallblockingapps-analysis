package com.callapp.contacts.util;

import androidx.fragment.app.FragmentManager;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/Fragments.class */
public class Fragments {
    public static boolean a(FragmentManager fragmentManager, String str) {
        for (int i = 0; i < fragmentManager.e(); i++) {
            if (str.equals(fragmentManager.f2187c.get(i).g())) {
                return true;
            }
        }
        return false;
    }
}
