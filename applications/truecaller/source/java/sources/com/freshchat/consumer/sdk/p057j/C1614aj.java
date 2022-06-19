package com.freshchat.consumer.sdk.p057j;

import android.net.Uri;
import com.freshchat.consumer.sdk.beans.Message;
import com.freshchat.consumer.sdk.beans.fragment.ButtonFragment;
import com.freshchat.consumer.sdk.beans.fragment.FragmentType;
import com.freshchat.consumer.sdk.beans.fragment.MessageFragment;
import com.freshchat.consumer.sdk.beans.fragment.TextFragment;
import java.util.List;
/* renamed from: com.freshchat.consumer.sdk.j.aj */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/j/aj.class */
public class C1614aj {
    /* renamed from: D */
    public static boolean m40276D(Message message) {
        List<MessageFragment> messageFragments = message.getMessageFragments();
        int m39900b = C1716k.m39900b(messageFragments);
        if (m39900b == 0) {
            return true;
        }
        if (m39900b != 1) {
            return false;
        }
        MessageFragment messageFragment = messageFragments.get(0);
        if (!(messageFragment instanceof TextFragment)) {
            return false;
        }
        return C1626as.isEmpty(((TextFragment) messageFragment).getContent());
    }

    /* renamed from: a */
    public static boolean m40275a(MessageFragment messageFragment) {
        int fragmentType = messageFragment.getFragmentType();
        return fragmentType == FragmentType.AUDIO.asInt() || fragmentType == FragmentType.IMAGE.asInt();
    }

    /* renamed from: b */
    public static Uri m40274b(ButtonFragment buttonFragment) {
        Uri uri;
        try {
            String androidUri = buttonFragment.getAndroidUri();
            String str = androidUri;
            if (C1626as.isEmpty(androidUri)) {
                str = androidUri;
                if (C1626as.m40233a(buttonFragment.getContent())) {
                    str = buttonFragment.getContent();
                }
            }
            uri = null;
            if (C1626as.m40233a(str)) {
                uri = Uri.parse(str);
            }
        } catch (Exception e) {
            C1723q.m39823a(e);
            uri = null;
        }
        return uri;
    }
}
