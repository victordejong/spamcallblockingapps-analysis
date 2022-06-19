package p193e.p194a.p288a0;

import com.truecaller.data.entity.SpamCategoryModel;
import java.util.Locale;
import javax.inject.Inject;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1129p5.AbstractC19223c0;
import s1.z.c.l;
/* renamed from: e.a.a0.q */
/* loaded from: classes12-dex2jar.jar:e/a/a0/q.class */
public final class C7402q implements AbstractC7401p {

    /* renamed from: a */
    public final AbstractC19223c0 f23539a;

    @Inject
    public C7402q(AbstractC19223c0 abstractC19223c0) {
        l.e(abstractC19223c0, "resourceProvider");
        this.f23539a = abstractC19223c0;
    }

    @Override // p193e.p194a.p288a0.AbstractC7401p
    /* renamed from: a */
    public String mo29683a(int i, SpamCategoryModel spamCategoryModel, int i2, boolean z) {
        String str;
        String str2;
        if (i > 0 || spamCategoryModel != null) {
            String label = spamCategoryModel != null ? spamCategoryModel.getLabel() : null;
            if (label == null) {
                label = "";
            }
            if (i <= 0) {
                str = "";
            } else {
                str = this.f23539a.mo13768b(i2, Integer.valueOf(i));
                l.d(str, "resourceProvider.getString(template, spamScore)");
            }
            StringBuilder sb = new StringBuilder();
            if (z) {
                Locale locale = Locale.getDefault();
                l.d(locale, "Locale.getDefault()");
                str2 = label.toUpperCase(locale);
                l.d(str2, "(this as java.lang.String).toUpperCase(locale)");
            } else {
                str2 = label;
            }
            sb.append(str2);
            boolean z2 = str.length() > 0;
            boolean z3 = false;
            if (label.length() > 0) {
                z3 = true;
            }
            return C22128a.m8618h(sb, z2 ^ z3 ? "" : " · ", str);
        }
        return "";
    }
}
