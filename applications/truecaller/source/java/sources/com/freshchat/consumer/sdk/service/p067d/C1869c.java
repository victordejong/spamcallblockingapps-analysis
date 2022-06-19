package com.freshchat.consumer.sdk.service.p067d;

import android.content.Context;
import android.text.Html;
import com.freshchat.consumer.sdk.C1298R;
import com.freshchat.consumer.sdk.beans.Message;
import com.freshchat.consumer.sdk.beans.fragment.ButtonFragment;
import com.freshchat.consumer.sdk.beans.fragment.CarouselCardDefaultFragment;
import com.freshchat.consumer.sdk.beans.fragment.CarouselFragment;
import com.freshchat.consumer.sdk.beans.fragment.CollectionFragment;
import com.freshchat.consumer.sdk.beans.fragment.FragmentType;
import com.freshchat.consumer.sdk.beans.fragment.MessageFragment;
import com.freshchat.consumer.sdk.beans.fragment.QuickReplyButtonFragment;
import com.freshchat.consumer.sdk.beans.fragment.QuickReplyDropDownFragment;
import com.freshchat.consumer.sdk.beans.fragment.SectionKey;
import com.freshchat.consumer.sdk.beans.fragment.TextFragment;
import com.freshchat.consumer.sdk.beans.fragment.UnknownFragment;
import com.freshchat.consumer.sdk.p057j.C1597ab;
import com.freshchat.consumer.sdk.p057j.C1626as;
import com.freshchat.consumer.sdk.p057j.C1682cg;
import com.freshchat.consumer.sdk.p057j.C1689cm;
import com.freshchat.consumer.sdk.p057j.C1698cv;
import com.freshchat.consumer.sdk.p057j.C1716k;
import com.freshchat.consumer.sdk.p057j.p059b.C1641c;
import com.freshchat.consumer.sdk.p061k.C1740e;
import com.razorpay.AnalyticsConstants;
import com.tenor.android.core.constant.StringConstant;
import java.util.Iterator;
import java.util.List;
import org.json.JSONObject;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: com.freshchat.consumer.sdk.service.d.c */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/service/d/c.class */
public class C1869c {
    /* renamed from: a */
    public static Message m39392a(String str, MessageFragment messageFragment, long j, long j2) {
        return m39390a(str, messageFragment, Message.MessageType.MESSAGE_TYPE_NORMAL, j, j2, -1L);
    }

    /* renamed from: a */
    private static Message m39391a(String str, MessageFragment messageFragment, long j, long j2, Message.ReplyTo replyTo, Message.MessageType messageType) {
        String str2;
        StringBuilder sb;
        long m40127fE = C1641c.m40127fE();
        if (C1626as.isEmpty(str)) {
            sb = new StringBuilder();
            str2 = "user_";
        } else {
            sb = C22128a.m8728C(str);
            str2 = AnalyticsConstants.DELIMITER_MAIN;
        }
        sb.append(str2);
        sb.append(Long.toString(m40127fE));
        String sb2 = sb.toString();
        Message message = new Message();
        message.setAlias(sb2);
        message.setConversationId(j);
        message.setMessageUserAlias(str);
        message.setChannelId(j2);
        message.setMessageType(messageType.getIntValue());
        if (messageFragment != null) {
            message.addMessageFragment(messageFragment);
        }
        if (replyTo != null) {
            message.setReplyTo(replyTo);
        }
        message.setRead(true);
        message.setCreatedMillis(m40127fE);
        return message;
    }

    /* renamed from: a */
    public static Message m39390a(String str, MessageFragment messageFragment, Message.MessageType messageType, long j, long j2, long j3) {
        Message.ReplyTo replyTo;
        if (j3 > 0) {
            replyTo = new Message.ReplyTo();
            replyTo.setOriginalMessageId(j3);
        } else {
            replyTo = null;
        }
        return m39391a(str, messageFragment, j, j2, replyTo, messageType);
    }

