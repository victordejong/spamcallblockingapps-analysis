package com.callapp.contacts.manager.preferences.prefs;

import android.util.Pair;
import com.callapp.contacts.manager.preferences.BasePref;
import com.sinch.verification.core.verification.VerificationLanguage;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/preferences/prefs/PairPref.class */
public class PairPref<T, R> extends BasePref<Pair<T, R>> {

    /* renamed from: a */
    private BasePref<T> f26672a;

    /* renamed from: b */
    private BasePref<R> f26673b;

    public PairPref(BasePref<T> basePref, BasePref<R> basePref2) {
        super(basePref.key + VerificationLanguage.REGION_PREFIX + basePref2.key);
        this.f26672a = basePref;
        this.f26673b = basePref2;
    }

    @Override // com.callapp.contacts.manager.preferences.BasePref
    public /* synthetic */ Object stringToValue(String str) {
        String[] split = str.split("@");
        return new Pair(this.f26672a.stringToValue(split[0]), this.f26673b.stringToValue(split[1]));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.callapp.contacts.manager.preferences.BasePref
    public /* synthetic */ String valueToString(Object obj) {
        Pair pair = (Pair) obj;
        return this.f26672a.valueToString(pair.first) + "@" + this.f26673b.valueToString(pair.second);
    }
}
