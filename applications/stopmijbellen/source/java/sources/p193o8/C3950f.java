package p193o8;

import android.annotation.SuppressLint;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
/* renamed from: o8.f */
/* loaded from: classes2-dex2jar.jar:o8/f.class */
public class C3950f implements AbstractC3946d {

    /* renamed from: a */
    public final String f12443a;

    public C3950f(String str) {
        this.f12443a = str;
    }

    @Override // p193o8.AbstractC3946d
    /* renamed from: a */
    public int mo1591a() {
        return 1;
    }

    @Override // p193o8.AbstractC3946d
    @SuppressLint({"InflateParams"})
    /* renamed from: b */
    public View mo1590b(LayoutInflater layoutInflater, View view) {
        View view2 = view;
        if (view == null) {
            view2 = layoutInflater.inflate(2131492906, (ViewGroup) null);
        }
        ((TextView) view2.findViewById(2131297174)).setText(this.f12443a);
        return view2;
    }
}
