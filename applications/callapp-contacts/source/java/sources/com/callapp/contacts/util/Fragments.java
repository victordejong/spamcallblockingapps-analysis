package com.callapp.contacts.util;

import androidx.fragment.app.FragmentManager;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/Fragments.class */
public class Fragments {
    /* renamed from: a */
    public static boolean m27543a(FragmentManager fragmentManager, String str) {
        for (int i = 0; i < fragmentManager.m43710e(); i++) {
            if (str.equals(fragmentManager.f4211c.get(i).mo43641g())) {
                return true;
            }
        }
        return false;
    }
}
