package p193e.p194a.p1129p5.p1132s0;

import android.app.Activity;
import android.app.Dialog;
import android.content.ContentResolver;
import android.content.Context;
import android.database.Cursor;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.CancellationSignal;
import android.os.OperationCanceledException;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.style.AbsoluteSizeSpan;
import android.text.style.ForegroundColorSpan;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.webkit.MimeTypeMap;
import android.widget.CompoundButton;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.RecyclerView;
import com.razorpay.AnalyticsConstants;
import com.truecaller.utils.extensions.Scheme;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import p1727n3.p1807k.p1820h.C26554d;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p682e.C12864a2;
import q3.a.i0;
import q3.a.j0;
import q3.a.o0;
import q3.a.p1;
import s1.f0.b;
import s1.f0.r;
import s1.f0.w;
import s1.g;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.c;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.y.h;
import s1.z.b.p;
import s1.z.c.c0;
import s1.z.c.l;
/* renamed from: e.a.p5.s0.f */
/* loaded from: classes15-dex2jar.jar:e/a/p5/s0/f.class */
public final class C19286f {

    @e(c = "com.truecaller.utils.extensions.ContentResolverUtils", f = "ContentResolvers.kt", l = {36}, m = "queryCancellable")
    /* renamed from: e.a.p5.s0.f$a */
    /* loaded from: classes15-dex2jar.jar:e/a/p5/s0/f$a.class */
    public static final class C19287a extends c {

        /* renamed from: d */
        public /* synthetic */ Object f53692d;

        /* renamed from: e */
        public int f53693e;

        /* renamed from: f */
        public Object f53694f;

        /* renamed from: g */
        public Object f53695g;

        public C19287a(d dVar) {
            super(dVar);
        }

        /* renamed from: s */
        public final Object m13652s(Object obj) {
            this.f53692d = obj;
            this.f53693e |= Integer.MIN_VALUE;
            return C19286f.m13703A(null, null, null, null, null, null, this);
        }
    }

    @e(c = "com.truecaller.utils.extensions.ContentResolverUtils$queryCancellable$2", f = "ContentResolvers.kt", l = {40}, m = "invokeSuspend")
    /* renamed from: e.a.p5.s0.f$b */
    /* loaded from: classes15-dex2jar.jar:e/a/p5/s0/f$b.class */
    public static final class C19288b extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public /* synthetic */ Object f53696e;

        /* renamed from: f */
        public int f53697f;

        /* renamed from: g */
        public final /* synthetic */ ContentResolver f53698g;

        /* renamed from: h */
        public final /* synthetic */ c0 f53699h;

        /* renamed from: i */
        public final /* synthetic */ Uri f53700i;

        /* renamed from: j */
        public final /* synthetic */ String[] f53701j;

        /* renamed from: k */
        public final /* synthetic */ String f53702k;

        /* renamed from: l */
        public final /* synthetic */ String[] f53703l;

        /* renamed from: m */
        public final /* synthetic */ String f53704m;

        /* renamed from: n */
        public final /* synthetic */ CancellationSignal f53705n;

        @e(c = "com.truecaller.utils.extensions.ContentResolverUtils$queryCancellable$2$1", f = "ContentResolvers.kt", l = {}, m = "invokeSuspend")
        /* renamed from: e.a.p5.s0.f$b$a */
        /* loaded from: classes15-dex2jar.jar:e/a/p5/s0/f$b$a.class */
        public static final class C19289a extends i implements p<i0, d<? super s>, Object> {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C19289a(d dVar) {
                super(2, dVar);
                C19288b.this = r5;
            }

            /* renamed from: i */
            public final d<s> m13648i(Object obj, d<?> dVar) {
                l.e(dVar, "completion");
                return new C19289a(dVar);
            }

