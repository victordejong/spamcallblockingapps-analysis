package p081h.p444n.p445a;

import android.content.ContentResolver;
import android.content.ContentUris;
import android.content.Context;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.provider.MediaStore;
import java.io.IOException;
import p081h.p444n.p445a.AbstractC10815z;
import p081h.p444n.p445a.C10798u;
import p645m.C15181l;
/* renamed from: h.n.a.p */
/* loaded from: classes2-dex2jar.jar:h/n/a/p.class */
public class C10790p extends C10775g {

    /* renamed from: b */
    public static final String[] f24631b = {"orientation"};

    /* renamed from: h.n.a.p$a */
    /* loaded from: classes2-dex2jar.jar:h/n/a/p$a.class */
    public enum EnumC10791a {
        MICRO(3, 96, 96),
        MINI(1, 512, 384),
        FULL(2, -1, -1);
        

        /* renamed from: a */
        public final int f24636a;

        /* renamed from: b */
        public final int f24637b;

        /* renamed from: c */
        public final int f24638c;

        EnumC10791a(int i, int i2, int i3) {
            this.f24636a = i;
            this.f24637b = i2;
            this.f24638c = i3;
        }
    }

    public C10790p(Context context) {
        super(context);
    }

    /* renamed from: a */
    public static int m10620a(ContentResolver contentResolver, Uri uri) {
        Cursor cursor = null;
        Cursor cursor2 = null;
        try {
            Cursor query = contentResolver.query(uri, f24631b, null, null, null);
            if (query != null && query.moveToFirst()) {
                cursor2 = query;
                cursor = query;
                int i = query.getInt(0);
                if (query != null) {
                    query.close();
                }
                return i;
            }
            if (query == null) {
                return 0;
            }
            query.close();
            return 0;
        } catch (RuntimeException e) {
            if (cursor == null) {
                return 0;
            }
            cursor.close();
            return 0;
        } catch (Throwable th) {
            if (cursor2 != null) {
                cursor2.close();
            }
            throw th;
        }
    }

    /* renamed from: a */
    public static EnumC10791a m10621a(int i, int i2) {
        EnumC10791a aVar = EnumC10791a.MICRO;
        if (i <= aVar.f24637b && i2 <= aVar.f24638c) {
            return aVar;
        }
        EnumC10791a aVar2 = EnumC10791a.MINI;
        return (i > aVar2.f24637b || i2 > aVar2.f24638c) ? EnumC10791a.FULL : aVar2;
    }

    @Override // p081h.p444n.p445a.C10775g, p081h.p444n.p445a.AbstractC10815z
    /* renamed from: a */
    public AbstractC10815z.C10816a mo10561a(C10811x xVar, int i) throws IOException {
        Bitmap bitmap;
        ContentResolver contentResolver = this.f24595a.getContentResolver();
        int a = m10620a(contentResolver, xVar.f24705d);
        String type = contentResolver.getType(xVar.f24705d);
        boolean z = type != null && type.startsWith("video/");
        if (xVar.m10587c()) {
            EnumC10791a a2 = m10621a(xVar.f24709h, xVar.f24710i);
            if (!z && a2 == EnumC10791a.FULL) {
                return new AbstractC10815z.C10816a(null, C15181l.m325a(m10660c(xVar)), C10798u.EnumC10804e.DISK, a);
            }
            long parseId = ContentUris.parseId(xVar.f24705d);
            BitmapFactory.Options b = AbstractC10815z.m10558b(xVar);
            b.inJustDecodeBounds = true;
            AbstractC10815z.m10565a(xVar.f24709h, xVar.f24710i, a2.f24637b, a2.f24638c, b, xVar);
            if (z) {
                bitmap = MediaStore.Video.Thumbnails.getThumbnail(contentResolver, parseId, a2 == EnumC10791a.FULL ? 1 : a2.f24636a, b);
            } else {
                bitmap = MediaStore.Images.Thumbnails.getThumbnail(contentResolver, parseId, a2.f24636a, b);
            }
            if (bitmap != null) {
                return new AbstractC10815z.C10816a(bitmap, null, C10798u.EnumC10804e.DISK, a);
            }
        }
        return new AbstractC10815z.C10816a(null, C15181l.m325a(m10660c(xVar)), C10798u.EnumC10804e.DISK, a);
    }

    @Override // p081h.p444n.p445a.C10775g, p081h.p444n.p445a.AbstractC10815z
    /* renamed from: a */
    public boolean mo10562a(C10811x xVar) {
        Uri uri = xVar.f24705d;
        return "content".equals(uri.getScheme()) && "media".equals(uri.getAuthority());
    }
}
