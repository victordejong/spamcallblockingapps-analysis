package com.asus.privatecontacts;

import android.util.Log;
import android.view.View;
import android.widget.CheckedTextView;
import android.widget.ImageView;
import android.widget.TextView;
import com.uservoice.uservoicesdk.d;
/* loaded from: classes-dex2jar.jar:com/asus/privatecontacts/c.class */
public class c {

    /* renamed from: a  reason: collision with root package name */
    static final String f3009a = c.class.getSimpleName();

    /* renamed from: b  reason: collision with root package name */
    String f3010b;
    String c;
    ImageView d;
    TextView e;
    CheckedTextView f;
    long g;
    String h;
    String i;
    boolean j;
    private boolean k = false;
    private View l;
    private View.OnClickListener m;

    public c(View view, boolean z, View.OnClickListener onClickListener) {
        this.m = null;
        this.d = (ImageView) view.findViewById(2131297153);
        this.j = z;
        if (this.j) {
            this.f = (CheckedTextView) view.findViewById(d.b.g);
        } else {
            this.e = (TextView) view.findViewById(d.b.g);
        }
        this.m = onClickListener;
        if (this.m != null) {
            this.l = view.findViewById(2131297190);
            this.l.setVisibility(0);
            this.l.setTag(this);
            this.l.setOnClickListener(this.m);
        }
    }

    public final void a(boolean z) {
        if (!this.j || this.f == null) {
            Log.e(f3009a, "setChecked() was called abnormally!");
        } else {
            this.f.setChecked(z);
        }
    }
}
