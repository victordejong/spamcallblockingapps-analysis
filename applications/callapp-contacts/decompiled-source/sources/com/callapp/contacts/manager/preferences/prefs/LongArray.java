package com.callapp.contacts.manager.preferences.prefs;

import com.callapp.common.util.Joiner;
import com.callapp.contacts.manager.preferences.BasePref;
import com.callapp.framework.util.StringUtils;
import kotlinx.serialization.json.internal.JsonReaderKt;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/preferences/prefs/LongArray.class */
public class LongArray extends BasePref<Long[]> {
    public LongArray(String str) {
        super(str);
    }

    @Override // com.callapp.contacts.manager.preferences.BasePref
    public /* synthetic */ Long[] stringToValue(String str) {
        String[] split = str.split("@@@");
        Long[] lArr = new Long[split.length];
        for (int i = 0; i < split.length; i++) {
            if (!StringUtils.b((CharSequence) split[i]) || StringUtils.b((Object) split[i], (Object) JsonReaderKt.NULL)) {
                lArr[i] = null;
            } else {
                lArr[i] = Long.valueOf(split[i]);
            }
        }
        return lArr;
    }

    @Override // com.callapp.contacts.manager.preferences.BasePref
    public /* synthetic */ String valueToString(Long[] lArr) {
        return Joiner.a("@@@").a(lArr);
    }
}
