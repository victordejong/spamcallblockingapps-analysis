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

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.klinker.android.send_message.a$a */
    /* loaded from: classes2-dex2jar.jar:com/klinker/android/send_message/a$a.class */
    public static final class DialogInterface$OnClickListenerC2699a implements DialogInterface.OnClickListener {

        /* renamed from: b */
        final /* synthetic */ Context f11271b;

        /* renamed from: c */
        final /* synthetic */ ArrayList f11272c;

        /* renamed from: d */
        final /* synthetic */ AbstractC2703e f11273d;

        DialogInterface$OnClickListenerC2699a(Context context, ArrayList arrayList, AbstractC2703e eVar) {
            this.f11271b = context;
            this.f11272c = arrayList;
            this.f11273d = eVar;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            C2698a.m2110j(this.f11271b, this.f11272c, this.f11273d);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.klinker.android.send_message.a$b */
    /* loaded from: classes2-dex2jar.jar:com/klinker/android/send_message/a$b.class */
    public static final class DialogInterface$OnCancelListenerC2700b implements DialogInterface.OnCancelListener {

        /* renamed from: b */
        final /* synthetic */ AbstractC2703e f11274b;

        DialogInterface$OnCancelListenerC2700b(AbstractC2703e eVar) {
            this.f11274b = eVar;
        }

        @Override // android.content.DialogInterface.OnCancelListener
        public void onCancel(DialogInterface dialogInterface) {
            AbstractC2703e eVar = this.f11274b;
            if (eVar != null) {
                eVar.m2109a();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.klinker.android.send_message.a$c */
    /* loaded from: classes2-dex2jar.jar:com/klinker/android/send_message/a$c.class */
    public static final class DialogInterface$OnClickListenerC2701c implements DialogInterface.OnClickListener {

        /* renamed from: b */
        final /* synthetic */ Context f11275b;

        /* renamed from: c */
        final /* synthetic */ ArrayList f11276c;

        /* renamed from: d */
        final /* synthetic */ AbstractC2703e f11277d;

        DialogInterface$OnClickListenerC2701c(Context context, ArrayList arrayList, AbstractC2703e eVar) {
            this.f11275b = context;
            this.f11276c = arrayList;
            this.f11277d = eVar;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            C2698a.m2111i(this.f11275b, (C2702d) this.f11276c.get(i));
            AbstractC2703e eVar = this.f11277d;
            if (eVar != null) {
                eVar.m2109a();
            }
            dialogInterface.dismiss();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
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

        /* synthetic */ C2702d(DialogInterface$OnClickListenerC2699a aVar) {
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
        if (next != 2) {
            throw new XmlPullParserException("No start tag found");
        } else if (!xmlPullParser.getName().equals(str)) {
            throw new XmlPullParserException("Unexpected start tag: found " + xmlPullParser.getName() + ", expected " + str);
        }
    }

    /* renamed from: d */
    public static void m2116d(Context context, AbstractC2703e eVar) {
        m2113g(context);
        ArrayList<C2702d> f = m2114f(context);
        if (f == null || f.size() == 0) {
            a.k("ApnUtils", "Found no APNs :( Damn CDMA network probably.");
            Toast.makeText(context, context.getString(C2707d.auto_select_failed), 0).show();
            if (eVar == null) {
                return;
            }
        } else if (f.size() == 1) {
            m2111i(context, f.get(0));
            if (eVar == null) {
                return;
            }
        } else if (!PreferenceManager.getDefaultSharedPreferences(context).getBoolean("has_seen_select_apns_warning", false)) {
            new AlertDialog.Builder(context).setTitle(C2707d.auto_select_apn).setMessage(C2707d.auto_select_multiple_apns).setPositiveButton(C2707d.f11293ok, new DialogInterface$OnClickListenerC2699a(context, f, eVar)).show();
            PreferenceManager.getDefaultSharedPreferences(context).edit().putBoolean("has_seen_select_apns_warning", true).commit();
            return;
        } else {
            m2110j(context, f, eVar);
            return;
        }
        eVar.m2109a();
    }

    /* renamed from: e */
    private static boolean m2115e(String str) {
        return str != null && !str.isEmpty() && !str.contains("null");
    }

    /* renamed from: f */
    private static ArrayList<C2702d> m2114f(Context context) {
        int i;
        int i2;
        int i3;
        int i4;
        String str;
        String str2;
        Throwable e;
        String str3;
        String str4;
        String str5;
        boolean z;
        XmlResourceParser xml = context.getResources().getXml(C2708e.apns);
        ArrayList<C2702d> arrayList = new ArrayList<>();
        String networkOperator = ((TelephonyManager) context.getSystemService("phone")).getNetworkOperator();
        String str6 = "";
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
                str6 = "";
                str2 = str6;
                str = str2;
                String str7 = str;
                while (true) {
                    str6 = str6;
                    try {
                        m2112h(xml);
                        if (xml.getName() == null) {
                            break;
                        }
                        int i6 = 0;
                        boolean z2 = false;
                        boolean z3 = false;
                        while (true) {
                            z = true;
                            if (i6 >= xml.getAttributeCount()) {
                                break;
                            }
                            try {
                                String attributeName = xml.getAttributeName(i6);
                                int parseInt = Integer.parseInt(xml.getAttributeValue(i6));
                                try {
                                    if (!"mcc".equals(attributeName) || i3 != parseInt) {
                                        z2 = z2;
                                        z3 = z3;
                                        if ("mnc".equals(attributeName)) {
                                            z2 = z2;
                                            z3 = z3;
                                            if (i4 == parseInt) {
                                                z3 = true;
                                                z2 = z2;
                                            }
                                        }
                                    } else {
                                        z2 = true;
                                        z3 = z3;
                                    }
                                } catch (Exception e4) {
                                    z2 = z2;
                                    z3 = z3;
                                }
                            } catch (Exception e5) {
                                z3 = z3;
                                z2 = z2;
                            }
                            i6++;
                        }
                        if (!z2 || !z3) {
                            str7 = str7;
                            str = str;
                        } else {
                            String str8 = str6;
                            int i7 = 0;
                            String str9 = str;
                            while (true) {
                                str3 = str8;
                                str4 = str2;
                                str5 = str9;
                                try {
                                    if (i7 >= xml.getAttributeCount()) {
                                        break;
                                    }
                                    String attributeName2 = xml.getAttributeName(i7);
                                    String attributeValue = xml.getAttributeValue(i7);
                                    if ("type".equals(attributeName2)) {
                                        str8 = str8;
                                        str2 = str2;
                                        str9 = str9;
                                        str7 = str7;
                                        if (!attributeValue.contains("mms")) {
                                            str3 = "";
                                            str4 = str3;
                                            str5 = str4;
                                            break;
                                        }
                                    } else if ("mmsc".equals(attributeName2)) {
                                        str8 = attributeValue;
                                        str2 = str2;
                                        str9 = str9;
                                        str7 = str7;
                                    } else if ("mmsproxy".equals(attributeName2)) {
                                        str8 = str8;
                                        str2 = attributeValue;
                                        str9 = str9;
                                        str7 = str7;
                                    } else {
                                        if (!"mmsport".equals(attributeName2)) {
                                            if ("carrier".equals(attributeName2)) {
                                                str8 = str8;
                                                str2 = str2;
                                                str9 = str9;
                                                str7 = attributeValue;
                                            } else {
                                                str8 = str8;
                                                str2 = str2;
                                                str9 = str9;
                                                str7 = str7;
                                                if ("port".equals(attributeName2)) {
                                                    str8 = str8;
                                                    str2 = str2;
                                                    str9 = str9;
                                                    str7 = str7;
                                                    if (!str9.equals("")) {
                                                    }
                                                }
                                            }
                                        }
                                        str7 = str7;
                                        str9 = attributeValue;
                                        str2 = str2;
                                        str8 = str8;
                                    }
                                    i7++;
                                } catch (IOException e6) {
                                    e = e6;
                                    str6 = str8;
                                    str2 = str2;
                                    str = str9;
                                    a.c("ApnUtils", "loadApns caught ", e);
                                    a.k("ApnUtils", "MMSC: " + str6 + ", MMS Proxy: " + str2 + ", MMS Port: " + str);
                                    return arrayList;
                                } catch (NumberFormatException e7) {
                                    e = e7;
                                    str6 = str8;
                                    str2 = str2;
                                    str = str9;
                                    a.c("ApnUtils", "loadApns caught ", e);
                                    a.k("ApnUtils", "MMSC: " + str6 + ", MMS Proxy: " + str2 + ", MMS Port: " + str);
                                    return arrayList;
                                } catch (XmlPullParserException e8) {
                                    e = e8;
                                    str6 = str8;
                                    str2 = str2;
                                    str = str9;
                                    a.c("ApnUtils", "loadApns caught ", e);
                                    a.k("ApnUtils", "MMSC: " + str6 + ", MMS Proxy: " + str2 + ", MMS Port: " + str);
                                    return arrayList;
                                }
                            }
                            str6 = str3;
                            str2 = str4;
                            str = str5;
                            str7 = str7;
                            if (!str3.equals("")) {
                                C2702d dVar = new C2702d(null);
                                dVar.f11278a = str7;
                                dVar.f11279b = str3;
                                dVar.f11280c = str4;
                                dVar.f11281d = str5;
                                int i8 = 0;
                                while (true) {
                                    if (i8 >= arrayList.size()) {
                                        z = false;
                                        break;
                                    }
                                    C2702d dVar2 = arrayList.get(i8);
                                    if (dVar2.f11279b.equals(dVar.f11279b) && dVar2.f11281d.equals(dVar.f11281d) && dVar2.f11280c.equals(dVar.f11280c)) {
                                        break;
                                    }
                                    i8++;
                                }
                                str6 = str3;
                                str2 = str4;
                                str = str5;
                                str7 = str7;
                                if (!z) {
                                    arrayList.add(dVar);
                                    str6 = str3;
                                    str2 = str4;
                                    str = str5;
                                    str7 = str7;
                                }
                            }
                        }
                    } catch (IOException e9) {
                        e = e9;
                    } catch (NumberFormatException e10) {
                        e = e10;
                        str6 = str6;
                    } catch (XmlPullParserException e11) {
                        e = e11;
                        str6 = str6;
                    }
                }
                xml.close();
            } finally {
                xml.close();
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
        a.k("ApnUtils", "MMSC: " + str6 + ", MMS Proxy: " + str2 + ", MMS Port: " + str);
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

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: i */
    public static void m2111i(Context context, C2702d dVar) {
        PreferenceManager.getDefaultSharedPreferences(context).edit().putString("mmsc_url", dVar.f11279b).putString("mms_proxy", dVar.f11280c).putString("mms_port", dVar.f11281d).commit();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: j */
    public static void m2110j(Context context, ArrayList<C2702d> arrayList, AbstractC2703e eVar) {
        int size = arrayList.size();
        CharSequence[] charSequenceArr = new CharSequence[size];
        SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(context);
        String string = defaultSharedPreferences.getString("mmsc_url", "");
        String string2 = defaultSharedPreferences.getString("mms_proxy", "");
        String string3 = defaultSharedPreferences.getString("mms_port", "");
        int i = -1;
        int i2 = 0;
        while (i2 < size) {
            C2702d dVar = arrayList.get(i2);
            StringBuilder sb = new StringBuilder();
            int i3 = i2 + 1;
            sb.append(i3);
            sb.append(". ");
            sb.append(dVar.f11278a);
            charSequenceArr[i2] = sb.toString();
            i = i;
            if (dVar.f11279b.equals(string)) {
                i = i;
                if (dVar.f11280c.equals(string2)) {
                    i = i;
                    if (dVar.f11281d.equals(string3)) {
                        i = i2;
                    }
                }
            }
            i2 = i3;
        }
        new AlertDialog.Builder(context).setSingleChoiceItems(charSequenceArr, i, new DialogInterface$OnClickListenerC2701c(context, arrayList, eVar)).setOnCancelListener(new DialogInterface$OnCancelListenerC2700b(eVar)).show();
    }
}
