package com.android.contacts.model.account;

import android.content.ContentValues;
import android.content.Context;
import android.content.pm.PackageInfo;
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
import org.xmlpull.v1.XmlPullParserException;
/* loaded from: classes-dex2jar.jar:com/android/contacts/model/account/f.class */
public final class f extends d {
    public boolean i;
    private final boolean j;
    private String k;
    private String l;
    private String m;
    private String n;
    private int o;
    private String p;
    private String q;
    private String r;
    private int s;
    private String t;
    private String u;
    private List<String> v;
    private String w;
    private String x;
    private boolean y;

    public f(Context context, String str, boolean z) {
        this(context, str, z, (byte) 0);
    }

    private f(Context context, String str, boolean z, byte b2) {
        XmlResourceParser xmlResourceParser;
        int next;
        this.j = z;
        this.c = str;
        this.d = str;
        try {
            PackageManager packageManager = context.getPackageManager();
            PackageInfo packageInfo = packageManager.getPackageInfo(str, 132);
            if (!(packageInfo == null || packageInfo.services == null)) {
                for (ServiceInfo serviceInfo : packageInfo.services) {
                    xmlResourceParser = serviceInfo.loadXmlMetaData(packageManager, "android.provider.CONTACTS_STRUCTURE");
                    if (xmlResourceParser != null) {
                        break;
                    }
                }
            }
            xmlResourceParser = null;
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
                            this.i = true;
                            int attributeCount = xmlResourceParser.getAttributeCount();
                            for (int i = 0; i < attributeCount; i++) {
                                String attributeName = xmlResourceParser.getAttributeName(i);
                                String attributeValue = xmlResourceParser.getAttributeValue(i);
                                if (Log.isLoggable("ExternalAccountType", 3)) {
                                    Log.d("ExternalAccountType", PhoneCapabilityTester.privacyLogCheck(attributeName) + "=" + PhoneCapabilityTester.privacyLogCheck(attributeValue));
                                }
                                if ("editContactActivity".equals(attributeName)) {
                                    this.k = attributeValue;
                                } else if ("createContactActivity".equals(attributeName)) {
                                    this.l = attributeValue;
                                } else if ("inviteContactActivity".equals(attributeName)) {
                                    this.m = attributeValue;
                                } else if ("inviteContactActionLabel".equals(attributeName)) {
                                    this.n = attributeValue;
                                } else if ("viewContactNotifyService".equals(attributeName)) {
                                    this.p = attributeValue;
                                } else if ("viewGroupActivity".equals(attributeName)) {
                                    this.q = attributeValue;
                                } else if ("viewGroupActionLabel".equals(attributeName)) {
                                    this.r = attributeValue;
                                } else if ("viewStreamItemActivity".equals(attributeName)) {
                                    this.t = attributeValue;
                                } else if ("viewStreamItemPhotoActivity".equals(attributeName)) {
                                    this.u = attributeValue;
                                } else if ("dataSet".equals(attributeName)) {
                                    this.f2001b = attributeValue;
                                } else if ("extensionPackageNames".equals(attributeName)) {
                                    this.v.add(attributeValue);
                                } else if ("accountType".equals(attributeName)) {
                                    this.f2000a = attributeValue;
                                } else if ("accountTypeLabel".equals(attributeName)) {
                                    this.w = attributeValue;
                                } else if ("accountTypeIcon".equals(attributeName)) {
                                    this.x = attributeValue;
                                } else {
                                    Log.e("ExternalAccountType", "Unsupported attribute " + attributeName);
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
                        Log.e("ExternalAccountType", sb.toString(), e3);
                        if (xmlResourceParser != null) {
                            xmlResourceParser.close();
                            return;
                        }
                        return;
                    }
                }
                if (this.y) {
                    b("vnd.android.cursor.item/name");
                    b("#displayName");
                    b("#phoneticName");
                    b("vnd.android.cursor.item/photo");
                } else {
                    t();
                    i(context);
                    u();
                    l(context);
                    b a2 = a(new b("vnd.android.cursor.item/contact_event", 2131755615, 150, 2131427542));
                    a2.h = new d.C0051d();
                    a2.j = new d.v(CoverUtils.CoverData.COVER_URI);
                    a2.l = CoverUtils.CoverData.COVER_TYPE;
                    a2.n = new ArrayList();
                    a2.r = DateUtils.NO_YEAR_DATE_FORMAT;
                    a2.s = DateUtils.FULL_DATE_FORMAT;
                    List<a.d> list = a2.n;
                    a.d a3 = a(3, false);
                    a3.d = 1;
                    list.add(a3);
                    a2.n.add(a(1, false));
                    a2.n.add(a(2, false));
                    List<a.d> list2 = a2.n;
                    a.d a4 = a(0, false);
                    a4.c = true;
                    a4.e = CoverUtils.CoverData.USER_SET;
                    list2.add(a4);
                    a2.p = new ContentValues();
                    a2.p.put(CoverUtils.CoverData.COVER_TYPE, (Integer) 3);
                    a2.o = new ArrayList();
                    a2.o.add(new a.c(CoverUtils.CoverData.COVER_URI, 2131755615, 1));
                }
                if (xmlResourceParser != null) {
                    xmlResourceParser.close();
                }
                this.v = new ArrayList();
                this.o = a(context, this.n, this.d, "inviteContactActionLabel");
                this.s = a(context, this.r, this.d, "viewGroupActionLabel");
                this.e = a(context, this.w, this.d, "accountTypeLabel");
                this.f = a(context, this.x, this.d, "accountTypeIcon");
                this.h = true;
            } catch (Throwable th) {
                if (xmlResourceParser != null) {
                    xmlResourceParser.close();
                }
                throw th;
            }
        } catch (PackageManager.NameNotFoundException e4) {
        } catch (Exception e5) {
            Log.w("ExternalAccountType", e5.toString());
        }
    }

    private static int a(Context context, String str, String str2, String str3) {
        int i = -1;
        if (!TextUtils.isEmpty(str)) {
            if (str.charAt(0) != '@') {
                Log.e("ExternalAccountType", str3 + " must be a resource name beginnig with '@'");
            } else {
                try {
                    int identifier = context.getPackageManager().getResourcesForApplication(str2).getIdentifier(str.substring(1), null, str2);
                    if (identifier == 0) {
                        Log.e("ExternalAccountType", "Unable to load " + str + " from package " + str2);
                    } else {
                        i = identifier;
                    }
                } catch (PackageManager.NameNotFoundException e) {
                    Log.e("ExternalAccountType", "Unable to load package " + str2);
                }
            }
        }
        return i;
    }

    private void b(String str) {
        if (a(str) == null) {
            throw new a.C0050a(str + " must be supported");
        }
    }

    @Override // com.android.contacts.model.account.a
    public final boolean b() {
        return false;
    }

    @Override // com.android.contacts.model.account.a
    public final boolean c() {
        return this.j;
    }

    @Override // com.android.contacts.model.account.a
    public final boolean d() {
        return this.y;
    }

    @Override // com.android.contacts.model.account.a
    public final String e() {
        return this.k;
    }

    @Override // com.android.contacts.model.account.a
    public final String f() {
        return this.l;
    }

    @Override // com.android.contacts.model.account.a
    public final String g() {
        return this.m;
    }

    @Override // com.android.contacts.model.account.a
    public final String h() {
        return this.p;
    }

    @Override // com.android.contacts.model.account.a
    public final String j() {
        return this.q;
    }

    @Override // com.android.contacts.model.account.a
    public final String k() {
        return this.t;
    }

    @Override // com.android.contacts.model.account.a
    public final String l() {
        return this.u;
    }

    @Override // com.android.contacts.model.account.a
    protected final int m() {
        return this.o;
    }

    @Override // com.android.contacts.model.account.a
    protected final int n() {
        return this.s;
    }

    @Override // com.android.contacts.model.account.a
    public final List<String> p() {
        return this.v;
    }
}
