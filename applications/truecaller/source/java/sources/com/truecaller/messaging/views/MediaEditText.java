package com.truecaller.messaging.views;

import android.content.ClipData;
import android.content.ClipDescription;
import android.content.ClipboardManager;
import android.content.Context;
import android.net.Uri;
import android.support.p001v4.media.session.MediaSessionCompat;
import android.text.Editable;
import android.util.AttributeSet;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import com.razorpay.AnalyticsConstants;
import com.tenor.android.core.constant.StringConstant;
import java.text.Bidi;
import java.util.Objects;
import kotlin.Metadata;
import p1727n3.p1807k.p1821i.p1823g0.AbstractC26598d;
import p1727n3.p1807k.p1821i.p1823g0.C26595a;
import p1727n3.p1807k.p1821i.p1823g0.C26599e;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1221t.p1222a.p1229z.C20347a;
import p193e.p194a.p195a.p243j1.AbstractC6437d;
import p193e.p194a.p195a.p243j1.C6435b;
import p193e.p194a.p195a.p243j1.RunnableC6436c;
import s1.f0.r;
import s1.f0.v;
import s1.f0.w;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n��\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018��2\u00020\u0001:\u0001/B\u0019\b\u0016\u0012\u0006\u0010*\u001a\u00020)\u0012\u0006\u0010,\u001a\u00020+¢\u0006\u0004\b-\u0010.J\u0019\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0005\u0010\u0006J\u0017\u0010\n\u001a\u00020\t2\u0006\u0010\b\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\n\u0010\u000bJ\u001f\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\f\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\u0007H\u0014¢\u0006\u0004\b\u000f\u0010\u0010R\u0018\u0010\u0014\u001a\u0004\u0018\u00010\u00118\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0012\u0010\u0013R$\u0010\u001c\u001a\u0004\u0018\u00010\u00158\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0016\u0010\u0017\u001a\u0004\b\u0018\u0010\u0019\"\u0004\b\u001a\u0010\u001bR\u0018\u0010 \u001a\u0004\u0018\u00010\u001d8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001e\u0010\u001fR\u0016\u0010$\u001a\u00020!8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\"\u0010#R\u0016\u0010(\u001a\u00020%8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b&\u0010'¨\u00060"}, d2 = {"Lcom/truecaller/messaging/views/MediaEditText;", "Le/a/t/a/z/a;", "Landroid/view/inputmethod/EditorInfo;", "outAttrs", "Landroid/view/inputmethod/InputConnection;", "onCreateInputConnection", "(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;", "", "id", "", "onTextContextMenuItem", "(I)Z", "selStart", "selEnd", "Ls1/s;", "onSelectionChanged", "(II)V", "Le/a/a/j1/d;", "d", "Le/a/a/j1/d;", "listener", "Lcom/truecaller/messaging/views/MediaEditText$a;", "e", "Lcom/truecaller/messaging/views/MediaEditText$a;", "getMediaCallback", "()Lcom/truecaller/messaging/views/MediaEditText$a;", "setMediaCallback", "(Lcom/truecaller/messaging/views/MediaEditText$a;)V", "mediaCallback", "Ln3/k/i/g0/e;", "f", "Ln3/k/i/g0/e;", "currentInfo", "Ljava/lang/Runnable;", "g", "Ljava/lang/Runnable;", "releaseCallback", "Ln3/k/i/g0/d;", "h", "Ln3/k/i/g0/d;", "androidMediaCallback", "Landroid/content/Context;", AnalyticsConstants.CONTEXT, "Landroid/util/AttributeSet;", "attrs", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "a", "truecaller_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes11-dex2jar.jar:com/truecaller/messaging/views/MediaEditText.class */
public final class MediaEditText extends C20347a {

    /* renamed from: d */
    public AbstractC6437d f13951d;

    /* renamed from: e */
    public AbstractC4283a f13952e;

    /* renamed from: f */
    public C26599e f13953f;

    /* renamed from: g */
    public final Runnable f13954g = new RunnableC6436c(this);

    /* renamed from: h */
    public final AbstractC26598d f13955h = new C6435b(this);

    /* renamed from: com.truecaller.messaging.views.MediaEditText$a */
    /* loaded from: classes11-dex2jar.jar:com/truecaller/messaging/views/MediaEditText$a.class */
    public interface AbstractC4283a {
        /* renamed from: Ue */
        String[] mo32490Ue();

        /* renamed from: b1 */
        void mo32473b1(Uri uri, String str, Runnable runnable);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MediaEditText(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0, 4);
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(attributeSet, "attrs");
    }

    public final AbstractC4283a getMediaCallback() {
        return this.f13952e;
    }

    @Override // p1727n3.p1734b.p1743f.C25507g, android.widget.TextView, android.view.View
    public InputConnection onCreateInputConnection(EditorInfo editorInfo) {
        l.e(editorInfo, "outAttrs");
        InputConnection onCreateInputConnection = super.onCreateInputConnection(editorInfo);
        if (onCreateInputConnection != null) {
            AbstractC4283a abstractC4283a = this.f13952e;
            if (abstractC4283a == null) {
                return onCreateInputConnection;
            }
            C26595a.m1607b(editorInfo, abstractC4283a.mo32490Ue());
            return MediaSessionCompat.m43276Q(onCreateInputConnection, editorInfo, this.f13955h);
        }
        return null;
    }

    @Override // android.widget.TextView
    public void onSelectionChanged(int i, int i2) {
        super.onSelectionChanged(i, i2);
        AbstractC6437d abstractC6437d = this.f13951d;
        if (abstractC6437d != null) {
            abstractC6437d.mo30960V(i, i2);
        }
    }

    @Override // android.widget.TextView
    public boolean onTextContextMenuItem(int i) {
        ClipDescription description;
        if (i == 16908322) {
            Object systemService = getContext().getSystemService("clipboard");
            Objects.requireNonNull(systemService, "null cannot be cast to non-null type android.content.ClipboardManager");
            ClipData primaryClip = ((ClipboardManager) systemService).getPrimaryClip();
            if (l.a((primaryClip == null || (description = primaryClip.getDescription()) == null) ? null : description.getLabel(), "LABEL_NUMBER")) {
                String obj = getText().toString();
                Objects.requireNonNull(obj, "null cannot be cast to non-null type kotlin.CharSequence");
                String obj2 = v.g0(obj).toString();
                l.e(obj2, "$this$substringAfterLast");
                l.e(StringConstant.SPACE, "delimiter");
                l.e(obj2, "missingDelimiterValue");
                int K = v.K(obj2, StringConstant.SPACE, 0, false, 6);
                if (K != -1) {
                    obj2 = obj2.substring(K + 1, obj2.length());
                    l.d(obj2, "(this as java.lang.Strin…ing(startIndex, endIndex)");
                }
                if (new Bidi(obj2, -2).isRightToLeft()) {
                    ClipData.Item itemAt = primaryClip.getItemAt(0);
                    l.d(itemAt, "clip.getItemAt(0)");
                    String obj3 = itemAt.getText().toString();
                    Objects.requireNonNull(obj3, "null cannot be cast to non-null type kotlin.CharSequence");
                    String t = r.t(C22128a.m8733A2("\\s", v.g0(obj3).toString(), ""), StringConstant.DASH, "", false, 4);
                    String str = t;
                    if (w.k0(t) == '+') {
                        str = C22128a.m8619g2(v.P(t, "+"), '+');
                    }
                    Editable text = getText();
                    if (text == null) {
                        return true;
                    }
                    text.append((CharSequence) str);
                    return true;
                }
            }
        }
        return super.onTextContextMenuItem(i);
    }

    public final void setMediaCallback(AbstractC4283a abstractC4283a) {
        this.f13952e = abstractC4283a;
    }
}
