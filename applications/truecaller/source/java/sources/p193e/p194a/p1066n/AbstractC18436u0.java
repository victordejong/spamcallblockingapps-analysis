package p193e.p194a.p1066n;

import com.truecaller.backup.AfterRestoreBehaviorFlag;
import com.truecaller.settings.CallingSettings;
import s1.z.c.l;
/* renamed from: e.a.n.u0 */
/* loaded from: classes5-dex2jar.jar:e/a/n/u0.class */
public abstract class AbstractC18436u0<T> implements AbstractC18438v<T> {

    /* renamed from: a */
    public final CallingSettings f52082a;

    public AbstractC18436u0(CallingSettings callingSettings) {
        l.e(callingSettings, "callingSettings");
        this.f52082a = callingSettings;
    }

    @Override // p193e.p194a.p1066n.AbstractC18438v
    /* renamed from: a */
    public boolean mo14935a() {
        return this.f52082a.contains(getKey());
    }

    @Override // p193e.p194a.p1066n.AbstractC18438v
    /* renamed from: c */
    public AfterRestoreBehaviorFlag mo14934c() {
        return null;
    }
}
