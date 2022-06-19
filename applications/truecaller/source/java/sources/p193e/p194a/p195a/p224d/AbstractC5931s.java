package p193e.p194a.p195a.p224d;

import android.content.Intent;
import android.net.Uri;
import com.truecaller.messaging.ForwardContentItem;
import com.truecaller.messaging.data.types.ImGroupInfo;
import java.util.ArrayList;
import s1.z.c.f;
import s1.z.c.l;
/* renamed from: e.a.a.d.s */
/* loaded from: classes7-dex2jar.jar:e/a/a/d/s.class */
public abstract class AbstractC5931s {

    /* renamed from: e.a.a.d.s$a */
    /* loaded from: classes7-dex2jar.jar:e/a/a/d/s$a.class */
    public static final class C5932a extends AbstractC5931s {

        /* renamed from: a */
        public final ImGroupInfo f19819a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C5932a(ImGroupInfo imGroupInfo) {
            super(null);
            l.e(imGroupInfo, "imGroupInfo");
            this.f19819a = imGroupInfo;
        }
    }

    /* renamed from: e.a.a.d.s$b */
    /* loaded from: classes7-dex2jar.jar:e/a/a/d/s$b.class */
    public static final class C5933b extends AbstractC5931s {

        /* renamed from: a */
        public final Intent f19820a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C5933b(Intent intent) {
            super(null);
            l.e(intent, "sendIntent");
            this.f19820a = intent;
        }
    }

    /* renamed from: e.a.a.d.s$c */
    /* loaded from: classes7-dex2jar.jar:e/a/a/d/s$c.class */
    public static final class C5934c extends AbstractC5931s {

        /* renamed from: a */
        public final ArrayList<ForwardContentItem> f19821a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C5934c(ArrayList<ForwardContentItem> arrayList) {
            super(null);
            l.e(arrayList, "forwardContentList");
            this.f19821a = arrayList;
        }
    }

    /* renamed from: e.a.a.d.s$d */
    /* loaded from: classes7-dex2jar.jar:e/a/a/d/s$d.class */
    public static final class C5935d extends AbstractC5931s {

        /* renamed from: a */
        public final boolean f19822a;

        /* renamed from: b */
        public final String f19823b;

        /* renamed from: c */
        public final Uri f19824c;

        public C5935d() {
            this(false, null, null, 7);
        }

        public C5935d(boolean z, String str, Uri uri) {
            super(null);
            this.f19822a = z;
            this.f19823b = str;
            this.f19824c = uri;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C5935d(boolean z, String str, Uri uri, int i) {
            super(null);
            z = (i & 1) != 0 ? false : z;
            this.f19822a = z;
            this.f19823b = null;
            this.f19824c = null;
        }
    }

    public AbstractC5931s(f fVar) {
    }
}