            /* renamed from: k */
            public final Object m13647k(Object obj, Object obj2) {
                s sVar = s.a;
                d dVar = (d) obj2;
                l.e(dVar, "completion");
                C19288b c19288b = C19288b.this;
                dVar.getContext();
                C25225a.m3932a3(sVar);
                try {
                    c19288b.f53699h.a = c19288b.f53698g.query(c19288b.f53700i, c19288b.f53701j, c19288b.f53702k, c19288b.f53703l, c19288b.f53704m, c19288b.f53705n);
                } catch (OperationCanceledException e) {
                }
                return sVar;
            }

            /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:6:0x0033 -> B:4:0x002f). Please submit an issue!!! */
            /* renamed from: s */
            public final Object m13646s(Object obj) {
                C25225a.m3932a3(obj);
                try {
                    C19288b c19288b = C19288b.this;
                    c19288b.f53699h.a = c19288b.f53698g.query(c19288b.f53700i, c19288b.f53701j, c19288b.f53702k, c19288b.f53703l, c19288b.f53704m, c19288b.f53705n);
                } catch (OperationCanceledException e) {
                }
                return s.a;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C19288b(ContentResolver contentResolver, c0 c0Var, Uri uri, String[] strArr, String str, String[] strArr2, String str2, CancellationSignal cancellationSignal, d dVar) {
            super(2, dVar);
            this.f53698g = contentResolver;
            this.f53699h = c0Var;
            this.f53700i = uri;
            this.f53701j = strArr;
            this.f53702k = str;
            this.f53703l = strArr2;
            this.f53704m = str2;
            this.f53705n = cancellationSignal;
        }

        /* renamed from: i */
        public final d<s> m13651i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            C19288b c19288b = new C19288b(this.f53698g, this.f53699h, this.f53700i, this.f53701j, this.f53702k, this.f53703l, this.f53704m, this.f53705n, dVar);
            c19288b.f53696e = obj;
            return c19288b;
        }

        /* renamed from: k */
        public final Object m13650k(Object obj, Object obj2) {
            return m13651i(obj, (d) obj2).m13649s(s.a);
        }

