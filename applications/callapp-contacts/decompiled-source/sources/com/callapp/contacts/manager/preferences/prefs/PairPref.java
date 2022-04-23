package com.callapp.contacts.manager.preferences.prefs;

import android.util.Pair;
import com.callapp.contacts.manager.preferences.BasePref;
import com.sinch.verification.core.verification.VerificationLanguage;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/preferences/prefs/PairPref.class */
public class PairPref<T, R> extends BasePref<Pair<T, R>> {

    /* renamed from: a  reason: collision with root package name */
    private BasePref<T> f15239a;

    /* renamed from: b  reason: collision with root package name */
    private BasePref<R> f15240b;

    public PairPref(BasePref<T> basePref, BasePref<R> basePref2) {
        super(basePref.key + VerificationLanguage.REGION_PREFIX + basePref2.key);
        this.f15239a = basePref;
        this.f15240b = basePref2;
    }

    @Override // com.callapp.contacts.manager.preferences.BasePref
    public /* synthetic */ Object stringToValue(String str) {
        String[] split = str.split("@");
        return new Pair(this.f15239a.stringToValue(split[0]), this.f15240b.stringToValue(split[1]));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.callapp.contacts.manager.preferences.BasePref
    public /* synthetic */ String valueToString(Object obj) {
        Pair pair = (Pair) obj;
        return this.f15239a.valueToString(pair.first) + "@" + this.f15240b.valueToString(pair.second);
    }
}
