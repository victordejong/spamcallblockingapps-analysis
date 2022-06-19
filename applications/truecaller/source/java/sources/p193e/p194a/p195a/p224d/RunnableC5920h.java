package p193e.p194a.p195a.p224d;

import android.text.Layout;
import android.widget.TextView;
import com.truecaller.C2752R;
import java.util.Objects;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* renamed from: e.a.a.d.h */
/* loaded from: classes7-dex2jar.jar:e/a/a/d/h.class */
public final class RunnableC5920h implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ C5903b f19797a;

    /* renamed from: b */
    public final /* synthetic */ TextView f19798b;

    /* renamed from: c */
    public final /* synthetic */ String f19799c;

    /* renamed from: d */
    public final /* synthetic */ int f19800d;

    public RunnableC5920h(C5903b c5903b, TextView textView, String str, int i) {
        this.f19797a = c5903b;
        this.f19798b = textView;
        this.f19799c = str;
        this.f19800d = i;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int ellipsisCount;
        int i;
        if (this.f19798b.getLayout() != null) {
            Layout layout = this.f19798b.getLayout();
            l.d(layout, "layout");
            int lineCount = layout.getLineCount();
            if (lineCount <= 0 || (ellipsisCount = this.f19798b.getLayout().getEllipsisCount(lineCount - 1)) <= 0) {
                return;
            }
            String str = this.f19799c;
            int length = str.length();
            Objects.requireNonNull(str, "null cannot be cast to non-null type java.lang.String");
            String substring = str.substring(0, length - ellipsisCount);
            l.d(substring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
            int i2 = 0;
            int i3 = 0;
            while (true) {
                i = i3;
                if (i2 >= substring.length()) {
                    break;
                }
                int i4 = i;
                if (substring.charAt(i2) == ',') {
                    i4 = i + 1;
                }
                i2++;
                i3 = i4;
            }
            if (i >= this.f19800d - 1) {
                return;
            }
            StringBuilder m8696K = C22128a.m8696K("…", "  ");
            m8696K.append(this.f19797a.getString((int) C2752R.string.NewConversationForwardDestinationMoreText, new Object[]{Integer.valueOf((this.f19800d - 1) - i)}));
            m8696K.append("  ");
            String sb = m8696K.toString();
            StringBuilder sb2 = new StringBuilder();
            String substring2 = substring.substring(0, substring.length() - sb.length());
            l.d(substring2, "(this as java.lang.Strin…ing(startIndex, endIndex)");
            sb2.append(substring2);
            sb2.append(sb);
            this.f19798b.setText(sb2.toString());
        }
    }
}
