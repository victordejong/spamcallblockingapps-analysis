package p231s4;

import android.app.Activity;
import androidx.annotation.RecentlyNonNull;
/* renamed from: s4.c */
/* loaded from: classes-dex2jar.jar:s4/c.class */
public interface AbstractC4290c {

    /* renamed from: s4.c$a */
    /* loaded from: classes-dex2jar.jar:s4/c$a.class */
    public interface AbstractC4291a {
    }

    /* renamed from: s4.c$b */
    /* loaded from: classes-dex2jar.jar:s4/c$b.class */
    public interface AbstractC4292b {
    }

    int getConsentStatus();

    boolean isConsentFormAvailable();

    void requestConsentInfoUpdate(@RecentlyNonNull Activity activity, @RecentlyNonNull C4293d c4293d, @RecentlyNonNull AbstractC4292b abstractC4292b, @RecentlyNonNull AbstractC4291a abstractC4291a);
}
