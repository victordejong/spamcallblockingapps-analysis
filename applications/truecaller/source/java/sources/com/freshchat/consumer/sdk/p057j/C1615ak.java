package com.freshchat.consumer.sdk.p057j;

import android.content.Context;
import android.graphics.Point;
import android.net.Uri;
import android.os.Bundle;
import android.text.method.LinkMovementMethod;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.URLUtil;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.freshchat.consumer.sdk.C1298R;
import com.freshchat.consumer.sdk.FreshchatImageLoader;
import com.freshchat.consumer.sdk.FreshchatImageLoaderRequest;
import com.freshchat.consumer.sdk.activity.PictureAttachmentActivity;
import com.freshchat.consumer.sdk.beans.UnsupportedFragmentConfig;
import com.freshchat.consumer.sdk.beans.fragment.AudioFragment;
import com.freshchat.consumer.sdk.beans.fragment.ButtonFragment;
import com.freshchat.consumer.sdk.beans.fragment.CollectionFragment;
import com.freshchat.consumer.sdk.beans.fragment.ImageFragment;
import com.freshchat.consumer.sdk.beans.fragment.MessageFragment;
import com.freshchat.consumer.sdk.beans.fragment.QuickReplyButtonFragment;
import com.freshchat.consumer.sdk.beans.fragment.StaticTemplateFragment;
import com.freshchat.consumer.sdk.beans.fragment.TextFragment;
import com.freshchat.consumer.sdk.p045a.C1355w;
import com.freshchat.consumer.sdk.p061k.C1740e;
import com.freshchat.consumer.sdk.util.DeepLinkUtils;
import java.util.List;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: com.freshchat.consumer.sdk.j.ak */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/j/ak.class */
public class C1615ak {
    private final Context context;

    /* renamed from: cr */
    private final LayoutInflater f4368cr;

    /* renamed from: iA */
    private ViewGroup f4369iA;

    /* renamed from: iz */
    private final C1609ae f4370iz;

    /* renamed from: rp */
    private final int f4371rp;

    public C1615ak(Context context) {
        this.context = context;
        this.f4370iz = new C1609ae(context);
        this.f4368cr = LayoutInflater.from(context);
        this.f4371rp = C1623aq.m40238j(context, C1298R.attr.freshchatPictureMessagePlaceholderImage);
    }

