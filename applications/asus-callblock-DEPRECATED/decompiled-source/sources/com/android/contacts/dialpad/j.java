package com.android.contacts.dialpad;

import java.util.Iterator;
import java.util.LinkedList;
/* loaded from: classes-dex2jar.jar:com/android/contacts/dialpad/j.class */
public final class j {

    /* renamed from: a  reason: collision with root package name */
    private final char f1076a = (char) 15;

    /* renamed from: b  reason: collision with root package name */
    private LinkedList<String> f1077b = new LinkedList<>();

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean a(CharSequence charSequence) {
        boolean z;
        if (charSequence != null) {
            String charSequence2 = charSequence.toString();
            synchronized (this.f1077b) {
                Iterator<String> it = this.f1077b.iterator();
                do {
                    if (it.hasNext()) {
                    }
                } while (!it.next().equals(charSequence2.substring(0, 1)));
                z = true;
            }
            return z;
        }
        z = false;
        return z;
    }
}
