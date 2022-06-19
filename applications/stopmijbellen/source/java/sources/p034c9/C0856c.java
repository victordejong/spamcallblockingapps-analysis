package p034c9;

import android.content.res.AssetManager;
import android.database.sqlite.SQLiteException;
import com.raizlabs.android.dbflow.config.AbstractC2116c;
import com.raizlabs.android.dbflow.config.C2120f;
import com.raizlabs.android.dbflow.config.C2129g;
import com.raizlabs.android.dbflow.config.FlowManager;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import p024b9.AbstractC0744d;
import p024b9.AbstractC0745e;
import p267v8.C4655b;
import p299y8.AbstractC5017c;
/* renamed from: c9.c */
/* loaded from: classes2-dex2jar.jar:c9/c.class */
public class C0856c {

    /* renamed from: a */
    public final AbstractC2116c f3149a;

    public C0856c(AbstractC2116c abstractC2116c) {
        this.f3149a = abstractC2116c;
    }

    /* renamed from: a */
    public void m7268a(AbstractC0859f abstractC0859f) {
        if (this.f3149a.mo3890k()) {
            ((C0854a) abstractC0859f).f3147a.execSQL("PRAGMA foreign_keys=ON;");
            C2120f.m3889a(C2120f.EnumC2122b.f7694b, "Foreign Keys supported. Enabling foreign key features.", null);
        }
    }

    /* renamed from: b */
    public void m7267b(AbstractC0859f abstractC0859f, int i, int i2) {
        C2120f.EnumC2122b enumC2122b = C2120f.EnumC2122b.f7694b;
        try {
            AssetManager assets = FlowManager.m3910c().getAssets();
            List<String> asList = Arrays.asList(assets.list("migrations/" + this.f3149a.mo3893h()));
            Collections.sort(asList, new C2129g());
            HashMap hashMap = new HashMap();
            for (String str : asList) {
                try {
                    Integer valueOf = Integer.valueOf(str.replace(".sql", ""));
                    List list = (List) hashMap.get(valueOf);
                    List list2 = list;
                    if (list == null) {
                        list2 = new ArrayList();
                        hashMap.put(valueOf, list2);
                    }
                    list2.add(str);
                } catch (NumberFormatException e) {
                    C2120f.EnumC2122b enumC2122b2 = C2120f.EnumC2122b.f7695c;
                    C2120f.m3889a(enumC2122b2, "Skipping invalidly named file: " + str, e);
                }
            }
            Map<Integer, List<AbstractC5017c>> map = this.f3149a.f7678a;
            ((C0854a) abstractC0859f).f3147a.beginTransaction();
            for (int i3 = i + 1; i3 <= i2; i3++) {
                List<String> list3 = (List) hashMap.get(Integer.valueOf(i3));
                if (list3 != null) {
                    for (String str2 : list3) {
                        m7266c(abstractC0859f, str2);
                        C2120f.m3889a(enumC2122b, str2 + " executed successfully.", null);
                    }
                }
                List<AbstractC5017c> list4 = map.get(Integer.valueOf(i3));
                if (list4 != null) {
                    for (AbstractC5017c abstractC5017c : list4) {
                        abstractC5017c.mo133c();
                        abstractC5017c.mo134b(abstractC0859f);
                        abstractC5017c.mo135a();
                        C2120f.m3889a(enumC2122b, abstractC5017c.getClass() + " executed successfully.", null);
                    }
                }
            }
            ((C0854a) abstractC0859f).f3147a.setTransactionSuccessful();
            ((C0854a) abstractC0859f).f3147a.endTransaction();
        } catch (IOException e2) {
            C2120f.m3889a(C2120f.EnumC2122b.f7696d, "Failed to execute migrations.", e2);
        }
    }

