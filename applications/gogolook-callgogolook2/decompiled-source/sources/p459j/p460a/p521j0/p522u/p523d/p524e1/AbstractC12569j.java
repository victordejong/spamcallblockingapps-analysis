package p459j.p460a.p521j0.p522u.p523d.p524e1;

import android.text.Spannable;
import android.text.SpannableString;
import androidx.annotation.ColorInt;
import gogolook.callgogolook2.gson.RowInfo;
import gogolook.callgogolook2.realm.obj.logsgroup.LogsGroupRealmObject;
import kotlin.Metadata;
import p459j.p460a.p582w0.C14063l4;
import p459j.p460a.p582w0.C14108o4;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��4\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u000b\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n��\n\u0002\u0010\b\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\bf\u0018��2\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0003H\u0016J\n\u0010\u0007\u001a\u0004\u0018\u00010\bH&J\b\u0010\t\u001a\u00020\nH'J\b\u0010\u000b\u001a\u00020\fH&J\b\u0010\r\u001a\u00020\nH'J\u001e\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\b\b\u0002\u0010\u0010\u001a\u00020\b2\b\b\u0002\u0010\u0006\u001a\u00020\u0003H&J\b\u0010\u0011\u001a\u00020\nH&J\b\u0010\u0012\u001a\u00020\u0003H&¨\u0006\u0013"}, m815d2 = {"Lgogolook/callgogolook2/phone/call/dialog/data/ICedNormal;", "", "dbExpiredWarningVisibility", "", "rowInfo", "Lgogolook/callgogolook2/gson/RowInfo;", "isContact", "description", "", "descriptionTextColor", "", "primary", "Landroid/text/SpannableString;", "primaryTextColor", "secondary", "Landroid/text/Spannable;", LogsGroupRealmObject.DISPLAY_NAME, "secondaryMaxLine", "showMoreInfo", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: j.a.j0.u.d.e1.j */
/* loaded from: classes3-dex2jar.jar:j/a/j0/u/d/e1/j.class */
public interface AbstractC12569j {

    /* renamed from: j.a.j0.u.d.e1.j$a */
    /* loaded from: classes3-dex2jar.jar:j/a/j0/u/d/e1/j$a.class */
    public static final class C12570a {
        /* renamed from: a */
        public static boolean m5889a(AbstractC12569j jVar, RowInfo rowInfo, boolean z) {
            C15149k.m377b(rowInfo, "rowInfo");
            return !C14108o4.m2496a(rowInfo.m28228f(), C14108o4.EnumC14110b.CALL) && (C14063l4.m2668c(rowInfo.m28224h(), z) || C14063l4.m2663d(rowInfo.m28224h(), z));
        }
    }

    /* renamed from: a */
    Spannable mo5828a(String str, boolean z);

    /* renamed from: a */
    SpannableString mo5863a();

    /* renamed from: a */
    boolean mo5862a(RowInfo rowInfo, boolean z);

    @ColorInt
    /* renamed from: b */
    int mo5861b();

    @ColorInt
    /* renamed from: c */
    int mo5860c();

    /* renamed from: d */
    boolean mo5827d();

    String description();

    /* renamed from: e */
    int mo5859e();
}
