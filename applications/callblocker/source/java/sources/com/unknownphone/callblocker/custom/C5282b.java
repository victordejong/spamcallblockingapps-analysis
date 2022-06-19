package com.unknownphone.callblocker.custom;

import android.util.Pair;
import java.util.ArrayList;
import java.util.List;
/* renamed from: com.unknownphone.callblocker.custom.b */
/* loaded from: classes-dex2jar.jar:com/unknownphone/callblocker/custom/b.class */
public class C5282b {

    /* renamed from: a */
    public static final Pair<String, String> f22117a = new Pair<>("en", "English");

    /* renamed from: b */
    public static final Pair<String, String> f22118b = new Pair<>("es", "Español");

    /* renamed from: c */
    public static final Pair<String, String> f22119c = new Pair<>("fr", "Français");

    /* renamed from: d */
    public static final Pair<String, String> f22120d = new Pair<>("de", "Deutsch");

    /* renamed from: e */
    public static final Pair<String, String> f22121e = new Pair<>("it", "Italiano");

    /* renamed from: f */
    public static final Pair<String, String> f22122f = new Pair<>("ru", "ру́сский");

    /* renamed from: g */
    public static final Pair<String, String> f22123g = new Pair<>("sv", "Svenska");

    /* renamed from: h */
    public static final Pair<String, String> f22124h = new Pair<>("pl", "Polski");

    /* renamed from: i */
    public static final Pair<String, String> f22125i = new Pair<>("pt", "Português");

    /* renamed from: j */
    public static final Pair<String, String> f22126j = new Pair<>("nl", "Nederlands");

    /* renamed from: k */
    public static final Pair<String, String> f22127k = new Pair<>("no", "Norsk");

    /* renamed from: l */
    public static final Pair<String, String> f22128l = new Pair<>("cz", "Čeština");

    /* renamed from: m */
    public static final Pair<String, String> f22129m = new Pair<>("id", "Indonesia");

    /* renamed from: n */
    public static final Pair<String, String> f22130n = new Pair<>("zh", "国语");

    /* renamed from: o */
    public static final Pair<String, String> f22131o = new Pair<>("ja", "日本語");

    /* renamed from: p */
    public static final Pair<String, String> f22132p = new Pair<>("he", "עִבְרִית");

    /* renamed from: q */
    public static final Pair<String, String> f22133q = new Pair<>("tr", "Türkçe");

    /* renamed from: r */
    public static final Pair<String, String> f22134r = new Pair<>("hu", "Magyar");

    /* renamed from: s */
    public static final Pair<String, String> f22135s = new Pair<>("fi", "Suomi");

    /* renamed from: t */
    public static final Pair<String, String> f22136t = new Pair<>("da", "Dansk");

    /* renamed from: u */
    public static final Pair<String, String> f22137u = new Pair<>("th", "ภาษาไทย");

    /* renamed from: v */
    public static final Pair<String, String> f22138v = new Pair<>("gk", "ελληνικά");

    /* renamed from: w */
    public static final Pair<String, String> f22139w = new Pair<>("sk", "Slovenčina");

    /* renamed from: x */
    public static final Pair<String, String> f22140x = new Pair<>("ro", "Românește");

    /* renamed from: a */
    public static String m1100a(String str) {
        return str.equalsIgnoreCase((String) f22123g.first) ? "SE" : str.equalsIgnoreCase((String) f22125i.first) ? "BR" : str.equalsIgnoreCase((String) f22130n.first) ? "TW" : str.equalsIgnoreCase((String) f22131o.first) ? "JP" : str.equalsIgnoreCase((String) f22132p.first) ? "IL" : str.equalsIgnoreCase((String) f22136t.first) ? "DK" : str.toUpperCase();
    }

    /* renamed from: a */
    public static List<Pair<String, String>> m1101a() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(f22117a);
        arrayList.add(f22118b);
        arrayList.add(f22119c);
        arrayList.add(f22120d);
        arrayList.add(f22121e);
        arrayList.add(f22122f);
        arrayList.add(f22123g);
        arrayList.add(f22124h);
        arrayList.add(f22125i);
        arrayList.add(f22126j);
        arrayList.add(f22127k);
        arrayList.add(f22128l);
        arrayList.add(f22129m);
        arrayList.add(f22130n);
        arrayList.add(f22131o);
        arrayList.add(f22132p);
        arrayList.add(f22133q);
        arrayList.add(f22134r);
        arrayList.add(f22135s);
        arrayList.add(f22136t);
        arrayList.add(f22137u);
        arrayList.add(f22138v);
        arrayList.add(f22139w);
        arrayList.add(f22140x);
        return arrayList;
    }
}
