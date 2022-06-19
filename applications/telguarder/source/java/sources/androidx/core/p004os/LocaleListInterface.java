package androidx.core.p004os;

import java.util.Locale;
/* renamed from: androidx.core.os.LocaleListInterface */
/* loaded from: classes-dex2jar.jar:androidx/core/os/LocaleListInterface.class */
interface LocaleListInterface {
    Locale get(int i);

    Locale getFirstMatch(String[] strArr);

    Object getLocaleList();

    int indexOf(Locale locale);

    boolean isEmpty();

    int size();

    String toLanguageTags();
}
