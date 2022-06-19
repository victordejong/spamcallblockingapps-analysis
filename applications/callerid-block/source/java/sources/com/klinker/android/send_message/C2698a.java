package com.klinker.android.send_message;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.SharedPreferences;
import android.content.res.XmlResourceParser;
import android.preference.PreferenceManager;
import android.telephony.ServiceState;
import android.telephony.TelephonyManager;
import android.telephony.cdma.CdmaCellLocation;
import android.widget.Toast;
import e.d.a.a.a;
import java.io.IOException;
import java.util.ArrayList;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
/* renamed from: com.klinker.android.send_message.a */
/* loaded from: classes2-dex2jar.jar:com/klinker/android/send_message/a.class */
public class C2698a {

    /* renamed from: com.klinker.android.send_message.a$a */
    /* loaded from: classes2-dex2jar.jar:com/klinker/android/send_message/a$a.class */
    public static final class DialogInterface$OnClickListenerC2699a implements DialogInterface.OnClickListener {

        /* renamed from: b */
        final /* synthetic */ Context f11271b;

        /* renamed from: c */
        final /* synthetic */ ArrayList f11272c;

        /* renamed from: d */
        final /* synthetic */ AbstractC2703e f11273d;

        DialogInterface$OnClickListenerC2699a(Context context, ArrayList arrayList, AbstractC2703e abstractC2703e) {
            this.f11271b = context;
            this.f11272c = arrayList;
            this.f11273d = abstractC2703e;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            C2698a.m2110j(this.f11271b, this.f11272c, this.f11273d);
        }
    }

    /* renamed from: com.klinker.android.send_message.a$b */
    /* loaded from: classes2-dex2jar.jar:com/klinker/android/send_message/a$b.class */
    public static final class DialogInterface$OnCancelListenerC2700b implements DialogInterface.OnCancelListener {

        /* renamed from: b */
        final /* synthetic */ AbstractC2703e f11274b;

        DialogInterface$OnCancelListenerC2700b(AbstractC2703e abstractC2703e) {
            this.f11274b = abstractC2703e;
        }

        @Override // android.content.DialogInterface.OnCancelListener
        public void onCancel(DialogInterface dialogInterface) {
            AbstractC2703e abstractC2703e = this.f11274b;
            if (abstractC2703e != null) {
                abstractC2703e.m2109a();
            }
        }
    }

    /* renamed from: com.klinker.android.send_message.a$c */
    /* loaded from: classes2-dex2jar.jar:com/klinker/android/send_message/a$c.class */
    public static final class DialogInterface$OnClickListenerC2701c implements DialogInterface.OnClickListener {

        /* renamed from: b */
        final /* synthetic */ Context f11275b;

        /* renamed from: c */
        final /* synthetic */ ArrayList f11276c;

        /* renamed from: d */
        final /* synthetic */ AbstractC2703e f11277d;

        DialogInterface$OnClickListenerC2701c(Context context, ArrayList arrayList, AbstractC2703e abstractC2703e) {
            this.f11275b = context;
            this.f11276c = arrayList;
            this.f11277d = abstractC2703e;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            C2698a.m2111i(this.f11275b, (C2702d) this.f11276c.get(i));
            AbstractC2703e abstractC2703e = this.f11277d;
            if (abstractC2703e != null) {
                abstractC2703e.m2109a();
            }
            dialogInterface.dismiss();
        }
    }

    /* renamed from: com.klinker.android.send_message.a$d */
    /* loaded from: classes2-dex2jar.jar:com/klinker/android/send_message/a$d.class */
    public static class C2702d {

        /* renamed from: a */
        public String f11278a;

        /* renamed from: b */
        public String f11279b;

        /* renamed from: c */
        public String f11280c;

        /* renamed from: d */
        public String f11281d;

        private C2702d() {
        }

        /* synthetic */ C2702d(DialogInterface$OnClickListenerC2699a dialogInterface$OnClickListenerC2699a) {
            this();
        }
    }

    /* renamed from: com.klinker.android.send_message.a$e */
    /* loaded from: classes2-dex2jar.jar:com/klinker/android/send_message/a$e.class */
    public interface AbstractC2703e {
        /* renamed from: a */
        void m2109a();
    }

    /* renamed from: c */
    private static void m2117c(XmlPullParser xmlPullParser, String str) {
        int next;
        do {
            next = xmlPullParser.next();
            if (next == 2) {
                break;
            }
        } while (next != 1);
        if (next == 2) {
            if (xmlPullParser.getName().equals(str)) {
                return;
            }
            throw new XmlPullParserException("Unexpected start tag: found " + xmlPullParser.getName() + ", expected " + str);
        }
        throw new XmlPullParserException("No start tag found");
    }

