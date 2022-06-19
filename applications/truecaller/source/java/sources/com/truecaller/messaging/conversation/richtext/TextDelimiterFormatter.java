package com.truecaller.messaging.conversation.richtext;

import android.content.Context;
import android.text.Spannable;
import android.text.SpannableString;
import android.text.SpannableStringBuilder;
import android.text.style.CharacterStyle;
import android.text.style.ForegroundColorSpan;
import android.text.style.StrikethroughSpan;
import android.text.style.StyleSpan;
import android.text.style.TypefaceSpan;
import android.text.style.UnderlineSpan;
import android.widget.TextView;
import com.razorpay.AnalyticsConstants;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import p193e.p194a.p195a.p200c.p219p8.C5661c;
import p193e.p194a.p195a.p200c.p219p8.C5663e;
import p193e.p194a.p195a.p200c.p219p8.C5664f;
import p193e.p194a.p195a.p200c.p219p8.C5665g;
import s1.o;
import s1.u.i;
import s1.z.c.l;
/* loaded from: classes5-dex2jar.jar:com/truecaller/messaging/conversation/richtext/TextDelimiterFormatter.class */
public final class TextDelimiterFormatter {

    /* renamed from: a */
    public static final List<Class<? extends Object>> f13105a = i.T(new Class[]{StyleSpan.class, UnderlineSpan.class, StrikethroughSpan.class, TypefaceSpan.class, ForegroundColorSpan.class});

    /* renamed from: b */
    public static final TextDelimiterFormatter f13106b = null;

    @Metadata(bv = {1, 0, 3}, d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0006\b\u0086\u0001\u0018��2\b\u0012\u0004\u0012\u00020��0\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006¨\u0006\u0007"}, d2 = {"Lcom/truecaller/messaging/conversation/richtext/TextDelimiterFormatter$DelimiterVisibility;", "", "<init>", "(Ljava/lang/String;I)V", "SHOW", "HIDE", "REMOVE", "messaging-common_release"}, k = 1, mv = {1, 4, 1})
    /* loaded from: classes5-dex2jar.jar:com/truecaller/messaging/conversation/richtext/TextDelimiterFormatter$DelimiterVisibility.class */
    public enum DelimiterVisibility {
        SHOW,
        HIDE,
        REMOVE
    }

    /* renamed from: a */
    public static final void m35100a(Spannable spannable) {
        Iterator<T> it = f13105a.iterator();
        while (it.hasNext()) {
            Class cls = (Class) it.next();
            Object[] spans = spannable.getSpans(0, spannable.length(), cls);
            l.d(spans, "text.getSpans(0, text.length, spanClass)");
            ArrayList arrayList = new ArrayList();
            for (Object obj : spans) {
                if (l.a(obj.getClass(), cls)) {
                    arrayList.add(obj);
                }
            }
            Iterator it2 = arrayList.iterator();
            while (it2.hasNext()) {
                spannable.removeSpan(it2.next());
            }
        }
    }

    /* renamed from: b */
    public static final void m35099b(TextView textView, DelimiterVisibility delimiterVisibility) {
        l.e(textView, "textView");
        l.e(delimiterVisibility, "delimiterVisibility");
        CharSequence text = textView.getText();
        Context context = textView.getContext();
        l.d(context, "textView.context");
        l.d(text, "text");
        Spannable m35098c = m35098c(context, text, delimiterVisibility);
        if (!l.a(text, m35098c)) {
            textView.setText(m35098c);
        }
    }

    /* renamed from: c */
    public static final Spannable m35098c(Context context, CharSequence charSequence, DelimiterVisibility delimiterVisibility) {
        SpannableString spannableString;
        SpannableString spannableString2;
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(charSequence, "text");
        l.e(delimiterVisibility, "delimiterVisibility");
        if (delimiterVisibility != DelimiterVisibility.REMOVE) {
            if (charSequence instanceof Spannable) {
                Spannable spannable = (Spannable) charSequence;
                m35100a(spannable);
                spannableString = spannable;
            } else {
                spannableString = new SpannableString(charSequence);
            }
            C5665g.m32795b(spannableString, delimiterVisibility.ordinal() != 0 ? new C5661c(spannableString) : new C5664f(context, spannableString));
            return spannableString;
        }
        C5663e c5663e = new C5663e(context, charSequence);
        C5665g.m32795b(charSequence, c5663e);
        if (!c5663e.f19018b.isEmpty()) {
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
            char[] cArr = c5663e.f19017a;
            int[] iArr = new int[cArr.length];
            int length = cArr.length;
            int i = 0;
            int i2 = 0;
            int i3 = 0;
            while (i < length) {
                char c = cArr[i];
                iArr[i2] = i3;
                if (c != 0) {
                    spannableStringBuilder.append(c);
                } else {
                    i3++;
                }
                i++;
                i2++;
            }
            Iterator<T> it = c5663e.f19018b.iterator();
            while (true) {
                spannableString2 = spannableStringBuilder;
                if (!it.hasNext()) {
                    break;
                }
                o oVar = (o) it.next();
                CharacterStyle characterStyle = (CharacterStyle) oVar.a;
                int intValue = ((Number) oVar.b).intValue();
                int intValue2 = ((Number) oVar.c).intValue();
                spannableStringBuilder.setSpan(characterStyle, intValue - iArr[intValue], intValue2 - iArr[intValue2], 0);
            }
        } else {
            spannableString2 = new SpannableString(c5663e.f19020d);
        }
        return spannableString2;
    }
}
