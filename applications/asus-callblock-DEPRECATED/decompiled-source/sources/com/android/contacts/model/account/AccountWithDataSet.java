package com.android.contacts.model.account;

import android.accounts.Account;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import android.provider.ContactsContract;
import android.text.TextUtils;
import com.google.a.a.c;
import java.util.ArrayList;
import java.util.List;
import java.util.regex.Pattern;
/* loaded from: classes-dex2jar.jar:com/android/contacts/model/account/AccountWithDataSet.class */
public class AccountWithDataSet extends Account {

    /* renamed from: a  reason: collision with root package name */
    public final String f1998a;

    /* renamed from: b  reason: collision with root package name */
    public final b f1999b;
    private static final Pattern c = Pattern.compile(Pattern.quote("\u0001"));
    private static final Pattern d = Pattern.compile(Pattern.quote("\u0002"));
    private static final String[] e = {"_id"};
    private static final Uri f = ContactsContract.RawContacts.CONTENT_URI.buildUpon().appendQueryParameter("limit", "1").build();
    public static final Parcelable.Creator<AccountWithDataSet> CREATOR = new Parcelable.Creator<AccountWithDataSet>() { // from class: com.android.contacts.model.account.AccountWithDataSet.1
        @Override // android.os.Parcelable.Creator
        public final /* synthetic */ AccountWithDataSet createFromParcel(Parcel parcel) {
            return new AccountWithDataSet(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public final /* bridge */ /* synthetic */ AccountWithDataSet[] newArray(int i) {
            return new AccountWithDataSet[i];
        }
    };

    public AccountWithDataSet(Parcel parcel) {
        super(parcel);
        this.f1998a = parcel.readString();
        this.f1999b = b.a(this.type, this.f1998a);
    }

    public AccountWithDataSet(String str, String str2, String str3) {
        super(str, str2);
        this.f1998a = str3;
        this.f1999b = b.a(str2, str3);
    }

    public static AccountWithDataSet a(String str) {
        String[] split = c.split(str, 3);
        if (split.length < 3) {
            throw new IllegalArgumentException("Invalid string " + str);
        }
        return new AccountWithDataSet(split[0], split[1], TextUtils.isEmpty(split[2]) ? null : split[2]);
    }

    public static String a(List<AccountWithDataSet> list) {
        StringBuilder sb = new StringBuilder();
        for (AccountWithDataSet accountWithDataSet : list) {
            if (sb.length() > 0) {
                sb.append("\u0002");
            }
            a(sb, accountWithDataSet);
        }
        return sb.toString();
    }

    public static StringBuilder a(StringBuilder sb, AccountWithDataSet accountWithDataSet) {
        sb.append(accountWithDataSet.name);
        sb.append("\u0001");
        sb.append(accountWithDataSet.type);
        sb.append("\u0001");
        if (!TextUtils.isEmpty(accountWithDataSet.f1998a)) {
            sb.append(accountWithDataSet.f1998a);
        }
        return sb;
    }

    public static List<AccountWithDataSet> b(String str) {
        ArrayList arrayList = new ArrayList();
        if (!TextUtils.isEmpty(str)) {
            for (String str2 : d.split(str)) {
                arrayList.add(a(str2));
            }
        }
        return arrayList;
    }

    public final boolean a(Context context) {
        String str;
        String[] strArr;
        boolean moveToFirst;
        if (TextUtils.isEmpty(this.f1998a)) {
            str = "account_type = ? AND account_name = ? AND data_set IS NULL";
            strArr = new String[]{this.type, this.name};
        } else {
            str = "account_type = ? AND account_name = ? AND data_set = ?";
            strArr = new String[]{this.type, this.name, this.f1998a};
        }
        Cursor query = context.getContentResolver().query(f, e, str, strArr, null);
        if (query == null) {
            moveToFirst = false;
        } else {
            try {
                moveToFirst = query.moveToFirst();
            } finally {
                query.close();
            }
        }
        return moveToFirst;
    }

    @Override // android.accounts.Account
    public boolean equals(Object obj) {
        return (obj instanceof AccountWithDataSet) && super.equals(obj) && c.a(((AccountWithDataSet) obj).f1998a, this.f1998a);
    }

    @Override // android.accounts.Account
    public int hashCode() {
        return (this.f1998a == null ? 0 : this.f1998a.hashCode()) + (super.hashCode() * 31);
    }

    @Override // android.accounts.Account
    public String toString() {
        return "AccountWithDataSet {name=" + this.name + ", type=" + this.type + ", dataSet=" + this.f1998a + "}";
    }

    @Override // android.accounts.Account, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeString(this.f1998a);
    }
}
