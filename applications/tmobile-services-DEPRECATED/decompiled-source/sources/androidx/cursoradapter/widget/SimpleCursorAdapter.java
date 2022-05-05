package androidx.cursoradapter.widget;

import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.RestrictTo;
/* loaded from: classes-dex2jar.jar:androidx/cursoradapter/widget/SimpleCursorAdapter.class */
public class SimpleCursorAdapter extends ResourceCursorAdapter {
    @RestrictTo

    /* renamed from: r */
    protected int[] f3460r;
    @RestrictTo

    /* renamed from: s */
    protected int[] f3461s;

    /* renamed from: t */
    private int f3462t;

    /* renamed from: u */
    private CursorToStringConverter f3463u;

    /* renamed from: v */
    private ViewBinder f3464v;

    /* renamed from: w */
    String[] f3465w;

    /* loaded from: classes-dex2jar.jar:androidx/cursoradapter/widget/SimpleCursorAdapter$CursorToStringConverter.class */
    public interface CursorToStringConverter {
        /* renamed from: a */
        CharSequence m18795a(Cursor cursor);
    }

    /* loaded from: classes-dex2jar.jar:androidx/cursoradapter/widget/SimpleCursorAdapter$ViewBinder.class */
    public interface ViewBinder {
        /* renamed from: a */
        boolean m18794a(View view, Cursor cursor, int i);
    }

    /* renamed from: k */
    private void m18798k(Cursor cursor, String[] strArr) {
        if (cursor != null) {
            int length = strArr.length;
            int[] iArr = this.f3460r;
            if (iArr == null || iArr.length != length) {
                this.f3460r = new int[length];
            }
            for (int i = 0; i < length; i++) {
                this.f3460r[i] = cursor.getColumnIndexOrThrow(strArr[i]);
            }
            return;
        }
        this.f3460r = null;
    }

    @Override // androidx.cursoradapter.widget.CursorAdapter, androidx.cursoradapter.widget.CursorFilter.CursorFilterClient
    /* renamed from: a */
    public CharSequence mo18801a(Cursor cursor) {
        CursorToStringConverter cursorToStringConverter = this.f3463u;
        if (cursorToStringConverter != null) {
            return cursorToStringConverter.m18795a(cursor);
        }
        int i = this.f3462t;
        return i > -1 ? cursor.getString(i) : super.mo18801a(cursor);
    }

    @Override // androidx.cursoradapter.widget.CursorAdapter
    /* renamed from: e */
    public void mo18800e(View view, Context context, Cursor cursor) {
        ViewBinder viewBinder = this.f3464v;
        int[] iArr = this.f3461s;
        int length = iArr.length;
        int[] iArr2 = this.f3460r;
        for (int i = 0; i < length; i++) {
            View findViewById = view.findViewById(iArr[i]);
            if (findViewById != null) {
                if (!(viewBinder != null ? viewBinder.m18794a(findViewById, cursor, iArr2[i]) : false)) {
                    String string = cursor.getString(iArr2[i]);
                    String str = string;
                    if (string == null) {
                        str = "";
                    }
                    if (findViewById instanceof TextView) {
                        m18796m((TextView) findViewById, str);
                    } else if (findViewById instanceof ImageView) {
                        m18797l((ImageView) findViewById, str);
                    } else {
                        throw new IllegalStateException(findViewById.getClass().getName() + " is not a  view that can be bounds by this SimpleCursorAdapter");
                    }
                } else {
                    continue;
                }
            }
        }
    }

    @Override // androidx.cursoradapter.widget.CursorAdapter
    /* renamed from: j */
    public Cursor mo18799j(Cursor cursor) {
        m18798k(cursor, this.f3465w);
        return super.mo18799j(cursor);
    }

    /* renamed from: l */
    public void m18797l(ImageView imageView, String str) {
        try {
            imageView.setImageResource(Integer.parseInt(str));
        } catch (NumberFormatException e) {
            imageView.setImageURI(Uri.parse(str));
        }
    }

    /* renamed from: m */
    public void m18796m(TextView textView, String str) {
        textView.setText(str);
    }
}
