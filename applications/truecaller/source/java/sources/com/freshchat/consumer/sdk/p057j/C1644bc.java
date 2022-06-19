package com.freshchat.consumer.sdk.p057j;

import android.content.Context;
import com.freshchat.consumer.sdk.beans.Message;
import com.freshchat.consumer.sdk.beans.MessageMask;
import com.freshchat.consumer.sdk.beans.MessageMaskingConfig;
import com.freshchat.consumer.sdk.beans.fragment.MessageFragment;
import com.freshchat.consumer.sdk.beans.fragment.TextFragment;
import com.freshchat.consumer.sdk.p047b.C1466e;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* renamed from: com.freshchat.consumer.sdk.j.bc */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/j/bc.class */
public class C1644bc {
    /* renamed from: a */
    public static void m40123a(Context context, MessageMaskingConfig messageMaskingConfig) {
        if (context == null) {
            return;
        }
        try {
            C1466e.m40905i(context).m40996aX(new C1597ab().toJson(messageMaskingConfig));
        } catch (Exception e) {
            C1723q.m39823a(e);
        }
    }

    /* renamed from: a */
    private static void m40122a(MessageMask messageMask, Message message) {
        if (messageMask == null || message == null) {
            return;
        }
        try {
            String regex = messageMask.getRegex();
            String replacementStr = messageMask.getReplacementStr();
            for (MessageFragment messageFragment : message.getMessageFragments()) {
                if (messageFragment instanceof TextFragment) {
                    messageFragment.setContent(m40121b(messageFragment.getContent(), regex, replacementStr));
                }
            }
        } catch (Exception e) {
            C1723q.m39823a(e);
        }
    }

    /* renamed from: b */
    public static String m40121b(String str, String str2, String str3) {
        String str4;
        try {
            Pattern compile = Pattern.compile(str2);
            String str5 = str3;
            if (C1626as.isEmpty(str3)) {
                str5 = "*";
            }
            StringBuffer stringBuffer = new StringBuffer();
            Matcher matcher = compile.matcher(str);
            while (matcher.find()) {
                if (str5.length() == 1) {
                    str4 = C1626as.m40232a(str5, "", matcher.end() - matcher.start());
                } else {
                    str4 = str5;
                }
                matcher.appendReplacement(stringBuffer, Matcher.quoteReplacement(str4));
            }
            matcher.appendTail(stringBuffer);
            return stringBuffer.toString();
        } catch (Exception e) {
            C1723q.m39823a(e);
            return null;
        }
    }

    /* renamed from: bH */
    public static MessageMaskingConfig m40120bH(Context context) {
        if (context == null) {
            return null;
        }
        try {
            String m40928fq = C1466e.m40905i(context).m40928fq();
            if (!C1626as.m40233a(m40928fq)) {
                return null;
            }
            return (MessageMaskingConfig) new C1597ab().fromJson(m40928fq, (Class<Object>) MessageMaskingConfig.class);
        } catch (Exception e) {
            C1723q.m39823a(e);
            return null;
        }
    }

    /* renamed from: e */
    public static void m40119e(Context context, Message message) {
        String str;
        if (context == null) {
            str = "Context cannot be null in MessageMaskingUtils::applyMask()";
        } else if (message != null) {
            MessageMaskingConfig messageMaskingConfig = C1622ap.m40245bD(context).getMessageMaskingConfig();
            if (messageMaskingConfig == null) {
                return;
            }
            LinkedList<MessageMask> messageMasks = messageMaskingConfig.getMessageMasks();
            if (C1716k.isEmpty(messageMasks)) {
                return;
            }
            Iterator<MessageMask> it = messageMasks.iterator();
            while (it.hasNext()) {
                m40122a(it.next(), message);
            }
            return;
        } else {
            str = "Message cannot be null in MessageMaskingUtils::applyMask()";
        }
        C1613ai.m40283e("FRESHCHAT_WARNING", str);
    }
}
