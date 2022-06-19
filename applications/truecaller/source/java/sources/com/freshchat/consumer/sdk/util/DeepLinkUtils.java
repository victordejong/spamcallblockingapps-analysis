package com.freshchat.consumer.sdk.util;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.text.SpannableString;
import android.text.Spanned;
import android.text.style.URLSpan;
import android.text.util.Linkify;
import android.view.View;
import com.freshchat.consumer.sdk.ConversationOptions;
import com.freshchat.consumer.sdk.Freshchat;
import com.freshchat.consumer.sdk.LinkHandler;
import com.freshchat.consumer.sdk.activity.ArticleDetailActivity;
import com.freshchat.consumer.sdk.activity.FAQDetailsActivity;
import com.freshchat.consumer.sdk.beans.Channel;
import com.freshchat.consumer.sdk.p047b.C1466e;
import com.freshchat.consumer.sdk.p057j.AbstractC1673c;
import com.freshchat.consumer.sdk.p057j.C1613ai;
import com.freshchat.consumer.sdk.p057j.C1626as;
import com.freshchat.consumer.sdk.p057j.C1649bg;
import com.freshchat.consumer.sdk.p057j.C1716k;
import com.freshchat.consumer.sdk.p057j.C1718m;
import com.freshchat.consumer.sdk.p057j.C1723q;
import com.freshchat.consumer.sdk.p057j.C1733y;
import java.util.Arrays;
import java.util.Collection;
import java.util.regex.Pattern;
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/util/DeepLinkUtils.class */
public class DeepLinkUtils {

    /* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/util/DeepLinkUtils$CustomURLSpan.class */
    public static class CustomURLSpan extends URLSpan {

        /* renamed from: lc */
        private Bundle f4820lc;

        public CustomURLSpan(String str, Bundle bundle) {
            super(str);
            this.f4820lc = bundle;
        }

        @Override // android.text.style.URLSpan, android.text.style.ClickableSpan
        public void onClick(View view) {
            try {
                DeepLinkUtils.m39283a(view.getContext(), Uri.parse(getURL()), this.f4820lc);
            } catch (Exception e) {
                C1723q.m39823a(e);
            }
        }
    }

    /* renamed from: a */
    public static void m39283a(Context context, Uri uri, Bundle bundle) {
        try {
            if (!m39273c(uri) && !m39271d(uri)) {
                m39275c(context, uri, bundle);
            }
            m39280b(context, uri, bundle);
        } catch (Exception e) {
            C1723q.m39823a(e);
        }
    }

    /* renamed from: a */
    private static boolean m39282a(Uri uri, String str) {
        return uri != null && C1626as.m40224m(uri.getScheme(), str);
    }

    /* renamed from: b */
    public static void m39281b(Context context, Uri uri) {
        if (context == null || uri == null) {
            return;
        }
        Bundle bundle = new Bundle();
        bundle.putBoolean("LAUNCHED_FROM_CONVERSATION", true);
        m39283a(context, uri, bundle);
    }

    /* renamed from: b */
    public static void m39280b(Context context, Uri uri, Bundle bundle) {
        if (context == null || uri == null) {
            return;
        }
        try {
            if (m39268f(uri)) {
                AbstractC1673c m40034a = AbstractC1673c.m40034a(context, new ConversationOptions());
                if (m40034a instanceof C1718m) {
                    long m39264j = m39264j(uri);
                    Collection<String> m39263k = m39263k(uri);
                    if (m39264j > 0) {
                        Channel channel = new Channel();
                        channel.setId(m39264j);
                        ((C1718m) m40034a).m39890c(channel);
                    } else if (C1716k.m39902a(m39263k)) {
                        String queryParameter = uri.getQueryParameter("title");
                        ConversationOptions conversationOptions = new ConversationOptions();
                        conversationOptions.filterByTags(m39263k, queryParameter);
                        Freshchat.showConversations(context, conversationOptions);
                    }
                }
            } else if (m39270e(uri) || m39271d(uri)) {
                m39272d(context, uri, bundle);
            }
        } catch (Exception e) {
            C1723q.m39823a(e);
        }
    }

    /* renamed from: b */
    public static boolean m39279b(String str) {
        String lowerCase = str.toLowerCase();
        return lowerCase.contains("youtube.") || lowerCase.contains("vimeo.");
    }

    /* renamed from: bm */
    public static Pattern m39278bm(Context context) {
        String m40959bp = C1466e.m40905i(context).m40959bp();
        if (C1626as.m40233a(m40959bp)) {
            return Pattern.compile(m40959bp);
        }
        return null;
    }

