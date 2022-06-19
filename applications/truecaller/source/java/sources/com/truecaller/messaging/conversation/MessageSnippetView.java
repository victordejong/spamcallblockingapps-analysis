package com.truecaller.messaging.conversation;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.razorpay.AnalyticsConstants;
import com.tenor.android.core.constant.StringConstant;
import com.truecaller.C2752R;
import com.truecaller.messaging.conversation.richtext.TextDelimiterFormatter;
import com.truecaller.messaging.data.types.DocumentEntity;
import com.truecaller.messaging.data.types.Entity;
import com.truecaller.messaging.data.types.ImageEntity;
import com.truecaller.messaging.data.types.LocationEntity;
import com.truecaller.messaging.data.types.ReplySnippet;
import com.truecaller.messaging.data.types.TextEntity;
import com.truecaller.messaging.data.types.VCardEntity;
import com.truecaller.messaging.data.types.VideoEntity;
import e.f.a.n.q.d.f;
import e.f.a.n.q.d.i;
import e.f.a.n.q.d.y;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import kotlin.Metadata;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p1451f.p1452a.C22234h;
import p193e.p1451f.p1452a.p1457n.p1460o.AbstractC22364k;
import p193e.p194a.p1049l4.C17422k;
import p193e.p194a.p1053m0.C17891a1;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p1406z3.C21852d;
import p193e.p194a.p195a.p231g.p234l0.C6232g;
import p193e.p194a.p372b0.p430q.C8578e0;
import p193e.p194a.p437c.p578p.C10480a;
import s1.g;
import s1.k;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018��2\u00020\u0001J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002¢\u0006\u0004\b\u0005\u0010\u0006J\u0015\u0010\t\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\t\u0010\nJ'\u0010\u0010\u001a\u00020\u00042\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010\r\u001a\u00020\u00072\b\b\u0002\u0010\u000f\u001a\u00020\u000e¢\u0006\u0004\b\u0010\u0010\u0011J/\u0010\u0016\u001a\u00020\u00042\u0006\u0010\u0012\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u00072\b\u0010\u0013\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0015\u001a\u00020\u0014¢\u0006\u0004\b\u0016\u0010\u0017J\r\u0010\u0018\u001a\u00020\u0004¢\u0006\u0004\b\u0018\u0010\u0019J\u0015\u0010\u001b\u001a\u00020\u00042\u0006\u0010\u001a\u001a\u00020\u000e¢\u0006\u0004\b\u001b\u0010\u001cJ\u0015\u0010\u001f\u001a\u00020\u00042\u0006\u0010\u001e\u001a\u00020\u001d¢\u0006\u0004\b\u001f\u0010 J=\u0010&\u001a\u00020\u00042\u0006\u0010\"\u001a\u00020!2\b\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0006\u0010#\u001a\u00020\u00142\b\b\u0001\u0010$\u001a\u00020\u00142\b\b\u0001\u0010%\u001a\u00020\u0014H\u0002¢\u0006\u0004\b&\u0010'J\u0017\u0010(\u001a\u00020\u00042\u0006\u0010\u0015\u001a\u00020\u0014H\u0002¢\u0006\u0004\b(\u0010)R\u0016\u0010$\u001a\u00020\u00148\u0002@\u0003X\u0083\u0004¢\u0006\u0006\n\u0004\b\t\u0010*R%\u0010/\u001a\n +*\u0004\u0018\u00010!0!8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0010\u0010,\u001a\u0004\b-\u0010.R\u0016\u0010%\u001a\u00020\u00148\u0002@\u0003X\u0083\u0004¢\u0006\u0006\n\u0004\b\u0016\u0010*R%\u00104\u001a\n +*\u0004\u0018\u000100008B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b1\u0010,\u001a\u0004\b2\u00103R\u0016\u00105\u001a\u00020\u00148\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0018\u0010*R\u0016\u00107\u001a\u00020\u000e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b(\u00106R%\u0010;\u001a\n +*\u0004\u0018\u000108088B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b&\u0010,\u001a\u0004\b9\u0010:R%\u0010>\u001a\n +*\u0004\u0018\u000100008B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b<\u0010,\u001a\u0004\b=\u00103¨\u0006?"}, d2 = {"Lcom/truecaller/messaging/conversation/MessageSnippetView;", "Landroid/widget/RelativeLayout;", "Landroid/net/Uri;", "url", "Ls1/s;", "setThumbnailPreview", "(Landroid/net/Uri;)V", "", "text", AbstractC2405c.f7629a, "(Ljava/lang/String;)V", "Lcom/truecaller/messaging/data/types/ReplySnippet;", "message", AnalyticsConstants.SENDER, "", "clickable", "e", "(Lcom/truecaller/messaging/data/types/ReplySnippet;Ljava/lang/String;Z)V", "title", "avatar", "", "transport", "d", "(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;I)V", C22021b.f61237c, "()V", "visible", "setDismissActionVisible", "(Z)V", "Landroid/view/View$OnClickListener;", "clickListener", "setDismissActionListener", "(Landroid/view/View$OnClickListener;)V", "Landroid/widget/ImageView;", "mImageView", "contactsCount", "iconColor", "iconBackgroundColor", "f", "(Landroid/widget/ImageView;Landroid/net/Uri;III)V", "a", "(I)V", "I", "kotlin.jvm.PlatformType", "Ls1/g;", "getAttachmentImageView", "()Landroid/widget/ImageView;", "attachmentImageView", "Landroid/widget/TextView;", "h", "getSnippetSenderText", "()Landroid/widget/TextView;", "snippetSenderText", "padding", "Z", "isOutgoing", "Landroid/view/View;", "getDismissButton", "()Landroid/view/View;", "dismissButton", "g", "getSnippetContentText", "snippetContentText", "truecaller_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes5-dex2jar.jar:com/truecaller/messaging/conversation/MessageSnippetView.class */
public final class MessageSnippetView extends RelativeLayout {

    /* renamed from: i */
    public static final /* synthetic */ int f13034i = 0;

    /* renamed from: a */
    public boolean f13035a;

    /* renamed from: b */
    public final int f13036b;

    /* renamed from: c */
    public final int f13037c;

    /* renamed from: d */
    public final int f13038d;

    /* renamed from: e */
    public final g f13039e = C19286f.m13660s(this, C2752R.C2754id.attachmentImageView);

    /* renamed from: f */
    public final g f13040f = C19286f.m13660s(this, 2131363361);

    /* renamed from: g */
    public final g f13041g = C19286f.m13660s(this, C2752R.C2754id.snippetContentText);

    /* renamed from: h */
    public final g f13042h = C19286f.m13660s(this, C2752R.C2754id.snippetSenderText);

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MessageSnippetView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        l.e(context, AnalyticsConstants.CONTEXT);
        boolean z = false;
        int dimensionPixelSize = context.getResources().getDimensionPixelSize(2131166432);
        this.f13036b = dimensionPixelSize;
        LayoutInflater from = LayoutInflater.from(context);
        l.d(from, "LayoutInflater.from(context)");
        C17422k.m16050u0(from, true).inflate(C2752R.layout.view_message_snippet, this);
        setBackgroundResource(C2752R.C2753drawable.background_message_reply_selector);
        setPaddingRelative(dimensionPixelSize, dimensionPixelSize, dimensionPixelSize, dimensionPixelSize);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C2752R.styleable.MessageSnippetView, 0, 0);
        l.d(obtainStyledAttributes, "context.obtainStyledAttr…MessageSnippetView, 0, 0)");
        z = obtainStyledAttributes.getInt(0, 0) == 1 ? true : z;
        this.f13035a = z;
        if (z) {
            getSnippetContentText().setTextColor(C19291g.m13612L(context, C2752R.attr.tcx_messageSnippetOutgoingText));
            C19291g.m13525o1(this, C19291g.m13612L(getContext(), C2752R.attr.tcx_messageSnippetOutgoingBackground), PorterDuff.Mode.SRC_IN);
            this.f13037c = C19291g.m13612L(context, C2752R.attr.tcx_messageOutgoingImIcon);
            this.f13038d = C19291g.m13612L(context, C2752R.attr.tcx_messageOutgoingImIconBackground);
        } else {
            getSnippetContentText().setTextColor(C19291g.m13612L(context, C2752R.attr.tcx_messageSnippetIncomingText));
            C19291g.m13525o1(this, C19291g.m13612L(getContext(), C2752R.attr.tcx_messageSnippetIncomingBackground), PorterDuff.Mode.SRC_IN);
            this.f13037c = C19291g.m13612L(context, C2752R.attr.tcx_messageIncomingIcon);
            this.f13038d = C19291g.m13612L(context, C2752R.attr.tcx_messageIncomingIconBackground);
        }
        obtainStyledAttributes.recycle();
    }

    private final ImageView getAttachmentImageView() {
        return (ImageView) this.f13039e.getValue();
    }

    private final View getDismissButton() {
        return (View) this.f13040f.getValue();
    }

    private final TextView getSnippetContentText() {
        return (TextView) this.f13041g.getValue();
    }

    private final TextView getSnippetSenderText() {
        return (TextView) this.f13042h.getValue();
    }

    private final void setThumbnailPreview(Uri uri) {
        ImageView attachmentImageView = getAttachmentImageView();
        l.d(attachmentImageView, "attachmentImageView");
        C19286f.m13683U(attachmentImageView, true);
        C22234h mo8414k = C17891a1.C17902k.m15664K1(getContext()).mo8414k();
        mo8414k.mo8423S(uri);
        C21852d c21852d = (C21852d) mo8414k;
        Context context = getContext();
        l.d(context, AnalyticsConstants.CONTEXT);
        C21852d m8971m0 = c21852d.m8971m0(context.getResources().getDimensionPixelSize(C2752R.dimen.reply_snippet_entity_size));
        f iVar = new i();
        Context context2 = getContext();
        l.d(context2, AnalyticsConstants.CONTEXT);
        ((C21852d) m8971m0.m8111C(new e.f.a.n.g(s1.u.i.T(new f[]{iVar, new y(context2.getResources().getDimensionPixelSize(C2752R.dimen.reply_snippet_entity_corner_radius))})), true)).m8427O(getAttachmentImageView());
    }

    /* renamed from: a */
    public final void m35117a(int i) {
        if (!this.f13035a) {
            getSnippetContentText().setTextColor(C19291g.m13612L(getContext(), C2752R.attr.tcx_messageSnippetIncomingText));
            getSnippetSenderText().setTextColor(C19291g.m13612L(getContext(), C2752R.attr.tcx_messageIncomingText));
            C19291g.m13525o1(this, C19291g.m13612L(getContext(), C2752R.attr.tcx_messageSnippetIncomingBackground), PorterDuff.Mode.SRC_IN);
        } else if (i == 0) {
            getSnippetContentText().setTextColor(C19291g.m13612L(getContext(), C2752R.attr.tcx_messageSnippetOutgoingSmsText));
            getSnippetSenderText().setTextColor(C19291g.m13612L(getContext(), C2752R.attr.tcx_messageSnippetOutgoingSmsText));
            C19291g.m13525o1(this, C19291g.m13612L(getContext(), C2752R.attr.tcx_messageSnippetOutgoingSmsBackground), PorterDuff.Mode.SRC_IN);
        } else {
            getSnippetContentText().setTextColor(C19291g.m13612L(getContext(), C2752R.attr.tcx_messageSnippetOutgoingText));
            getSnippetSenderText().setTextColor(C19291g.m13612L(getContext(), C2752R.attr.tcx_messageOutgoingImText));
            C19291g.m13525o1(this, C19291g.m13612L(getContext(), C2752R.attr.tcx_messageSnippetOutgoingBackground), PorterDuff.Mode.SRC_IN);
        }
    }

    /* renamed from: b */
    public final void m35116b() {
        TextView snippetSenderText = getSnippetSenderText();
        l.d(snippetSenderText, "snippetSenderText");
        C19286f.m13683U(snippetSenderText, false);
        TextView snippetContentText = getSnippetContentText();
        l.d(snippetContentText, "snippetContentText");
        snippetContentText.setText(getContext().getString(C2752R.string.MessageDeleted));
        TextView snippetContentText2 = getSnippetContentText();
        l.d(snippetContentText2, "snippetContentText");
        snippetContentText2.setAlpha(0.7f);
        TextView snippetContentText3 = getSnippetContentText();
        l.d(snippetContentText3, "snippetContentText");
        ViewGroup.LayoutParams layoutParams = snippetContentText3.getLayoutParams();
        Objects.requireNonNull(layoutParams, "null cannot be cast to non-null type android.widget.RelativeLayout.LayoutParams");
        RelativeLayout.LayoutParams layoutParams2 = (RelativeLayout.LayoutParams) layoutParams;
        layoutParams2.addRule(15, -1);
        TextView snippetContentText4 = getSnippetContentText();
        l.d(snippetContentText4, "snippetContentText");
        snippetContentText4.setLayoutParams(layoutParams2);
        ImageView attachmentImageView = getAttachmentImageView();
        l.d(attachmentImageView, "attachmentImageView");
        C19286f.m13683U(attachmentImageView, false);
        setEnabled(false);
    }

    /* renamed from: c */
    public final void m35115c(String str) {
        l.e(str, "text");
        getSnippetSenderText().setText(C2752R.string.ConversationErrorEdit);
        getSnippetSenderText().setTextColor(C19291g.m13612L(getContext(), 2130970017));
        TextView snippetSenderText = getSnippetSenderText();
        l.d(snippetSenderText, "snippetSenderText");
        C19286f.m13683U(snippetSenderText, true);
        TextView snippetContentText = getSnippetContentText();
        l.d(snippetContentText, "snippetContentText");
        snippetContentText.setText(str);
        getSnippetContentText().setTextColor(C19291g.m13612L(getContext(), 2130970253));
        getSnippetContentText().setCompoundDrawablesRelativeWithIntrinsicBounds(0, 0, 0, 0);
        C19291g.m13525o1(this, C19291g.m13612L(getContext(), 2130969998), PorterDuff.Mode.SRC_IN);
        ImageView attachmentImageView = getAttachmentImageView();
        C19286f.m13683U(attachmentImageView, true);
        attachmentImageView.setBackground(null);
        attachmentImageView.setImageResource(2131232411);
        attachmentImageView.setColorFilter(C19291g.m13612L(attachmentImageView.getContext(), 2130970017));
    }

    /* renamed from: d */
    public final void m35114d(String str, String str2, Uri uri, int i) {
        l.e(str, "title");
        l.e(str2, "text");
        m35117a(i);
        TextView snippetSenderText = getSnippetSenderText();
        l.d(snippetSenderText, "snippetSenderText");
        C19286f.m13683U(snippetSenderText, true);
        TextView snippetSenderText2 = getSnippetSenderText();
        l.d(snippetSenderText2, "snippetSenderText");
        snippetSenderText2.setText(str);
        TextView snippetContentText = getSnippetContentText();
        l.d(snippetContentText, "snippetContentText");
        snippetContentText.setText(str2);
        k kVar = this.f13035a ? i == 0 ? new k(Integer.valueOf(C19291g.m13612L(getContext(), 2130969976)), Integer.valueOf(C19291g.m13612L(getContext(), C2752R.attr.tcx_messageOutgoingSmsIconBackground))) : new k(Integer.valueOf(C19291g.m13612L(getContext(), C2752R.attr.tcx_messageOutgoingImIcon)), Integer.valueOf(C19291g.m13612L(getContext(), C2752R.attr.tcx_messageOutgoingImIconBackground))) : new k(Integer.valueOf(this.f13037c), Integer.valueOf(this.f13038d));
        ImageView attachmentImageView = getAttachmentImageView();
        l.d(attachmentImageView, "attachmentImageView");
        m35112f(attachmentImageView, uri, Integer.MAX_VALUE, ((Number) kVar.a).intValue(), ((Number) kVar.b).intValue());
    }

    /* renamed from: e */
    public final void m35113e(ReplySnippet replySnippet, String str, boolean z) {
        Object obj;
        l.e(replySnippet, "message");
        l.e(str, AnalyticsConstants.SENDER);
        m35117a(2);
        TextView snippetSenderText = getSnippetSenderText();
        l.d(snippetSenderText, "snippetSenderText");
        C19286f.m13683U(snippetSenderText, true);
        TextView snippetSenderText2 = getSnippetSenderText();
        l.d(snippetSenderText2, "snippetSenderText");
        snippetSenderText2.setText(str);
        ImageView attachmentImageView = getAttachmentImageView();
        l.d(attachmentImageView, "attachmentImageView");
        C19286f.m13683U(attachmentImageView, false);
        getAttachmentImageView().clearColorFilter();
        ImageView attachmentImageView2 = getAttachmentImageView();
        l.d(attachmentImageView2, "attachmentImageView");
        attachmentImageView2.setBackgroundTintList(null);
        getSnippetContentText().setCompoundDrawablesRelativeWithIntrinsicBounds(0, 0, 0, 0);
        for (Entity entity : replySnippet.f13461c) {
            if (entity.mo34999h()) {
                setThumbnailPreview(((ImageEntity) entity).f13173i);
                TextView snippetContentText = getSnippetContentText();
                l.d(snippetContentText, "snippetContentText");
                snippetContentText.setText(getContext().getString(C2752R.string.MessageGifAttachmentPlaceholder));
            } else if (entity.mo34895l()) {
                setThumbnailPreview(((ImageEntity) entity).f13173i);
                TextView snippetContentText2 = getSnippetContentText();
                l.d(snippetContentText2, "snippetContentText");
                snippetContentText2.setText(getContext().getString(C2752R.string.MessageEntityImage));
            } else if (entity.mo34892w()) {
                setThumbnailPreview(((VideoEntity) entity).f13173i);
                TextView snippetContentText3 = getSnippetContentText();
                l.d(snippetContentText3, "snippetContentText");
                snippetContentText3.setText(getContext().getString(C2752R.string.MessageEntityVideo));
            } else if (entity.mo34893t()) {
                VCardEntity vCardEntity = (VCardEntity) entity;
                ImageView attachmentImageView3 = getAttachmentImageView();
                l.d(attachmentImageView3, "attachmentImageView");
                m35112f(attachmentImageView3, vCardEntity.f13476x, vCardEntity.f13475w, this.f13037c, this.f13038d);
                TextView snippetContentText4 = getSnippetContentText();
                l.d(snippetContentText4, "snippetContentText");
                ImageView attachmentImageView4 = getAttachmentImageView();
                l.d(attachmentImageView4, "attachmentImageView");
                Context context = attachmentImageView4.getContext();
                l.d(context, "attachmentImageView.context");
                snippetContentText4.setText(C10480a.m26010V0(vCardEntity, context));
            } else if (entity.mo34896e()) {
                ImageView attachmentImageView5 = getAttachmentImageView();
                l.d(attachmentImageView5, "attachmentImageView");
                C19286f.m13683U(attachmentImageView5, false);
                TextView snippetContentText5 = getSnippetContentText();
                l.d(snippetContentText5, "snippetContentText");
                snippetContentText5.setText(getContext().getString(C2752R.string.MessageVoiceClipAttachmentPlaceholder));
                getSnippetContentText().setCompoundDrawablesRelativeWithIntrinsicBounds(C19291g.m13535l0(getContext(), C2752R.C2753drawable.ic_inbox_voice_clip, this.f13035a ? C2752R.attr.tcx_messageOutgoingImStatus : C2752R.attr.tcx_messageIncomingText), (Drawable) null, (Drawable) null, (Drawable) null);
            } else if (entity.mo35000g()) {
                DocumentEntity documentEntity = (DocumentEntity) entity;
                TextView snippetContentText6 = getSnippetContentText();
                l.d(snippetContentText6, "snippetContentText");
                String str2 = documentEntity.f13263v;
                if (str2 == null) {
                    str2 = getContext().getString(C2752R.string.MessageEntityDocument);
                }
                snippetContentText6.setText(str2);
                ImageView attachmentImageView6 = getAttachmentImageView();
                l.d(attachmentImageView6, "attachmentImageView");
                C19286f.m13683U(attachmentImageView6, true);
                ImageView attachmentImageView7 = getAttachmentImageView();
                l.d(attachmentImageView7, "attachmentImageView");
                attachmentImageView7.setBackground(null);
                getAttachmentImageView().setImageResource(C2752R.C2753drawable.ic_attachment_document_20dp);
                getAttachmentImageView().setColorFilter(this.f13037c);
                getAttachmentImageView().setBackgroundResource(C2752R.C2753drawable.white_circle_bg);
                ImageView attachmentImageView8 = getAttachmentImageView();
                l.d(attachmentImageView8, "attachmentImageView");
                attachmentImageView8.setBackgroundTintList(ColorStateList.valueOf(this.f13038d));
            } else if (entity.mo34996o()) {
                LocationEntity locationEntity = (LocationEntity) entity;
                setThumbnailPreview(locationEntity.f13173i);
                TextView snippetContentText7 = getSnippetContentText();
                l.d(snippetContentText7, "snippetContentText");
                snippetContentText7.setText(locationEntity.f13360v);
            }
        }
        setEnabled(z);
        TextView snippetContentText8 = getSnippetContentText();
        l.d(snippetContentText8, "snippetContentText");
        snippetContentText8.setAlpha(1.0f);
        List<Entity> list = replySnippet.f13461c;
        ArrayList arrayList = new ArrayList();
        for (Entity entity2 : list) {
            Entity entity3 = entity2;
            if (!(entity2 instanceof TextEntity)) {
                entity3 = null;
            }
            TextEntity textEntity = (TextEntity) entity3;
            if (textEntity != null) {
                arrayList.add(textEntity);
            }
        }
        ArrayList arrayList2 = new ArrayList();
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            Object next = it.next();
            if (((TextEntity) next).f13465i.length() > 0) {
                arrayList2.add(next);
            }
        }
        String O = s1.u.i.O(arrayList2, StringConstant.NEW_LINE, (CharSequence) null, (CharSequence) null, 0, (CharSequence) null, C6232g.f20931b, 30);
        if (O.length() > 0) {
            TextView snippetContentText9 = getSnippetContentText();
            l.d(snippetContentText9, "snippetContentText");
            snippetContentText9.setText(C8578e0.m28344a(O));
            Iterator<T> it2 = replySnippet.f13461c.iterator();
            while (true) {
                if (!it2.hasNext()) {
                    obj = null;
                    break;
                }
                obj = it2.next();
                if (((Entity) obj).mo34894r()) {
                    break;
                }
            }
            if (!(obj instanceof TextEntity)) {
                obj = null;
            }
            TextEntity textEntity2 = (TextEntity) obj;
            if (!(textEntity2 != null && textEntity2.f13466j)) {
                return;
            }
            TextDelimiterFormatter textDelimiterFormatter = TextDelimiterFormatter.f13106b;
            TextView snippetContentText10 = getSnippetContentText();
            l.d(snippetContentText10, "snippetContentText");
            TextDelimiterFormatter.m35099b(snippetContentText10, TextDelimiterFormatter.DelimiterVisibility.REMOVE);
        }
    }

    /* renamed from: f */
    public final void m35112f(ImageView imageView, Uri uri, int i, int i2, int i3) {
        int i4 = i <= 1 ? 2131231615 : 2131231616;
        if (uri == null || l.a(uri, Uri.EMPTY)) {
            C19286f.m13683U(imageView, true);
            imageView.setBackground(null);
            imageView.setImageResource(i4);
            imageView.setColorFilter(i2);
            imageView.setBackgroundResource(C2752R.C2753drawable.white_circle_bg);
            imageView.setBackgroundTintList(ColorStateList.valueOf(i3));
            return;
        }
        C19286f.m13683U(imageView, true);
        imageView.setImageDrawable(null);
        imageView.clearColorFilter();
        imageView.setBackground(null);
        imageView.setBackgroundTintList(null);
        imageView.setImageTintList(null);
        C22234h mo8414k = C17891a1.C17902k.m15664K1(imageView.getContext()).mo8414k();
        C21852d c21852d = (C21852d) mo8414k;
        c21852d.f61767J = uri;
        c21852d.f61771N = true;
        ((C21852d) mo8414k).mo8087u(i4).mo8102f().m8978f0(AbstractC22364k.f62127d).mo8097k(i4).m8427O(imageView);
    }

    public final void setDismissActionListener(View.OnClickListener onClickListener) {
        l.e(onClickListener, "clickListener");
        getDismissButton().setOnClickListener(onClickListener);
    }

    public final void setDismissActionVisible(boolean z) {
        View dismissButton = getDismissButton();
        l.d(dismissButton, "dismissButton");
        C19286f.m13683U(dismissButton, z);
        if (z) {
            TextView snippetSenderText = getSnippetSenderText();
            l.d(snippetSenderText, "snippetSenderText");
            ViewGroup.LayoutParams layoutParams = snippetSenderText.getLayoutParams();
            Objects.requireNonNull(layoutParams, "null cannot be cast to non-null type android.widget.RelativeLayout.LayoutParams");
            RelativeLayout.LayoutParams layoutParams2 = (RelativeLayout.LayoutParams) layoutParams;
            layoutParams2.width = -1;
            TextView snippetSenderText2 = getSnippetSenderText();
            l.d(snippetSenderText2, "snippetSenderText");
            snippetSenderText2.setLayoutParams(layoutParams2);
            TextView snippetContentText = getSnippetContentText();
            l.d(snippetContentText, "snippetContentText");
            ViewGroup.LayoutParams layoutParams3 = snippetContentText.getLayoutParams();
            Objects.requireNonNull(layoutParams3, "null cannot be cast to non-null type android.widget.RelativeLayout.LayoutParams");
            RelativeLayout.LayoutParams layoutParams4 = (RelativeLayout.LayoutParams) layoutParams3;
            layoutParams4.width = -1;
            TextView snippetContentText2 = getSnippetContentText();
            l.d(snippetContentText2, "snippetContentText");
            snippetContentText2.setLayoutParams(layoutParams4);
        }
    }
}
