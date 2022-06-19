package p193e.p194a.p195a.p244k;

import android.content.ContentProviderOperation;
import android.content.ContentProviderResult;
import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.OperationApplicationException;
import android.net.Uri;
import android.os.RemoteException;
import com.truecaller.log.AssertionUtil;
import java.util.ArrayList;
import java.util.List;
/* renamed from: e.a.a.k.w */
/* loaded from: classes11-dex2jar.jar:e/a/a/k/w.class */
public class C6713w {

    /* renamed from: c */
    public static final ContentProviderResult[] f22100c = new ContentProviderResult[0];

    /* renamed from: a */
    public final String f22101a;

    /* renamed from: b */
    public List<C6715b> f22102b;

    /* renamed from: e.a.a.k.w$b */
    /* loaded from: classes11-dex2jar.jar:e/a/a/k/w$b.class */
    public static class C6715b {

        /* renamed from: a */
        public final int f22103a;

        /* renamed from: b */
        public final Uri f22104b;

        /* renamed from: c */
        public final ContentValues f22105c;

        /* renamed from: d */
        public final String f22106d;

        /* renamed from: e */
        public final String[] f22107e;

        /* renamed from: e.a.a.k.w$b$a */
        /* loaded from: classes11-dex2jar.jar:e/a/a/k/w$b$a.class */
        public static class C6716a {

            /* renamed from: a */
            public final int f22108a;

            /* renamed from: b */
            public final Uri f22109b;

            /* renamed from: c */
            public final ContentValues f22110c = new ContentValues();

            /* renamed from: d */
            public String f22111d;

            /* renamed from: e */
            public String[] f22112e;

            public C6716a(int i, Uri uri, C6714a c6714a) {
                this.f22108a = i;
                this.f22109b = uri;
            }

            /* renamed from: a */
            public C6715b m30531a() {
                return new C6715b(this, null);
            }
        }

        public C6715b(C6716a c6716a, C6714a c6714a) {
            this.f22103a = c6716a.f22108a;
            this.f22104b = c6716a.f22109b;
            this.f22105c = c6716a.f22110c;
            this.f22106d = c6716a.f22111d;
            this.f22107e = c6716a.f22112e;
        }
    }

    /* renamed from: e.a.a.k.w$c */
    /* loaded from: classes11-dex2jar.jar:e/a/a/k/w$c.class */
    public interface AbstractC6717c {
        /* renamed from: a */
        ContentProviderResult[] mo30530a(C6713w c6713w) throws OperationApplicationException, RemoteException, SecurityException;
    }

    /* renamed from: e.a.a.k.w$d */
    /* loaded from: classes11-dex2jar.jar:e/a/a/k/w$d.class */
    public static class C6718d implements AbstractC6717c {

        /* renamed from: a */
        public final ContentResolver f22113a;

        /* renamed from: b */
        public boolean f22114b = true;

        public C6718d(ContentResolver contentResolver) {
            this.f22113a = contentResolver;
        }

        @Override // p193e.p194a.p195a.p244k.C6713w.AbstractC6717c
        /* renamed from: a */
        public ContentProviderResult[] mo30530a(C6713w c6713w) throws OperationApplicationException, RemoteException, SecurityException {
            ContentProviderResult[] contentProviderResultArr = C6713w.f22100c;
            int i = 0;
            if (this.f22114b) {
                try {
                    ContentProviderResult[] m30535b = c6713w.m30535b(this.f22113a);
                    if (m30535b != null) {
                        return m30535b;
                    }
                    this.f22114b = false;
                } catch (OperationApplicationException | NullPointerException | SecurityException e) {
                    this.f22114b = false;
                } catch (RemoteException e2) {
                    AssertionUtil.reportThrowableButNeverCrash(e2);
                    return contentProviderResultArr;
                }
            }
            ContentResolver contentResolver = this.f22113a;
            List<C6715b> list = c6713w.f22102b;
            ContentProviderResult[] contentProviderResultArr2 = contentProviderResultArr;
            if (list != null) {
                if (list.isEmpty()) {
                    contentProviderResultArr2 = contentProviderResultArr;
                } else {
                    contentProviderResultArr2 = new ContentProviderResult[c6713w.f22102b.size()];
                    int size = c6713w.f22102b.size();
                    while (true) {
                        if (i >= size) {
                            break;
                        }
                        C6715b c6715b = c6713w.f22102b.get(i);
                        int i2 = c6715b.f22103a;
                        if (i2 == 0) {
                            contentProviderResultArr2[i] = new ContentProviderResult(contentResolver.insert(c6715b.f22104b, c6715b.f22105c));
                        } else if (i2 == 1) {
                            contentProviderResultArr2[i] = new ContentProviderResult(contentResolver.update(c6715b.f22104b, c6715b.f22105c, c6715b.f22106d, c6715b.f22107e));
                        } else if (i2 != 2) {
                            AssertionUtil.AlwaysFatal.fail("Unsupported operation");
                            contentProviderResultArr2 = contentProviderResultArr;
                            break;
                        } else {
                            contentProviderResultArr2[i] = new ContentProviderResult(contentResolver.delete(c6715b.f22104b, c6715b.f22106d, c6715b.f22107e));
                        }
                        i++;
                    }
                }
            }
            return contentProviderResultArr2;
        }
    }

    public C6713w(String str) {
        this.f22101a = str;
    }

    /* renamed from: a */
    public void m30536a(C6715b c6715b) {
        if (this.f22102b == null) {
            this.f22102b = new ArrayList();
        }
        this.f22102b.add(c6715b);
    }

    /* renamed from: b */
    public ContentProviderResult[] m30535b(ContentResolver contentResolver) throws OperationApplicationException, RemoteException, SecurityException, NullPointerException {
        ContentProviderOperation contentProviderOperation;
        ContentProviderOperation.Builder builder;
        List<C6715b> list = this.f22102b;
        if (list == null || list.isEmpty()) {
            return f22100c;
        }
        ArrayList<ContentProviderOperation> arrayList = new ArrayList<>();
        for (C6715b c6715b : this.f22102b) {
            int i = c6715b.f22103a;
            if (i == 0) {
                builder = ContentProviderOperation.newInsert(c6715b.f22104b);
            } else if (i == 1) {
                builder = ContentProviderOperation.newUpdate(c6715b.f22104b);
            } else if (i != 2) {
                AssertionUtil.AlwaysFatal.fail("Unsupported operation");
                contentProviderOperation = null;
                arrayList.add(contentProviderOperation);
            } else {
                builder = ContentProviderOperation.newDelete(c6715b.f22104b);
            }
            if (c6715b.f22105c.size() != 0) {
                builder.withValues(c6715b.f22105c);
            }
            String str = c6715b.f22106d;
            if (str != null) {
                builder.withSelection(str, c6715b.f22107e);
            }
            contentProviderOperation = builder.build();
            arrayList.add(contentProviderOperation);
        }
        return contentResolver.applyBatch(this.f22101a, arrayList);
    }

    /* renamed from: c */
    public boolean mo30534c() {
        List<C6715b> list = this.f22102b;
        return list == null || list.isEmpty();
    }

    /* renamed from: d */
    public C6715b.C6716a m30533d(Uri uri) {
        AssertionUtil.isTrue(this.f22101a.equals(uri.getHost()), new String[0]);
        return new C6715b.C6716a(2, uri, null);
    }

    /* renamed from: e */
    public C6715b.C6716a m30532e(Uri uri) {
        AssertionUtil.isTrue(this.f22101a.equals(uri.getHost()), new String[0]);
        return new C6715b.C6716a(1, uri, null);
    }
}
