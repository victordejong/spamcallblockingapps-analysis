package com.android.contacts.model.account;

import android.content.ContentValues;
import android.content.Context;
import android.content.pm.PackageManager;
import android.content.pm.ServiceInfo;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.util.Xml;
import com.android.contacts.model.a.b;
import com.android.contacts.model.account.a;
import com.android.contacts.model.account.d;
import com.android.contacts.util.CoverUtils;
import com.android.contacts.util.DateUtils;
import com.android.contacts.util.PhoneCapabilityTester;
import com.asus.contacts.c;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import org.xmlpull.v1.XmlPullParserException;
/* loaded from: classes-dex2jar.jar:com/android/contacts/model/account/c.class */
public final class c extends d {
    private final boolean i;
    private String j;
    private String k;
    private String l;
    private String m;
    private int n;
    private String o;
    private String p;
    private String q;
    private int r;
    private String s;
    private String t;
    private List<String> u;
    private String v;
    private String w;
    private boolean x;
    private boolean y;

    public c(Context context, String str) {
        this(context, str, (byte) 0);
    }

    private c(Context context, String str, byte b2) {
        XmlResourceParser xmlResourceParser;
        int next;
        this.i = false;
        this.c = str;
        this.d = str;
        this.g = true;
        try {
            PackageManager packageManager = context.getPackageManager();
            ServiceInfo[] serviceInfoArr = packageManager.getPackageInfo(str, 132).services;
            int length = serviceInfoArr.length;
            int i = 0;
            while (true) {
                if (i >= length) {
                    xmlResourceParser = null;
                    break;
                }
                xmlResourceParser = serviceInfoArr[i].loadXmlMetaData(packageManager, "android.provider.CONTACTS_STRUCTURE");
                if (xmlResourceParser != null) {
                    break;
                }
                i++;
            }
            try {
                if (xmlResourceParser != null) {
                    try {
                        AttributeSet asAttributeSet = Xml.asAttributeSet(xmlResourceParser);
                        do {
                            try {
                                next = xmlResourceParser.next();
                                if (next == 2) {
                                    break;
                                }
                            } catch (IOException e) {
                                throw new a.C0050a("Problem reading XML", e);
                            } catch (XmlPullParserException e2) {
                                throw new a.C0050a("Problem reading XML", e2);
                            }
                        } while (next != 1);
                        if (next != 2) {
                            throw new IllegalStateException("No start tag found");
                        }
                        String name = xmlResourceParser.getName();
                        if ("ContactsAccountType".equals(name) || "ContactsSource".equals(name)) {
                            this.x = true;
                            int attributeCount = xmlResourceParser.getAttributeCount();
                            for (int i2 = 0; i2 < attributeCount; i2++) {
                                String attributeName = xmlResourceParser.getAttributeName(i2);
                                String attributeValue = xmlResourceParser.getAttributeValue(i2);
                                if (Log.isLoggable("AttAccountType", 3)) {
                                    Log.d("AttAccountType", PhoneCapabilityTester.privacyLogCheck(attributeName) + "=" + PhoneCapabilityTester.privacyLogCheck(attributeValue));
                                }
                                if ("editContactActivity".equals(attributeName)) {
                                    this.j = attributeValue;
                                } else if ("createContactActivity".equals(attributeName)) {
                                    this.k = attributeValue;
                                } else if ("inviteContactActivity".equals(attributeName)) {
                                    this.l = attributeValue;
                                } else if ("inviteContactActionLabel".equals(attributeName)) {
                                    this.m = attributeValue;
                                } else if ("viewContactNotifyService".equals(attributeName)) {
                                    this.o = attributeValue;
                                } else if ("viewGroupActivity".equals(attributeName)) {
                                    this.p = attributeValue;
                                } else if ("viewGroupActionLabel".equals(attributeName)) {
                                    this.q = attributeValue;
                                } else if ("viewStreamItemActivity".equals(attributeName)) {
                                    this.s = attributeValue;
                                } else if ("viewStreamItemPhotoActivity".equals(attributeName)) {
                                    this.t = attributeValue;
                                } else if ("dataSet".equals(attributeName)) {
                                    this.f2001b = attributeValue;
                                } else if ("extensionPackageNames".equals(attributeName)) {
                                    this.u.add(attributeValue);
                                } else if ("accountType".equals(attributeName)) {
                                    this.f2000a = attributeValue;
                                } else if ("accountTypeLabel".equals(attributeName)) {
                                    this.v = attributeValue;
                                } else if ("accountTypeIcon".equals(attributeName)) {
                                    this.w = attributeValue;
                                } else {
                                    Log.e("AttAccountType", "Unsupported attribute " + attributeName);
                                }
                            }
                            int depth = xmlResourceParser.getDepth();
                            while (true) {
                                int next2 = xmlResourceParser.next();
                                if ((next2 == 3 && xmlResourceParser.getDepth() <= depth) || next2 == 1) {
                                    break;
                                } else if (next2 == 2 && xmlResourceParser.getDepth() == depth + 1) {
                                    String name2 = xmlResourceParser.getName();
                                    if ("EditSchema".equals(name2)) {
                                        this.y = true;
                                        a(context, xmlResourceParser, asAttributeSet);
                                    } else if ("ContactsDataKind".equals(name2)) {
                                        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(asAttributeSet, c.a.f);
                                        b bVar = new b();
                                        bVar.f1997b = obtainStyledAttributes.getString(1);
                                        String string = obtainStyledAttributes.getString(2);
                                        if (string != null) {
                                            bVar.h = new d.v(string);
                                        }
                                        String string2 = obtainStyledAttributes.getString(3);
                                        if (obtainStyledAttributes.getBoolean(4, false)) {
                                            bVar.k = true;
                                        }
                                        if (string2 != null) {
                                            bVar.j = new d.v(string2);
                                        }
                                        obtainStyledAttributes.recycle();
                                        a(bVar);
                                    }
                                }
                            }
                        } else {
                            throw new IllegalStateException("Top level element must be ContactsAccountType, not " + name);
                        }
                    } catch (a.C0050a e3) {
                        StringBuilder sb = new StringBuilder();
                        sb.append("Problem reading XML");
                        if (!(1 == 0 || xmlResourceParser == null)) {
                            sb.append(" in line ");
                            sb.append(xmlResourceParser.getLineNumber());
                        }
                        sb.append(" for external package ");
                        sb.append(str);
                        Log.e("AttAccountType", sb.toString(), e3);
                        if (xmlResourceParser != null) {
                            xmlResourceParser.close();
                            return;
                        }
                        return;
                    }
                }
                t();
                i(context);
                j(context);
                g(context);
                f(context);
                e(context);
                h(context);
                k(context);
                l(context);
                m(context);
                n(context);
                w();
                b a2 = a(new b("vnd.android.cursor.item/contact_event", 2131755615, 150, 2131427542));
                a2.h = new d.C0051d();
                a2.j = new d.v(CoverUtils.CoverData.COVER_URI);
                a2.l = CoverUtils.CoverData.COVER_TYPE;
                a2.n = new ArrayList();
                a2.r = DateUtils.NO_YEAR_DATE_FORMAT;
                a2.s = DateUtils.FULL_DATE_FORMAT;
                List<a.d> list = a2.n;
                a.d a3 = a(3, true);
                a3.d = 1;
                list.add(a3);
                List<a.d> list2 = a2.n;
                a.d a4 = a(1, false);
                a4.d = 1;
                list2.add(a4);
                a2.m = 2;
                a2.p = new ContentValues();
                a2.p.put(CoverUtils.CoverData.COVER_TYPE, (Integer) 3);
                a2.o = new ArrayList();
                a2.o.add(new a.c(CoverUtils.CoverData.COVER_URI, 2131755615, 1));
                if (xmlResourceParser != null) {
                    xmlResourceParser.close();
                }
                this.u = new ArrayList();
                this.n = a(context, this.m, this.d, "inviteContactActionLabel");
                this.r = a(context, this.q, this.d, "viewGroupActionLabel");
                this.e = a(context, this.v, this.d, "accountTypeLabel");
                this.f = a(context, this.w, this.d, "accountTypeIcon");
                this.h = true;
            } catch (Throwable th) {
                if (xmlResourceParser != null) {
                    xmlResourceParser.close();
                }
                throw th;
            }
        } catch (PackageManager.NameNotFoundException e4) {
        }
    }

