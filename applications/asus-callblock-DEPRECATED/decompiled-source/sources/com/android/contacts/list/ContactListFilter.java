package com.android.contacts.list;

import android.content.SharedPreferences;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.v4.view.p;
import android.text.TextUtils;
import com.android.contacts.vcard.SelectAccountActivity;
import com.asus.updatesdk.BuildConfig;
/* loaded from: classes-dex2jar.jar:com/android/contacts/list/ContactListFilter.class */
public final class ContactListFilter implements Parcelable, Comparable<ContactListFilter> {
    public static final Parcelable.Creator<ContactListFilter> CREATOR = new Parcelable.Creator<ContactListFilter>() { // from class: com.android.contacts.list.ContactListFilter.1
        @Override // android.os.Parcelable.Creator
        public final /* synthetic */ ContactListFilter createFromParcel(Parcel parcel) {
            return new ContactListFilter(parcel.readInt(), parcel.readString(), parcel.readString(), parcel.readString());
        }

        @Override // android.os.Parcelable.Creator
        public final /* bridge */ /* synthetic */ ContactListFilter[] newArray(int i) {
            return new ContactListFilter[i];
        }
    };

    /* renamed from: a  reason: collision with root package name */
    public final int f1712a;

    /* renamed from: b  reason: collision with root package name */
    public final String f1713b;
    public final String c;
    public final String d;
    public final Drawable e = null;

    public ContactListFilter(int i, String str, String str2, String str3) {
        this.f1712a = i;
        this.f1713b = str;
        this.c = str2;
        this.d = str3;
    }

    public static ContactListFilter a(int i) {
        return new ContactListFilter(i, null, null, null);
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0036, code lost:
        if (r9.f1712a == (-6)) goto L_0x0039;
     */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x001d, code lost:
        if (r10.f1712a == (-2)) goto L_0x0020;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.android.contacts.list.ContactListFilter a(android.content.SharedPreferences r9) {
        /*
            r0 = 0
            r10 = r0
            r0 = r9
            java.lang.String r1 = "filter.type"
            r2 = -1
            int r0 = r0.getInt(r1, r2)
            r11 = r0
            r0 = r11
            r1 = -1
            if (r0 != r1) goto L_0x0041
        L_0x0011:
            r0 = r10
            if (r0 == 0) goto L_0x0020
            r0 = r10
            r9 = r0
            r0 = r10
            int r0 = r0.f1712a
            r1 = -2
            if (r0 != r1) goto L_0x0026
        L_0x0020:
            r0 = -3
            com.android.contacts.list.ContactListFilter r0 = a(r0)
            r9 = r0
        L_0x0026:
            r0 = r9
            int r0 = r0.f1712a
            r1 = 1
            if (r0 == r1) goto L_0x0039
            r0 = r9
            r10 = r0
            r0 = r9
            int r0 = r0.f1712a
            r1 = -6
            if (r0 != r1) goto L_0x003f
        L_0x0039:
            r0 = -3
            com.android.contacts.list.ContactListFilter r0 = a(r0)
            r10 = r0
        L_0x003f:
            r0 = r10
            return r0
        L_0x0041:
            r0 = r9
            java.lang.String r1 = "filter.accountName"
            r2 = 0
            java.lang.String r0 = r0.getString(r1, r2)
            r10 = r0
            com.android.contacts.list.ContactListFilter r0 = new com.android.contacts.list.ContactListFilter
            r1 = r0
            r2 = r11
            r3 = r9
            java.lang.String r4 = "filter.accountType"
            r5 = 0
            java.lang.String r3 = r3.getString(r4, r5)
            r4 = r10
            r5 = r9
            java.lang.String r6 = "filter.dataSet"
            r7 = 0
            java.lang.String r5 = r5.getString(r6, r7)
            r1.<init>(r2, r3, r4, r5)
            r10 = r0
            goto L_0x0011
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.contacts.list.ContactListFilter.a(android.content.SharedPreferences):com.android.contacts.list.ContactListFilter");
    }

    public static void a(SharedPreferences sharedPreferences, ContactListFilter contactListFilter) {
        String str = null;
        if (contactListFilter == null || contactListFilter.f1712a != -6) {
            SharedPreferences.Editor putString = sharedPreferences.edit().putInt("filter.type", contactListFilter == null ? -1 : contactListFilter.f1712a).putString("filter.accountName", contactListFilter == null ? null : contactListFilter.c).putString("filter.accountType", contactListFilter == null ? null : contactListFilter.f1713b);
            if (contactListFilter != null) {
                str = contactListFilter.d;
            }
            putString.putString("filter.dataSet", str).apply();
        }
    }

    public final Uri.Builder a(Uri.Builder builder) {
        if (this.f1712a != 0) {
            throw new IllegalStateException("filterType must be FILTER_TYPE_ACCOUNT");
        }
        builder.appendQueryParameter(SelectAccountActivity.ACCOUNT_NAME, this.c);
        builder.appendQueryParameter(SelectAccountActivity.ACCOUNT_TYPE, this.f1713b);
        if (!TextUtils.isEmpty(this.d)) {
            builder.appendQueryParameter(SelectAccountActivity.DATA_SET, this.d);
        }
        return builder;
    }

    @Override // java.lang.Comparable
    public final /* bridge */ /* synthetic */ int compareTo(ContactListFilter contactListFilter) {
        ContactListFilter contactListFilter2 = contactListFilter;
        int compareTo = this.c.compareTo(contactListFilter2.c);
        if (compareTo == 0) {
            int compareTo2 = this.f1713b.compareTo(contactListFilter2.f1713b);
            compareTo = compareTo2;
            if (compareTo2 == 0) {
                compareTo = this.f1712a - contactListFilter2.f1712a;
            }
        }
        return compareTo;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        boolean z = true;
        if (this != obj) {
            if (!(obj instanceof ContactListFilter)) {
                z = false;
            } else {
                ContactListFilter contactListFilter = (ContactListFilter) obj;
                if (this.f1712a != contactListFilter.f1712a || !TextUtils.equals(this.c, contactListFilter.c) || !TextUtils.equals(this.f1713b, contactListFilter.f1713b) || !TextUtils.equals(this.d, contactListFilter.d)) {
                    z = false;
                }
            }
        }
        return z;
    }

    public final int hashCode() {
        int i = this.f1712a;
        int i2 = i;
        if (this.f1713b != null) {
            i2 = (((i * 31) + this.f1713b.hashCode()) * 31) + this.c.hashCode();
        }
        int i3 = i2;
        if (this.d != null) {
            i3 = (i2 * 31) + this.d.hashCode();
        }
        return i3;
    }

    public final String toString() {
        String str;
        switch (this.f1712a) {
            case -9:
                str = "all_accounts_without_sim1";
                break;
            case -8:
                str = "all_accounts_without_sim2";
                break;
            case -7:
                str = "all_accounts_without_sim";
                break;
            case -6:
                str = "single";
                break;
            case -5:
                str = "with_phones";
                break;
            case -4:
                str = "starred";
                break;
            case -3:
                str = "custom";
                break;
            case p.POSITION_NONE /* -2 */:
                str = "all_accounts";
                break;
            case p.POSITION_UNCHANGED /* -1 */:
                str = "default";
                break;
            case 0:
                str = "account: " + this.f1713b + (this.d != null ? "/" + this.d : BuildConfig.FLAVOR) + " " + this.c;
                break;
            default:
                str = super.toString();
                break;
        }
        return str;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.f1712a);
        parcel.writeString(this.c);
        parcel.writeString(this.f1713b);
        parcel.writeString(this.d);
    }
}
