package com.android.contacts.model.account;

import android.content.ContentValues;
import android.content.Context;
import android.content.res.Resources;
import android.provider.ContactsContract;
import android.util.AttributeSet;
import android.util.Log;
import com.android.contacts.activities.ContactDetailCallogActivity;
import com.android.contacts.model.account.a;
import com.android.contacts.util.AsusRedPointNotificationDualPanelHelper;
import com.android.contacts.util.CoverUtils;
import com.android.contacts.util.DateUtils;
import com.asus.updatesdk.BuildConfig;
import com.asus.updatesdk.utility.SystemPropertiesReflection;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import org.xmlpull.v1.XmlPullParser;
/* loaded from: classes-dex2jar.jar:com/android/contacts/model/account/d.class */
public abstract class d extends com.android.contacts.model.account.a {

    /* loaded from: classes-dex2jar.jar:com/android/contacts/model/account/d$a.class */
    public static abstract class a implements a.f {
        protected abstract int a(Integer num);

        @Override // com.android.contacts.model.account.a.f
        public final CharSequence a(Context context, ContentValues contentValues) {
            CharSequence text;
            Integer asInteger = contentValues.getAsInteger(a());
            String asString = contentValues.getAsString(b());
            Resources resources = context.getResources();
            int a2 = a(asInteger);
            if (asInteger == null || !b(asInteger)) {
                text = resources.getText(a2);
            } else {
                String str = asString;
                if (asString == null) {
                    str = BuildConfig.FLAVOR;
                }
                text = resources.getString(a2, str);
            }
            return text;
        }

        protected String a() {
            return CoverUtils.CoverData.COVER_TYPE;
        }

        protected String b() {
            return CoverUtils.CoverData.USER_SET;
        }

        protected boolean b(Integer num) {
            return num.intValue() == 0;
        }

        public String toString() {
            return getClass().getSimpleName();
        }
    }

