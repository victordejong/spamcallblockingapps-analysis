package com.google.android.gms.tagmanager;

import com.asus.updatesdk.BuildConfig;
import com.google.android.gms.internal.h;
import com.google.android.gms.internal.i;
import com.google.android.gms.internal.k;
import java.io.UnsupportedEncodingException;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tagmanager/af.class */
final class af extends q {

    /* renamed from: b  reason: collision with root package name */
    private static final String f4271b = h.JOINER.toString();
    private static final String c = i.ARG0.toString();
    private static final String d = i.ITEM_SEPARATOR.toString();
    private static final String e = i.KEY_VALUE_SEPARATOR.toString();
    private static final String f = i.ESCAPE.toString();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.android.gms.tagmanager.af$1  reason: invalid class name */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/tagmanager/af$1.class */
    public static final /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f4272a = new int[a.a().length];

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x002c -> B:14:0x001d). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:11:0x0030 -> B:12:0x0013). Please submit an issue!!! */
        static {
            try {
                f4272a[a.f4274b - 1] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f4272a[a.c - 1] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f4272a[a.f4273a - 1] = 3;
            } catch (NoSuchFieldError e3) {
            }
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier removed */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/tagmanager/af$a.class */
    private static final class a extends Enum<a> {

        /* renamed from: a  reason: collision with root package name */
        public static final int f4273a = 1;

        /* renamed from: b  reason: collision with root package name */
        public static final int f4274b = 2;
        public static final int c = 3;
        private static final /* synthetic */ int[] d = {f4273a, f4274b, c};

        public static int[] a() {
            return (int[]) d.clone();
        }
    }

    public af() {
        super(f4271b, c);
    }

    private static String a(String str, int i, Set<Character> set) {
        switch (AnonymousClass1.f4272a[i - 1]) {
            case 1:
                try {
                    str = cr.a(str);
                    break;
                } catch (UnsupportedEncodingException e2) {
                    an.a("Joiner: unsupported encoding", e2);
                    break;
                }
            case 2:
                str = str.replace("\\", "\\\\");
                for (Character ch : set) {
                    String ch2 = ch.toString();
                    String valueOf = String.valueOf(ch2);
                    str = str.replace(ch2, valueOf.length() != 0 ? "\\".concat(valueOf) : new String("\\"));
                }
                break;
        }
        return str;
    }

    private static void a(StringBuilder sb, String str, int i, Set<Character> set) {
        sb.append(a(str, i, set));
    }

    private static void a(Set<Character> set, String str) {
        for (int i = 0; i < str.length(); i++) {
            set.add(Character.valueOf(str.charAt(i)));
        }
    }

    @Override // com.google.android.gms.tagmanager.q
    public final k.a a(Map<String, k.a> map) {
        HashSet hashSet;
        k.a a2;
        k.a aVar = map.get(c);
        if (aVar == null) {
            a2 = cn.f();
        } else {
            k.a aVar2 = map.get(d);
            String a3 = aVar2 != null ? cn.a(aVar2) : BuildConfig.FLAVOR;
            k.a aVar3 = map.get(e);
            String a4 = aVar3 != null ? cn.a(aVar3) : "=";
            int i = a.f4273a;
            k.a aVar4 = map.get(f);
            if (aVar4 != null) {
                String a5 = cn.a(aVar4);
                if ("url".equals(a5)) {
                    i = a.f4274b;
                    hashSet = null;
                } else if ("backslash".equals(a5)) {
                    i = a.c;
                    hashSet = new HashSet();
                    a(hashSet, a3);
                    a(hashSet, a4);
                    hashSet.remove('\\');
                } else {
                    String valueOf = String.valueOf(a5);
                    an.a(valueOf.length() != 0 ? "Joiner: unsupported escape type: ".concat(valueOf) : new String("Joiner: unsupported escape type: "));
                    a2 = cn.f();
                }
            } else {
                hashSet = null;
            }
            StringBuilder sb = new StringBuilder();
            switch (aVar.f4210a) {
                case 2:
                    boolean z = true;
                    k.a[] aVarArr = aVar.c;
                    int length = aVarArr.length;
                    int i2 = 0;
                    while (i2 < length) {
                        k.a aVar5 = aVarArr[i2];
                        if (!z) {
                            sb.append(a3);
                        }
                        a(sb, cn.a(aVar5), i, hashSet);
                        i2++;
                        z = false;
                    }
                    break;
                case 3:
                    for (int i3 = 0; i3 < aVar.d.length; i3++) {
                        if (i3 > 0) {
                            sb.append(a3);
                        }
                        String a6 = cn.a(aVar.d[i3]);
                        String a7 = cn.a(aVar.e[i3]);
                        a(sb, a6, i, hashSet);
                        sb.append(a4);
                        a(sb, a7, i, hashSet);
                    }
                    break;
                default:
                    a(sb, cn.a(aVar), i, hashSet);
                    break;
            }
            a2 = cn.a((Object) sb.toString());
        }
        return a2;
    }

    @Override // com.google.android.gms.tagmanager.q
    public final boolean a() {
        return true;
    }
}
