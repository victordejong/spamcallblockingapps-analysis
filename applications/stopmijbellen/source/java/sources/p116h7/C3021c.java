package p116h7;

import android.view.View;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import p032c7.C0849b;
/* renamed from: h7.c */
/* loaded from: classes-dex2jar.jar:h7/c.class */
public class C3021c {

    /* renamed from: a */
    public final HashMap<View, String> f10130a = new HashMap<>();

    /* renamed from: b */
    public final HashMap<View, C3022a> f10131b = new HashMap<>();

    /* renamed from: c */
    public final HashMap<String, View> f10132c = new HashMap<>();

    /* renamed from: d */
    public final HashSet<View> f10133d = new HashSet<>();

    /* renamed from: e */
    public final HashSet<String> f10134e = new HashSet<>();

    /* renamed from: f */
    public final HashSet<String> f10135f = new HashSet<>();

    /* renamed from: g */
    public final HashMap<String, String> f10136g = new HashMap<>();

    /* renamed from: h */
    public boolean f10137h;

    /* renamed from: h7.c$a */
    /* loaded from: classes-dex2jar.jar:h7/c$a.class */
    public static class C3022a {

        /* renamed from: a */
        public final C0849b f10138a;

        /* renamed from: b */
        public final ArrayList<String> f10139b;

        public C3022a(C0849b c0849b, String str) {
            ArrayList<String> arrayList = new ArrayList<>();
            this.f10139b = arrayList;
            this.f10138a = c0849b;
            arrayList.add(str);
        }
    }
}
