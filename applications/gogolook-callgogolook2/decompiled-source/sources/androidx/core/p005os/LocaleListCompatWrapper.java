package androidx.core.p005os;

import android.os.Build;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashSet;
import java.util.Locale;
/* renamed from: androidx.core.os.LocaleListCompatWrapper */
/* loaded from: classes-dex2jar.jar:androidx/core/os/LocaleListCompatWrapper.class */
public final class LocaleListCompatWrapper implements LocaleListInterface {
    public final Locale[] mList;
    @NonNull
    public final String mStringRepresentation;
    public static final Locale[] sEmptyList = new Locale[0];
    public static final Locale LOCALE_EN_XA = new Locale("en", "XA");
    public static final Locale LOCALE_AR_XB = new Locale("ar", "XB");
    public static final Locale EN_LATN = LocaleListCompat.forLanguageTagCompat("en-Latn");

    public LocaleListCompatWrapper(@NonNull Locale... localeArr) {
        if (localeArr.length == 0) {
            this.mList = sEmptyList;
            this.mStringRepresentation = "";
            return;
        }
        Locale[] localeArr2 = new Locale[localeArr.length];
        HashSet hashSet = new HashSet();
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < localeArr.length; i++) {
            Locale locale = localeArr[i];
            if (locale == null) {
                throw new NullPointerException("list[" + i + "] is null");
            } else if (!hashSet.contains(locale)) {
                Locale locale2 = (Locale) locale.clone();
                localeArr2[i] = locale2;
                toLanguageTag(sb, locale2);
                if (i < localeArr.length - 1) {
                    sb.append(',');
                }
                hashSet.add(locale2);
            } else {
                throw new IllegalArgumentException("list[" + i + "] is a repetition");
            }
        }
        this.mList = localeArr2;
        this.mStringRepresentation = sb.toString();
    }

    private Locale computeFirstMatch(Collection<String> collection, boolean z) {
        int computeFirstMatchIndex = computeFirstMatchIndex(collection, z);
        return computeFirstMatchIndex == -1 ? null : this.mList[computeFirstMatchIndex];
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x002c, code lost:
        if (r7 < Integer.MAX_VALUE) goto L_0x0036;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private int computeFirstMatchIndex(java.util.Collection<java.lang.String> r4, boolean r5) {
        /*
            r3 = this;
            r0 = r3
            java.util.Locale[] r0 = r0.mList
            r6 = r0
            r0 = r6
            int r0 = r0.length
            r1 = 1
            if (r0 != r1) goto L_0x000d
            r0 = 0
            return r0
        L_0x000d:
            r0 = r6
            int r0 = r0.length
            if (r0 != 0) goto L_0x0014
            r0 = -1
            return r0
        L_0x0014:
            r0 = r5
            if (r0 == 0) goto L_0x0032
            r0 = r3
            java.util.Locale r1 = androidx.core.p005os.LocaleListCompatWrapper.EN_LATN
            int r0 = r0.findFirstMatchIndex(r1)
            r7 = r0
            r0 = r7
            if (r0 != 0) goto L_0x0028
            r0 = 0
            return r0
        L_0x0028:
            r0 = r7
            r1 = 2147483647(0x7fffffff, float:NaN)
            if (r0 >= r1) goto L_0x0032
            goto L_0x0036
        L_0x0032:
            r0 = 2147483647(0x7fffffff, float:NaN)
            r7 = r0
        L_0x0036:
            r0 = r4
            java.util.Iterator r0 = r0.iterator()
            r4 = r0
        L_0x003d:
            r0 = r4
            boolean r0 = r0.hasNext()
            if (r0 == 0) goto L_0x006d
            r0 = r3
            r1 = r4
            java.lang.Object r1 = r1.next()
            java.lang.String r1 = (java.lang.String) r1
            java.util.Locale r1 = androidx.core.p005os.LocaleListCompat.forLanguageTagCompat(r1)
            int r0 = r0.findFirstMatchIndex(r1)
            r8 = r0
            r0 = r8
            if (r0 != 0) goto L_0x005f
            r0 = 0
            return r0
        L_0x005f:
            r0 = r8
            r1 = r7
            if (r0 >= r1) goto L_0x003d
            r0 = r8
            r7 = r0
            goto L_0x003d
        L_0x006d:
            r0 = r7
            r1 = 2147483647(0x7fffffff, float:NaN)
            if (r0 != r1) goto L_0x0076
            r0 = 0
            return r0
        L_0x0076:
            r0 = r7
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.core.p005os.LocaleListCompatWrapper.computeFirstMatchIndex(java.util.Collection, boolean):int");
    }

    private int findFirstMatchIndex(Locale locale) {
        int i = 0;
        while (true) {
            Locale[] localeArr = this.mList;
            if (i >= localeArr.length) {
                return Integer.MAX_VALUE;
            }
            if (matchScore(locale, localeArr[i]) > 0) {
                return i;
            }
            i++;
        }
    }

    public static String getLikelyScript(Locale locale) {
        if (Build.VERSION.SDK_INT < 21) {
            return "";
        }
        String script = locale.getScript();
        return !script.isEmpty() ? script : "";
    }

    public static boolean isPseudoLocale(Locale locale) {
        return LOCALE_EN_XA.equals(locale) || LOCALE_AR_XB.equals(locale);
    }

    @IntRange(from = 0, m37519to = 1)
    public static int matchScore(Locale locale, Locale locale2) {
        if (locale.equals(locale2)) {
            return 1;
        }
        if (!locale.getLanguage().equals(locale2.getLanguage()) || isPseudoLocale(locale) || isPseudoLocale(locale2)) {
            return 0;
        }
        String likelyScript = getLikelyScript(locale);
        if (!likelyScript.isEmpty()) {
            return likelyScript.equals(getLikelyScript(locale2)) ? 1 : 0;
        }
        String country = locale.getCountry();
        int i = 1;
        if (!country.isEmpty()) {
            i = country.equals(locale2.getCountry()) ? 1 : 0;
        }
        return i;
    }

    @VisibleForTesting
    public static void toLanguageTag(StringBuilder sb, Locale locale) {
        sb.append(locale.getLanguage());
        String country = locale.getCountry();
        if (country != null && !country.isEmpty()) {
            sb.append('-');
            sb.append(locale.getCountry());
        }
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof LocaleListCompatWrapper)) {
            return false;
        }
        Locale[] localeArr = ((LocaleListCompatWrapper) obj).mList;
        if (this.mList.length != localeArr.length) {
            return false;
        }
        int i = 0;
        while (true) {
            Locale[] localeArr2 = this.mList;
            if (i >= localeArr2.length) {
                return true;
            }
            if (!localeArr2[i].equals(localeArr[i])) {
                return false;
            }
            i++;
        }
    }

    @Override // androidx.core.p005os.LocaleListInterface
    public Locale get(int i) {
        Locale locale;
        if (i >= 0) {
            Locale[] localeArr = this.mList;
            if (i < localeArr.length) {
                locale = localeArr[i];
                return locale;
            }
        }
        locale = null;
        return locale;
    }

    @Override // androidx.core.p005os.LocaleListInterface
    public Locale getFirstMatch(@NonNull String[] strArr) {
        return computeFirstMatch(Arrays.asList(strArr), false);
    }

    @Override // androidx.core.p005os.LocaleListInterface
    @Nullable
    public Object getLocaleList() {
        return null;
    }

    public int hashCode() {
        int i = 1;
        int i2 = 0;
        while (true) {
            Locale[] localeArr = this.mList;
            if (i2 >= localeArr.length) {
                return i;
            }
            i = (i * 31) + localeArr[i2].hashCode();
            i2++;
        }
    }

    @Override // androidx.core.p005os.LocaleListInterface
    public int indexOf(Locale locale) {
        int i = 0;
        while (true) {
            Locale[] localeArr = this.mList;
            if (i >= localeArr.length) {
                return -1;
            }
            if (localeArr[i].equals(locale)) {
                return i;
            }
            i++;
        }
    }

    @Override // androidx.core.p005os.LocaleListInterface
    public boolean isEmpty() {
        return this.mList.length == 0;
    }

    @Override // androidx.core.p005os.LocaleListInterface
    public int size() {
        return this.mList.length;
    }

    @Override // androidx.core.p005os.LocaleListInterface
    public String toLanguageTags() {
        return this.mStringRepresentation;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("[");
        int i = 0;
        while (true) {
            Locale[] localeArr = this.mList;
            if (i < localeArr.length) {
                sb.append(localeArr[i]);
                if (i < this.mList.length - 1) {
                    sb.append(',');
                }
                i++;
            } else {
                sb.append("]");
                return sb.toString();
            }
        }
    }
}
