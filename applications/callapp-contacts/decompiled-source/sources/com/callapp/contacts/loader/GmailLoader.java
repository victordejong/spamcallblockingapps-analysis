package com.callapp.contacts.loader;

import com.callapp.contacts.loader.api.LoadContext;
import com.callapp.contacts.loader.api.NetworkDataLoader;
import com.callapp.contacts.model.contact.ContactField;
import java.util.EnumSet;
import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/loader/GmailLoader.class */
public class GmailLoader extends SimpleContactLoader implements NetworkDataLoader {
    private static void c(LoadContext loadContext) {
        loadContext.f14535a.setGmailEmailData(null);
        loadContext.f14535a.updateGmailData();
    }

    /* JADX WARN: Removed duplicated region for block: B:39:0x00f0 A[Catch: all -> 0x0473, TRY_ENTER, TryCatch #0 {, blocks: (B:10:0x002d, B:12:0x003c, B:14:0x004a, B:16:0x0054, B:18:0x0060, B:20:0x006b, B:23:0x0077, B:25:0x0079, B:27:0x008e, B:29:0x0097, B:30:0x00ae, B:32:0x00c5, B:39:0x00f0, B:41:0x0101, B:43:0x0114, B:45:0x011c, B:47:0x0130, B:49:0x0150, B:51:0x015f, B:53:0x016c, B:55:0x017b, B:57:0x0188, B:59:0x01a9, B:61:0x026f, B:63:0x029d, B:65:0x02b1, B:67:0x02b9, B:69:0x03a4, B:70:0x03af, B:72:0x03b6, B:74:0x03df, B:79:0x040a, B:81:0x0415, B:85:0x0422, B:87:0x0431, B:89:0x043a, B:91:0x0457, B:92:0x046c, B:94:0x0471), top: B:102:0x002d }] */
    /* JADX WARN: Removed duplicated region for block: B:85:0x0422 A[Catch: all -> 0x0473, TRY_ENTER, TryCatch #0 {, blocks: (B:10:0x002d, B:12:0x003c, B:14:0x004a, B:16:0x0054, B:18:0x0060, B:20:0x006b, B:23:0x0077, B:25:0x0079, B:27:0x008e, B:29:0x0097, B:30:0x00ae, B:32:0x00c5, B:39:0x00f0, B:41:0x0101, B:43:0x0114, B:45:0x011c, B:47:0x0130, B:49:0x0150, B:51:0x015f, B:53:0x016c, B:55:0x017b, B:57:0x0188, B:59:0x01a9, B:61:0x026f, B:63:0x029d, B:65:0x02b1, B:67:0x02b9, B:69:0x03a4, B:70:0x03af, B:72:0x03b6, B:74:0x03df, B:79:0x040a, B:81:0x0415, B:85:0x0422, B:87:0x0431, B:89:0x043a, B:91:0x0457, B:92:0x046c, B:94:0x0471), top: B:102:0x002d }] */
    @Override // com.callapp.contacts.loader.SimpleContactLoader
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void a(com.callapp.contacts.loader.api.LoadContext r7) {
        /*
            Method dump skipped, instructions count: 1145
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.callapp.contacts.loader.GmailLoader.a(com.callapp.contacts.loader.api.LoadContext):void");
    }

    @Override // com.callapp.contacts.loader.api.ContactDataLoader
    public Set<ContactField> getListenFields() {
        return EnumSet.of(ContactField.emails, ContactField.phones);
    }
}