    /* renamed from: bn */
    public static String m39277bn(Context context) {
        return C1466e.m40905i(context).m40958bq();
    }

    /* renamed from: c */
    private static Intent m39276c(Context context, Uri uri) {
        try {
            long parseLong = Long.parseLong(m39267g(uri));
            if (parseLong <= 0) {
                return null;
            }
            Intent intent = new Intent(context, ArticleDetailActivity.class);
            intent.putExtra("article_id", parseLong);
            return intent;
        } catch (Exception e) {
            C1723q.m39823a(e);
            return null;
        }
    }

    /* renamed from: c */
    public static SpannableString m39274c(Context context, String str, Bundle bundle) {
        Spanned fromHtml = C1626as.fromHtml(str);
        URLSpan[] uRLSpanArr = (URLSpan[]) fromHtml.getSpans(0, fromHtml.length(), URLSpan.class);
        SpannableString spannableString = new SpannableString(fromHtml);
        Linkify.addLinks(spannableString, 15);
        Pattern m39278bm = m39278bm(context);
        String m39277bn = m39277bn(context);
        if (m39278bm != null && C1626as.m40233a(m39277bn)) {
            Linkify.addLinks(spannableString, m39278bm, m39277bn);
        }
        for (URLSpan uRLSpan : uRLSpanArr) {
            spannableString.setSpan(new CustomURLSpan(uRLSpan.getURL(), bundle), fromHtml.getSpanStart(uRLSpan), fromHtml.getSpanEnd(uRLSpan), 0);
        }
        return spannableString;
    }

    /* renamed from: c */
    public static boolean m39275c(Context context, Uri uri, Bundle bundle) {
        if (uri != null) {
            C1649bg.m40101a(context, uri);
            LinkHandler customLinkHandler = Freshchat.getInstance(context).getCustomLinkHandler();
            if (customLinkHandler != null && customLinkHandler.handleLink(uri.toString(), null)) {
                return true;
            }
            try {
                Intent intent = new Intent("android.intent.action.VIEW");
                intent.setData(uri);
                if (bundle != null) {
                    intent.putExtras(bundle);
                }
                context.startActivity(intent);
                return true;
            } catch (Exception e) {
                String str = "Exception opening link " + uri;
                return false;
            }
        }
        return false;
    }

    /* renamed from: c */
    public static boolean m39273c(Uri uri) {
        return m39282a(uri, "freshchat");
    }

    /* renamed from: d */
    private static void m39272d(Context context, Uri uri, Bundle bundle) {
        Intent m39269f = C1733y.m39775cp(context) ? m39269f(context, uri) : m39276c(context, uri);
        if (m39269f == null) {
            return;
        }
        if (bundle != null) {
            m39269f.putExtras(bundle);
        }
        context.startActivity(m39269f);
    }

    /* renamed from: d */
    public static boolean m39271d(Uri uri) {
        boolean z = false;
        try {
            if (m39282a(uri, "faq")) {
                String m39266h = m39266h(uri);
                z = false;
                if (C1626as.m40233a(m39266h)) {
                    z = false;
                    if (Long.parseLong(m39266h) > 0) {
                        z = true;
                    }
                }
            }
        } catch (Exception e) {
            z = false;
        }
        return z;
    }

    /* renamed from: e */
    public static boolean m39270e(Uri uri) {
        boolean z = false;
        try {
            if (m39273c(uri)) {
                String host = uri.getHost();
                String lastPathSegment = uri.getLastPathSegment();
                String m39265i = m39265i(uri);
                z = false;
                if ("faq".equalsIgnoreCase(host)) {
                    z = false;
                    if ("article".equalsIgnoreCase(lastPathSegment)) {
                        z = false;
                        if (C1626as.m40233a(m39265i)) {
                            z = false;
                            if (Long.valueOf(m39265i).longValue() > 0) {
                                z = true;
                            }
                        }
                    }
                }
            }
        } catch (Exception e) {
            z = false;
        }
        return z;
    }