    /* renamed from: d */
    public static void m2116d(Context context, AbstractC2703e abstractC2703e) {
        m2113g(context);
        ArrayList<C2702d> m2114f = m2114f(context);
        if (m2114f == null || m2114f.size() == 0) {
            a.k("ApnUtils", "Found no APNs :( Damn CDMA network probably.");
            Toast.makeText(context, context.getString(C2707d.auto_select_failed), 0).show();
            if (abstractC2703e == null) {
                return;
            }
        } else if (m2114f.size() != 1) {
            if (PreferenceManager.getDefaultSharedPreferences(context).getBoolean("has_seen_select_apns_warning", false)) {
                m2110j(context, m2114f, abstractC2703e);
                return;
            }
            new AlertDialog.Builder(context).setTitle(C2707d.auto_select_apn).setMessage(C2707d.auto_select_multiple_apns).setPositiveButton(C2707d.f11293ok, new DialogInterface$OnClickListenerC2699a(context, m2114f, abstractC2703e)).show();
            PreferenceManager.getDefaultSharedPreferences(context).edit().putBoolean("has_seen_select_apns_warning", true).commit();
            return;
        } else {
            m2111i(context, m2114f.get(0));
            if (abstractC2703e == null) {
                return;
            }
        }
        abstractC2703e.m2109a();
    }

