package androidx.media2.exoplayer.external.util;

import java.util.ArrayList;
import java.util.Comparator;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/util/s.class */
public final class s {

    /* renamed from: a  reason: collision with root package name */
    public static final Comparator<a> f4173a = t.f4180a;

    /* renamed from: b  reason: collision with root package name */
    public static final Comparator<a> f4174b = u.f4181a;

    /* renamed from: c  reason: collision with root package name */
    public final int f4175c;
    public int g;
    public int h;
    public int i;
    public final a[] e = new a[5];

    /* renamed from: d  reason: collision with root package name */
    public final ArrayList<a> f4176d = new ArrayList<>();
    public int f = -1;

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/util/s$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public int f4177a;

        /* renamed from: b  reason: collision with root package name */
        public int f4178b;

        /* renamed from: c  reason: collision with root package name */
        public float f4179c;

        private a() {
        }
    }

    public s(int i) {
        this.f4175c = i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static final /* synthetic */ int b(a aVar, a aVar2) {
        return aVar.f4177a - aVar2.f4177a;
    }
}