    /* renamed from: a */
    public static Message m39389a(String str, String str2, long j, long j2) {
        TextFragment textFragment;
        if (C1626as.m40233a(str2)) {
            TextFragment textFragment2 = new TextFragment();
            textFragment2.setContent(str2);
            textFragment2.setContentType("text/html");
            textFragment = textFragment2;
        } else {
            textFragment = null;
        }
        return m39392a(str, textFragment, j, j2);
    }

    /* renamed from: a */
    public static String m39393a(Context context, Message message, boolean z) {
        String obj;
        boolean m39990h = z ? C1698cv.m39990h(context, message) : false;
        List<MessageFragment> messageFragments = message.getMessageFragments();
        StringBuilder sb = new StringBuilder();
        if (C1716k.m39902a(messageFragments)) {
            for (MessageFragment messageFragment : messageFragments) {
                if (messageFragment.getFragmentType() == FragmentType.TEXT.asInt()) {
                    String m39991a = C1698cv.m39991a(messageFragment, m39990h, z);
                    if (C1626as.m40233a(m39991a)) {
                        obj = Html.fromHtml(m39991a).toString();
                        sb.append(obj);
                        sb.append(StringConstant.NEW_LINE);
                    }
                } else if (messageFragment.getFragmentType() == FragmentType.TEMPLATE.asInt()) {
                    if (messageFragment instanceof CarouselCardDefaultFragment) {
                        obj = C1682cg.m40023a((CarouselCardDefaultFragment) messageFragment, SectionKey.CAROUSEL_CARD_TITLE);
                        if (C1626as.m40233a(obj)) {
                            sb.append(obj);
                            sb.append(StringConstant.NEW_LINE);
                        }
                    }
                } else if (messageFragment.getFragmentType() != FragmentType.BUTTON.asInt() && messageFragment.getFragmentType() != FragmentType.IMAGE.asInt() && messageFragment.getFragmentType() != FragmentType.AUDIO.asInt()) {
                    messageFragment.getFragmentType();
                    FragmentType.VIDEO.asInt();
                }
            }
        }
        return sb.toString();
    }

    /* renamed from: b */
    public static Message m39388b(JSONObject jSONObject) {
        return (Message) new C1597ab().fromJson(jSONObject.toString(), (Class<Object>) Message.class);
    }