    /* renamed from: f */
    private static Intent m39269f(Context context, Uri uri) {
        String m39262l = m39262l(uri);
        String m39267g = m39267g(uri);
        if (!C1626as.m40233a(m39262l) || !C1626as.m40233a(m39267g)) {
            return null;
        }
        Intent intent = new Intent(context, FAQDetailsActivity.class);
        intent.putExtra("article_id", m39267g);
        intent.putExtra("category_id", m39262l);
        return intent;
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x0034, code lost:
        if (com.freshchat.consumer.sdk.p057j.C1716k.m39902a(r0) != false) goto L15;
     */
    /* renamed from: f */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean m39268f(android.net.Uri r5) {
        /*
            r0 = 0
            r6 = r0
            r0 = r6
            r7 = r0
            r0 = r5
            boolean r0 = m39273c(r0)     // Catch: java.lang.Exception -> L3b
            if (r0 == 0) goto L39
            r0 = r6
            r7 = r0
            java.lang.String r0 = "channels"
            r1 = r5
            java.lang.String r1 = r1.getHost()     // Catch: java.lang.Exception -> L3b
            boolean r0 = r0.equalsIgnoreCase(r1)     // Catch: java.lang.Exception -> L3b
            if (r0 == 0) goto L39
            r0 = r5
            long r0 = m39264j(r0)     // Catch: java.lang.Exception -> L3b
            r8 = r0
            r0 = r5
            java.util.Collection r0 = m39263k(r0)     // Catch: java.lang.Exception -> L3b
            r5 = r0
            r0 = r8
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 > 0) goto L37
            r0 = r5
            boolean r0 = com.freshchat.consumer.sdk.p057j.C1716k.m39902a(r0)     // Catch: java.lang.Exception -> L3b
            r10 = r0
            r0 = r6
            r7 = r0
            r0 = r10
            if (r0 == 0) goto L39
        L37:
            r0 = 1
            r7 = r0
        L39:
            r0 = r7
            return r0
        L3b:
            r5 = move-exception
            r0 = r6
            r7 = r0
            goto L39
        */
        throw new UnsupportedOperationException("Method not decompiled: com.freshchat.consumer.sdk.util.DeepLinkUtils.m39268f(android.net.Uri):boolean");
    }

    /* renamed from: g */
    public static String m39267g(Uri uri) {
        try {
            if (m39271d(uri)) {
                return m39266h(uri);
            }
            if (!m39270e(uri)) {
                return null;
            }
            return m39265i(uri);
        } catch (Exception e) {
            return null;
        }
    }

    /* renamed from: h */
    private static String m39266h(Uri uri) {
        if (uri == null) {
            return null;
        }
        try {
            String host = uri.getHost();
            if (Long.parseLong(host) <= 0) {
                return null;
            }
            return host;
        } catch (Exception e) {
            C1723q.m39823a(e);
            return null;
        }
    }

    /* renamed from: i */
    private static String m39265i(Uri uri) {
        if (uri == null) {
            return null;
        }
        try {
            String queryParameter = uri.getQueryParameter("article_id");
            if (C1626as.isEmpty(queryParameter)) {
                return null;
            }
            if (Long.valueOf(queryParameter).longValue() <= 0) {
                return null;
            }
            return queryParameter;
        } catch (Exception e) {
            C1723q.m39823a(e);
            return null;
        }
    }

    /* renamed from: j */
    private static long m39264j(Uri uri) {
        if (uri == null) {
            return 0L;
        }
        String queryParameter = uri.getQueryParameter("id");
        if (C1626as.isEmpty(queryParameter)) {
            return 0L;
        }
        try {
            long longValue = Long.valueOf(queryParameter).longValue();
            if (longValue <= 0) {
                return 0L;
            }
            return longValue;
        } catch (Exception e) {
            C1723q.m39823a(e);
            return 0L;
        }
    }

    /* renamed from: k */
    private static Collection<String> m39263k(Uri uri) {
        if (uri == null) {
            return null;
        }
        String queryParameter = uri.getQueryParameter("tags");
        if (!C1626as.isEmpty(queryParameter)) {
            return C1716k.m39895d(Arrays.asList(queryParameter.split(",")));
        }
        return null;
    }

    /* renamed from: l */
    private static String m39262l(Uri uri) {
        try {
            if (!m39270e(uri)) {
                return null;
            }
            return m39261m(uri);
        } catch (Exception e) {
            C1613ai.m40277w("FRESHCHAT", "Exception while extracting category id from deeplink", e);
            return null;
        }
    }

    /* renamed from: m */
    private static String m39261m(Uri uri) {
        String str;
        if (uri == null) {
            return null;
        }
        try {
            str = uri.getQueryParameter("category_id");
        } catch (Exception e) {
            C1723q.m39823a(e);
            str = null;
        }
        return str;
    }

    /* renamed from: v */
    public static String m39260v(long j) {
        if (j <= 0) {
            return null;
        }
        Uri.Builder builder = new Uri.Builder();
        builder.scheme("freshchat").encodedAuthority("channels").appendQueryParameter("id", String.valueOf(j));
        return builder.build().toString();
    }
}