        /* renamed from: s */
        public final Object m13649s(Object obj) {
            a aVar = a.a;
            int i = this.f53697f;
            if (i == 0) {
                C25225a.m3932a3(obj);
                o0 H = s1.a.a.a.v0.f.d.H((i0) this.f53696e, s1.a.a.a.v0.f.d.j((p1) null, 1, (Object) null), (j0) null, new C19289a(null), 2, (Object) null);
                this.f53697f = 1;
                if (H.A(this) == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            return s.a;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x004e  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0082  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0104 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* renamed from: A */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object m13703A(android.content.ContentResolver r11, android.net.Uri r12, java.lang.String[] r13, java.lang.String r14, java.lang.String[] r15, java.lang.String r16, s1.w.d<? super android.database.Cursor> r17) {
        /*
            Method dump skipped, instructions count: 272
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1129p5.p1132s0.C19286f.m13703A(android.content.ContentResolver, android.net.Uri, java.lang.String[], java.lang.String, java.lang.String[], java.lang.String, s1.w.d):java.lang.Object");
    }

    /* renamed from: B */
    public static /* synthetic */ Object m13702B(ContentResolver contentResolver, Uri uri, String[] strArr, String str, String[] strArr2, String str2, d dVar, int i) {
        if ((i & 2) != 0) {
            strArr = null;
        }
        if ((i & 4) != 0) {
            str = null;
        }
        return m13703A(contentResolver, uri, strArr, str, null, (i & 16) != 0 ? null : str2, dVar);
    }

    /* JADX WARN: Code restructure failed: missing block: B:61:0x011c, code lost:
        if ((r15.length == 0) != false) goto L62;
     */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0094  */
    /* renamed from: C */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.database.Cursor m13701C(android.content.ContentResolver r10, android.net.Uri r11, java.lang.String[] r12, java.lang.String r13, java.lang.String[] r14, java.lang.String[] r15, java.lang.Integer r16, java.lang.Integer r17, android.os.CancellationSignal r18, int r19) {
        /*
            Method dump skipped, instructions count: 445
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1129p5.p1132s0.C19286f.m13701C(android.content.ContentResolver, android.net.Uri, java.lang.String[], java.lang.String, java.lang.String[], java.lang.String[], java.lang.Integer, java.lang.Integer, android.os.CancellationSignal, int):android.database.Cursor");
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: D */
    public static final Integer m13700D(ContentResolver contentResolver, Uri uri, String str, String str2, String[] strArr) {
        l.e(contentResolver, "$this$queryInt");
        l.e(uri, "uri");
        l.e(str, "column");
        Cursor query = contentResolver.query(uri, new String[]{str}, str2, strArr, null);
        if (query != null) {
            try {
                if (!query.moveToFirst()) {
                    C25225a.m4016G(query, null);
                    return null;
                }
                int i = query.getInt(0);
                C25225a.m4016G(query, null);
                return Integer.valueOf(i);
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    C25225a.m4016G(query, th);
                    throw th2;
                }
            }
        }
        return null;
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: E */
    public static final Long m13699E(ContentResolver contentResolver, Uri uri, String str, String str2, String[] strArr, String str3) {
        l.e(contentResolver, "$this$queryLong");
        l.e(uri, "uri");
        l.e(str, "column");
        Cursor query = contentResolver.query(uri, new String[]{str}, str2, strArr, str3);
        if (query != null) {
            try {
                if (!query.moveToFirst()) {
                    C25225a.m4016G(query, null);
                    return null;
                }
                long j = query.getLong(0);
                C25225a.m4016G(query, null);
                return Long.valueOf(j);
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    C25225a.m4016G(query, th);
                    throw th2;
                }
            }
        }
        return null;
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: G */
    public static final Long m13697G(Uri uri, Context context) {
        Cursor query;
        l.e(uri, "$this$querySize");
        l.e(context, AnalyticsConstants.CONTEXT);
        Scheme m13692L = m13692L(uri);
        Long l = null;
        if (m13692L != null) {
            int ordinal = m13692L.ordinal();
            if (ordinal != 0) {
                if (ordinal != 1 || (query = context.getContentResolver().query(uri, null, null, null, null)) == null) {
                    return null;
                }
                l.d(query, "context.contentResolver.…ull, null) ?: return null");
                try {
                    int columnIndex = query.getColumnIndex("_size");
                    if (columnIndex < 0) {
                        C25225a.m4016G(query, null);
                        return null;
                    }
                    Long valueOf = !query.moveToFirst() ? null : Long.valueOf(query.getLong(columnIndex));
                    C25225a.m4016G(query, null);
                    return valueOf;
                } finally {
                    try {
                        throw th;
                    } catch (Throwable th) {
                    }
                }
            }
            long m13537k1 = C19291g.m13537k1(new File(uri.getPath()));
            l = m13537k1 < 0 ? null : Long.valueOf(m13537k1);
        }
        return l;
    }

    /* renamed from: H */
    public static String m13696H(ContentResolver contentResolver, Uri uri, String str, String str2, String[] strArr, String str3, int i) {
        l.e(contentResolver, "$this$queryString");
        l.e(uri, "uri");
        l.e(str, "column");
        Cursor query = contentResolver.query(uri, new String[]{str}, str2, strArr, null);
        String str4 = null;
        if (query != null) {
            try {
                if (query.moveToFirst()) {
                    str4 = query.getString(0);
                    th = null;
                } else {
                    C25225a.m4016G(query, null);
                    str4 = null;
                }
            } finally {
                try {
                    throw th;
                } finally {
                }
            }
        }
        return str4;
    }

    /* renamed from: I */
    public static final String m13695I(String str) {
        l.e(str, "$this$removePlus");
        return r.t(str, "+", "", false, 4);
    }

    /* renamed from: J */
    public static final void m13694J(View view) {
        l.e(view, "$this$requestApplyInsetsWhenAttached");
        if (view.isAttachedToWindow()) {
            view.requestApplyInsets();
        } else {
            view.addOnAttachStateChangeListener(new View$OnAttachStateChangeListenerC19290f0());
        }
    }

    /* renamed from: K */
    public static final int m13693K(ContentResolver contentResolver, Uri uri) {
        int i;
        l.e(contentResolver, "$this$safeDelete");
        l.e(uri, "uri");
        try {
            i = contentResolver.delete(uri, null, null);
        } catch (IOException | RuntimeException e) {
            i = 0;
        }
        return i;
    }

    /* renamed from: L */
    public static final Scheme m13692L(Uri uri) {
        l.e(uri, "$this$scheme");
        String scheme = uri.getScheme();
        Scheme scheme2 = Scheme.FILE;
        if (!l.a(scheme, scheme2.getValue())) {
            scheme2 = Scheme.CONTENT;
            if (!l.a(scheme, scheme2.getValue())) {
                scheme2 = Scheme.TEL;
                if (!l.a(scheme, scheme2.getValue())) {
                    scheme2 = null;
                }
            }
        }
        return scheme2;
    }

    /* renamed from: M */
    public static final void m13691M(CompoundButton compoundButton, boolean z, p<? super CompoundButton, ? super Boolean, s> pVar) {
        l.e(compoundButton, "$this$setCheckedWithoutListenerUpdate");
        l.e(pVar, "listener");
        compoundButton.setOnCheckedChangeListener(null);
        compoundButton.setChecked(z);
        compoundButton.setOnCheckedChangeListener(new C19292g0(pVar));
    }

    /* renamed from: N */
    public static void m13690N(View view, boolean z, float f, int i) {
        if ((i & 1) != 0) {
            z = true;
        }
        if ((i & 2) != 0) {
            f = 0.5f;
        }
        l.e(view, "$this$setEnabledWithAlpha");
        view.setEnabled(z);
        if (z) {
            f = 1.0f;
        }
        view.setAlpha(f);
    }

    /* renamed from: O */
    public static final void m13689O(View view) {
        l.e(view, "$this$setGone");
        view.setVisibility(8);
    }

    /* renamed from: P */
    public static final void m13688P(List<? extends View> list) {
        l.e(list, "$this$setGone");
        for (View view : list) {
            m13689O(view);
        }
    }

    /* renamed from: Q */
    public static final void m13687Q(View view) {
        l.e(view, "$this$setInvisible");
        view.setVisibility(4);
    }

    /* renamed from: R */
    public static final void m13686R(View view, boolean z) {
        l.e(view, "$this$setInvisible");
        view.setVisibility(z ? 0 : 4);
    }

    /* renamed from: S */
    public static final void m13685S(List<? extends View> list) {
        l.e(list, "$this$setInvisible");
        for (View view : list) {
            m13687Q(view);
        }
    }

    /* renamed from: T */
    public static final void m13684T(View view) {
        l.e(view, "$this$setVisible");
        view.setVisibility(0);
    }

    /* renamed from: U */
    public static final void m13683U(View view, boolean z) {
        l.e(view, "$this$setVisible");
        view.setVisibility(z ? 0 : 8);
    }

    /* renamed from: V */
    public static final void m13682V(List<? extends View> list) {
        l.e(list, "$this$setVisible");
        for (View view : list) {
            m13684T(view);
        }
    }

    /* renamed from: W */
    public static final void m13681W(View view, boolean z) {
        m13679Y(view, z, 0L, 2);
    }

    /* renamed from: X */
    public static final void m13680X(View view, boolean z, long j) {
        l.e(view, "$this$toggleKeyboard");
        view.postDelayed(new RunnableC19298j0(view, z), j);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r7v1 */
    /* JADX WARN: Type inference failed for: r7v2 */
    /* JADX WARN: Type inference failed for: r7v3 */
    /* renamed from: Y */
    public static /* synthetic */ void m13679Y(View view, boolean z, long j, int i) {
        if ((i & 1) != 0) {
            z = true;
        }
        ?? r7 = j;
        if ((i & 2) != 0) {
            r7 = 0;
        }
        m13680X(view, z, r7);
    }

    /* renamed from: a */
    public static final void m13678a(View view) {
        l.e(view, "$this$addRipple");
        TypedValue typedValue = new TypedValue();
        Context context = view.getContext();
        l.d(context, AnalyticsConstants.CONTEXT);
        context.getTheme().resolveAttribute(16843534, typedValue, true);
        view.setBackgroundResource(typedValue.resourceId);
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: b */
    public static final File m13677b(Uri uri, Context context, String str) {
        FileInputStream fileInputStream;
        l.e(uri, "$this$copyToTempFile");
        l.e(context, AnalyticsConstants.CONTEXT);
        File a = h.a("tmp", str, (File) null);
        Scheme m13692L = m13692L(uri);
        if (m13692L == null) {
            return null;
        }
        int ordinal = m13692L.ordinal();
        if (ordinal == 0) {
            fileInputStream = new FileInputStream(uri.getPath());
        } else if (ordinal != 1) {
            return null;
        } else {
            fileInputStream = context.getContentResolver().openInputStream(uri);
            if (fileInputStream == null) {
                return null;
            }
        }
        l.d(fileInputStream, "when (scheme()) {\n      …else -> return null\n    }");
        FileOutputStream fileOutputStream = new FileOutputStream(a);
        try {
            C19291g.m13574X1(fileInputStream, fileOutputStream);
            fileOutputStream.flush();
            fileOutputStream.close();
            fileInputStream.close();
            return a;
        } catch (IOException e) {
            fileOutputStream.close();
            fileInputStream.close();
            return null;
        } catch (Throwable th) {
            fileOutputStream.close();
            fileInputStream.close();
            throw th;
        }
    }

    /* renamed from: d */
    public static final Uri m13675d(Uri uri, Context context, Uri uri2) {
        InputStream inputStream;
        OutputStream outputStream;
        OutputStream outputStream2;
        Throwable th;
        FileInputStream fileInputStream;
        l.e(uri, "$this$copyToUri");
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(uri2, "destUri");
        try {
            Scheme m13692L = m13692L(uri);
            if (m13692L == null) {
                return null;
            }
            int ordinal = m13692L.ordinal();
            if (ordinal == 0) {
                fileInputStream = new FileInputStream(uri.getPath());
            } else if (ordinal != 1) {
                return null;
            } else {
                fileInputStream = context.getContentResolver().openInputStream(uri);
                if (fileInputStream == null) {
                    return null;
                }
            }
            try {
                OutputStream openOutputStream = context.getContentResolver().openOutputStream(uri2);
                if (openOutputStream == null) {
                    try {
                        fileInputStream.close();
                        return null;
                    } catch (IOException e) {
                        return null;
                    }
                }
                try {
                    C19291g.m13574X1(fileInputStream, openOutputStream);
                    openOutputStream.flush();
                    try {
                        fileInputStream.close();
                    } catch (IOException e2) {
                    }
                    try {
                        openOutputStream.close();
                    } catch (IOException e3) {
                    }
                    return uri2;
                } catch (IOException e4) {
                    inputStream = fileInputStream;
                    outputStream = openOutputStream;
                    if (inputStream != null) {
                        try {
                            inputStream.close();
                        } catch (IOException e5) {
                        }
                    }
                    if (outputStream == null) {
                        return null;
                    }
                    try {
                        outputStream.close();
                        return null;
                    } catch (IOException e6) {
                        return null;
                    }
                } catch (Throwable th2) {
                    outputStream2 = openOutputStream;
                    th = th2;
                    if (fileInputStream != null) {
                        try {
                            fileInputStream.close();
                        } catch (IOException e7) {
                        }
                    }
                    if (outputStream2 != null) {
                        try {
                            outputStream2.close();
                        } catch (IOException e8) {
                        }
                    }
                    throw th;
                }
            } catch (IOException e9) {
                inputStream = fileInputStream;
                outputStream = null;
            } catch (Throwable th3) {
                th = th3;
                outputStream2 = null;
            }
        } catch (IOException e10) {
            inputStream = null;
            outputStream = null;
        } catch (Throwable th4) {
            th = th4;
            outputStream2 = null;
            fileInputStream = null;
        }
    }

    /* renamed from: e */
    public static final void m13674e(MenuItem menuItem, Integer num, Integer num2) {
        l.e(menuItem, "$this$createMenuItemWithIcon");
        Drawable icon = menuItem.getIcon();
        CharSequence title = menuItem.getTitle();
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        if (icon != null) {
            Drawable mutate = icon.mutate();
            l.d(mutate, "drawable.mutate()");
            C19291g.m13545i(mutate, spannableStringBuilder, num, null, false, 12);
            spannableStringBuilder.append((CharSequence) "   ");
        }
        spannableStringBuilder.append(title);
        if (num2 != null) {
            spannableStringBuilder.setSpan(new ForegroundColorSpan(num2.intValue()), 0, spannableStringBuilder.length(), 33);
        }
        spannableStringBuilder.setSpan(new AbsoluteSizeSpan(16, true), 0, spannableStringBuilder.length(), 33);
        menuItem.setTitle(spannableStringBuilder);
    }

    /* renamed from: f */
    public static /* synthetic */ void m13673f(MenuItem menuItem, Integer num, Integer num2, int i) {
        if ((i & 1) != 0) {
            num = null;
        }
        if ((i & 2) != 0) {
            num2 = null;
        }
        m13674e(menuItem, num, num2);
    }

    /* renamed from: g */
    public static final boolean m13672g(Uri uri, Context context) {
        boolean z;
        l.e(uri, "$this$exists");
        l.e(context, AnalyticsConstants.CONTEXT);
        try {
            InputStream openInputStream = context.getContentResolver().openInputStream(uri);
            if (openInputStream != null) {
                openInputStream.close();
            }
            z = true;
        } catch (Exception e) {
            z = false;
        }
        return z;
    }

    /* renamed from: h */
    public static final String m13671h(String str) {
        Object obj;
        l.e(str, "$this$firstLetter");
        List<Character> p0 = w.p0(str);
        ArrayList arrayList = new ArrayList(C25225a.m4004J(p0, 10));
        for (Character ch : p0) {
            arrayList.add(String.valueOf(ch.charValue()));
        }
        Iterator it = arrayList.iterator();
        while (true) {
            if (!it.hasNext()) {
                obj = null;
                break;
            }
            obj = it.next();
            if (TextUtils.isGraphic((String) obj)) {
                break;
            }
        }
        String str2 = (String) obj;
        String str3 = null;
        if (str2 != null) {
            Locale locale = Locale.getDefault();
            l.d(locale, "Locale.getDefault()");
            str3 = str2.toUpperCase(locale);
            l.d(str3, "(this as java.lang.String).toUpperCase(locale)");
        }
        return str3;
    }

    /* renamed from: i */
    public static final String m13670i(Uri uri, Context context) {
        String str;
        l.e(uri, "$this$getMimeTypeFromMediaUri");
        l.e(context, AnalyticsConstants.CONTEXT);
        String type = context.getContentResolver().getType(uri);
        if (type != null) {
            str = type;
        } else {
            String fileExtensionFromUrl = MimeTypeMap.getFileExtensionFromUrl(uri.toString());
            str = fileExtensionFromUrl != null ? MimeTypeMap.getSingleton().getMimeTypeFromExtension(fileExtensionFromUrl) : null;
        }
        return str;
    }

    /* renamed from: j */
    public static final String m13669j(String str, String str2) {
        l.e(str, "$this$hashString");
        l.e(str2, "type");
        byte[] bytes = str.getBytes(b.a);
        l.d(bytes, "(this as java.lang.String).getBytes(charset)");
        return C12864a2.m22584J(bytes, str2);
    }

    /* renamed from: k */
    public static final View m13668k(ViewGroup viewGroup, int i, boolean z) {
        l.e(viewGroup, "$this$inflate");
        View inflate = LayoutInflater.from(viewGroup.getContext()).inflate(i, viewGroup, z);
        l.d(inflate, "LayoutInflater.from(cont…yout, this, attachToRoot)");
        return inflate;
    }

    /* renamed from: l */
    public static /* synthetic */ View m13667l(ViewGroup viewGroup, int i, boolean z, int i2) {
        if ((i2 & 2) != 0) {
            z = false;
        }
        return m13668k(viewGroup, i, z);
    }

    /* renamed from: m */
    public static final <T> T m13666m(ViewStub viewStub) {
        View inflate = viewStub != null ? viewStub.inflate() : null;
        if (!(inflate instanceof Object)) {
            inflate = null;
        }
        return inflate;
    }

    /* renamed from: n */
    public static final boolean m13665n(Uri uri) {
        l.e(uri, "$this$isEmpty");
        return uri.getScheme() == null;
    }

    /* renamed from: o */
    public static final boolean m13664o(String str) {
        l.e(str, "$this$isValidEmail");
        boolean z = true;
        if (!(!r.p(str)) || !C26554d.f74405i.matcher(str).matches()) {
            z = false;
        }
        return z;
    }

    /* renamed from: p */
    public static final boolean m13663p(View view) {
        l.e(view, "$this$isVisible");
        return view.getVisibility() == 0;
    }

    /* renamed from: q */
    public static final <V extends View> g<V> m13662q(Activity activity, int i) {
        l.e(activity, "$this$lazyFindViewById");
        return C25225a.m3982O1(s1.h.c, new C19311w(activity, i));
    }

    /* renamed from: r */
    public static final <V extends View> g<V> m13661r(Dialog dialog, int i) {
        l.e(dialog, "$this$lazyFindViewById");
        return C25225a.m3982O1(s1.h.c, new C19273a0(dialog, i));
    }

    /* renamed from: s */
    public static final <V extends View> g<V> m13660s(View view, int i) {
        l.e(view, "$this$lazyFindViewById");
        return C25225a.m3982O1(s1.h.c, new C19312x(view, i));
    }

    /* renamed from: t */
    public static final <V extends View> g<V> m13659t(Fragment fragment, int i) {
        l.e(fragment, "$this$lazyFindViewById");
        return C25225a.m3982O1(s1.h.c, new C19313y(fragment, i));
    }

    /* renamed from: u */
    public static final <V extends View> g<V> m13658u(RecyclerView.AbstractC0313c0 abstractC0313c0, int i) {
        l.e(abstractC0313c0, "$this$lazyFindViewById");
        return C25225a.m3982O1(s1.h.c, new C19314z(abstractC0313c0, i));
    }

    /* renamed from: v */
    public static final long m13657v(String str) {
        l.e(str, "$this$numberToLong");
        return Long.parseLong(m13695I(str));
    }

    /* renamed from: w */
    public static final void m13656w(View view, s1.z.b.a<s> aVar) {
        l.e(view, "$this$onAttached");
        l.e(aVar, "callback");
        if (view.isAttachedToWindow()) {
            aVar.invoke();
        } else {
            view.addOnAttachStateChangeListener(new View$OnAttachStateChangeListenerC19275b0(view, aVar));
        }
    }

    /* renamed from: x */
    public static final void m13655x(View view, s1.z.b.l<? super Boolean, s> lVar) {
        l.e(view, "$this$onFocusChanged");
        l.e(lVar, "onFocusChangedImpl");
        view.setOnFocusChangeListener(new View$OnFocusChangeListenerC19279d0(lVar));
    }

    /* renamed from: y */
    public static final void m13654y(View view, s1.z.b.a<s> aVar) {
        l.e(view, "$this$onPreDraw");
        l.e(aVar, "callback");
        view.getViewTreeObserver().addOnPreDrawListener(new ViewTreeObserver$OnPreDrawListenerC19285e0(view, aVar));
    }

    /* renamed from: z */
    public static final String m13653z(String str) {
        l.e(str, "$this$prependPlusIfAbsent");
        if (!r.y(str, "+", false, 2)) {
            str = C22128a.m8702I1('+', str);
        }
        return str;
    }
}