    /* renamed from: c */
    public final void m7266c(AbstractC0859f abstractC0859f, String str) {
        try {
            AssetManager assets = FlowManager.m3910c().getAssets();
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(assets.open("migrations/" + this.f3149a.mo3893h() + "/" + str)));
            StringBuffer stringBuffer = new StringBuffer();
            while (true) {
                String readLine = bufferedReader.readLine();
                if (readLine == null) {
                    break;
                }
                String trim = readLine.trim();
                boolean endsWith = trim.endsWith(";");
                if (!trim.startsWith("--")) {
                    String str2 = trim;
                    if (endsWith) {
                        str2 = trim.substring(0, trim.length() - 1);
                    }
                    stringBuffer.append(" ");
                    stringBuffer.append(str2);
                    if (endsWith) {
                        ((C0854a) abstractC0859f).f3147a.execSQL(stringBuffer.toString());
                        stringBuffer = new StringBuffer();
                    }
                }
            }
            String stringBuffer2 = stringBuffer.toString();
            if (stringBuffer2.trim().length() <= 0) {
                return;
            }
            ((C0854a) abstractC0859f).f3147a.execSQL(stringBuffer2);
        } catch (IOException e) {
            C2120f.EnumC2122b enumC2122b = C2120f.EnumC2122b.f7696d;
            C2120f.m3889a(enumC2122b, "Failed to execute " + str, e);
        }
    }

    /* renamed from: d */
    public void m7265d(AbstractC0859f abstractC0859f) {
        try {
            ((C0854a) abstractC0859f).f3147a.beginTransaction();
            AbstractC2116c abstractC2116c = this.f3149a;
            Objects.requireNonNull(abstractC2116c);
            Iterator it2 = new ArrayList(abstractC2116c.f7679b.values()).iterator();
            while (it2.hasNext()) {
                AbstractC0744d abstractC0744d = (AbstractC0744d) it2.next();
                Objects.requireNonNull(abstractC0744d);
                try {
                    ((C0854a) abstractC0859f).f3147a.execSQL(abstractC0744d.mo2680l());
                } catch (SQLiteException e) {
                    C2120f.m3888b(C2120f.EnumC2122b.f7696d, e);
                }
            }
            ((C0854a) abstractC0859f).f3147a.setTransactionSuccessful();
        } finally {
            ((C0854a) abstractC0859f).f3147a.endTransaction();
        }
    }

    /* renamed from: e */
    public void m7264e(AbstractC0859f abstractC0859f) {
        try {
            ((C0854a) abstractC0859f).f3147a.beginTransaction();
            AbstractC2116c abstractC2116c = this.f3149a;
            Objects.requireNonNull(abstractC2116c);
            Iterator it2 = new ArrayList(abstractC2116c.f7681d.values()).iterator();
            while (it2.hasNext()) {
                AbstractC0745e abstractC0745e = (AbstractC0745e) it2.next();
                C4655b c4655b = new C4655b();
                c4655b.f14350a.append((Object) "CREATE VIEW IF NOT EXISTS");
                c4655b.m677d(abstractC0745e.m7411g());
                c4655b.f14350a.append((Object) "AS ");
                c4655b.f14350a.append((Object) abstractC0745e.m7412f());
                try {
                    ((C0854a) abstractC0859f).f3147a.execSQL(c4655b.mo238b());
                } catch (SQLiteException e) {
                    C2120f.m3888b(C2120f.EnumC2122b.f7696d, e);
                }
            }
            ((C0854a) abstractC0859f).f3147a.setTransactionSuccessful();
        } finally {
            ((C0854a) abstractC0859f).f3147a.endTransaction();
        }
    }

    /* renamed from: f */
    public void mo7263f(AbstractC0859f abstractC0859f) {
        m7268a(abstractC0859f);
        m7265d(abstractC0859f);
        m7267b(abstractC0859f, -1, ((C0854a) abstractC0859f).f3147a.getVersion());
        m7264e(abstractC0859f);
    }

    /* renamed from: g */
    public void mo7262g(AbstractC0859f abstractC0859f, int i, int i2) {
        m7268a(abstractC0859f);
    }

    /* renamed from: h */
    public void mo7261h(AbstractC0859f abstractC0859f) {
        m7268a(abstractC0859f);
    }

    /* renamed from: i */
    public void mo7260i(AbstractC0859f abstractC0859f, int i, int i2) {
        m7268a(abstractC0859f);
        m7265d(abstractC0859f);
        m7267b(abstractC0859f, i, i2);
        m7264e(abstractC0859f);
    }
}
