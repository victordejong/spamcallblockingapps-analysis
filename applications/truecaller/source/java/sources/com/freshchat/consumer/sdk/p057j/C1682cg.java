package com.freshchat.consumer.sdk.p057j;

import com.freshchat.consumer.sdk.beans.fragment.ButtonFragment;
import com.freshchat.consumer.sdk.beans.fragment.CallbackButtonFragment;
import com.freshchat.consumer.sdk.beans.fragment.MessageFragment;
import com.freshchat.consumer.sdk.beans.fragment.SectionKey;
import com.freshchat.consumer.sdk.beans.fragment.TemplateFragment;
/* renamed from: com.freshchat.consumer.sdk.j.cg */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/j/cg.class */
public class C1682cg {
    /* renamed from: a */
    public static String m40023a(TemplateFragment templateFragment, SectionKey sectionKey) {
        MessageFragment m40021b = m40021b(templateFragment, sectionKey);
        if (m40021b == null) {
            return null;
        }
        return m40021b.getContent();
    }

    /* renamed from: a */
    public static String m40022a(TemplateFragment templateFragment, SectionKey sectionKey, String str) {
        if (templateFragment == null) {
            return str;
        }
        MessageFragment m40021b = m40021b(templateFragment, sectionKey);
        String str2 = null;
        if (m40021b instanceof ButtonFragment) {
            str2 = ((ButtonFragment) m40021b).getLabel();
        } else if (m40021b instanceof CallbackButtonFragment) {
            str2 = ((CallbackButtonFragment) m40021b).getLabel();
        }
        if (!C1626as.isEmpty(str2)) {
            str = str2;
        }
        return str;
    }

    /* renamed from: b */
    public static MessageFragment m40021b(TemplateFragment templateFragment, SectionKey sectionKey) {
        if (templateFragment == null) {
            return null;
        }
        return templateFragment.getSingleFragmentFromSection(sectionKey);
    }
}