    /* renamed from: e */
    private static boolean m2115e(String str) {
        return str != null && !str.isEmpty() && !str.contains("null");
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: f */
    private static ArrayList<C2702d> m2114f(Context context) {
        int i;
        int i2;
        int i3;
        int i4;
        String str;
        String str2;
        String str3;
        Throwable e;
        boolean z;
        String str4;
        String str5;
        String str6;
        String str7;
        String str8;
        boolean z2;
        String str9;
        String str10;
        String str11;
        String str12;
        boolean z3;
        boolean z4;
        XmlResourceParser xml = context.getResources().getXml(C2708e.apns);
        ArrayList<C2702d> arrayList = new ArrayList<>();
        String networkOperator = ((TelephonyManager) context.getSystemService("phone")).getNetworkOperator();
        String str13 = "";
        if (m2115e(networkOperator)) {
            i2 = Integer.parseInt(networkOperator.substring(0, 3));
            try {
                i = Integer.parseInt(networkOperator.substring(3).replaceFirst("^0{1,2}", ""));
            } catch (Exception e2) {
                i = -1;
            }
        } else {
            i2 = context.getResources().getConfiguration().mcc;
            i = context.getResources().getConfiguration().mnc;
        }
        int i5 = i2;
        if (i2 == -1) {
            i3 = i2;
            try {
                int i6 = i2;
                int i7 = i2;
                i5 = Integer.parseInt(new ServiceState().getOperatorNumeric().substring(0, 3));
            } catch (Exception e3) {
                i4 = i;
            }
        }
        i4 = i;
        i3 = i5;
        if (i == -1) {
            i3 = i5;
            i4 = ((CdmaCellLocation) ((TelephonyManager) context.getSystemService("phone")).getCellLocation()).getSystemId();
            i3 = i5;
        }
        if (i3 == -1 || i4 == -1) {
            a.k("ApnUtils", "couldn't find both mcc and mnc. mcc = " + i3 + ", mnc = " + i4);
            return null;
        }
        a.k("ApnUtils", "mcc: " + i3 + " mnc: " + i4);
        try {
            try {
                m2117c(xml, "apns");
                str3 = "";
                str2 = str3;
                str = str2;
                String str14 = str;
                while (true) {
                    String str15 = str14;
                    str13 = str3;
                    String str16 = str3;
                    String str17 = str3;
                    try {
                        m2112h(xml);
                        String str18 = str3;
                        if (xml.getName() == null) {
                            break;
                        }
                        int i8 = 0;
                        boolean z5 = false;
                        boolean z6 = false;
                        while (true) {
                            z = z6;
                            if (i8 >= xml.getAttributeCount()) {
                                break;
                            }
                            try {
                                String attributeName = xml.getAttributeName(i8);
                                int parseInt = Integer.parseInt(xml.getAttributeValue(i8));
                                try {
                                    if (!"mcc".equals(attributeName) || i3 != parseInt) {
                                        z3 = z5;
                                        z4 = z;
                                        if ("mnc".equals(attributeName)) {
                                            z3 = z5;
                                            z4 = z;
                                            if (i4 == parseInt) {
                                                z4 = true;
                                                z3 = z5;
                                            }
                                        }
                                    } else {
                                        z3 = true;
                                        z4 = z;
                                    }
                                } catch (Exception e4) {
                                    z3 = z5;
                                    z4 = z;
                                }
                            } catch (Exception e5) {
                                z4 = z;
                                z3 = z5;
                            }
                            i8++;
                            z5 = z3;
                            z6 = z4;
                        }
                        if (!z5 || !z) {
                            str5 = str15;
                            str4 = str;
                        } else {
                            String str19 = str3;
                            int i9 = 0;
                            String str20 = str;
                            while (true) {
                                str6 = str19;
                                str7 = str2;
                                str8 = str20;
                                String str21 = str20;
                                String str22 = str20;
                                String str23 = str20;
                                try {
                                    if (i9 >= xml.getAttributeCount()) {
                                        break;
                                    }
                                    String str24 = str19;
                                    String attributeName2 = xml.getAttributeName(i9);
                                    String str25 = str19;
                                    String attributeValue = xml.getAttributeValue(i9);
                                    String str26 = str19;
                                    if ("type".equals(attributeName2)) {
                                        str12 = str19;
                                        str11 = str2;
                                        str10 = str20;
                                        str9 = str15;
                                        if (!attributeValue.contains("mms")) {
                                            str6 = "";
                                            str7 = str6;
                                            str8 = str7;
                                            break;
                                        }
                                    } else if ("mmsc".equals(attributeName2)) {
                                        str12 = attributeValue;
                                        str11 = str2;
                                        str10 = str20;
                                        str9 = str15;
                                    } else if ("mmsproxy".equals(attributeName2)) {
                                        str12 = str19;
                                        str11 = attributeValue;
                                        str10 = str20;
                                        str9 = str15;
                                    } else {
                                        if (!"mmsport".equals(attributeName2)) {
                                            if ("carrier".equals(attributeName2)) {
                                                str12 = str19;
                                                str11 = str2;
                                                str10 = str20;
                                                str9 = attributeValue;
                                            } else {
                                                str12 = str19;
                                                str11 = str2;
                                                str10 = str20;
                                                str9 = str15;
                                                if ("port".equals(attributeName2)) {
                                                    str12 = str19;
                                                    str11 = str2;
                                                    str10 = str20;
                                                    str9 = str15;
                                                    if (!str20.equals("")) {
                                                    }
                                                }
                                            }
                                        }
                                        str9 = str15;
                                        str10 = attributeValue;
                                        str11 = str2;
                                        str12 = str19;
                                    }
                                    i9++;
                                    str19 = str12;
                                    str2 = str11;
                                    str20 = str10;
                                    str15 = str9;
                                } catch (IOException e6) {
                                    e = e6;
                                    str13 = str19;
                                    str2 = str2;
                                    str = str21;
                                    a.c("ApnUtils", "loadApns caught ", e);
                                    xml.close();
                                    str3 = str13;
                                    a.k("ApnUtils", "MMSC: " + str3 + ", MMS Proxy: " + str2 + ", MMS Port: " + str);
                                    return arrayList;
                                } catch (NumberFormatException e7) {
                                    e = e7;
                                    str13 = str19;
                                    str2 = str2;
                                    str = str22;
                                    a.c("ApnUtils", "loadApns caught ", e);
                                    xml.close();
                                    str3 = str13;
                                    a.k("ApnUtils", "MMSC: " + str3 + ", MMS Proxy: " + str2 + ", MMS Port: " + str);
                                    return arrayList;
                                } catch (XmlPullParserException e8) {
                                    e = e8;
                                    str13 = str19;
                                    str2 = str2;
                                    str = str23;
                                    a.c("ApnUtils", "loadApns caught ", e);
                                    xml.close();
                                    str3 = str13;
                                    a.k("ApnUtils", "MMSC: " + str3 + ", MMS Proxy: " + str2 + ", MMS Port: " + str);
                                    return arrayList;
                                }
                            }
                            str3 = str6;
                            str2 = str7;
                            str4 = str8;
                            str5 = str15;
                            if (!str6.equals("")) {
                                String str27 = str6;
                                String str28 = str6;
                                C2702d c2702d = new C2702d(null);
                                String str29 = str6;
                                c2702d.f11278a = str15;
                                String str30 = str6;
                                c2702d.f11279b = str6;
                                String str31 = str6;
                                c2702d.f11280c = str7;
                                String str32 = str6;
                                c2702d.f11281d = str8;
                                int i10 = 0;
                                while (true) {
                                    if (i10 >= arrayList.size()) {
                                        z2 = false;
                                        break;
                                    }
                                    String str33 = str6;
                                    C2702d c2702d2 = arrayList.get(i10);
                                    String str34 = str6;
                                    if (c2702d2.f11279b.equals(c2702d.f11279b)) {
                                        String str35 = str6;
                                        if (c2702d2.f11281d.equals(c2702d.f11281d)) {
                                            String str36 = str6;
                                            if (c2702d2.f11280c.equals(c2702d.f11280c)) {
                                                z2 = true;
                                                break;
                                            }
                                        } else {
                                            continue;
                                        }
                                    }
                                    i10++;
                                }
                                str3 = str6;
                                str2 = str7;
                                str4 = str8;
                                str5 = str15;
                                if (!z2) {
                                    arrayList.add(c2702d);
                                    str3 = str6;
                                    str2 = str7;
                                    str4 = str8;
                                    str5 = str15;
                                }
                            }
                        }
                        str = str4;
                        str14 = str5;
                    } catch (IOException e9) {
                        e = e9;
                    } catch (NumberFormatException e10) {
                        e = e10;
                        str13 = str16;
                    } catch (XmlPullParserException e11) {
                        e = e11;
                        str13 = str17;
                    }
                }
                xml.close();
            } catch (Throwable th) {
                xml.close();
                throw th;
            }
        } catch (IOException e12) {
            e = e12;
            str2 = "";
            str = str2;
        } catch (NumberFormatException e13) {
            e = e13;
            str2 = "";
            str = str2;
        } catch (XmlPullParserException e14) {
            e = e14;
            str2 = "";
            str = str2;
        }
        a.k("ApnUtils", "MMSC: " + str3 + ", MMS Proxy: " + str2 + ", MMS Port: " + str);
        return arrayList;
    }

    /* JADX WARN: Finally extract failed */
    /* JADX WARN: Removed duplicated region for block: B:58:0x01c0  */
    /* renamed from: g */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static void m2113g(android.content.Context r4) {
        /*
            Method dump skipped, instructions count: 550
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.klinker.android.send_message.C2698a.m2113g(android.content.Context):void");
    }

    /* renamed from: h */
    private static void m2112h(XmlPullParser xmlPullParser) {
        int next;
        do {
            next = xmlPullParser.next();
            if (next == 2) {
                return;
            }
        } while (next != 1);
    }

    /* renamed from: i */
    public static void m2111i(Context context, C2702d c2702d) {
        PreferenceManager.getDefaultSharedPreferences(context).edit().putString("mmsc_url", c2702d.f11279b).putString("mms_proxy", c2702d.f11280c).putString("mms_port", c2702d.f11281d).commit();
    }

    /* renamed from: j */
    public static void m2110j(Context context, ArrayList<C2702d> arrayList, AbstractC2703e abstractC2703e) {
        int size = arrayList.size();
        CharSequence[] charSequenceArr = new CharSequence[size];
        SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(context);
        String string = defaultSharedPreferences.getString("mmsc_url", "");
        String string2 = defaultSharedPreferences.getString("mms_proxy", "");
        String string3 = defaultSharedPreferences.getString("mms_port", "");
        int i = -1;
        int i2 = 0;
        while (i2 < size) {
            C2702d c2702d = arrayList.get(i2);
            StringBuilder sb = new StringBuilder();
            int i3 = i2 + 1;
            sb.append(i3);
            sb.append(". ");
            sb.append(c2702d.f11278a);
            charSequenceArr[i2] = sb.toString();
            int i4 = i;
            if (c2702d.f11279b.equals(string)) {
                i4 = i;
                if (c2702d.f11280c.equals(string2)) {
                    i4 = i;
                    if (c2702d.f11281d.equals(string3)) {
                        i4 = i2;
                    }
                }
            }
            i2 = i3;
            i = i4;
        }
        new AlertDialog.Builder(context).setSingleChoiceItems(charSequenceArr, i, new DialogInterface$OnClickListenerC2701c(context, arrayList, abstractC2703e)).setOnCancelListener(new DialogInterface$OnCancelListenerC2700b(abstractC2703e)).show();
    }
}
