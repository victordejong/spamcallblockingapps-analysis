package com.freshchat.consumer.sdk.p057j;

import android.content.Context;
import com.freshchat.consumer.sdk.beans.Message;
import com.freshchat.consumer.sdk.beans.fragment.MessageFragment;
import java.util.List;
/* renamed from: com.freshchat.consumer.sdk.j.cv */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/j/cv.class */
public class C1698cv {
    /* renamed from: a */
    public static String m39991a(MessageFragment messageFragment, boolean z, boolean z2) {
        return (!z || !z2 || !C1626as.m40233a(messageFragment.getTranslatedContent())) ? messageFragment.getContent() : messageFragment.getTranslatedContent();
    }

    /* renamed from: h */
    public static boolean m39990h(Context context, Message message) {
        if (context == null || message == null || message.isUserMessage() || !C1622ap.m40245bD(context).getLiveTranslationConfig().isEnabled() || message.getShouldTranslate() != 1) {
            return false;
        }
        List<MessageFragment> messageFragments = message.getMessageFragments();
        if (!C1716k.m39902a(messageFragments)) {
            return false;
        }
        for (MessageFragment messageFragment : messageFragments) {
            if (C1626as.m40233a(messageFragment.getTranslatedContent())) {
                return true;
            }
        }
        return false;
    }
}
