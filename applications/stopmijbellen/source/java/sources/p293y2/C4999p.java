package p293y2;

import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import android.content.Intent;
import android.database.Cursor;
import android.net.Uri;
import android.os.Bundle;
import android.os.ParcelFileDescriptor;
import android.provider.ContactsContract;
import android.util.Xml;
import android.widget.TextView;
import androidx.activity.result.AbstractC0112b;
import androidx.activity.result.C0110a;
import com.github.clans.fab.FloatingActionMenu;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.mglab.scm.visual.FragmentBlackList;
import com.mglab.scm.visual.FragmentPreferences;
import com.mglab.scm.visual.FragmentStat;
import java.io.FileOutputStream;
import java.util.List;
import java.util.Objects;
import org.xmlpull.v1.XmlSerializer;
import p004a3.AbstractC0011a;
import p034c9.AbstractC0859f;
import p074d9.AbstractC2490c;
import p078e2.EnumC2524b;
import p078e2.View$OnClickListenerC2530g;
import p095f8.C2779g;
import p095f8.C2780h;
import p117h8.C3026c;
import p117h8.C3033i;
import p117h8.C3034j;
import p117h8.C3043q;
import p117h8.C3047u;
import p117h8.C3049v;
import p117h8.C3050w;
import p148k7.AbstractC3356j;
import p148k7.C3357k;
import p159l7.AbstractC3512b;
import p159l7.AbstractC3517f;
import p170m7.AbstractC3664h;
import p170m7.AbstractC3665i;
import p170m7.AbstractFutureC3655c;
import p170m7.C3661g;
import p193o8.C3942b;
import p193o8.C3948e;
import p250u2.AbstractC4469i;
import p278w8.C4775f;
import p278w8.C4776g;
import p278w8.C4788o;
import p278w8.C4790q;
import p278w8.C4791r;
import p289x8.AbstractC4932a;
import p289x8.C4933b;
/* renamed from: y2.p */
/* loaded from: classes2-dex2jar.jar:y2/p.class */
public final /* synthetic */ class C4999p implements AbstractC0011a.AbstractC0012a, AbstractC3517f, AbstractC3665i, AbstractC3512b, AbstractC2490c, FloatingActionMenu.AbstractC1635c, AbstractC0112b, View$OnClickListenerC2530g.AbstractC2533c {

    /* renamed from: a */
    public final /* synthetic */ Object f15235a;

    public /* synthetic */ C4999p(Object obj) {
        this.f15235a = obj;
    }

    @Override // p159l7.AbstractC3512b
    /* renamed from: a */
    public void mo152a(Exception exc, AbstractC3356j abstractC3356j) {
        ((C3661g) this.f15235a).m1914p(exc, abstractC3356j, null);
    }

    @Override // androidx.activity.result.AbstractC0112b
    /* renamed from: b */
    public void mo151b(Object obj) {
        int i;
        Exception e;
        FragmentPreferences fragmentPreferences = (FragmentPreferences) this.f15235a;
        C0110a c0110a = (C0110a) obj;
        int i2 = FragmentPreferences.f7538f;
        Objects.requireNonNull(fragmentPreferences);
        if (c0110a.f264a == -1) {
            Intent intent = c0110a.f265b;
            intent.getData().toString();
            Context context = fragmentPreferences.getContext();
            Uri data = intent.getData();
            try {
                ParcelFileDescriptor openFileDescriptor = context.getContentResolver().openFileDescriptor(data, "w");
                data.getPath();
                FileOutputStream fileOutputStream = new FileOutputStream(openFileDescriptor.getFileDescriptor());
                XmlSerializer newSerializer = Xml.newSerializer();
                try {
                    newSerializer.setOutput(fileOutputStream, "UTF-8");
                    try {
                        newSerializer.startDocument(null, Boolean.TRUE);
                        try {
                            newSerializer.setFeature("http://xmlpull.org/v1/doc/features.html#indent-output", true);
                            try {
                                newSerializer.startTag(null, "scm_export");
                                try {
                                    newSerializer.attribute(null, "version", "4");
                                    try {
                                        newSerializer.startTag(null, "settings");
                                        try {
                                            newSerializer.attribute(null, "apponoff", C2780h.m3084E(context) ? "1" : "0");
                                            try {
                                                newSerializer.attribute(null, "blockmethod", String.valueOf(C2780h.m3083F(context)));
                                                try {
                                                    newSerializer.attribute(null, "showsim", C2780h.m3069T(context) ? "1" : "0");
                                                    try {
                                                        newSerializer.attribute(null, "secondcall", C2780h.m3082G(context) ? "1" : "0");
                                                        try {
                                                            newSerializer.attribute(null, "clearbutton", C2780h.m3076M(context) ? "1" : "0");
                                                            try {
                                                                newSerializer.attribute(null, "altcontacts", C2780h.m3066W(context) ? "1" : "0");
                                                                try {
                                                                    newSerializer.attribute(null, "usepresets", C2780h.m3070S(context) ? "1" : "0");
                                                                    try {
                                                                        newSerializer.endTag(null, "settings");
                                                                        try {
                                                                            for (C3047u c3047u : new C4776g(new C4788o(new AbstractC4932a[0]), C3047u.class).m477n(C3049v.f10356i, true).mo456l()) {
                                                                                newSerializer.startTag(null, "preset");
                                                                                newSerializer.attribute(null, "priority", String.valueOf(c3047u.f10325e));
                                                                                newSerializer.attribute(null, AppMeasurementSdk.ConditionalUserProperty.NAME, c3047u.f10323c);
                                                                                newSerializer.attribute(null, AppMeasurementSdk.ConditionalUserProperty.ACTIVE, c3047u.f10324d ? "1" : "0");
                                                                                newSerializer.attribute(null, "useSim1", c3047u.f10326f ? "1" : "0");
                                                                                newSerializer.attribute(null, "useSim2", c3047u.f10327g ? "1" : "0");
                                                                                newSerializer.attribute(null, "useDB", c3047u.f10328h ? "1" : "0");
                                                                                newSerializer.attribute(null, "useBL", c3047u.f10329i ? "1" : "0");
                                                                                newSerializer.attribute(null, "useWL", c3047u.f10330j ? "1" : "0");
                                                                                newSerializer.attribute(null, "useContacts", c3047u.f10331k ? "1" : "0");
                                                                                newSerializer.attribute(null, "blockAllExceptContacts", c3047u.f10332l ? "1" : "0");
                                                                                newSerializer.attribute(null, "blockAllExceptWL", c3047u.f10333m ? "1" : "0");
                                                                                newSerializer.attribute(null, "blockHidden", c3047u.f10334n ? "1" : "0");
                                                                                newSerializer.attribute(null, "blockForeign", c3047u.f10335o ? "1" : "0");
                                                                                newSerializer.attribute(null, "deleteBlocked", c3047u.f10336p ? "1" : "0");
                                                                                newSerializer.attribute(null, "showNotifications", c3047u.f10337q ? "1" : "0");
                                                                                newSerializer.attribute(null, "useCalendar", c3047u.f10338r ? "1" : "0");
                                                                                newSerializer.attribute(null, "time1", c3047u.f10346z);
                                                                                newSerializer.attribute(null, "time2", c3047u.f10321A);
                                                                                newSerializer.attribute(null, "day1", c3047u.f10339s ? "1" : "0");
                                                                                newSerializer.attribute(null, "day2", c3047u.f10340t ? "1" : "0");
                                                                                newSerializer.attribute(null, "day3", c3047u.f10341u ? "1" : "0");
                                                                                newSerializer.attribute(null, "day4", c3047u.f10342v ? "1" : "0");
                                                                                newSerializer.attribute(null, "day5", c3047u.f10343w ? "1" : "0");
                                                                                newSerializer.attribute(null, "day6", c3047u.f10344x ? "1" : "0");
                                                                                newSerializer.attribute(null, "day7", c3047u.f10345y ? "1" : "0");
                                                                                newSerializer.endTag(null, "preset");
                                                                            }
                                                                            try {
                                                                                for (TModel tmodel : new C4776g(new C4788o(new AbstractC4932a[0]), C3026c.class).mo456l()) {
                                                                                    newSerializer.startTag(null, "bl");
                                                                                    newSerializer.attribute(null, "number", tmodel.f10150c);
                                                                                    String str = tmodel.f10151d;
                                                                                    String str2 = str;
                                                                                    if (str == null) {
                                                                                        str2 = "";
                                                                                    }
                                                                                    newSerializer.attribute(null, AppMeasurementSdk.ConditionalUserProperty.NAME, str2);
                                                                                    newSerializer.attribute(null, "category", String.valueOf(tmodel.f10153f));
                                                                                    newSerializer.endTag(null, "bl");
                                                                                }
                                                                                try {
                                                                                    for (TModel tmodel2 : new C4776g(new C4788o(new AbstractC4932a[0]), C3050w.class).mo456l()) {
                                                                                        newSerializer.startTag(null, "wl");
                                                                                        newSerializer.attribute(null, "number", tmodel2.f10375c);
                                                                                        String str3 = tmodel2.f10376d;
                                                                                        String str4 = str3;
                                                                                        if (str3 == null) {
                                                                                            str4 = "";
                                                                                        }
                                                                                        newSerializer.attribute(null, AppMeasurementSdk.ConditionalUserProperty.NAME, str4);
                                                                                        newSerializer.attribute(null, "category", String.valueOf(tmodel2.f10378f));
                                                                                        newSerializer.endTag(null, "wl");
                                                                                    }
                                                                                    newSerializer.endTag(null, "scm_export");
                                                                                    newSerializer.endDocument();
                                                                                    newSerializer.flush();
                                                                                    fileOutputStream.close();
                                                                                    openFileDescriptor.close();
                                                                                    C2779g.m3121L(context, null, context.getString(2131820788, data.getPath()));
                                                                                } catch (Exception e2) {
                                                                                    e = e2;
                                                                                    i = 10000;
                                                                                    e.printStackTrace();
                                                                                    C2779g.m3121L(context, null, "2131820787 errorCode=" + i + "\nerrorString=");
                                                                                    Bundle bundle = new Bundle();
                                                                                    bundle.putString("message", e.getMessage());
                                                                                    bundle.putString("exception", e.toString());
                                                                                    C2779g.m3089z(context, "export_settings", bundle);
                                                                                    ((ClipboardManager) context.getSystemService("clipboard")).setPrimaryClip(ClipData.newPlainText("export_settings", e.toString() + "\nerrorCode=" + i + "\nerrorString="));
                                                                                }
                                                                            } catch (Exception e3) {
                                                                                e = e3;
                                                                                i = 500;
                                                                            }
                                                                        } catch (Exception e4) {
                                                                            e = e4;
                                                                            i = 100;
                                                                        }
                                                                    } catch (Exception e5) {
                                                                        e = e5;
                                                                        i = 13;
                                                                    }
                                                                } catch (Exception e6) {
                                                                    e = e6;
                                                                    i = 12;
                                                                }
                                                            } catch (Exception e7) {
                                                                e = e7;
                                                                i = 11;
                                                            }
                                                        } catch (Exception e8) {
                                                            e = e8;
                                                            i = 10;
                                                        }
                                                    } catch (Exception e9) {
                                                        e = e9;
                                                        i = 9;
                                                    }
                                                } catch (Exception e10) {
                                                    e = e10;
                                                    i = 8;
                                                }
                                            } catch (Exception e11) {
                                                e = e11;
                                                i = 7;
                                            }
                                        } catch (Exception e12) {
                                            e = e12;
                                            i = 6;
                                        }
                                    } catch (Exception e13) {
                                        e = e13;
                                        i = 5;
                                    }
                                } catch (Exception e14) {
                                    e = e14;
                                    i = 4;
                                }
                            } catch (Exception e15) {
                                e = e15;
                                i = 3;
                            }
                        } catch (Exception e16) {
                            e = e16;
                            i = 2;
                        }
                    } catch (Exception e17) {
                        e = e17;
                        i = 1;
                    }
                } catch (Exception e18) {
                    e = e18;
                    i = 0;
                }
            } catch (Exception e19) {
                e19.printStackTrace();
                C2779g.m3121L(context, null, context.getString(2131820790, data.getLastPathSegment()));
                data.getPath();
            }
        }
    }

    @Override // p074d9.AbstractC2490c
    /* renamed from: c */
    public void mo98c(AbstractC0859f abstractC0859f) {
        Context context = (Context) this.f15235a;
        String valueOf = String.valueOf(C2780h.m3044j(context));
        Cursor query = context.getContentResolver().query(ContactsContract.CommonDataKinds.Phone.CONTENT_URI, null, "data1 NOT NULL AND contact_last_updated_timestamp > ? ", new String[]{valueOf}, "_id");
        query.getCount();
        String m3042k = C2780h.m3042k(context);
        while (query.moveToNext()) {
            String m2696z = C3043q.m2696z(query.getString(query.getColumnIndex("data1")), m3042k);
            if (!m2696z.isEmpty()) {
                int i = query.getInt(query.getColumnIndex("contact_id"));
                int i2 = query.getInt(query.getColumnIndex("_id"));
                String string = query.getString(query.getColumnIndex("display_name"));
                String string2 = query.getString(query.getColumnIndex("display_name_alt"));
                String string3 = query.getString(query.getColumnIndex("photo_thumb_uri"));
                C4776g c4776g = new C4776g(new C4788o(new AbstractC4932a[0]), C3033i.class);
                C4933b<Integer> c4933b = C3034j.f10202g;
                C4791r c4791r = new C4791r(c4776g, c4933b.m239a(Integer.valueOf(i)));
                C4933b<String> c4933b2 = C3034j.f10203h;
                c4791r.f14720d.m467k("AND", c4933b2.m239a(m2696z));
                List mo456l = c4791r.mo456l();
                if (mo456l.size() != 1) {
                    if (mo456l.size() > 1) {
                        C4791r c4791r2 = new C4791r(new C4776g(new C4775f(), C3033i.class), c4933b.m239a(Integer.valueOf(i)));
                        c4791r2.f14720d.m467k("AND", c4933b2.m239a(m2696z));
                        c4791r2.m481d();
                    }
                    C3033i c3033i = new C3033i();
                    c3033i.f10200i = i2;
                    c3033i.f10194c = i;
                    c3033i.f10195d = m2696z;
                    c3033i.f10196e = string;
                    c3033i.f10197f = string2;
                    c3033i.f10199h = string3;
                    c3033i.f10198g = 1;
                    c3033i.mo7416a();
                } else if (!C3043q.m2712j((C3033i) mo456l.get(0), m2696z, string, string2, string3, i)) {
                    C4791r c4791r3 = new C4791r(new C4790q(C3033i.class).m460a(c4933b2.m239a(m2696z), C3034j.f10204i.m239a(string), C3034j.f10205j.m239a(string2), C3034j.f10207l.m239a(string3), C3034j.f10206k.m239a(1), c4933b.m239a(Integer.valueOf(i))), c4933b.m239a(Integer.valueOf(i)));
                    c4791r3.f14720d.m467k("AND", c4933b2.m239a(m2696z));
                    c4791r3.m481d();
                }
            }
        }
        query.close();
        Cursor query2 = context.getContentResolver().query(ContactsContract.DeletedContacts.CONTENT_URI, null, "contact_deleted_timestamp > ?", new String[]{valueOf}, null);
        while (query2.moveToNext()) {
            new C4791r(new C4776g(new C4775f(), C3033i.class), C3034j.f10202g.m239a(Integer.valueOf(query2.getInt(query2.getColumnIndex("contact_id"))))).m481d();
        }
        query2.close();
    }

    @Override // com.github.clans.fab.FloatingActionMenu.AbstractC1635c
    /* renamed from: d */
    public void mo150d(boolean z) {
        FragmentBlackList fragmentBlackList = (FragmentBlackList) this.f15235a;
        C3942b c3942b = FragmentBlackList.f7379f;
        Objects.requireNonNull(fragmentBlackList);
        if (z) {
            fragmentBlackList.f7382c.setEnabled(!fragmentBlackList.f7381b.isEmpty());
        }
    }

    @Override // p004a3.AbstractC0011a.AbstractC0012a
    /* renamed from: e */
    public Object mo149e() {
        C5001r c5001r = (C5001r) this.f15235a;
        for (AbstractC4469i abstractC4469i : c5001r.f15239b.mo81y()) {
            c5001r.f15240c.mo147a(abstractC4469i, 1);
        }
        return null;
    }

    @Override // p159l7.AbstractC3517f
    /* renamed from: f */
    public void mo148f() {
        ((C3357k) this.f15235a).m2353c();
    }

    @Override // p078e2.View$OnClickListenerC2530g.AbstractC2533c
    /* renamed from: g */
    public void mo96g(View$OnClickListenerC2530g view$OnClickListenerC2530g, EnumC2524b enumC2524b) {
        FragmentStat fragmentStat = (FragmentStat) this.f15235a;
        C3948e c3948e = FragmentStat.f7603g;
        Context context = fragmentStat.getContext();
        C2780h.m3043j0(context, "psctd", 0);
        C2780h.m3043j0(context, "psct", 0);
        C2780h.m3043j0(context, "psbtd", 0);
        C2780h.m3043j0(context, "psbt", 0);
        TextView textView = fragmentStat.tv_blocked;
        textView.setText(C2780h.m3056d(fragmentStat.getContext()) + " / " + C2780h.m3054e(fragmentStat.getContext()));
        TextView textView2 = fragmentStat.tv_checked;
        textView2.setText(C2780h.m3050g(fragmentStat.getContext()) + " / " + C2780h.m3048h(fragmentStat.getContext()));
    }

    @Override // p170m7.AbstractC3665i
    public AbstractFutureC3655c then(Object obj) {
        return new C3661g(((AbstractC3664h) this.f15235a).then(obj));
    }
}