    /* renamed from: a */
    private View m40271a(AudioFragment audioFragment) {
        View inflate = View.inflate(this.context, C1298R.layout.freshchat_partial_message_fragment_audio, this.f4369iA);
        View findViewById = inflate.findViewById(C1298R.C1300id.freshchat_message_duration);
        inflate.findViewById(C1298R.C1300id.freshchat_message_play);
        if (findViewById instanceof TextView) {
            ((TextView) findViewById).setText(C1719n.m39861s(audioFragment.getDuration()));
        }
        return inflate;
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x004c, code lost:
        r10 = true;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private android.view.View m40269a(com.freshchat.consumer.sdk.beans.fragment.CollectionFragment r5, java.lang.String r6) {
        /*
            r4 = this;
            r0 = r5
            if (r0 != 0) goto L6
            r0 = 0
            return r0
        L6:
            r0 = 0
            r7 = r0
            java.util.ArrayList r0 = new java.util.ArrayList
            r1 = r0
            r1.<init>()
            r8 = r0
            r0 = r5
            java.util.List r0 = r0.getFragments()
            r9 = r0
            r0 = r7
            r10 = r0
            r0 = r9
            boolean r0 = com.freshchat.consumer.sdk.p057j.C1716k.m39902a(r0)
            if (r0 == 0) goto L73
            r0 = r9
            java.util.Iterator r0 = r0.iterator()
            r9 = r0
        L2b:
            r0 = r7
            r10 = r0
            r0 = r9
            boolean r0 = r0.hasNext()
            if (r0 == 0) goto L73
            r0 = r9
            java.lang.Object r0 = r0.next()
            com.freshchat.consumer.sdk.beans.fragment.MessageFragment r0 = (com.freshchat.consumer.sdk.beans.fragment.MessageFragment) r0
            r11 = r0
            r0 = r11
            boolean r0 = r0 instanceof com.freshchat.consumer.sdk.beans.fragment.QuickReplyButtonFragment
            if (r0 == 0) goto L52
        L4c:
            r0 = 1
            r10 = r0
            goto L73
        L52:
            r0 = r11
            boolean r0 = r0 instanceof com.freshchat.consumer.sdk.beans.fragment.StaticTemplateFragment
            if (r0 == 0) goto L68
            r0 = r8
            r1 = r11
            com.freshchat.consumer.sdk.beans.fragment.StaticTemplateFragment r1 = (com.freshchat.consumer.sdk.beans.fragment.StaticTemplateFragment) r1
            boolean r0 = r0.add(r1)
            goto L2b
        L68:
            r0 = r11
            boolean r0 = r0 instanceof com.freshchat.consumer.sdk.beans.fragment.CallbackButtonFragment
            if (r0 == 0) goto L2b
            goto L4c
        L73:
            r0 = r10
            if (r0 == 0) goto L7a
            r0 = 0
            return r0
        L7a:
            r0 = r8
            boolean r0 = com.freshchat.consumer.sdk.p057j.C1716k.m39902a(r0)
            if (r0 == 0) goto L8a
            r0 = r4
            r1 = r8
            r2 = r6
            android.view.View r0 = r0.m40264a(r1, r2)
            return r0
        L8a:
            r0 = r4
            r1 = r5
            android.view.View r0 = r0.m40263b(r1)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.freshchat.consumer.sdk.p057j.C1615ak.m40269a(com.freshchat.consumer.sdk.beans.fragment.CollectionFragment, java.lang.String):android.view.View");
    }

    /* renamed from: a */
    private View m40268a(ImageFragment imageFragment, boolean z) {
        String content = imageFragment.getContent();
        String str = content;
        if (!URLUtil.isNetworkUrl(content)) {
            str = C22128a.m8543z2("file:", content);
        }
        View inflate = this.f4368cr.inflate(C1298R.layout.freshchat_partial_message_fragment_image, this.f4369iA, false);
        ImageView imageView = (ImageView) inflate.findViewById(C1298R.C1300id.freshchat_image);
        Point m40311b = this.f4370iz.m40311b(imageFragment.getWidth(), imageFragment.getHeight());
        int i = m40311b.x;
        int i2 = m40311b.y;
        if (z) {
            this.f4370iz.m40312a(imageView, m40311b);
        }
        FreshchatImageLoaderRequest m41530dM = new FreshchatImageLoaderRequest.C1297a(str).m41533a(i, i2).m41535G(this.f4371rp).m41530dM();
        FreshchatImageLoader m40305eK = C1610af.m40305eK();
        if (m40305eK != null) {
            m40305eK.load(m41530dM, imageView);
        }
        final String str2 = str;
        imageView.setOnClickListener(new View.OnClickListener() { // from class: com.freshchat.consumer.sdk.j.ak.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                C1615ak.this.context.startActivity(PictureAttachmentActivity.m41122a(C1615ak.this.context, str2));
            }
        });
        return inflate;
    }

    /* renamed from: a */
    private View m40267a(QuickReplyButtonFragment quickReplyButtonFragment) {
        C1740e c1740e = new C1740e(this.context);
        c1740e.m39751b(quickReplyButtonFragment);
        return m40262bi(c1740e.m39750hb());
    }

    /* renamed from: a */
    private View m40266a(TextFragment textFragment, boolean z, boolean z2) {
        return m40262bi(C1698cv.m39991a(textFragment, z, z2));
    }

    /* renamed from: a */
    private View m40264a(List<StaticTemplateFragment> list, String str) {
        View inflate = LayoutInflater.from(this.context).inflate(C1298R.layout.freshchat_partial_bot_faq_list_fragment, this.f4369iA, false);
        ((LinearLayout) inflate.findViewById(C1298R.C1300id.freshchat_conv_bot_list)).setVisibility(0);
        ((RecyclerView) inflate.findViewById(C1298R.C1300id.freshchat_conv_detail_bot_list)).setAdapter(new C1355w(list, new C1706db(this), str));
        return inflate;
    }

    /* renamed from: b */
    private View m40263b(MessageFragment messageFragment) {
        Integer num;
        String str;
        View inflate = LayoutInflater.from(this.context).inflate(C1298R.layout.freshchat_unknown_fragment, this.f4369iA, false);
        TextView textView = (TextView) inflate.findViewById(C1298R.C1300id.freshchat_unknown_fragment_text);
        if (messageFragment != null) {
            str = messageFragment.getContentType();
            num = Integer.valueOf(messageFragment.getFragmentType());
        } else {
            num = null;
            str = null;
        }
        UnsupportedFragmentConfig unsupportedFragmentConfig = C1622ap.m40245bD(this.context).getUnsupportedFragmentConfig();
        String str2 = null;
        if (unsupportedFragmentConfig != null) {
            UnsupportedFragmentConfig.ErrorMessage errorMessage = unsupportedFragmentConfig.getErrorMessage(num, str);
            str2 = null;
            if (errorMessage != null) {
                str2 = unsupportedFragmentConfig.getDisplayableErrorMessage(errorMessage);
            }
        }
        if (C1626as.m40233a(str2)) {
            textView.setText(str2);
        } else {
            textView.setText(C1298R.string.freshchat_unknown_message_fragment);
        }
        return inflate;
    }

    /* renamed from: bi */
    private View m40262bi(String str) {
        View inflate = this.f4368cr.inflate(C1298R.layout.freshchat_partial_message_fragment_text, this.f4369iA, false);
        TextView textView = (TextView) inflate.findViewById(C1298R.C1300id.freshchat_text);
        textView.setMovementMethod(LinkMovementMethod.getInstance());
        Bundle bundle = new Bundle();
        bundle.putBoolean("LAUNCHED_FROM_CONVERSATION", true);
        textView.setText(DeepLinkUtils.m39274c(this.context, str, bundle));
        textView.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.freshchat.consumer.sdk.j.ak.1
            @Override // android.view.View.OnLongClickListener
            public boolean onLongClick(View view) {
                ((View) view.getParent()).performLongClick();
                return true;
            }
        });
        return inflate;
    }

    /* renamed from: a */
    public View m40272a(ViewGroup viewGroup, MessageFragment messageFragment, boolean z, boolean z2, boolean z3, String str) {
        m40273a(viewGroup);
        return messageFragment instanceof TextFragment ? m40266a((TextFragment) messageFragment, z, z2) : messageFragment instanceof AudioFragment ? m40271a((AudioFragment) messageFragment) : messageFragment instanceof ImageFragment ? m40268a((ImageFragment) messageFragment, z3) : messageFragment instanceof ButtonFragment ? m40270a((ButtonFragment) messageFragment) : messageFragment instanceof CollectionFragment ? m40269a((CollectionFragment) messageFragment, str) : messageFragment instanceof QuickReplyButtonFragment ? m40267a((QuickReplyButtonFragment) messageFragment) : m40263b(messageFragment);
    }

    /* renamed from: a */
    public View m40270a(ButtonFragment buttonFragment) {
        String str;
        Context context;
        int i;
        View inflate = this.f4368cr.inflate(C1298R.layout.freshchat_partial_message_fragment_button, this.f4369iA, false);
        View findViewById = inflate.findViewById(C1298R.C1300id.freshchat_button);
        Uri m40274b = C1614aj.m40274b(buttonFragment);
        if (findViewById instanceof TextView) {
            if (DeepLinkUtils.m39270e(m40274b)) {
                context = this.context;
                i = C1298R.string.freshchat_chat_deeplink_faq;
            } else if (C1626as.m40233a(buttonFragment.getLabel())) {
                str = buttonFragment.getLabel();
                ((TextView) findViewById).setText(str);
            } else {
                context = this.context;
                i = C1298R.string.freshchat_chat_deeplink;
            }
            str = context.getString(i);
            ((TextView) findViewById).setText(str);
        }
        findViewById.setOnClickListener(new View$OnClickListenerC1695cs(this, m40274b));
        return inflate;
    }

    /* renamed from: a */
    public void m40273a(ViewGroup viewGroup) {
        this.f4369iA = viewGroup;
    }
}
