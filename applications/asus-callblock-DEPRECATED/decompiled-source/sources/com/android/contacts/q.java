package com.android.contacts;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.database.Cursor;
import android.graphics.Rect;
import android.net.Uri;
import android.provider.ContactsContract;
import android.telephony.PhoneNumberUtils;
import android.text.TextUtils;
import android.view.View;
import android.widget.TextView;
import com.android.contacts.d.a;
import com.android.contacts.d.b;
import com.android.contacts.util.CallUtil;
import com.android.contacts.util.Constants;
import com.android.contacts.util.CountryDetector;
import com.asus.updatesdk.R;
/* loaded from: classes-dex2jar.jar:com/android/contacts/q.class */
public final class q {

    /* renamed from: a  reason: collision with root package name */
    private static final String f2040a = ";";

    /* renamed from: b  reason: collision with root package name */
    private static final ComponentName f2041b = new ComponentName("com.android.phone", "com.android.phone.PrivilegedOutgoingCallBroadcaster");
    private static int c = -1;

    public static long a(Long l, Long l2) {
        long j = 1;
        if (l != null) {
            if (!b.b(l.longValue())) {
                j = 0;
            }
        } else if (l2 == null || l2.longValue() == 0 || !a.a(l2.longValue())) {
            j = 0;
        }
        return j;
    }