    private static int a(Context context, String str, String str2, String str3) {
        int i = -1;
        if (!TextUtils.isEmpty(str)) {
            if (str.charAt(0) != '@') {
                Log.e("AttAccountType", str3 + " must be a resource name beginnig with '@'");
            } else {
                try {
                    int identifier = context.getPackageManager().getResourcesForApplication(str2).getIdentifier(str.substring(1), null, str2);
                    if (identifier == 0) {
                        Log.e("AttAccountType", "Unable to load " + str + " from package " + str2);
                    } else {
                        i = identifier;
                    }
                } catch (PackageManager.NameNotFoundException e) {
                    Log.e("AttAccountType", "Unable to load package " + str2);
                }
            }
        }
        return i;
    }

    @Override // com.android.contacts.model.account.a
    public final boolean b() {
        return false;
    }

    @Override // com.android.contacts.model.account.a
    public final boolean c() {
        return this.i;
    }

    @Override // com.android.contacts.model.account.a
    public final boolean d() {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.android.contacts.model.account.d
    public final b e(Context context) {
        b e = super.e(context);
        boolean equals = Locale.JAPANESE.getLanguage().equals(Locale.getDefault().getLanguage());
        e.l = CoverUtils.CoverData.COVER_TYPE;
        e.n = new ArrayList();
        e.n.add(c(2));
        e.n.add(c(1));
        e.n.add(c(3));
        e.o = new ArrayList();
        if (equals) {
            List<a.c> list = e.o;
            a.c cVar = new a.c("data10", 2131755960, 139377);
            cVar.e = true;
            list.add(cVar);
            e.o.add(new a.c("data9", 2131755963, 139377));
            e.o.add(new a.c("data8", 2131755964, 139377));
            e.o.add(new a.c("data7", 2131755959, 139377));
            e.o.add(new a.c("data4", 2131755965, 139377));
            e.o.add(new a.c("data6", 2131755961, 139377));
            e.o.add(new a.c("data5", 2131755962, 139377));
        } else {
            e.o.add(new a.c("data5", 2131755962, 139377));
            e.o.add(new a.c("data4", 2131755965, 139377));
            e.o.add(new a.c("data6", 2131755961, 139377));
            e.o.add(new a.c("data7", 2131755959, 139377));
            e.o.add(new a.c("data8", 2131755964, 139377));
            e.o.add(new a.c("data9", 2131755963, 139377));
            List<a.c> list2 = e.o;
            a.c cVar2 = new a.c("data10", 2131755960, 139377);
            cVar2.e = true;
            list2.add(cVar2);
        }
        return e;
    }

    @Override // com.android.contacts.model.account.a
    public final String e() {
        return this.j;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.android.contacts.model.account.d
    public final b f(Context context) {
        b a2 = a(new b("vnd.android.cursor.item/email_v2", 2131755601, 15, 2131427673));
        a2.h = new d.b();
        a2.j = new d.v(CoverUtils.CoverData.COVER_URI);
        a2.l = CoverUtils.CoverData.COVER_TYPE;
        a2.n = new ArrayList();
        a2.n.add(b(2));
        a2.n.add(b(1));
        a2.n.add(b(3));
        a2.o = new ArrayList();
        a2.o.add(new a.c(CoverUtils.CoverData.COVER_URI, 2131755601, 33));
        return a2;
    }

    @Override // com.android.contacts.model.account.a
    public final String f() {
        return this.k;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.android.contacts.model.account.d
    public final b g(Context context) {
        b a2 = a(new b("vnd.android.cursor.item/phone_v2", 2131755945, 10, 2131427673));
        a2.d = 2131165345;
        a2.e = 2131756154;
        a2.h = new d.p();
        a2.i = new d.o();
        a2.j = new d.v(CoverUtils.CoverData.COVER_URI);
        a2.l = CoverUtils.CoverData.COVER_TYPE;
        a2.n = new ArrayList();
        a2.n.add(a(2));
        a2.n.add(a(1));
        a2.n.add(a(3));
        List<a.d> list = a2.n;
        a.d a3 = a(4);
        a3.c = true;
        list.add(a3);
        List<a.d> list2 = a2.n;
        a.d a4 = a(5);
        a4.c = true;
        list2.add(a4);
        List<a.d> list3 = a2.n;
        a.d a5 = a(13);
        a5.c = true;
        list3.add(a5);
        List<a.d> list4 = a2.n;
        a.d a6 = a(6);
        a6.c = true;
        list4.add(a6);
        List<a.d> list5 = a2.n;
        a.d a7 = a(9);
        a7.c = true;
        list5.add(a7);
        a2.n.add(a(7));
        a2.o = new ArrayList();
        a2.o.add(new a.c(CoverUtils.CoverData.COVER_URI, 2131755945, 3));
        return a2;
    }

    @Override // com.android.contacts.model.account.a
    public final String g() {
        return this.l;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.android.contacts.model.account.d
    public final b h(Context context) {
        b a2 = a(new b("vnd.android.cursor.item/im", 2131755690, 20, 2131427673));
        a2.h = new d.g();
        a2.j = new d.v(CoverUtils.CoverData.COVER_URI);
        a2.p = new ContentValues();
        a2.p.put(CoverUtils.CoverData.COVER_TYPE, (Integer) 3);
        a2.l = "data5";
        a2.n = new ArrayList();
        a2.n.add(d(0));
        a2.n.add(d(2));
        a2.n.add(d(3));
        a2.n.add(d(4));
        a2.n.add(d(5));
        a2.n.add(d(6));
        a2.n.add(d(7));
        a2.o = new ArrayList();
        a2.o.add(new a.c(CoverUtils.CoverData.COVER_URI, 2131755690, 33));
        return a2;
    }

    @Override // com.android.contacts.model.account.a
    public final String h() {
        return this.o;
    }

    @Override // com.android.contacts.model.account.a
    public final String j() {
        return this.p;
    }

    @Override // com.android.contacts.model.account.a
    public final String k() {
        return this.s;
    }

    @Override // com.android.contacts.model.account.a
    public final String l() {
        return this.t;
    }

    @Override // com.android.contacts.model.account.a
    protected final int m() {
        return this.n;
    }

    @Override // com.android.contacts.model.account.a
    protected final int n() {
        return this.r;
    }

    @Override // com.android.contacts.model.account.a
    public final List<String> p() {
        return this.u;
    }

    @Override // com.android.contacts.model.account.d, com.android.contacts.model.account.a
    public final boolean q() {
        return true;
    }
}