    /* loaded from: classes-dex2jar.jar:com/android/contacts/model/account/d$b.class */
    public static final class b extends a {
        @Override // com.android.contacts.model.account.d.a
        protected final int a(Integer num) {
            int i;
            if (num != null) {
                switch (num.intValue()) {
                    case 1:
                        i = 2131755603;
                        break;
                    case 2:
                        i = 2131755606;
                        break;
                    case 3:
                        i = 2131755605;
                        break;
                    case 4:
                        i = 2131755604;
                        break;
                    default:
                        i = 2131755602;
                        break;
                }
            } else {
                i = 2131755600;
            }
            return i;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/android/contacts/model/account/d$c.class */
    private static final class c extends i {
        private c() {
            super((byte) 0);
        }

        /* synthetic */ c(byte b2) {
            this();
        }

        @Override // com.android.contacts.model.account.d.i
        protected final a.d a(AttributeSet attributeSet, String str) {
            a.d dVar;
            if ("home".equals(str)) {
                dVar = d.b(1);
            } else if ("work".equals(str)) {
                dVar = d.b(2);
            } else if ("other".equals(str)) {
                dVar = d.b(3);
            } else if ("mobile".equals(str)) {
                dVar = d.b(4);
            } else if ("custom".equals(str)) {
                dVar = d.b(0);
                dVar.c = true;
                dVar.e = CoverUtils.CoverData.USER_SET;
            } else {
                dVar = null;
            }
            return dVar;
        }

        @Override // com.android.contacts.model.account.d.i
        public final String a() {
            return "email";
        }

        @Override // com.android.contacts.model.account.d.i
        public final List<com.android.contacts.model.a.b> a(Context context, XmlPullParser xmlPullParser, AttributeSet attributeSet) {
            com.android.contacts.model.a.b a2 = a(xmlPullParser, attributeSet, false, "vnd.android.cursor.item/email_v2", CoverUtils.CoverData.COVER_TYPE, 2131755601, 15, 2131427673, new b(), new v(CoverUtils.CoverData.COVER_URI));
            a2.o.add(new a.c(CoverUtils.CoverData.COVER_URI, 2131755601, 33));
            return com.google.a.b.r.a(a2);
        }
    }

    /* renamed from: com.android.contacts.model.account.d$d  reason: collision with other inner class name */
    /* loaded from: classes-dex2jar.jar:com/android/contacts/model/account/d$d.class */
    public static final class C0051d extends a {
        @Override // com.android.contacts.model.account.d.a
        protected final int a(Integer num) {
            return ContactsContract.CommonDataKinds.Event.getTypeResource(num);
        }
    }

    /* loaded from: classes-dex2jar.jar:com/android/contacts/model/account/d$e.class */
    private static final class e extends i {
        private e() {
            super((byte) 0);
        }

        /* synthetic */ e(byte b2) {
            this();
        }

        @Override // com.android.contacts.model.account.d.i
        protected final a.d a(AttributeSet attributeSet, String str) {
            a.d dVar;
            boolean attributeBooleanValue = attributeSet.getAttributeBooleanValue(null, "yearOptional", false);
            if ("birthday".equals(str)) {
                dVar = d.a(3, attributeBooleanValue);
                dVar.d = 1;
            } else if ("anniversary".equals(str)) {
                dVar = d.a(1, attributeBooleanValue);
            } else if ("other".equals(str)) {
                dVar = d.a(2, attributeBooleanValue);
            } else if ("custom".equals(str)) {
                dVar = d.a(0, attributeBooleanValue);
                dVar.c = true;
                dVar.e = CoverUtils.CoverData.USER_SET;
            } else {
                dVar = null;
            }
            return dVar;
        }

        @Override // com.android.contacts.model.account.d.i
        public final String a() {
            return "event";
        }

        @Override // com.android.contacts.model.account.d.i
        public final List<com.android.contacts.model.a.b> a(Context context, XmlPullParser xmlPullParser, AttributeSet attributeSet) {
            com.android.contacts.model.a.b a2 = a(xmlPullParser, attributeSet, false, "vnd.android.cursor.item/contact_event", CoverUtils.CoverData.COVER_TYPE, 2131755615, 150, 2131427542, new C0051d(), new v(CoverUtils.CoverData.COVER_URI));
            a2.o.add(new a.c(CoverUtils.CoverData.COVER_URI, 2131755615, 1));
            if (attributeSet.getAttributeBooleanValue(null, "dateWithTime", false)) {
                a2.r = DateUtils.NO_YEAR_DATE_AND_TIME_FORMAT;
                a2.s = DateUtils.DATE_AND_TIME_FORMAT;
            } else {
                a2.r = DateUtils.NO_YEAR_DATE_FORMAT;
                a2.s = DateUtils.FULL_DATE_FORMAT;
            }
            return com.google.a.b.r.a(a2);
        }
    }

    /* loaded from: classes-dex2jar.jar:com/android/contacts/model/account/d$f.class */
    private static final class f extends i {
        private f() {
            super((byte) 0);
        }

        /* synthetic */ f(byte b2) {
            this();
        }

        @Override // com.android.contacts.model.account.d.i
        public final String a() {
            return "group_membership";
        }

        @Override // com.android.contacts.model.account.d.i
        public final List<com.android.contacts.model.a.b> a(Context context, XmlPullParser xmlPullParser, AttributeSet attributeSet) {
            com.android.contacts.model.a.b a2 = a(xmlPullParser, attributeSet, false, "vnd.android.cursor.item/group_membership", null, 2131755682, 999, -1, null, null);
            a2.o.add(new a.c(CoverUtils.CoverData.COVER_URI, -1, -1));
            a2.t = 10;
            a(a2);
            return com.google.a.b.r.a(a2);
        }
    }

    /* loaded from: classes-dex2jar.jar:com/android/contacts/model/account/d$g.class */
    public static final class g extends a {
        @Override // com.android.contacts.model.account.d.a
        protected final int a(Integer num) {
            int i;
            if (num != null) {
                i = 2131755364;
                switch (num.intValue()) {
                    case 0:
                        i = 2131755365;
                        break;
                    case 1:
                        i = 2131755369;
                        break;
                    case 2:
                        i = 2131755372;
                        break;
                    case 3:
                        i = 2131755371;
                        break;
                    case 4:
                        i = 2131755370;
                        break;
                    case 5:
                        i = 2131755366;
                        break;
                    case 6:
                        i = 2131755367;
                        break;
                    case 7:
                        i = 2131755368;
                        break;
                    case 8:
                        break;
                    default:
                        i = 2131755364;
                        break;
                }
            } else {
                i = 2131755364;
            }
            return i;
        }

        @Override // com.android.contacts.model.account.d.a
        protected final String a() {
            return "data5";
        }

        @Override // com.android.contacts.model.account.d.a
        protected final String b() {
            return "data6";
        }
    }

    /* loaded from: classes-dex2jar.jar:com/android/contacts/model/account/d$h.class */
    private static final class h extends i {
        private h() {
            super((byte) 0);
        }

        /* synthetic */ h(byte b2) {
            this();
        }

        @Override // com.android.contacts.model.account.d.i
        protected final a.d a(AttributeSet attributeSet, String str) {
            a.d dVar;
            if ("aim".equals(str)) {
                dVar = d.d(0);
            } else if ("msn".equals(str)) {
                dVar = d.d(1);
            } else if ("yahoo".equals(str)) {
                dVar = d.d(2);
            } else if ("skype".equals(str)) {
                dVar = d.d(3);
            } else if ("qq".equals(str)) {
                dVar = d.d(4);
            } else if ("google_talk".equals(str)) {
                dVar = d.d(5);
            } else if ("icq".equals(str)) {
                dVar = d.d(6);
            } else if ("jabber".equals(str)) {
                dVar = d.d(7);
            } else if ("custom".equals(str)) {
                dVar = d.d(-1);
                dVar.c = true;
                dVar.e = "data6";
            } else {
                dVar = null;
            }
            return dVar;
        }

        @Override // com.android.contacts.model.account.d.i
        public final String a() {
            return "im";
        }

        @Override // com.android.contacts.model.account.d.i
        public final List<com.android.contacts.model.a.b> a(Context context, XmlPullParser xmlPullParser, AttributeSet attributeSet) {
            com.android.contacts.model.a.b a2 = a(xmlPullParser, attributeSet, false, "vnd.android.cursor.item/im", "data5", 2131755690, 20, 2131427673, new g(), new v(CoverUtils.CoverData.COVER_URI));
            a2.o.add(new a.c(CoverUtils.CoverData.COVER_URI, 2131755690, 33));
            a2.p = new ContentValues();
            a2.p.put(CoverUtils.CoverData.COVER_TYPE, (Integer) 3);
            return com.google.a.b.r.a(a2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/android/contacts/model/account/d$i.class */
    public static abstract class i {
        private i() {
        }

        /* synthetic */ i(byte b2) {
            this();
        }

        protected static void a(com.android.contacts.model.a.b bVar) {
            if (bVar.m != 1) {
                throw new a.C0050a("Kind " + bVar.f1997b + " must have 'overallMax=\"1\"'");
            }
        }

        private void a(XmlPullParser xmlPullParser, AttributeSet attributeSet, com.android.contacts.model.a.b bVar, boolean z) {
            int depth = xmlPullParser.getDepth();
            while (true) {
                int next = xmlPullParser.next();
                if (next == 1) {
                    return;
                }
                if (next != 3 || xmlPullParser.getDepth() > depth) {
                    int depth2 = xmlPullParser.getDepth();
                    if (next == 2 && depth2 == depth + 1) {
                        String name = xmlPullParser.getName();
                        if (!"Type".equals(name)) {
                            throw new a.C0050a("Unknown tag: " + name);
                        } else if (z) {
                            List<a.d> list = bVar.n;
                            String attributeValue = attributeSet.getAttributeValue(null, "type");
                            a.d a2 = a(attributeSet, attributeValue);
                            if (a2 == null) {
                                throw new a.C0050a("Undefined type '" + attributeValue + "' for data kind '" + bVar.f1997b + "'");
                            }
                            a2.d = attributeSet.getAttributeIntValue(null, "maxOccurs", -1);
                            list.add(a2);
                        } else {
                            throw new a.C0050a("Kind " + bVar.f1997b + " can't have types");
                        }
                    }
                } else {
                    return;
                }
            }
        }

        protected final com.android.contacts.model.a.b a(XmlPullParser xmlPullParser, AttributeSet attributeSet, boolean z, String str, String str2, int i, int i2, int i3, a.f fVar, a.f fVar2) {
            if (Log.isLoggable("BaseAccountType", 3)) {
                Log.d("BaseAccountType", "Adding DataKind: " + str);
            }
            com.android.contacts.model.a.b bVar = new com.android.contacts.model.a.b(str, i, i2, i3);
            bVar.l = str2;
            bVar.h = fVar;
            bVar.j = fVar2;
            bVar.o = new ArrayList();
            if (!z) {
                bVar.m = attributeSet.getAttributeIntValue(null, "maxOccurs", -1);
                if (bVar.l != null) {
                    bVar.n = new ArrayList();
                    a(xmlPullParser, attributeSet, bVar, true);
                    if (bVar.n.size() == 0) {
                        throw new a.C0050a("Kind " + bVar.f1997b + " must have at least one type");
                    }
                } else {
                    a(xmlPullParser, attributeSet, bVar, false);
                }
            }
            return bVar;
        }

        protected a.d a(AttributeSet attributeSet, String str) {
            return null;
        }

        public abstract String a();

        public abstract List<com.android.contacts.model.a.b> a(Context context, XmlPullParser xmlPullParser, AttributeSet attributeSet);
    }

    /* loaded from: classes-dex2jar.jar:com/android/contacts/model/account/d$j.class */
    private static final class j {

        /* renamed from: a  reason: collision with root package name */
        public static final j f2010a = new j();

        /* renamed from: b  reason: collision with root package name */
        final Map<String, i> f2011b = com.google.a.b.s.a();

        private j() {
            a(new k((byte) 0));
            a(new l((byte) 0));
            a(new q((byte) 0));
            a(new c((byte) 0));
            a(new x((byte) 0));
            a(new h((byte) 0));
            a(new n((byte) 0));
            a(new r((byte) 0));
            a(new m((byte) 0));
            a(new y((byte) 0));
            String a2 = com.asus.contacts.a.a(SystemPropertiesReflection.Key.BUILD_ASUS_SKU, BuildConfig.FLAVOR);
            if (!a2.toLowerCase().startsWith("cn") && !a2.toLowerCase().startsWith("cta")) {
                a(new w((byte) 0));
            }
            a(new f((byte) 0));
            a(new e((byte) 0));
            a(new u((byte) 0));
        }

        private void a(i iVar) {
            this.f2011b.put(iVar.a(), iVar);
        }
    }

    /* loaded from: classes-dex2jar.jar:com/android/contacts/model/account/d$k.class */
    private static final class k extends i {
        private k() {
            super((byte) 0);
        }

        /* synthetic */ k(byte b2) {
            this();
        }

        private static void a(boolean z, String str) {
            if (!z) {
                throw new a.C0050a(str + " must be true");
            }
        }

        @Override // com.android.contacts.model.account.d.i
        public final String a() {
            return ContactDetailCallogActivity.EXTRA_NAME;
        }

        @Override // com.android.contacts.model.account.d.i
        public final List<com.android.contacts.model.a.b> a(Context context, XmlPullParser xmlPullParser, AttributeSet attributeSet) {
            boolean z = context.getResources().getBoolean(2130968585);
            boolean attributeBooleanValue = attributeSet.getAttributeBooleanValue(null, "supportsDisplayName", false);
            boolean attributeBooleanValue2 = attributeSet.getAttributeBooleanValue(null, "supportsPrefix", false);
            boolean attributeBooleanValue3 = attributeSet.getAttributeBooleanValue(null, "supportsMiddleName", false);
            boolean attributeBooleanValue4 = attributeSet.getAttributeBooleanValue(null, "supportsSuffix", false);
            boolean attributeBooleanValue5 = attributeSet.getAttributeBooleanValue(null, "supportsPhoneticFamilyName", false);
            boolean attributeBooleanValue6 = attributeSet.getAttributeBooleanValue(null, "supportsPhoneticMiddleName", false);
            boolean attributeBooleanValue7 = attributeSet.getAttributeBooleanValue(null, "supportsPhoneticGivenName", false);
            a(attributeBooleanValue, "supportsDisplayName");
            a(attributeBooleanValue2, "supportsPrefix");
            a(attributeBooleanValue3, "supportsMiddleName");
            a(attributeBooleanValue4, "supportsSuffix");
            a(attributeBooleanValue5, "supportsPhoneticFamilyName");
            a(attributeBooleanValue6, "supportsPhoneticMiddleName");
            a(attributeBooleanValue7, "supportsPhoneticGivenName");
            ArrayList arrayList = new ArrayList();
            com.android.contacts.model.a.b a2 = a(xmlPullParser, attributeSet, false, "vnd.android.cursor.item/name", null, 2131755859, -1, 2131427672, new v(2131755859), new v(CoverUtils.CoverData.COVER_URI));
            a(a2);
            arrayList.add(a2);
            a2.o.add(new a.c(CoverUtils.CoverData.COVER_URI, 2131755662, 8289));
            List<a.c> list = a2.o;
            a.c cVar = new a.c("data4", 2131755868, 8289);
            cVar.g = true;
            list.add(cVar);
            List<a.c> list2 = a2.o;
            a.c cVar2 = new a.c(CoverUtils.CoverData.USER_SET, 2131755861, 8289);
            cVar2.g = true;
            list2.add(cVar2);
            List<a.c> list3 = a2.o;
            a.c cVar3 = new a.c("data5", 2131755863, 8289);
            cVar3.g = true;
            list3.add(cVar3);
            List<a.c> list4 = a2.o;
            a.c cVar4 = new a.c(CoverUtils.CoverData.COVER_TYPE, 2131755862, 8289);
            cVar4.g = true;
            list4.add(cVar4);
            List<a.c> list5 = a2.o;
            a.c cVar5 = new a.c("data6", 2131755869, 8289);
            cVar5.g = true;
            list5.add(cVar5);
            a2.o.add(new a.c("data9", 2131755865, 193));
            a2.o.add(new a.c("data8", 2131755867, 193));
            a2.o.add(new a.c("data7", 2131755866, 193));
            com.android.contacts.model.a.b a3 = a(xmlPullParser, attributeSet, true, "#displayName", null, 2131755859, -1, 2131427673, new v(2131755859), new v(CoverUtils.CoverData.COVER_URI));
            a3.m = 1;
            arrayList.add(a3);
            List<a.c> list6 = a3.o;
            a.c cVar6 = new a.c(CoverUtils.CoverData.COVER_URI, 2131755662, 8289);
            cVar6.f = true;
            list6.add(cVar6);
            if (!z) {
                List<a.c> list7 = a3.o;
                a.c cVar7 = new a.c("data4", 2131755868, 8289);
                cVar7.g = true;
                list7.add(cVar7);
                List<a.c> list8 = a3.o;
                a.c cVar8 = new a.c(CoverUtils.CoverData.USER_SET, 2131755861, 8289);
                cVar8.g = true;
                list8.add(cVar8);
                List<a.c> list9 = a3.o;
                a.c cVar9 = new a.c("data5", 2131755863, 8289);
                cVar9.g = true;
                list9.add(cVar9);
                List<a.c> list10 = a3.o;
                a.c cVar10 = new a.c(CoverUtils.CoverData.COVER_TYPE, 2131755862, 8289);
                cVar10.g = true;
                list10.add(cVar10);
                List<a.c> list11 = a3.o;
                a.c cVar11 = new a.c("data6", 2131755869, 8289);
                cVar11.g = true;
                list11.add(cVar11);
            } else {
                List<a.c> list12 = a3.o;
                a.c cVar12 = new a.c("data4", 2131755868, 8289);
                cVar12.g = true;
                list12.add(cVar12);
                List<a.c> list13 = a3.o;
                a.c cVar13 = new a.c(CoverUtils.CoverData.COVER_TYPE, 2131755862, 8289);
                cVar13.g = true;
                list13.add(cVar13);
                List<a.c> list14 = a3.o;
                a.c cVar14 = new a.c("data5", 2131755863, 8289);
                cVar14.g = true;
                list14.add(cVar14);
                List<a.c> list15 = a3.o;
                a.c cVar15 = new a.c(CoverUtils.CoverData.USER_SET, 2131755861, 8289);
                cVar15.g = true;
                list15.add(cVar15);
                List<a.c> list16 = a3.o;
                a.c cVar16 = new a.c("data6", 2131755869, 8289);
                cVar16.g = true;
                list16.add(cVar16);
            }
            com.android.contacts.model.a.b a4 = a(xmlPullParser, attributeSet, true, "#phoneticName", null, 2131755864, -1, 2131427615, new v(2131755859), new v(CoverUtils.CoverData.COVER_URI));
            a4.m = 1;
            arrayList.add(a4);
            List<a.c> list17 = a4.o;
            a.c cVar17 = new a.c("#phoneticName", 2131755864, 193);
            cVar17.f = true;
            list17.add(cVar17);
            List<a.c> list18 = a4.o;
            a.c cVar18 = new a.c("data9", 2131755865, 193);
            cVar18.g = true;
            list18.add(cVar18);
            List<a.c> list19 = a4.o;
            a.c cVar19 = new a.c("data8", 2131755867, 193);
            cVar19.g = true;
            list19.add(cVar19);
            List<a.c> list20 = a4.o;
            a.c cVar20 = new a.c("data7", 2131755866, 193);
            cVar20.g = true;
            list20.add(cVar20);
            return arrayList;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/android/contacts/model/account/d$l.class */
    private static final class l extends i {
        private l() {
            super((byte) 0);
        }

        /* synthetic */ l(byte b2) {
            this();
        }

        @Override // com.android.contacts.model.account.d.i
        public final String a() {
            return "nickname";
        }

        @Override // com.android.contacts.model.account.d.i
        public final List<com.android.contacts.model.a.b> a(Context context, XmlPullParser xmlPullParser, AttributeSet attributeSet) {
            com.android.contacts.model.a.b a2 = a(xmlPullParser, attributeSet, false, "vnd.android.cursor.item/nickname", null, 2131755883, 115, 2131427673, new v(2131755883), new v(CoverUtils.CoverData.COVER_URI));
            a2.o.add(new a.c(CoverUtils.CoverData.COVER_URI, 2131755883, 8289));
            a2.p = new ContentValues();
            a2.p.put(CoverUtils.CoverData.COVER_TYPE, (Integer) 1);
            a(a2);
            return com.google.a.b.r.a(a2);
        }
    }

    /* loaded from: classes-dex2jar.jar:com/android/contacts/model/account/d$m.class */
    private static final class m extends i {
        private m() {
            super((byte) 0);
        }

        /* synthetic */ m(byte b2) {
            this();
        }

        @Override // com.android.contacts.model.account.d.i
        public final String a() {
            return "note";
        }

        @Override // com.android.contacts.model.account.d.i
        public final List<com.android.contacts.model.a.b> a(Context context, XmlPullParser xmlPullParser, AttributeSet attributeSet) {
            com.android.contacts.model.a.b a2 = a(xmlPullParser, attributeSet, false, "vnd.android.cursor.item/note", null, 2131755733, 110, 2131427673, new v(2131755733), new v(CoverUtils.CoverData.COVER_URI));
            a2.o.add(new a.c(CoverUtils.CoverData.COVER_URI, 2131755733, 147457));
            a2.t = 100;
            a(a2);
            return com.google.a.b.r.a(a2);
        }
    }

    /* loaded from: classes-dex2jar.jar:com/android/contacts/model/account/d$n.class */
    private static final class n extends i {
        private n() {
            super((byte) 0);
        }

        /* synthetic */ n(byte b2) {
            this();
        }

        @Override // com.android.contacts.model.account.d.i
        public final String a() {
            return "organization";
        }

        @Override // com.android.contacts.model.account.d.i
        public final List<com.android.contacts.model.a.b> a(Context context, XmlPullParser xmlPullParser, AttributeSet attributeSet) {
            com.android.contacts.model.a.b a2 = a(xmlPullParser, attributeSet, false, "vnd.android.cursor.item/organization", null, 2131755932, 5, 2131427673, new v(CoverUtils.CoverData.COVER_URI), new v("data4"));
            a2.o.add(new a.c(CoverUtils.CoverData.COVER_URI, 2131755664, 8193));
            a2.o.add(new a.c("data4", 2131755665, 8193));
            a(a2);
            return com.google.a.b.r.a(a2);
        }
    }

    /* loaded from: classes-dex2jar.jar:com/android/contacts/model/account/d$o.class */
    public static final class o extends a {
        @Override // com.android.contacts.model.account.d.a
        protected final int a(Integer num) {
            int i = 2131756168;
            if (num != null) {
                switch (num.intValue()) {
                    case 1:
                        i = 2131756163;
                        break;
                    case 2:
                        i = 2131756167;
                        break;
                    case 3:
                        i = 2131756177;
                        break;
                    case 4:
                        i = 2131756162;
                        break;
                    case 5:
                        i = 2131756161;
                        break;
                    case 6:
                        i = 2131756170;
                        break;
                    case 7:
                        break;
                    case 8:
                        i = 2131756156;
                        break;
                    case 9:
                        i = 2131756157;
                        break;
                    case 10:
                        i = 2131756158;
                        break;
                    case 11:
                        i = 2131756164;
                        break;
                    case 12:
                        i = 2131756165;
                        break;
                    case 13:
                        i = 2131756169;
                        break;
                    case AsusRedPointNotificationDualPanelHelper.ID.UPDATE_VERSION /* 14 */:
                        i = 2131756171;
                        break;
                    case 15:
                        i = 2131756175;
                        break;
                    case 16:
                        i = 2131756176;
                        break;
                    case 17:
                        i = 2131756178;
                        break;
                    case 18:
                        i = 2131756179;
                        break;
                    case 19:
                        i = 2131756155;
                        break;
                    case 20:
                        i = 2131756166;
                        break;
                    default:
                        i = 2131756159;
                        break;
                }
            }
            return i;
        }

        @Override // com.android.contacts.model.account.d.a
        protected final boolean b(Integer num) {
            return num.intValue() == 0 || num.intValue() == 19;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/android/contacts/model/account/d$p.class */
    public static final class p extends a {
        @Override // com.android.contacts.model.account.d.a
        protected final int a(Integer num) {
            int i = 2131755287;
            if (num != null) {
                switch (num.intValue()) {
                    case 1:
                        i = 2131755275;
                        break;
                    case 2:
                        i = 2131755286;
                        break;
                    case 3:
                        i = 2131755293;
                        break;
                    case 4:
                        i = 2131755264;
                        break;
                    case 5:
                        i = 2131755263;
                        break;
                    case 6:
                        i = 2131755289;
                        break;
                    case 7:
                        break;
                    case 8:
                        i = 2131755258;
                        break;
                    case 9:
                        i = 2131755259;
                        break;
                    case 10:
                        i = 2131755260;
                        break;
                    case 11:
                        i = 2131755276;
                        break;
                    case 12:
                        i = 2131755284;
                        break;
                    case 13:
                        i = 2131755288;
                        break;
                    case AsusRedPointNotificationDualPanelHelper.ID.UPDATE_VERSION /* 14 */:
                        i = 2131755290;
                        break;
                    case 15:
                        i = 2131755291;
                        break;
                    case 16:
                        i = 2131755292;
                        break;
                    case 17:
                        i = 2131755294;
                        break;
                    case 18:
                        i = 2131755295;
                        break;
                    case 19:
                        i = 2131755257;
                        break;
                    case 20:
                        i = 2131755285;
                        break;
                    default:
                        i = 2131755261;
                        break;
                }
            }
            return i;
        }

        @Override // com.android.contacts.model.account.d.a
        protected final boolean b(Integer num) {
            return num.intValue() == 0 || num.intValue() == 19;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/android/contacts/model/account/d$q.class */
    private static final class q extends i {
        private q() {
            super((byte) 0);
        }

        /* synthetic */ q(byte b2) {
            this();
        }

        private static a.d a(int i, boolean z) {
            a.d dVar = new a.d(i, ContactsContract.CommonDataKinds.Phone.getTypeLabelResource(i));
            dVar.c = z;
            return dVar;
        }

        @Override // com.android.contacts.model.account.d.i
        protected final a.d a(AttributeSet attributeSet, String str) {
            a.d dVar;
            if ("home".equals(str)) {
                dVar = a(1, false);
            } else if ("mobile".equals(str)) {
                dVar = a(2, false);
            } else if ("work".equals(str)) {
                dVar = a(3, false);
            } else if ("fax_work".equals(str)) {
                dVar = a(4, true);
            } else if ("fax_home".equals(str)) {
                dVar = a(5, true);
            } else if ("pager".equals(str)) {
                dVar = a(6, true);
            } else if ("other".equals(str)) {
                dVar = a(7, false);
            } else if ("callback".equals(str)) {
                dVar = a(8, true);
            } else if ("car".equals(str)) {
                dVar = a(9, true);
            } else if ("company_main".equals(str)) {
                dVar = a(10, true);
            } else if ("isdn".equals(str)) {
                dVar = a(11, true);
            } else if ("main".equals(str)) {
                dVar = a(12, true);
            } else if ("other_fax".equals(str)) {
                dVar = a(13, true);
            } else if ("radio".equals(str)) {
                dVar = a(14, true);
            } else if ("telex".equals(str)) {
                dVar = a(15, true);
            } else if ("tty_tdd".equals(str)) {
                dVar = a(16, true);
            } else if ("work_mobile".equals(str)) {
                dVar = a(17, true);
            } else if ("work_pager".equals(str)) {
                dVar = a(18, true);
            } else if ("assistant".equals(str)) {
                dVar = a(19, true);
            } else if ("mms".equals(str)) {
                dVar = a(20, true);
            } else if ("custom".equals(str)) {
                dVar = a(0, true);
                dVar.e = CoverUtils.CoverData.USER_SET;
            } else {
                dVar = null;
            }
            return dVar;
        }

        @Override // com.android.contacts.model.account.d.i
        public final String a() {
            return "phone";
        }

        @Override // com.android.contacts.model.account.d.i
        public final List<com.android.contacts.model.a.b> a(Context context, XmlPullParser xmlPullParser, AttributeSet attributeSet) {
            com.android.contacts.model.a.b a2 = a(xmlPullParser, attributeSet, false, "vnd.android.cursor.item/phone_v2", CoverUtils.CoverData.COVER_TYPE, 2131755945, 10, 2131427673, new p(), new v(CoverUtils.CoverData.COVER_URI));
            a2.d = 2131165345;
            a2.e = 2131756154;
            a2.i = new o();
            a2.o.add(new a.c(CoverUtils.CoverData.COVER_URI, 2131755945, 3));
            return com.google.a.b.r.a(a2);
        }
    }

    /* loaded from: classes-dex2jar.jar:com/android/contacts/model/account/d$r.class */
    private static final class r extends i {
        private r() {
            super((byte) 0);
        }

        /* synthetic */ r(byte b2) {
            this();
        }

        @Override // com.android.contacts.model.account.d.i
        public final String a() {
            return "photo";
        }

        @Override // com.android.contacts.model.account.d.i
        public final List<com.android.contacts.model.a.b> a(Context context, XmlPullParser xmlPullParser, AttributeSet attributeSet) {
            com.android.contacts.model.a.b a2 = a(xmlPullParser, attributeSet, false, "vnd.android.cursor.item/photo", null, -1, -1, -1, null, null);
            a2.o.add(new a.c("data15", -1, -1));
            a(a2);
            return com.google.a.b.r.a(a2);
        }
    }

    /* loaded from: classes-dex2jar.jar:com/android/contacts/model/account/d$s.class */
    public static final class s extends a {
        @Override // com.android.contacts.model.account.d.a
        protected final int a(Integer num) {
            int i = 2131755778;
            if (num != null) {
                switch (num.intValue()) {
                    case 1:
                        i = 2131755777;
                        break;
                    case 2:
                        i = 2131755779;
                        break;
                    case 3:
                        break;
                    default:
                        i = 2131755776;
                        break;
                }
            }
            return i;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/android/contacts/model/account/d$t.class */
    public static final class t extends a {
        @Override // com.android.contacts.model.account.d.a
        protected final int a(Integer num) {
            return ContactsContract.CommonDataKinds.Relation.getTypeLabelResource(num == null ? 0 : num.intValue());
        }
    }

    /* loaded from: classes-dex2jar.jar:com/android/contacts/model/account/d$u.class */
    private static final class u extends i {
        private u() {
            super((byte) 0);
        }

        /* synthetic */ u(byte b2) {
            this();
        }

        @Override // com.android.contacts.model.account.d.i
        protected final a.d a(AttributeSet attributeSet, String str) {
            a.d dVar;
            if ("assistant".equals(str)) {
                dVar = d.e(1);
            } else if ("brother".equals(str)) {
                dVar = d.e(2);
            } else if ("child".equals(str)) {
                dVar = d.e(3);
            } else if ("domestic_partner".equals(str)) {
                dVar = d.e(4);
            } else if ("father".equals(str)) {
                dVar = d.e(5);
            } else if ("friend".equals(str)) {
                dVar = d.e(6);
            } else if ("manager".equals(str)) {
                dVar = d.e(7);
            } else if ("mother".equals(str)) {
                dVar = d.e(8);
            } else if ("parent".equals(str)) {
                dVar = d.e(9);
            } else if ("partner".equals(str)) {
                dVar = d.e(10);
            } else if ("referred_by".equals(str)) {
                dVar = d.e(11);
            } else if ("relative".equals(str)) {
                dVar = d.e(12);
            } else if ("sister".equals(str)) {
                dVar = d.e(13);
            } else if ("spouse".equals(str)) {
                dVar = d.e(14);
            } else if ("custom".equals(str)) {
                dVar = d.e(0);
                dVar.c = true;
                dVar.e = CoverUtils.CoverData.USER_SET;
            } else {
                dVar = null;
            }
            return dVar;
        }

        @Override // com.android.contacts.model.account.d.i
        public final String a() {
            return "relationship";
        }

        @Override // com.android.contacts.model.account.d.i
        public final List<com.android.contacts.model.a.b> a(Context context, XmlPullParser xmlPullParser, AttributeSet attributeSet) {
            com.android.contacts.model.a.b a2 = a(xmlPullParser, attributeSet, false, "vnd.android.cursor.item/relation", CoverUtils.CoverData.COVER_TYPE, 2131756055, 160, 2131427673, new t(), new v(CoverUtils.CoverData.COVER_URI));
            a2.o.add(new a.c(CoverUtils.CoverData.COVER_URI, 2131756055, 8289));
            a2.p = new ContentValues();
            a2.p.put(CoverUtils.CoverData.COVER_TYPE, (Integer) 14);
            return com.google.a.b.r.a(a2);
        }
    }

    /* loaded from: classes-dex2jar.jar:com/android/contacts/model/account/d$v.class */
    public static final class v implements a.f {

        /* renamed from: a  reason: collision with root package name */
        private final int f2012a;

        /* renamed from: b  reason: collision with root package name */
        private final String f2013b;

        public v(int i) {
            this(i, null);
        }

        private v(int i, String str) {
            this.f2012a = i;
            this.f2013b = str;
        }

        public v(String str) {
            this(-1, str);
        }

        @Override // com.android.contacts.model.account.a.f
        public final CharSequence a(Context context, ContentValues contentValues) {
            boolean containsKey = contentValues.containsKey(this.f2013b);
            boolean z = this.f2012a > 0;
            String text = z ? context.getText(this.f2012a) : null;
            String asString = containsKey ? contentValues.getAsString(this.f2013b) : null;
            if (z && containsKey) {
                text = String.format(text.toString(), asString);
            } else if (!z) {
                text = containsKey ? asString : null;
            }
            return text;
        }

        public final String toString() {
            return getClass().getSimpleName() + " mStringRes=" + this.f2012a + " mColumnName" + this.f2013b;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/android/contacts/model/account/d$w.class */
    private static final class w extends i {
        private w() {
            super((byte) 0);
        }

        /* synthetic */ w(byte b2) {
            this();
        }

        @Override // com.android.contacts.model.account.d.i
        public final String a() {
            return "sip_address";
        }

        @Override // com.android.contacts.model.account.d.i
        public final List<com.android.contacts.model.a.b> a(Context context, XmlPullParser xmlPullParser, AttributeSet attributeSet) {
            com.android.contacts.model.a.b a2 = a(xmlPullParser, attributeSet, false, "vnd.android.cursor.item/sip_address", null, 2131755734, 130, 2131427673, new v(2131755734), new v(CoverUtils.CoverData.COVER_URI));
            a2.o.add(new a.c(CoverUtils.CoverData.COVER_URI, 2131755734, 33));
            a(a2);
            return com.google.a.b.r.a(a2);
        }
    }

    /* loaded from: classes-dex2jar.jar:com/android/contacts/model/account/d$x.class */
    private static final class x extends i {
        private x() {
            super((byte) 0);
        }

        /* synthetic */ x(byte b2) {
            this();
        }

        @Override // com.android.contacts.model.account.d.i
        protected final a.d a(AttributeSet attributeSet, String str) {
            a.d dVar;
            if ("home".equals(str)) {
                dVar = d.c(1);
            } else if ("work".equals(str)) {
                dVar = d.c(2);
            } else if ("other".equals(str)) {
                dVar = d.c(3);
            } else if ("custom".equals(str)) {
                dVar = d.c(0);
                dVar.c = true;
                dVar.e = CoverUtils.CoverData.USER_SET;
            } else {
                dVar = null;
            }
            return dVar;
        }

        @Override // com.android.contacts.model.account.d.i
        public final String a() {
            return "postal";
        }

        @Override // com.android.contacts.model.account.d.i
        public final List<com.android.contacts.model.a.b> a(Context context, XmlPullParser xmlPullParser, AttributeSet attributeSet) {
            com.android.contacts.model.a.b a2 = a(xmlPullParser, attributeSet, false, "vnd.android.cursor.item/postal-address_v2", CoverUtils.CoverData.COVER_TYPE, 2131755957, 25, 2131427673, new s(), new v(CoverUtils.CoverData.COVER_URI));
            if (!attributeSet.getAttributeBooleanValue(null, "needsStructured", false)) {
                a2.t = 10;
                a2.o.add(new a.c(CoverUtils.CoverData.COVER_URI, 2131755958, 139377));
            } else if (Locale.JAPANESE.getLanguage().equals(Locale.getDefault().getLanguage())) {
                List<a.c> list = a2.o;
                a.c cVar = new a.c("data10", 2131755960, 139377);
                cVar.e = true;
                list.add(cVar);
                a2.o.add(new a.c("data9", 2131755963, 139377));
                a2.o.add(new a.c("data8", 2131755964, 139377));
                a2.o.add(new a.c("data7", 2131755959, 139377));
                a2.o.add(new a.c("data4", 2131755965, 139377));
            } else {
                a2.o.add(new a.c("data4", 2131755965, 139377));
                a2.o.add(new a.c("data7", 2131755959, 139377));
                a2.o.add(new a.c("data8", 2131755964, 139377));
                a2.o.add(new a.c("data9", 2131755963, 139377));
                List<a.c> list2 = a2.o;
                a.c cVar2 = new a.c("data10", 2131755960, 139377);
                cVar2.e = true;
                list2.add(cVar2);
            }
            return com.google.a.b.r.a(a2);
        }
    }

    /* loaded from: classes-dex2jar.jar:com/android/contacts/model/account/d$y.class */
    private static final class y extends i {
        private y() {
            super((byte) 0);
        }

        /* synthetic */ y(byte b2) {
            this();
        }

        @Override // com.android.contacts.model.account.d.i
        public final String a() {
            return "website";
        }

        @Override // com.android.contacts.model.account.d.i
        public final List<com.android.contacts.model.a.b> a(Context context, XmlPullParser xmlPullParser, AttributeSet attributeSet) {
            com.android.contacts.model.a.b a2 = a(xmlPullParser, attributeSet, false, "vnd.android.cursor.item/website", null, 2131756479, 120, 2131427673, new v(2131756479), new v(CoverUtils.CoverData.COVER_URI));
            a2.o.add(new a.c(CoverUtils.CoverData.COVER_URI, 2131756479, 17));
            a2.p = new ContentValues();
            a2.p.put(CoverUtils.CoverData.COVER_TYPE, (Integer) 7);
            return com.google.a.b.r.a(a2);
        }
    }

    public d() {
        this.f2000a = null;
        this.f2001b = null;
        this.e = 2131755023;
        this.f = 2131558402;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static a.d a(int i2) {
        return new a.d(i2, ContactsContract.CommonDataKinds.Phone.getTypeLabelResource(i2));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static a.d a(int i2, boolean z) {
        a.e eVar = new a.e(i2, ContactsContract.CommonDataKinds.Event.getTypeResource(Integer.valueOf(i2)));
        eVar.f = z;
        return eVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static a.d b(int i2) {
        return new a.d(i2, ContactsContract.CommonDataKinds.Email.getTypeLabelResource(i2));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static a.d c(int i2) {
        return new a.d(i2, ContactsContract.CommonDataKinds.StructuredPostal.getTypeLabelResource(i2));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static a.d d(int i2) {
        return new a.d(i2, ContactsContract.CommonDataKinds.Im.getProtocolLabelResource(i2));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static a.d e(int i2) {
        return new a.d(i2, ContactsContract.CommonDataKinds.Relation.getTypeLabelResource(i2));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static a.d s() {
        return new a.d(0, 2131756260);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void a(Context context, XmlPullParser xmlPullParser, AttributeSet attributeSet) {
        int depth = xmlPullParser.getDepth();
        while (true) {
            int next = xmlPullParser.next();
            if (next == 1) {
                return;
            }
            if (next != 3 || xmlPullParser.getDepth() > depth) {
                int depth2 = xmlPullParser.getDepth();
                if (next == 2 && depth2 == depth + 1) {
                    String name = xmlPullParser.getName();
                    if ("DataKind".equals(name)) {
                        j jVar = j.f2010a;
                        String attributeValue = attributeSet.getAttributeValue(null, "kind");
                        i iVar = jVar.f2011b.get(attributeValue);
                        if (iVar != null) {
                            for (com.android.contacts.model.a.b bVar : iVar.a(context, xmlPullParser, attributeSet)) {
                                a(bVar);
                            }
                        } else {
                            throw new a.C0050a("Undefined data kind '" + attributeValue + "'");
                        }
                    } else {
                        Log.w("BaseAccountType", "Skipping unknown tag " + name);
                    }
                }
            } else {
                return;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public com.android.contacts.model.a.b e(Context context) {
        com.android.contacts.model.a.b a2 = a(new com.android.contacts.model.a.b("vnd.android.cursor.item/postal-address_v2", 2131755957, 25, 2131427673));
        a2.h = new s();
        a2.j = new v(CoverUtils.CoverData.COVER_URI);
        a2.l = CoverUtils.CoverData.COVER_TYPE;
        a2.n = new ArrayList();
        a2.n.add(c(1));
        a2.n.add(c(2));
        a2.n.add(c(3));
        List<a.d> list = a2.n;
        a.d c2 = c(0);
        c2.c = true;
        c2.e = CoverUtils.CoverData.USER_SET;
        list.add(c2);
        a2.o = new ArrayList();
        a2.o.add(new a.c(CoverUtils.CoverData.COVER_URI, 2131755958, 139377));
        a2.t = 10;
        return a2;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public com.android.contacts.model.a.b f(Context context) {
        com.android.contacts.model.a.b a2 = a(new com.android.contacts.model.a.b("vnd.android.cursor.item/email_v2", 2131755601, 15, 2131427673));
        a2.h = new b();
        a2.j = new v(CoverUtils.CoverData.COVER_URI);
        a2.l = CoverUtils.CoverData.COVER_TYPE;
        a2.n = new ArrayList();
        a2.n.add(b(1));
        a2.n.add(b(2));
        a2.n.add(b(3));
        a2.n.add(b(4));
        List<a.d> list = a2.n;
        a.d b2 = b(0);
        b2.c = true;
        b2.e = CoverUtils.CoverData.USER_SET;
        list.add(b2);
        a2.o = new ArrayList();
        a2.o.add(new a.c(CoverUtils.CoverData.COVER_URI, 2131755601, 33));
        return a2;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public com.android.contacts.model.a.b g(Context context) {
        com.android.contacts.model.a.b a2 = a(new com.android.contacts.model.a.b("vnd.android.cursor.item/phone_v2", 2131755945, 10, 2131427673));
        a2.d = 2131165345;
        a2.e = 2131756154;
        a2.h = new p();
        a2.i = new o();
        a2.j = new v(CoverUtils.CoverData.COVER_URI);
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
        a.d a5 = a(6);
        a5.c = true;
        list3.add(a5);
        a2.n.add(a(7));
        List<a.d> list4 = a2.n;
        a.d a6 = a(0);
        a6.c = true;
        a6.e = CoverUtils.CoverData.USER_SET;
        list4.add(a6);
        List<a.d> list5 = a2.n;
        a.d a7 = a(8);
        a7.c = true;
        list5.add(a7);
        List<a.d> list6 = a2.n;
        a.d a8 = a(9);
        a8.c = true;
        list6.add(a8);
        List<a.d> list7 = a2.n;
        a.d a9 = a(10);
        a9.c = true;
        list7.add(a9);
        List<a.d> list8 = a2.n;
        a.d a10 = a(11);
        a10.c = true;
        list8.add(a10);
        List<a.d> list9 = a2.n;
        a.d a11 = a(12);
        a11.c = true;
        list9.add(a11);
        List<a.d> list10 = a2.n;
        a.d a12 = a(13);
        a12.c = true;
        list10.add(a12);
        List<a.d> list11 = a2.n;
        a.d a13 = a(14);
        a13.c = true;
        list11.add(a13);
        List<a.d> list12 = a2.n;
        a.d a14 = a(15);
        a14.c = true;
        list12.add(a14);
        List<a.d> list13 = a2.n;
        a.d a15 = a(16);
        a15.c = true;
        list13.add(a15);
        List<a.d> list14 = a2.n;
        a.d a16 = a(17);
        a16.c = true;
        list14.add(a16);
        List<a.d> list15 = a2.n;
        a.d a17 = a(18);
        a17.c = true;
        list15.add(a17);
        List<a.d> list16 = a2.n;
        a.d a18 = a(19);
        a18.c = true;
        list16.add(a18);
        List<a.d> list17 = a2.n;
        a.d a19 = a(20);
        a19.c = true;
        list17.add(a19);
        List<a.d> list18 = a2.n;
        a.d s2 = s();
        s2.c = true;
        s2.e = CoverUtils.CoverData.USER_SET;
        list18.add(s2);
        a2.o = new ArrayList();
        a2.o.add(new a.c(CoverUtils.CoverData.COVER_URI, 2131755945, 3));
        return a2;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public com.android.contacts.model.a.b h(Context context) {
        com.android.contacts.model.a.b a2 = a(new com.android.contacts.model.a.b("vnd.android.cursor.item/im", 2131755690, 20, 2131427673));
        a2.h = new g();
        a2.j = new v(CoverUtils.CoverData.COVER_URI);
        a2.p = new ContentValues();
        a2.p.put(CoverUtils.CoverData.COVER_TYPE, (Integer) 3);
        a2.l = "data5";
        a2.n = new ArrayList();
        a2.n.add(d(0));
        a2.n.add(d(1));
        a2.n.add(d(2));
        a2.n.add(d(3));
        a2.n.add(d(4));
        a2.n.add(d(5));
        a2.n.add(d(6));
        a2.n.add(d(7));
        List<a.d> list = a2.n;
        a.d d = d(-1);
        d.c = true;
        d.e = "data6";
        list.add(d);
        a2.o = new ArrayList();
        a2.o.add(new a.c(CoverUtils.CoverData.COVER_URI, 2131755690, 33));
        return a2;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public com.android.contacts.model.a.b i(Context context) {
        boolean z;
        com.android.contacts.model.a.b a2 = a(new com.android.contacts.model.a.b("#displayName", 2131755859, -1, 2131427673));
        a2.h = new v(2131755859);
        a2.j = new v(CoverUtils.CoverData.COVER_URI);
        a2.m = 1;
        a2.o = new ArrayList();
        List<a.c> list = a2.o;
        a.c cVar = new a.c(CoverUtils.CoverData.COVER_URI, 2131755662, 8289);
        cVar.f = true;
        list.add(cVar);
        try {
            z = context.getResources().getBoolean(2130968585);
        } catch (Exception e2) {
            e2.printStackTrace();
            z = true;
        }
        if (!z) {
            List<a.c> list2 = a2.o;
            a.c cVar2 = new a.c("data4", 2131755868, 8289);
            cVar2.g = true;
            list2.add(cVar2);
            List<a.c> list3 = a2.o;
            a.c cVar3 = new a.c(CoverUtils.CoverData.USER_SET, 2131755861, 8289);
            cVar3.g = true;
            list3.add(cVar3);
            List<a.c> list4 = a2.o;
            a.c cVar4 = new a.c("data5", 2131755863, 8289);
            cVar4.g = true;
            list4.add(cVar4);
            List<a.c> list5 = a2.o;
            a.c cVar5 = new a.c(CoverUtils.CoverData.COVER_TYPE, 2131755862, 8289);
            cVar5.g = true;
            list5.add(cVar5);
            List<a.c> list6 = a2.o;
            a.c cVar6 = new a.c("data6", 2131755869, 8289);
            cVar6.g = true;
            list6.add(cVar6);
        } else {
            List<a.c> list7 = a2.o;
            a.c cVar7 = new a.c("data4", 2131755868, 8289);
            cVar7.g = true;
            list7.add(cVar7);
            List<a.c> list8 = a2.o;
            a.c cVar8 = new a.c(CoverUtils.CoverData.COVER_TYPE, 2131755862, 8289);
            cVar8.g = true;
            list8.add(cVar8);
            List<a.c> list9 = a2.o;
            a.c cVar9 = new a.c("data5", 2131755863, 8289);
            cVar9.g = true;
            list9.add(cVar9);
            List<a.c> list10 = a2.o;
            a.c cVar10 = new a.c(CoverUtils.CoverData.USER_SET, 2131755861, 8289);
            cVar10.g = true;
            list10.add(cVar10);
            List<a.c> list11 = a2.o;
            a.c cVar11 = new a.c("data6", 2131755869, 8289);
            cVar11.g = true;
            list11.add(cVar11);
        }
        return a2;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public com.android.contacts.model.a.b j(Context context) {
        com.android.contacts.model.a.b a2 = a(new com.android.contacts.model.a.b("vnd.android.cursor.item/nickname", 2131755883, 115, 2131427673));
        a2.m = 1;
        a2.h = new v(2131755883);
        a2.j = new v(CoverUtils.CoverData.COVER_URI);
        a2.p = new ContentValues();
        a2.p.put(CoverUtils.CoverData.COVER_TYPE, (Integer) 1);
        a2.o = new ArrayList();
        a2.o.add(new a.c(CoverUtils.CoverData.COVER_URI, 2131755883, 8289));
        return a2;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public com.android.contacts.model.a.b k(Context context) {
        com.android.contacts.model.a.b a2 = a(new com.android.contacts.model.a.b("vnd.android.cursor.item/organization", 2131755932, 5, 2131427673));
        a2.h = new v(CoverUtils.CoverData.COVER_URI);
        a2.j = new v("data4");
        a2.m = 1;
        a2.o = new ArrayList();
        a2.o.add(new a.c(CoverUtils.CoverData.COVER_URI, 2131755664, 8193));
        a2.o.add(new a.c("data4", 2131755665, 8193));
        return a2;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public com.android.contacts.model.a.b l(Context context) {
        com.android.contacts.model.a.b a2 = a(new com.android.contacts.model.a.b("vnd.android.cursor.item/photo", -1, -1, -1));
        a2.m = 1;
        a2.o = new ArrayList();
        a2.o.add(new a.c("data15", -1, -1));
        return a2;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public com.android.contacts.model.a.b m(Context context) {
        com.android.contacts.model.a.b a2 = a(new com.android.contacts.model.a.b("vnd.android.cursor.item/note", 2131755733, 110, 2131427673));
        a2.m = 1;
        a2.h = new v(2131755733);
        a2.j = new v(CoverUtils.CoverData.COVER_URI);
        a2.o = new ArrayList();
        a2.o.add(new a.c(CoverUtils.CoverData.COVER_URI, 2131755733, 147457));
        a2.t = 100;
        return a2;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public com.android.contacts.model.a.b n(Context context) {
        com.android.contacts.model.a.b a2 = a(new com.android.contacts.model.a.b("vnd.android.cursor.item/website", 2131756479, 120, 2131427673));
        a2.h = new v(2131756479);
        a2.j = new v(CoverUtils.CoverData.COVER_URI);
        a2.p = new ContentValues();
        a2.p.put(CoverUtils.CoverData.COVER_TYPE, (Integer) 7);
        a2.o = new ArrayList();
        a2.o.add(new a.c(CoverUtils.CoverData.COVER_URI, 2131756479, 17));
        return a2;
    }

    @Override // com.android.contacts.model.account.a
    public boolean q() {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public com.android.contacts.model.a.b t() {
        com.android.contacts.model.a.b a2 = a(new com.android.contacts.model.a.b("vnd.android.cursor.item/name", 2131755859, -1, 2131427672));
        a2.h = new v(2131755859);
        a2.j = new v(CoverUtils.CoverData.COVER_URI);
        a2.m = 1;
        a2.o = new ArrayList();
        a2.o.add(new a.c(CoverUtils.CoverData.COVER_URI, 2131755662, 8289));
        List<a.c> list = a2.o;
        a.c cVar = new a.c("data4", 2131755868, 8289);
        cVar.g = true;
        list.add(cVar);
        List<a.c> list2 = a2.o;
        a.c cVar2 = new a.c(CoverUtils.CoverData.USER_SET, 2131755861, 8289);
        cVar2.g = true;
        list2.add(cVar2);
        List<a.c> list3 = a2.o;
        a.c cVar3 = new a.c("data5", 2131755863, 8289);
        cVar3.g = true;
        list3.add(cVar3);
        List<a.c> list4 = a2.o;
        a.c cVar4 = new a.c(CoverUtils.CoverData.COVER_TYPE, 2131755862, 8289);
        cVar4.g = true;
        list4.add(cVar4);
        List<a.c> list5 = a2.o;
        a.c cVar5 = new a.c("data6", 2131755869, 8289);
        cVar5.g = true;
        list5.add(cVar5);
        a2.o.add(new a.c("data9", 2131755865, 193));
        a2.o.add(new a.c("data8", 2131755867, 193));
        a2.o.add(new a.c("data7", 2131755866, 193));
        return a2;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public com.android.contacts.model.a.b u() {
        com.android.contacts.model.a.b a2 = a(new com.android.contacts.model.a.b("#phoneticName", 2131755864, -1, 2131427615));
        a2.h = new v(2131755859);
        a2.j = new v(CoverUtils.CoverData.COVER_URI);
        a2.m = 1;
        a2.o = new ArrayList();
        List<a.c> list = a2.o;
        a.c cVar = new a.c("#phoneticName", 2131755864, 193);
        cVar.f = true;
        list.add(cVar);
        List<a.c> list2 = a2.o;
        a.c cVar2 = new a.c("data9", 2131755865, 193);
        cVar2.g = true;
        list2.add(cVar2);
        List<a.c> list3 = a2.o;
        a.c cVar3 = new a.c("data8", 2131755867, 193);
        cVar3.g = true;
        list3.add(cVar3);
        List<a.c> list4 = a2.o;
        a.c cVar4 = new a.c("data7", 2131755866, 193);
        cVar4.g = true;
        list4.add(cVar4);
        return a2;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final com.android.contacts.model.a.b v() {
        com.android.contacts.model.a.b a2 = a(new com.android.contacts.model.a.b("vnd.android.cursor.item/sip_address", 2131755734, 130, 2131427673));
        a2.m = 1;
        a2.h = new v(2131755734);
        a2.j = new v(CoverUtils.CoverData.COVER_URI);
        a2.o = new ArrayList();
        a2.o.add(new a.c(CoverUtils.CoverData.COVER_URI, 2131755734, 33));
        return a2;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final com.android.contacts.model.a.b w() {
        com.android.contacts.model.a.b a2 = a(new com.android.contacts.model.a.b("vnd.android.cursor.item/group_membership", 2131755682, 999, -1));
        a2.m = 1;
        a2.o = new ArrayList();
        a2.o.add(new a.c(CoverUtils.CoverData.COVER_URI, -1, -1));
        a2.t = 10;
        return a2;
    }
}
