package p193e.p194a.p1273u4;

import android.util.Patterns;
import com.google.android.gms.internal.vision.zzac;
import com.google.android.gms.vision.text.Line;
import com.google.android.gms.vision.text.Text;
import com.google.android.gms.vision.text.TextBlock;
import java.util.ArrayList;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* renamed from: e.a.u4.r */
/* loaded from: classes12-dex2jar.jar:e/a/u4/r.class */
public class C20639r {

    /* renamed from: b */
    public static final Pattern f58157b = Patterns.PHONE;

    /* renamed from: c */
    public static final Pattern f58158c = Pattern.compile("([\\da-zA-Z-._]+@[a-zA-Z\\d]{3,})(?![\\w\\d.])", 2);

    /* renamed from: d */
    public static final Pattern f58159d = Pattern.compile("[0-9]");

    /* renamed from: a */
    public final List<? extends Text> f58160a;

    public C20639r(TextBlock textBlock) {
        ArrayList arrayList;
        if (textBlock.a.length == 0) {
            arrayList = new ArrayList(0);
        } else {
            if (textBlock.b == null) {
                textBlock.b = new ArrayList(textBlock.a.length);
                for (zzac zzacVar : textBlock.a) {
                    textBlock.b.add(new Line(zzacVar));
                }
            }
            arrayList = textBlock.b;
        }
        this.f58160a = arrayList;
    }

    /* renamed from: a */
    public final List<String> m10903a(String str) {
        ArrayList arrayList = new ArrayList();
        Matcher matcher = f58157b.matcher(str);
        while (matcher.find()) {
            String group = matcher.group();
            int i = 0;
            while (f58159d.matcher(group).find()) {
                i++;
            }
            if (i > 7) {
                arrayList.add(group);
            }
        }
        return arrayList;
    }

    /* renamed from: b */
    public final List<String> m10902b(String str) {
        ArrayList arrayList = new ArrayList();
        Matcher matcher = f58158c.matcher(str);
        while (matcher.find()) {
            arrayList.add(matcher.group());
        }
        return arrayList;
    }
}
