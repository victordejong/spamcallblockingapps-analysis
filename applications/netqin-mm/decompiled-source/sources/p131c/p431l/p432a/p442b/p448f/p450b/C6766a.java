package p131c.p431l.p432a.p442b.p448f.p450b;

import android.content.Context;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CursorAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import com.mopub.mobileads.VastIconXmlManager;
import com.netqin.p525cm.p528db.model.SystemCallLog;
import p131c.p431l.p432a.p442b.p445c.C6742d;
import p131c.p431l.p432a.p442b.p445c.C6746e;
import p131c.p431l.p432a.p468n.C6843d;
/* renamed from: c.l.a.b.f.b.a */
/* loaded from: classes2-dex2jar.jar:c/l/a/b/f/b/a.class */
public class C6766a extends CursorAdapter {

    /* renamed from: d */
    public static boolean f20867d = false;

    /* renamed from: a */
    public Context f20868a;

    /* renamed from: b */
    public C6746e f20869b;

    /* renamed from: c */
    public C6742d f20870c;

    /* renamed from: c.l.a.b.f.b.a$a */
    /* loaded from: classes2-dex2jar.jar:c/l/a/b/f/b/a$a.class */
    public class C6767a implements C6746e.AbstractC6749c {

        /* renamed from: a */
        public final /* synthetic */ TextView f20871a;

        /* renamed from: b */
        public final /* synthetic */ SystemCallLog f20872b;

        public C6767a(C6766a aVar, TextView textView, SystemCallLog systemCallLog) {
            this.f20871a = textView;
            this.f20872b = systemCallLog;
        }

        @Override // p131c.p431l.p432a.p442b.p445c.C6746e.AbstractC6749c
        /* renamed from: a */
        public void mo19844a(String str, String str2) {
            if (this.f20871a.getTag().equals(str2)) {
                if (!TextUtils.isEmpty(str)) {
                    this.f20871a.setText(str);
                } else {
                    this.f20871a.setText(this.f20872b.getAddress());
                }
            }
        }
    }

    /* renamed from: c.l.a.b.f.b.a$b */
    /* loaded from: classes2-dex2jar.jar:c/l/a/b/f/b/a$b.class */
    public class C6768b implements C6742d.AbstractC6745c {

        /* renamed from: a */
        public final /* synthetic */ ImageView f20873a;

        /* renamed from: b */
        public final /* synthetic */ SystemCallLog f20874b;

        public C6768b(C6766a aVar, ImageView imageView, SystemCallLog systemCallLog) {
            this.f20873a = imageView;
            this.f20874b = systemCallLog;
        }

        @Override // p131c.p431l.p432a.p442b.p445c.C6742d.AbstractC6745c
        /* renamed from: a */
        public void mo19843a(Bitmap bitmap, String str) {
            if (this.f20873a.getTag().equals(str)) {
                if (bitmap != null) {
                    this.f20873a.setImageBitmap(bitmap);
                } else {
                    this.f20873a.setImageResource(this.f20874b.getDefaultAvatar());
                }
            }
        }
    }

    /* renamed from: c.l.a.b.f.b.a$c */
    /* loaded from: classes2-dex2jar.jar:c/l/a/b/f/b/a$c.class */
    public class C6769c {

        /* renamed from: a */
        public ImageView f20875a;

        /* renamed from: b */
        public TextView f20876b;

        /* renamed from: c */
        public TextView f20877c;

        /* renamed from: d */
        public TextView f20878d;

        /* renamed from: e */
        public ImageView f20879e;

        /* renamed from: f */
        public TextView f20880f;

        public C6769c(C6766a aVar) {
        }

        public /* synthetic */ C6769c(C6766a aVar, C6767a aVar2) {
            this(aVar);
        }
    }

    public C6766a(Context context, Cursor cursor, boolean z) {
        super(context, cursor, z);
        this.f20868a = context;
        this.f20869b = new C6746e(context);
        this.f20870c = new C6742d(context);
    }

