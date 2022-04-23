package com.callapp.contacts.loader;

import com.callapp.common.model.json.JSONAddress;
import com.callapp.contacts.loader.api.NetworkDataLoader;
import com.callapp.contacts.model.contact.ContactField;
import com.callapp.framework.util.StringUtils;
import java.util.EnumSet;
import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/loader/GoogleStaticMapLoader.class */
public class GoogleStaticMapLoader extends SimpleContactLoader implements NetworkDataLoader {
    private static float a(JSONAddress jSONAddress) {
        if (jSONAddress == null) {
            return 13.0f;
        }
        String fullAddress = jSONAddress.getFullAddress();
        return (!StringUtils.b((CharSequence) fullAddress) || !StringUtils.i(fullAddress)) ? 13.0f : 16.0f;
    }

    /* JADX WARN: Removed duplicated region for block: B:48:0x0122  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x0155 A[Catch: all -> 0x0172, TRY_ENTER, TryCatch #0 {, blocks: (B:6:0x0022, B:8:0x0030, B:10:0x003f, B:12:0x0047, B:19:0x0060, B:21:0x0066, B:24:0x008a, B:26:0x0096, B:28:0x00a1, B:30:0x00a9, B:35:0x00d5, B:36:0x00e8, B:36:0x00e8, B:37:0x00eb, B:43:0x010d, B:49:0x0125, B:53:0x0131, B:55:0x013a, B:58:0x0155, B:60:0x015f, B:62:0x016a, B:63:0x0170), top: B:71:0x0022 }] */
    @Override // com.callapp.contacts.loader.SimpleContactLoader
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void a(com.callapp.contacts.loader.api.LoadContext r8) {
        /*
            Method dump skipped, instructions count: 376
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.callapp.contacts.loader.GoogleStaticMapLoader.a(com.callapp.contacts.loader.api.LoadContext):void");
    }

    @Override // com.callapp.contacts.loader.api.ContactDataLoader
    public Set<ContactField> getListenFields() {
        return EnumSet.of(ContactField.latLng, ContactField.addresses);
    }
}
