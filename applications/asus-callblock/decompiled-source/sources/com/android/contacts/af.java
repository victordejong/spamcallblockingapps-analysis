package com.android.contacts;

import com.android.contacts.util.Constants;
@Deprecated
/* loaded from: classes-dex2jar.jar:com/android/contacts/af.class */
public final class af {

    /* renamed from: a  reason: collision with root package name */
    private static final int[] f542a = {0, 12, 2, 1, 3, 7, 5, 4, 6};

    /* renamed from: b  reason: collision with root package name */
    private static final int[] f543b = {0, 1, 2, 3};
    private static final int[] c = {0, 1, 2, 3};
    private static final int[] d = {0, 1, 2, 3};
    private static final int[] e = {0, 1, 2};

    @Deprecated
    public static int a(String str, int i) {
        int length;
        int[] iArr = str.equals("vnd.android.cursor.item/phone_v2") ? f542a : str.equals("vnd.android.cursor.item/email_v2") ? f543b : str.equals("vnd.android.cursor.item/postal-address_v2") ? c : str.equals("vnd.android.cursor.item/im") ? d : str.equals(Constants.MIME_TYPE_VIDEO_CHAT) ? d : str.equals("vnd.android.cursor.item/organization") ? e : null;
        if (iArr != null) {
            int i2 = 0;
            while (true) {
                if (i2 >= iArr.length) {
                    length = iArr.length;
                    break;
                }
                length = i2;
                if (iArr[i2] == i) {
                    break;
                }
                i2++;
            }
        } else {
            length = -1;
        }
        return length;
    }
}