    public static Intent a(com.android.contacts.model.account.a aVar, Uri uri) {
        Intent intent;
        String str = aVar.d;
        String g = aVar.g();
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(g)) {
            intent = null;
        } else {
            intent = new Intent();
            intent.setClassName(str, g);
            intent.setAction("com.android.contacts.action.INVITE_CONTACT");
            intent.setData(uri);
        }
        return intent;
    }

    public static Rect a(View view) {
        int[] iArr = new int[2];
        view.getLocationOnScreen(iArr);
        Rect rect = new Rect();
        rect.left = iArr[0];
        rect.top = iArr[1];
        rect.right = iArr[0] + view.getWidth();
        rect.bottom = iArr[1] + view.getHeight();
        return rect;
    }

    public static Uri a(String str) {
        return CallUtil.isUriNumber(str) ? Uri.fromParts(Constants.SCHEME_SIP, str, null) : Uri.fromParts(Constants.SCHEME_TEL, str, null);
    }

    public static View a(Context context, int i) {
        View inflate = View.inflate(context, 2131427601, null);
        ((TextView) inflate.findViewById(R.id.title)).setText(context.getString(i));
        return inflate;
    }

    public static String a(int i) {
        String str;
        switch (i) {
            case 0:
                str = "AIM";
                break;
            case 1:
                str = "MSN";
                break;
            case 2:
                str = "Yahoo";
                break;
            case 3:
                str = "SKYPE";
                break;
            case 4:
                str = "QQ";
                break;
            case 5:
                str = "GTalk";
                break;
            case 6:
                str = "ICQ";
                break;
            case 7:
                str = "JABBER";
                break;
            default:
                str = null;
                break;
        }
        return str;
    }

    public static final String a(Context context) {
        return CountryDetector.getInstance(context).getCurrentCountryIso();
    }

    public static boolean a(int i, int i2) {
        return i >= 55296 && i <= 56319 && i2 >= 56320 && i2 <= 57343;
    }

    public static final boolean a(Intent intent, Intent intent2) {
        return intent == intent2 ? true : (intent == null || intent2 == null) ? false : TextUtils.equals(intent.getAction(), intent2.getAction());
    }

    public static boolean a(CharSequence charSequence) {
        return !TextUtils.isEmpty(charSequence) && TextUtils.isGraphic(charSequence);
    }

    public static final boolean a(CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, CharSequence charSequence4) {
        boolean z;
        if (!TextUtils.equals(charSequence, charSequence3)) {
            z = false;
        } else if (TextUtils.equals(charSequence2, charSequence4)) {
            z = true;
        } else {
            z = false;
            if (charSequence2 != null) {
                z = false;
                if (charSequence4 != null) {
                    z = false;
                    if (TextUtils.equals("vnd.android.cursor.item/phone_v2", charSequence)) {
                        z = a(charSequence2.toString(), charSequence4.toString());
                    }
                }
            }
        }
        return z;
    }

    private static final boolean a(String str, String str2) {
        boolean z;
        String convertKeypadLettersToDigits = PhoneNumberUtils.convertKeypadLettersToDigits(str);
        String convertKeypadLettersToDigits2 = PhoneNumberUtils.convertKeypadLettersToDigits(str2);
        int i = 0;
        int i2 = 0;
        while (true) {
            int i3 = i;
            if (i2 < convertKeypadLettersToDigits.length()) {
                i3 = i;
                if (!PhoneNumberUtils.isNonSeparator(convertKeypadLettersToDigits.charAt(i2))) {
                    i2++;
                }
            }
            while (i3 < convertKeypadLettersToDigits2.length() && !PhoneNumberUtils.isNonSeparator(convertKeypadLettersToDigits2.charAt(i3))) {
                i3++;
            }
            boolean z2 = i2 == convertKeypadLettersToDigits.length();
            boolean z3 = i3 == convertKeypadLettersToDigits2.length();
            if (!z2) {
                z = false;
                if (z3) {
                    break;
                }
                z = false;
                if (convertKeypadLettersToDigits.charAt(i2) != convertKeypadLettersToDigits2.charAt(i3)) {
                    break;
                }
                i2++;
                i = i3 + 1;
            } else {
                z = z3;
                break;
            }
        }
        return z;
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0047  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean a(java.lang.String r3, java.lang.String r4, int r5, java.lang.String r6, java.lang.String r7, int r8) {
        /*
            r0 = 0
            r9 = r0
            r0 = r3
            r1 = r6
            boolean r0 = android.text.TextUtils.equals(r0, r1)
            if (r0 != 0) goto L_0x0012
            r0 = r9
            r10 = r0
        L_0x000f:
            r0 = r10
            return r0
        L_0x0012:
            java.lang.String r0 = "vnd.android.cursor.item/contact_event"
            r1 = r3
            boolean r0 = android.text.TextUtils.equals(r0, r1)
            if (r0 == 0) goto L_0x0030
            r0 = r4
            r1 = r7
            boolean r0 = android.text.TextUtils.equals(r0, r1)
            if (r0 == 0) goto L_0x003f
            r0 = r5
            r1 = r8
            if (r0 != r1) goto L_0x003f
            r0 = 1
            r10 = r0
            goto L_0x000f
        L_0x0030:
            r0 = r4
            r1 = r7
            boolean r0 = android.text.TextUtils.equals(r0, r1)
            if (r0 == 0) goto L_0x003f
            r0 = 1
            r10 = r0
            goto L_0x000f
        L_0x003f:
            r0 = r9
            r10 = r0
            r0 = r4
            if (r0 == 0) goto L_0x000f
            r0 = r9
            r10 = r0
            r0 = r7
            if (r0 == 0) goto L_0x000f
            r0 = r9
            r10 = r0
            java.lang.String r0 = "vnd.android.cursor.item/phone_v2"
            r1 = r3
            boolean r0 = android.text.TextUtils.equals(r0, r1)
            if (r0 == 0) goto L_0x000f
            r0 = r4
            java.lang.String r0 = r0.toString()
            r1 = r7
            java.lang.String r1 = r1.toString()
            boolean r0 = a(r0, r1)
            r10 = r0
            goto L_0x000f
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.contacts.q.a(java.lang.String, java.lang.String, int, java.lang.String, java.lang.String, int):boolean");
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x003d, code lost:
        if (r6.equals(r10) != false) goto L_0x0040;
     */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0048  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean a(java.lang.String r3, java.lang.String r4, int r5, java.lang.String r6, java.lang.String r7, java.lang.String r8, int r9, java.lang.String r10) {
        /*
            r0 = 0
            r11 = r0
            r0 = r3
            r1 = r7
            boolean r0 = android.text.TextUtils.equals(r0, r1)
            if (r0 != 0) goto L_0x0013
            r0 = r11
            r12 = r0
        L_0x0010:
            r0 = r12
            return r0
        L_0x0013:
            java.lang.String r0 = "vnd.android.cursor.item/phone_v2"
            r1 = r3
            boolean r0 = android.text.TextUtils.equals(r0, r1)
            if (r0 == 0) goto L_0x006f
            r0 = r4
            r1 = r8
            boolean r0 = android.text.TextUtils.equals(r0, r1)
            if (r0 == 0) goto L_0x0040
            r0 = r5
            r1 = r9
            if (r0 != r1) goto L_0x0040
            r0 = r5
            if (r0 != 0) goto L_0x0040
            r0 = r6
            if (r0 == 0) goto L_0x0040
            r0 = r11
            r12 = r0
            r0 = r6
            r1 = r10
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L_0x0010
        L_0x0040:
            r0 = r11
            r12 = r0
            r0 = r4
            if (r0 == 0) goto L_0x0010
            r0 = r11
            r12 = r0
            r0 = r8
            if (r0 == 0) goto L_0x0010
            r0 = r11
            r12 = r0
            java.lang.String r0 = "vnd.android.cursor.item/phone_v2"
            r1 = r3
            boolean r0 = android.text.TextUtils.equals(r0, r1)
            if (r0 == 0) goto L_0x0010
            r0 = r4
            java.lang.String r0 = r0.toString()
            r1 = r8
            java.lang.String r1 = r1.toString()
            boolean r0 = a(r0, r1)
            r12 = r0
            goto L_0x0010
        L_0x006f:
            r0 = r4
            r1 = r8
            boolean r0 = android.text.TextUtils.equals(r0, r1)
            if (r0 == 0) goto L_0x0040
            r0 = 1
            r12 = r0
            goto L_0x0010
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.contacts.q.a(java.lang.String, java.lang.String, int, java.lang.String, java.lang.String, java.lang.String, int, java.lang.String):boolean");
    }

    public static boolean b(Context context) {
        return !com.android.contacts.model.a.a(context).b().isEmpty();
    }

    public static int c(Context context) {
        if (c == -1) {
            Cursor query = context.getContentResolver().query(ContactsContract.DisplayPhoto.CONTENT_MAX_DIMENSIONS_URI, new String[]{"thumbnail_max_dim"}, null, null, null);
            try {
                query.moveToFirst();
                c = query.getInt(0);
            } finally {
                query.close();
            }
        }
        return c;
    }
}
