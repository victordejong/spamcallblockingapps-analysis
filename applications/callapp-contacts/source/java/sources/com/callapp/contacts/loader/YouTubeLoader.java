package com.callapp.contacts.loader;

import com.callapp.common.model.json.JSONWebsite;
import com.callapp.contacts.loader.api.LoadContext;
import com.callapp.contacts.loader.api.NetworkDataLoader;
import com.callapp.contacts.model.contact.ContactField;
import com.callapp.framework.util.StringUtils;
import java.util.EnumSet;
import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/loader/YouTubeLoader.class */
public class YouTubeLoader extends SimpleContactLoader implements NetworkDataLoader {
    /* renamed from: a */
    public static boolean m28874a(String str) {
        return StringUtils.m26045b((CharSequence) str) && str.contains(JSONWebsite.YOUTUBE_SITE_INNER);
    }

    @Override // com.callapp.contacts.loader.SimpleContactLoader
    /* renamed from: a */
    public final void mo27726a(LoadContext loadContext) {
    }

    @Override // com.callapp.contacts.loader.api.ContactDataLoader
    public Set<ContactField> getListenFields() {
        return EnumSet.of(ContactField.websites);
    }
}
