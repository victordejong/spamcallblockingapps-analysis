package com.freshchat.consumer.sdk.p061k;

import android.content.Context;
import com.freshchat.consumer.sdk.beans.fragment.MessageFragment;
import com.freshchat.consumer.sdk.beans.fragment.QuickReplyButtonFragment;
import com.freshchat.consumer.sdk.beans.fragment.QuickReplyDropDownFragment;
import com.freshchat.consumer.sdk.beans.fragment.SectionKey;
import com.freshchat.consumer.sdk.p057j.C1626as;
import com.freshchat.consumer.sdk.p057j.C1716k;
import java.util.ArrayList;
import java.util.List;
/* renamed from: com.freshchat.consumer.sdk.k.g */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/k/g.class */
public class C1743g extends AbstractC1735a {

    /* renamed from: nx */
    private QuickReplyDropDownFragment f4552nx;

    public C1743g(Context context) {
        super(context);
    }

    /* renamed from: hd */
    private void m39747hd() {
        if (this.f4552nx == null) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        List<MessageFragment> fragmentsForSection = this.f4552nx.getFragmentsForSection(SectionKey.DROP_DOWN_OPTIONS);
        if (C1716k.isEmpty(fragmentsForSection)) {
            return;
        }
        for (MessageFragment messageFragment : fragmentsForSection) {
            if (messageFragment instanceof QuickReplyButtonFragment) {
                QuickReplyButtonFragment quickReplyButtonFragment = (QuickReplyButtonFragment) messageFragment;
                String label = quickReplyButtonFragment.getLabel();
                String customReplyText = quickReplyButtonFragment.getCustomReplyText();
                if (C1626as.m40233a(label) || C1626as.m40233a(customReplyText)) {
                    arrayList.add(quickReplyButtonFragment);
                }
            }
        }
        this.f4552nx.replaceSection(SectionKey.DROP_DOWN_OPTIONS, arrayList);
    }

    /* renamed from: a */
    public void m39748a(QuickReplyDropDownFragment quickReplyDropDownFragment) {
        this.f4552nx = quickReplyDropDownFragment;
        m39747hd();
    }

    /* renamed from: he */
    public List<MessageFragment> m39746he() {
        QuickReplyDropDownFragment quickReplyDropDownFragment = this.f4552nx;
        if (quickReplyDropDownFragment == null) {
            return null;
        }
        return quickReplyDropDownFragment.getFragmentsForSection(SectionKey.DROP_DOWN_OPTIONS);
    }

    /* renamed from: hf */
    public int m39745hf() {
        QuickReplyDropDownFragment quickReplyDropDownFragment = this.f4552nx;
        if (quickReplyDropDownFragment == null) {
            return 0;
        }
        return C1716k.m39900b(quickReplyDropDownFragment.getFragmentsForSection(SectionKey.DROP_DOWN_OPTIONS));
    }
}
