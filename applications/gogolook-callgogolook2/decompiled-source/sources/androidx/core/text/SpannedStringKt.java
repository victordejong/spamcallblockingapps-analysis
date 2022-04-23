package androidx.core.text;

import android.text.Spanned;
import android.text.SpannedString;
import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"�� \n��\n\u0002\u0010\u0011\n��\n\u0002\u0010��\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\r\n��\u001a:\u0010��\u001a\n\u0012\u0006\b\u0001\u0012\u0002H\u00020\u0001\"\n\b��\u0010\u0002\u0018\u0001*\u00020\u0003*\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u00062\b\b\u0002\u0010\u0007\u001a\u00020\u0006H\u0086\b¢\u0006\u0002\u0010\b\u001a\r\u0010\t\u001a\u00020\u0004*\u00020\nH\u0086\b¨\u0006\u000b"}, m815d2 = {"getSpans", "", ExifInterface.GPS_DIRECTION_TRUE, "", "Landroid/text/Spanned;", "start", "", "end", "(Landroid/text/Spanned;II)[Ljava/lang/Object;", "toSpanned", "", "core-ktx_release"}, m814k = 2, m813mv = {1, 1, 15})
/* loaded from: classes-dex2jar.jar:androidx/core/text/SpannedStringKt.class */
public final class SpannedStringKt {
    public static final /* synthetic */ <T> T[] getSpans(Spanned spanned, int i, int i2) {
        C15149k.m377b(spanned, "$this$getSpans");
        C15149k.m385a(4, ExifInterface.GPS_DIRECTION_TRUE);
        throw null;
    }

    public static /* synthetic */ Object[] getSpans$default(Spanned spanned, int i, int i2, int i3, Object obj) {
        if ((i3 & 2) != 0) {
            spanned.length();
        }
        C15149k.m377b(spanned, "$this$getSpans");
        C15149k.m385a(4, ExifInterface.GPS_DIRECTION_TRUE);
        throw null;
    }

    public static final Spanned toSpanned(CharSequence charSequence) {
        C15149k.m377b(charSequence, "$this$toSpanned");
        SpannedString valueOf = SpannedString.valueOf(charSequence);
        C15149k.m383a((Object) valueOf, "SpannedString.valueOf(this)");
        return valueOf;
    }
}