    /* renamed from: a */
    public final int m19845a(SystemCallLog systemCallLog) {
        if (1 == systemCallLog.getType()) {
            return 2131165459;
        }
        if (2 == systemCallLog.getType()) {
            return 2131165461;
        }
        return 3 == systemCallLog.getType() ? 2131165460 : 2131165459;
    }

    /* renamed from: a */
    public final SystemCallLog m19846a(Cursor cursor) {
        String string = cursor.getString(cursor.getColumnIndex("number"));
        long j = cursor.getLong(cursor.getColumnIndex(VastIconXmlManager.DURATION));
        int i = cursor.getInt(cursor.getColumnIndex("type"));
        int i2 = i;
        if (i != 1) {
            i2 = i;
            if (i != 2) {
                i2 = i;
                if (i != 3) {
                    i2 = 1;
                }
            }
        }
        long j2 = cursor.getLong(cursor.getColumnIndex("date"));
        SystemCallLog systemCallLog = new SystemCallLog();
        systemCallLog.setAddress(string);
        systemCallLog.setDate(j2);
        systemCallLog.setType(i2);
        systemCallLog.setDuration(j);
        systemCallLog.setDefaultAvatar(2131165360);
        return systemCallLog;
    }

    /* renamed from: a */
    public final String m19847a(long j) {
        int i = (int) (j / 3600);
        int i2 = (int) (j / 60);
        int i3 = (int) (j % 60);
        if (i > 0) {
            if (i3 >= 10) {
                if (i2 >= 10) {
                    return i + ":" + i2 + ":" + i3;
                }
                return i + ":0" + i2 + ":" + i3;
            } else if (i2 >= 10) {
                return i + ":" + i2 + ":0" + i3;
            } else {
                return i + ":0" + i2 + ":0" + i3;
            }
        } else if (i3 >= 10) {
            return i2 + ":" + i3;
        } else {
            return i2 + ":0" + i3;
        }
    }

    @Override // android.widget.CursorAdapter
    public void bindView(View view, Context context, Cursor cursor) {
        C6769c cVar = new C6769c(this, null);
        cVar.f20875a = (ImageView) view.findViewById(2131230871);
        cVar.f20876b = (TextView) view.findViewById(2131231218);
        cVar.f20880f = (TextView) view.findViewById(2131231217);
        cVar.f20877c = (TextView) view.findViewById(2131231219);
        cVar.f20878d = (TextView) view.findViewById(2131231216);
        cVar.f20879e = (ImageView) view.findViewById(2131230867);
        SystemCallLog a = m19846a(cursor);
        cVar.f20875a.setImageResource(m19845a(a));
        if (3 == a.getType()) {
            cVar.f20880f.setText(2131558489);
        } else {
            cVar.f20880f.setText(this.f20868a.getString(2131558488, m19847a(a.getDuration())));
        }
        cVar.f20878d.setText(C6843d.m19603a(this.f20868a, a.getDate()));
        cVar.f20877c.setText(C6843d.m19606a(a.getDate()));
        TextView textView = cVar.f20876b;
        textView.setTag(a.getAddress());
        String a2 = this.f20869b.m19904a(a.getAddress(), new C6767a(this, textView, a));
        if (!TextUtils.isEmpty(a2)) {
            cVar.f20876b.setText(a2);
        } else {
            cVar.f20876b.setText(a.getAddress());
        }
        ImageView imageView = cVar.f20879e;
        imageView.setTag(a.getAddress());
        Bitmap a3 = this.f20870c.m19908a(a.getAddress(), new C6768b(this, imageView, a));
        if (a3 != null) {
            cVar.f20879e.setImageBitmap(a3);
        } else {
            cVar.f20879e.setImageResource(a.getDefaultAvatar());
        }
    }

    @Override // android.widget.CursorAdapter
    public View newView(Context context, Cursor cursor, ViewGroup viewGroup) {
        return LayoutInflater.from(this.f20868a).inflate(2131427370, viewGroup, false);
    }
}