    /* renamed from: f */
    public static String m39387f(Context context, Message message) {
        boolean z;
        String str;
        boolean z2;
        if (message == null) {
            return "";
        }
        boolean m40000u = C1689cm.m40000u(message);
        List<MessageFragment> replyFragments = message.getReplyFragments();
        List<MessageFragment> messageFragments = message.getMessageFragments();
        if (C1716k.m39902a(replyFragments)) {
            Iterator<MessageFragment> it = replyFragments.iterator();
            boolean z3 = false;
            while (true) {
                z = z3;
                if (!it.hasNext()) {
                    break;
                }
                MessageFragment next = it.next();
                if (next instanceof QuickReplyDropDownFragment) {
                    if (!message.isUserMessage()) {
                        z3 = true;
                    }
                } else if (next instanceof CarouselFragment) {
                    StringBuilder m8728C = C22128a.m8728C("&#128280; ");
                    m8728C.append(context.getString(C1298R.string.freshchat_carousel_default_preview_text));
                    return m8728C.toString();
                }
            }
        } else {
            z = false;
        }
        boolean m39990h = C1698cv.m39990h(context, message);
        String str2 = "";
        if (C1716k.m39902a(messageFragments)) {
            Iterator<MessageFragment> it2 = messageFragments.iterator();
            String str3 = null;
            boolean z4 = false;
            boolean z5 = false;
            boolean z6 = false;
            boolean z7 = false;
            String str4 = null;
            while (true) {
                str = str3;
                if (!it2.hasNext()) {
                    break;
                }
                MessageFragment next2 = it2.next();
                if (!(next2 instanceof UnknownFragment)) {
                    if (next2.getFragmentType() != FragmentType.TEXT.asInt()) {
                        if (next2.getFragmentType() == FragmentType.IMAGE.asInt()) {
                            z7 = true;
                        } else if (next2.getFragmentType() == FragmentType.AUDIO.asInt()) {
                            z6 = true;
                        } else if (next2.getFragmentType() == FragmentType.VIDEO.asInt()) {
                            z5 = true;
                        } else if (next2.getFragmentType() != FragmentType.BUTTON.asInt()) {
                            if (next2.getFragmentType() == FragmentType.COLLECTION.asInt()) {
                                CollectionFragment collectionFragment = (CollectionFragment) next2;
                                if (!C1716k.m39902a(collectionFragment.getFragments())) {
                                    z2 = false;
                                    break;
                                }
                                for (MessageFragment messageFragment : collectionFragment.getFragments()) {
                                    if (!(messageFragment instanceof QuickReplyButtonFragment)) {
                                        z2 = false;
                                        break;
                                    }
                                }
                                z2 = true;
                                if (!z2) {
                                }
                            } else if (next2.getFragmentType() != FragmentType.QUICK_REPLY_BUTTON.asInt()) {
                                if (next2.getFragmentType() != FragmentType.TEMPLATE.asInt()) {
                                    if (next2.getFragmentType() == FragmentType.CALENDAR_EVENT.asInt() && message.isUserMessage()) {
                                        str = context.getString(C1298R.string.freshchat_calendar_invite_awaiting_confirmation);
                                        break;
                                    }
                                } else if (next2 instanceof CarouselCardDefaultFragment) {
                                    str3 = C1682cg.m40023a((CarouselCardDefaultFragment) next2, SectionKey.CAROUSEL_CARD_TITLE);
                                }
                            } else if (next2 instanceof QuickReplyButtonFragment) {
                                QuickReplyButtonFragment quickReplyButtonFragment = (QuickReplyButtonFragment) next2;
                                C1740e c1740e = new C1740e(context);
                                c1740e.m39751b(quickReplyButtonFragment);
                                str3 = c1740e.m39750hb();
                            }
                        } else if (C1626as.isEmpty(str4)) {
                            str4 = C1626as.m40227b(((ButtonFragment) next2).getLabel(), 40);
                        }
                    } else if (C1626as.isEmpty(str3)) {
                        str3 = C1626as.m40227b(C1698cv.m39991a(next2, m39990h, true), 100);
                    }
                }
                z4 = true;
            }
            String str5 = "";
            if (m40000u) {
                str5 = "&#128197; ";
            }
            String str6 = str5;
            if (z7) {
                str6 = C22128a.m8543z2(str5, "&#128247; ");
            }
            String str7 = str6;
            if (z6) {
                str7 = C22128a.m8543z2(str6, "&#127908; Voice Message ");
            }
            String str8 = str7;
            if (z5) {
                str8 = C22128a.m8543z2(str7, "&#127909; ");
            }
            String str9 = str8;
            if (z) {
                str9 = C22128a.m8543z2(str8, "&#128315; ");
            }
            String str10 = str9;
            if (C1626as.m40233a(str4)) {
                str10 = C22128a.m8543z2(str9, str4);
            }
            String str11 = str10;
            if (C1626as.m40233a(str)) {
                str11 = C22128a.m8543z2(str10, str);
            }
            str2 = str11;
            if (C1626as.isEmpty(str11)) {
                str2 = str11;
                if (z4) {
                    str2 = C22128a.m8543z2(str11, "&#10071;");
                }
            }
        }
        return str2;
    }

    /* renamed from: i */
    public static boolean m39386i(Message message) {
        return (message == null || message.getAlias() == null || !message.getAlias().endsWith("_welcome_message")) ? false : true;
    }
}
