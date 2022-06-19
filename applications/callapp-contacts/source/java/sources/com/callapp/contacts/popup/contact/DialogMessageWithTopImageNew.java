package com.callapp.contacts.popup.contact;

import android.content.DialogInterface;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.os.Build;
import android.text.SpannableString;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Guideline;
import androidx.core.content.C0790b;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.manager.popup.DialogPopup;
import com.callapp.contacts.manager.popup.Popup;
import com.callapp.contacts.util.ThemeUtils;
import com.callapp.framework.util.StringUtils;
import com.criteo.publisher.C8217a;
import com.fasterxml.jackson.databind.annotation.JsonPOJOBuilder;
import com.mopub.common.Constants;
import io.objectbox.model.PropertyFlags;
import java.util.Objects;
import kotlin.C20128v;
import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
import kotlin.jvm.internal.DefaultConstructorMarker;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0016\u0018�� \u001b2\u00020\u00012\u00020\u0002:\u0001\u001bB\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005J\b\u0010\u0006\u001a\u00020\u0007H\u0005J\b\u0010\b\u001a\u00020\tH\u0016J\u0012\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\rH\u0016J\u0012\u0010\u000e\u001a\u00020\u000b2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0014J\u001a\u0010\u0011\u001a\u00020\r2\u0006\u0010\u0012\u001a\u00020\u00132\b\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u0016J\u0010\u0010\u0016\u001a\u00020\u000b2\u0006\u0010\u0017\u001a\u00020\u0018H\u0016J\u000e\u0010\u0019\u001a\u00020\u000b2\u0006\u0010\u001a\u001a\u00020\rR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n��¨\u0006\u001c"}, m4298d2 = {"Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew;", "Lcom/callapp/contacts/manager/popup/DialogPopup;", "Landroid/view/View$OnClickListener;", "dialogMessageBuilder", "Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;", "(Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;)V", "getLayoutResource", "", "getPopupType", "Lcom/callapp/contacts/manager/popup/Popup$DialogType;", "onClick", "", "v", "Landroid/view/View;", "onDialogCancelled", "dialog", "Landroid/content/DialogInterface;", "ovViewCreated", "inflater", "Landroid/view/LayoutInflater;", "container", "Landroid/view/ViewGroup;", "setDialogWindowSize", "window", "Landroid/view/Window;", "setupViews", "itemView", "Companion", "callapp-client_playRelease"}, m4297k = 1, m4296mv = {1, 4, 2})
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/popup/contact/DialogMessageWithTopImageNew.class */
public class DialogMessageWithTopImageNew extends DialogPopup implements View.OnClickListener {

    /* renamed from: a */
    public static final Companion f27121a = new Companion(null);

    /* renamed from: b */
    private Companion.DialogMessageWithTopImageBuilder f27122b;

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��4\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0007\n��\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\u0003\u0018��2\u00020\u0001:\u0001\u0015B\u0007\b\u0002¢\u0006\u0002\u0010\u0002Jy\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u00062\b\u0010\u0007\u001a\u0004\u0018\u00010\b2\n\b\u0001\u0010\t\u001a\u0004\u0018\u00010\b2\n\b\u0003\u0010\n\u001a\u0004\u0018\u00010\b2\n\b\u0003\u0010\u000b\u001a\u0004\u0018\u00010\b2\n\b\u0003\u0010\f\u001a\u0004\u0018\u00010\b2\b\u0010\r\u001a\u0004\u0018\u00010\u000e2\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00102\b\b\u0002\u0010\u0011\u001a\u00020\u00122\b\b\u0002\u0010\u0013\u001a\u00020\u0012¢\u0006\u0002\u0010\u0014¨\u0006\u0016"}, m4298d2 = {"Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion;", "", "()V", "setupButtonFromParentWrapper", "", "btnTextView", "Landroid/widget/TextView;", Constants.VAST_RESOURCE, "", "btnBgColor", "btnStrokeColor", "btnStrokeWidth", "btnTextColor", "btnText", "Landroid/text/SpannableString;", "textSizeDP", "", "allCapsText", "", "boldText", "(Landroid/widget/TextView;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Landroid/text/SpannableString;Ljava/lang/Float;ZZ)V", "DialogMessageWithTopImageBuilder", "callapp-client_playRelease"}, m4297k = 1, m4296mv = {1, 4, 2})
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion.class */
    public static final class Companion {

        @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��E\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0014\n\u0002\u0010\r\n\u0002\b#\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\u0007\n\u0002\b\u001b\n\u0002\u0018\u0002\n\u0002\b\u001a\n\u0002\u0018\u0002\n\u0003\b\u009b\u0001\n\u0002\u0018\u0002\n\u0002\b\u0012\u0018��2\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u0095\u0002\u001a\u00030\u0096\u0002JA\u0010\u0097\u0002\u001a\u00020��2\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u00042\b\b\u0002\u0010\u000f\u001a\u00020\u00042\b\b\u0002\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\t\u001a\u00020\u00042\b\b\u0002\u0010\f\u001a\u00020\u0004¢\u0006\u0003\u0010\u0098\u0002Jc\u0010\u0099\u0002\u001a\u00020��2\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u00192\n\b\u0002\u00109\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010B\u001a\u0004\u0018\u00010C2\b\b\u0002\u0010<\u001a\u00020=2\b\b\u0002\u00106\u001a\u00020\u00042\b\b\u0002\u0010-\u001a\u00020\u00042\b\b\u0002\u00100\u001a\u00020\u00042\b\b\u0002\u00103\u001a\u00020\u0004¢\u0006\u0003\u0010\u009a\u0002JA\u0010\u009b\u0002\u001a\u00020��2\n\b\u0002\u0010\u001e\u001a\u0004\u0018\u00010\u00042\b\b\u0002\u0010*\u001a\u00020\u00042\b\b\u0002\u0010!\u001a\u00020\u00042\b\b\u0002\u0010$\u001a\u00020\u00042\b\b\u0002\u0010'\u001a\u00020\u0004¢\u0006\u0003\u0010\u0098\u0002J\u0019\u0010\u009c\u0002\u001a\u00020��2\n\b\u0002\u0010I\u001a\u0004\u0018\u00010C¢\u0006\u0003\u0010\u009d\u0002J\u0007\u0010\u009e\u0002\u001a\u00020��JÚ\u0001\u0010\u009f\u0002\u001a\u00020��2\n\b\u0002\u0010y\u001a\u0004\u0018\u00010z2\n\b\u0002\u0010R\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010p\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010v\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010s\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u007f\u001a\u0004\u0018\u00010\u00042\u000b\b\u0002\u0010\u0082\u0001\u001a\u0004\u0018\u00010C2\n\b\u0002\u0010^\u001a\u0004\u0018\u00010_2\b\b\u0002\u0010O\u001a\u00020=2\n\b\u0002\u0010X\u001a\u0004\u0018\u00010\u00042\b\b\u0002\u0010U\u001a\u00020=2\t\b\u0002\u0010\u0088\u0001\u001a\u00020=2\b\b\u0002\u0010m\u001a\u00020\u00042\b\b\u0002\u0010d\u001a\u00020\u00042\b\b\u0002\u0010g\u001a\u00020\u00042\b\b\u0002\u0010j\u001a\u00020\u00042\u000b\b\u0002\u0010\u0085\u0001\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010[\u001a\u0004\u0018\u00010\u0004¢\u0006\u0003\u0010 \u0002Jk\u0010¡\u0002\u001a\u00020��2\u000b\b\u0002\u0010\u008b\u0001\u001a\u0004\u0018\u00010\u00192\u000b\b\u0002\u0010\u009a\u0001\u001a\u0004\u0018\u00010\u00042\u000b\b\u0002\u0010 \u0001\u001a\u0004\u0018\u00010C2\t\b\u0002\u0010¢\u0002\u001a\u00020=2\t\b\u0002\u0010\u0097\u0001\u001a\u00020\u00042\t\b\u0002\u0010\u008e\u0001\u001a\u00020\u00042\t\b\u0002\u0010\u0091\u0001\u001a\u00020\u00042\t\b\u0002\u0010\u0094\u0001\u001a\u00020\u0004¢\u0006\u0003\u0010\u009a\u0002Jé\u0001\u0010£\u0002\u001a\u00020��2\u000b\b\u0002\u0010Ê\u0001\u001a\u0004\u0018\u00010z2\u000b\b\u0002\u0010¦\u0001\u001a\u0004\u0018\u00010\u00042\u000b\b\u0002\u0010Á\u0001\u001a\u0004\u0018\u00010\u00042\u000b\b\u0002\u0010Ç\u0001\u001a\u0004\u0018\u00010\u00042\u000b\b\u0002\u0010Ä\u0001\u001a\u0004\u0018\u00010\u00042\u000b\b\u0002\u0010Í\u0001\u001a\u0004\u0018\u00010\u00042\u000b\b\u0002\u0010Ð\u0001\u001a\u0004\u0018\u00010C2\u000b\b\u0002\u0010²\u0001\u001a\u0004\u0018\u00010_2\t\b\u0002\u0010£\u0001\u001a\u00020=2\u000b\b\u0002\u0010¬\u0001\u001a\u0004\u0018\u00010\u00042\t\b\u0002\u0010©\u0001\u001a\u00020=2\t\b\u0002\u0010Ö\u0001\u001a\u00020=2\t\b\u0002\u0010¾\u0001\u001a\u00020\u00042\t\b\u0002\u0010µ\u0001\u001a\u00020\u00042\t\b\u0002\u0010¸\u0001\u001a\u00020\u00042\t\b\u0002\u0010»\u0001\u001a\u00020\u00042\u000b\b\u0002\u0010Ó\u0001\u001a\u0004\u0018\u00010\u00042\u000b\b\u0002\u0010¯\u0001\u001a\u0004\u0018\u00010\u0004¢\u0006\u0003\u0010 \u0002J^\u0010¤\u0002\u001a\u00020��2\u000b\b\u0002\u0010Ù\u0001\u001a\u0004\u0018\u00010\u00042\u000b\b\u0002\u0010è\u0001\u001a\u0004\u0018\u00010\u00042\t\b\u0002\u0010å\u0001\u001a\u00020\u00042\t\b\u0002\u0010Ü\u0001\u001a\u00020\u00042\t\b\u0002\u0010ß\u0001\u001a\u00020\u00042\t\b\u0002\u0010â\u0001\u001a\u00020\u00042\t\b\u0002\u0010ë\u0001\u001a\u00020=¢\u0006\u0003\u0010¥\u0002Jk\u0010¦\u0002\u001a\u00020��2\u000b\b\u0002\u0010î\u0001\u001a\u0004\u0018\u00010\u00192\u000b\b\u0002\u0010ý\u0001\u001a\u0004\u0018\u00010\u00042\u000b\b\u0002\u0010\u0083\u0002\u001a\u0004\u0018\u00010C2\t\b\u0002\u0010¢\u0002\u001a\u00020=2\t\b\u0002\u0010ú\u0001\u001a\u00020\u00042\t\b\u0002\u0010ñ\u0001\u001a\u00020\u00042\t\b\u0002\u0010ô\u0001\u001a\u00020\u00042\t\b\u0002\u0010÷\u0001\u001a\u00020\u0004¢\u0006\u0003\u0010\u009a\u0002JF\u0010§\u0002\u001a\u00020��2\u000b\b\u0002\u0010\u0092\u0002\u001a\u0004\u0018\u00010\u00042\t\b\u0002\u0010\u008f\u0002\u001a\u00020\u00042\t\b\u0002\u0010\u0086\u0002\u001a\u00020\u00042\t\b\u0002\u0010\u0089\u0002\u001a\u00020\u00042\t\b\u0002\u0010\u008c\u0002\u001a\u00020\u0004¢\u0006\u0003\u0010\u0098\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001a\u0010\t\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\n\u0010\u0006\"\u0004\b\u000b\u0010\bR\u001a\u0010\f\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\r\u0010\u0006\"\u0004\b\u000e\u0010\bR\u001a\u0010\u000f\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0010\u0010\u0006\"\u0004\b\u0011\u0010\bR\u001e\u0010\u0012\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u0017\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0015\u0010\u0016R\u001c\u0010\u0018\u001a\u0004\u0018\u00010\u0019X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u001a\u0010\u001b\"\u0004\b\u001c\u0010\u001dR\u001e\u0010\u001e\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u0017\u001a\u0004\b\u001f\u0010\u0014\"\u0004\b \u0010\u0016R\u001a\u0010!\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\"\u0010\u0006\"\u0004\b#\u0010\bR\u001a\u0010$\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b%\u0010\u0006\"\u0004\b&\u0010\bR\u001a\u0010'\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b(\u0010\u0006\"\u0004\b)\u0010\bR\u001a\u0010*\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b+\u0010\u0006\"\u0004\b,\u0010\bR\u001a\u0010-\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b.\u0010\u0006\"\u0004\b/\u0010\bR\u001a\u00100\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b1\u0010\u0006\"\u0004\b2\u0010\bR\u001a\u00103\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b4\u0010\u0006\"\u0004\b5\u0010\bR\u001a\u00106\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b7\u0010\u0006\"\u0004\b8\u0010\bR\u001e\u00109\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u0017\u001a\u0004\b:\u0010\u0014\"\u0004\b;\u0010\u0016R\u001a\u0010<\u001a\u00020=X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b>\u0010?\"\u0004\b@\u0010AR\u001e\u0010B\u001a\u0004\u0018\u00010CX\u0086\u000e¢\u0006\u0010\n\u0002\u0010H\u001a\u0004\bD\u0010E\"\u0004\bF\u0010GR\u001e\u0010I\u001a\u0004\u0018\u00010CX\u0086\u000e¢\u0006\u0010\n\u0002\u0010H\u001a\u0004\bJ\u0010E\"\u0004\bK\u0010GR\u001a\u0010L\u001a\u00020=X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\bM\u0010?\"\u0004\bN\u0010AR\u001a\u0010O\u001a\u00020=X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\bP\u0010?\"\u0004\bQ\u0010AR\u001e\u0010R\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u0017\u001a\u0004\bS\u0010\u0014\"\u0004\bT\u0010\u0016R\u001a\u0010U\u001a\u00020=X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\bV\u0010?\"\u0004\bW\u0010AR\u001e\u0010X\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u0017\u001a\u0004\bY\u0010\u0014\"\u0004\bZ\u0010\u0016R\u001e\u0010[\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u0017\u001a\u0004\b\\\u0010\u0014\"\u0004\b]\u0010\u0016R\u001c\u0010^\u001a\u0004\u0018\u00010_X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b`\u0010a\"\u0004\bb\u0010cR\u001a\u0010d\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\be\u0010\u0006\"\u0004\bf\u0010\bR\u001a\u0010g\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\bh\u0010\u0006\"\u0004\bi\u0010\bR\u001a\u0010j\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\bk\u0010\u0006\"\u0004\bl\u0010\bR\u001a\u0010m\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\bn\u0010\u0006\"\u0004\bo\u0010\bR\u001e\u0010p\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u0017\u001a\u0004\bq\u0010\u0014\"\u0004\br\u0010\u0016R\u001e\u0010s\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u0017\u001a\u0004\bt\u0010\u0014\"\u0004\bu\u0010\u0016R\u001e\u0010v\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u0017\u001a\u0004\bw\u0010\u0014\"\u0004\bx\u0010\u0016R\u001c\u0010y\u001a\u0004\u0018\u00010zX\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b{\u0010|\"\u0004\b}\u0010~R \u0010\u007f\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u0012\n\u0002\u0010\u0017\u001a\u0005\b\u0080\u0001\u0010\u0014\"\u0005\b\u0081\u0001\u0010\u0016R!\u0010\u0082\u0001\u001a\u0004\u0018\u00010CX\u0086\u000e¢\u0006\u0012\n\u0002\u0010H\u001a\u0005\b\u0083\u0001\u0010E\"\u0005\b\u0084\u0001\u0010GR!\u0010\u0085\u0001\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u0012\n\u0002\u0010\u0017\u001a\u0005\b\u0086\u0001\u0010\u0014\"\u0005\b\u0087\u0001\u0010\u0016R\u001d\u0010\u0088\u0001\u001a\u00020=X\u0086\u000e¢\u0006\u0010\n��\u001a\u0005\b\u0089\u0001\u0010?\"\u0005\b\u008a\u0001\u0010AR\u001f\u0010\u008b\u0001\u001a\u0004\u0018\u00010\u0019X\u0086\u000e¢\u0006\u0010\n��\u001a\u0005\b\u008c\u0001\u0010\u001b\"\u0005\b\u008d\u0001\u0010\u001dR\u001d\u0010\u008e\u0001\u001a\u00020\u0004X\u0086\u000e¢\u0006\u0010\n��\u001a\u0005\b\u008f\u0001\u0010\u0006\"\u0005\b\u0090\u0001\u0010\bR\u001d\u0010\u0091\u0001\u001a\u00020\u0004X\u0086\u000e¢\u0006\u0010\n��\u001a\u0005\b\u0092\u0001\u0010\u0006\"\u0005\b\u0093\u0001\u0010\bR\u001d\u0010\u0094\u0001\u001a\u00020\u0004X\u0086\u000e¢\u0006\u0010\n��\u001a\u0005\b\u0095\u0001\u0010\u0006\"\u0005\b\u0096\u0001\u0010\bR\u001d\u0010\u0097\u0001\u001a\u00020\u0004X\u0086\u000e¢\u0006\u0010\n��\u001a\u0005\b\u0098\u0001\u0010\u0006\"\u0005\b\u0099\u0001\u0010\bR!\u0010\u009a\u0001\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u0012\n\u0002\u0010\u0017\u001a\u0005\b\u009b\u0001\u0010\u0014\"\u0005\b\u009c\u0001\u0010\u0016R\u001d\u0010\u009d\u0001\u001a\u00020=X\u0086\u000e¢\u0006\u0010\n��\u001a\u0005\b\u009e\u0001\u0010?\"\u0005\b\u009f\u0001\u0010AR!\u0010 \u0001\u001a\u0004\u0018\u00010CX\u0086\u000e¢\u0006\u0012\n\u0002\u0010H\u001a\u0005\b¡\u0001\u0010E\"\u0005\b¢\u0001\u0010GR\u001d\u0010£\u0001\u001a\u00020=X\u0086\u000e¢\u0006\u0010\n��\u001a\u0005\b¤\u0001\u0010?\"\u0005\b¥\u0001\u0010AR!\u0010¦\u0001\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u0012\n\u0002\u0010\u0017\u001a\u0005\b§\u0001\u0010\u0014\"\u0005\b¨\u0001\u0010\u0016R\u001d\u0010©\u0001\u001a\u00020=X\u0086\u000e¢\u0006\u0010\n��\u001a\u0005\bª\u0001\u0010?\"\u0005\b«\u0001\u0010AR!\u0010¬\u0001\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u0012\n\u0002\u0010\u0017\u001a\u0005\b\u00ad\u0001\u0010\u0014\"\u0005\b®\u0001\u0010\u0016R!\u0010¯\u0001\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u0012\n\u0002\u0010\u0017\u001a\u0005\b°\u0001\u0010\u0014\"\u0005\b±\u0001\u0010\u0016R\u001f\u0010²\u0001\u001a\u0004\u0018\u00010_X\u0086\u000e¢\u0006\u0010\n��\u001a\u0005\b³\u0001\u0010a\"\u0005\b´\u0001\u0010cR\u001d\u0010µ\u0001\u001a\u00020\u0004X\u0086\u000e¢\u0006\u0010\n��\u001a\u0005\b¶\u0001\u0010\u0006\"\u0005\b·\u0001\u0010\bR\u001d\u0010¸\u0001\u001a\u00020\u0004X\u0086\u000e¢\u0006\u0010\n��\u001a\u0005\b¹\u0001\u0010\u0006\"\u0005\bº\u0001\u0010\bR\u001d\u0010»\u0001\u001a\u00020\u0004X\u0086\u000e¢\u0006\u0010\n��\u001a\u0005\b¼\u0001\u0010\u0006\"\u0005\b½\u0001\u0010\bR\u001d\u0010¾\u0001\u001a\u00020\u0004X\u0086\u000e¢\u0006\u0010\n��\u001a\u0005\b¿\u0001\u0010\u0006\"\u0005\bÀ\u0001\u0010\bR!\u0010Á\u0001\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u0012\n\u0002\u0010\u0017\u001a\u0005\bÂ\u0001\u0010\u0014\"\u0005\bÃ\u0001\u0010\u0016R!\u0010Ä\u0001\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u0012\n\u0002\u0010\u0017\u001a\u0005\bÅ\u0001\u0010\u0014\"\u0005\bÆ\u0001\u0010\u0016R!\u0010Ç\u0001\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u0012\n\u0002\u0010\u0017\u001a\u0005\bÈ\u0001\u0010\u0014\"\u0005\bÉ\u0001\u0010\u0016R\u001f\u0010Ê\u0001\u001a\u0004\u0018\u00010zX\u0086\u000e¢\u0006\u0010\n��\u001a\u0005\bË\u0001\u0010|\"\u0005\bÌ\u0001\u0010~R!\u0010Í\u0001\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u0012\n\u0002\u0010\u0017\u001a\u0005\bÎ\u0001\u0010\u0014\"\u0005\bÏ\u0001\u0010\u0016R!\u0010Ð\u0001\u001a\u0004\u0018\u00010CX\u0086\u000e¢\u0006\u0012\n\u0002\u0010H\u001a\u0005\bÑ\u0001\u0010E\"\u0005\bÒ\u0001\u0010GR!\u0010Ó\u0001\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u0012\n\u0002\u0010\u0017\u001a\u0005\bÔ\u0001\u0010\u0014\"\u0005\bÕ\u0001\u0010\u0016R\u001d\u0010Ö\u0001\u001a\u00020=X\u0086\u000e¢\u0006\u0010\n��\u001a\u0005\b×\u0001\u0010?\"\u0005\bØ\u0001\u0010AR!\u0010Ù\u0001\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u0012\n\u0002\u0010\u0017\u001a\u0005\bÚ\u0001\u0010\u0014\"\u0005\bÛ\u0001\u0010\u0016R\u001d\u0010Ü\u0001\u001a\u00020\u0004X\u0086\u000e¢\u0006\u0010\n��\u001a\u0005\bÝ\u0001\u0010\u0006\"\u0005\bÞ\u0001\u0010\bR\u001d\u0010ß\u0001\u001a\u00020\u0004X\u0086\u000e¢\u0006\u0010\n��\u001a\u0005\bà\u0001\u0010\u0006\"\u0005\bá\u0001\u0010\bR\u001d\u0010â\u0001\u001a\u00020\u0004X\u0086\u000e¢\u0006\u0010\n��\u001a\u0005\bã\u0001\u0010\u0006\"\u0005\bä\u0001\u0010\bR\u001d\u0010å\u0001\u001a\u00020\u0004X\u0086\u000e¢\u0006\u0010\n��\u001a\u0005\bæ\u0001\u0010\u0006\"\u0005\bç\u0001\u0010\bR!\u0010è\u0001\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u0012\n\u0002\u0010\u0017\u001a\u0005\bé\u0001\u0010\u0014\"\u0005\bê\u0001\u0010\u0016R\u001d\u0010ë\u0001\u001a\u00020=X\u0086\u000e¢\u0006\u0010\n��\u001a\u0005\bì\u0001\u0010?\"\u0005\bí\u0001\u0010AR\u001f\u0010î\u0001\u001a\u0004\u0018\u00010\u0019X\u0086\u000e¢\u0006\u0010\n��\u001a\u0005\bï\u0001\u0010\u001b\"\u0005\bð\u0001\u0010\u001dR\u001d\u0010ñ\u0001\u001a\u00020\u0004X\u0086\u000e¢\u0006\u0010\n��\u001a\u0005\bò\u0001\u0010\u0006\"\u0005\bó\u0001\u0010\bR\u001d\u0010ô\u0001\u001a\u00020\u0004X\u0086\u000e¢\u0006\u0010\n��\u001a\u0005\bõ\u0001\u0010\u0006\"\u0005\bö\u0001\u0010\bR\u001d\u0010÷\u0001\u001a\u00020\u0004X\u0086\u000e¢\u0006\u0010\n��\u001a\u0005\bø\u0001\u0010\u0006\"\u0005\bù\u0001\u0010\bR\u001d\u0010ú\u0001\u001a\u00020\u0004X\u0086\u000e¢\u0006\u0010\n��\u001a\u0005\bû\u0001\u0010\u0006\"\u0005\bü\u0001\u0010\bR!\u0010ý\u0001\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u0012\n\u0002\u0010\u0017\u001a\u0005\bþ\u0001\u0010\u0014\"\u0005\bÿ\u0001\u0010\u0016R\u001d\u0010\u0080\u0002\u001a\u00020=X\u0086\u000e¢\u0006\u0010\n��\u001a\u0005\b\u0081\u0002\u0010?\"\u0005\b\u0082\u0002\u0010AR!\u0010\u0083\u0002\u001a\u0004\u0018\u00010CX\u0086\u000e¢\u0006\u0012\n\u0002\u0010H\u001a\u0005\b\u0084\u0002\u0010E\"\u0005\b\u0085\u0002\u0010GR\u001d\u0010\u0086\u0002\u001a\u00020\u0004X\u0086\u000e¢\u0006\u0010\n��\u001a\u0005\b\u0087\u0002\u0010\u0006\"\u0005\b\u0088\u0002\u0010\bR\u001d\u0010\u0089\u0002\u001a\u00020\u0004X\u0086\u000e¢\u0006\u0010\n��\u001a\u0005\b\u008a\u0002\u0010\u0006\"\u0005\b\u008b\u0002\u0010\bR\u001d\u0010\u008c\u0002\u001a\u00020\u0004X\u0086\u000e¢\u0006\u0010\n��\u001a\u0005\b\u008d\u0002\u0010\u0006\"\u0005\b\u008e\u0002\u0010\bR\u001d\u0010\u008f\u0002\u001a\u00020\u0004X\u0086\u000e¢\u0006\u0010\n��\u001a\u0005\b\u0090\u0002\u0010\u0006\"\u0005\b\u0091\u0002\u0010\bR!\u0010\u0092\u0002\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u0012\n\u0002\u0010\u0017\u001a\u0005\b\u0093\u0002\u0010\u0014\"\u0005\b\u0094\u0002\u0010\u0016¨\u0006¨\u0002"}, m4298d2 = {"Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;", "", "()V", "bottomImageMarginBottom", "", "getBottomImageMarginBottom", "()I", "setBottomImageMarginBottom", "(I)V", "bottomImageMarginLeft", "getBottomImageMarginLeft", "setBottomImageMarginLeft", "bottomImageMarginRight", "getBottomImageMarginRight", "setBottomImageMarginRight", "bottomImageMarginTop", "getBottomImageMarginTop", "setBottomImageMarginTop", "bottomImageResource", "getBottomImageResource", "()Ljava/lang/Integer;", "setBottomImageResource", "(Ljava/lang/Integer;)V", "Ljava/lang/Integer;", "bottomMessage", "", "getBottomMessage", "()Ljava/lang/CharSequence;", "setBottomMessage", "(Ljava/lang/CharSequence;)V", "bottomMessageImage", "getBottomMessageImage", "setBottomMessageImage", "bottomMessageImageMarginBottom", "getBottomMessageImageMarginBottom", "setBottomMessageImageMarginBottom", "bottomMessageImageMarginLeft", "getBottomMessageImageMarginLeft", "setBottomMessageImageMarginLeft", "bottomMessageImageMarginRight", "getBottomMessageImageMarginRight", "setBottomMessageImageMarginRight", "bottomMessageImageMarginTop", "getBottomMessageImageMarginTop", "setBottomMessageImageMarginTop", "bottomMessageMarginBottom", "getBottomMessageMarginBottom", "setBottomMessageMarginBottom", "bottomMessageMarginLeft", "getBottomMessageMarginLeft", "setBottomMessageMarginLeft", "bottomMessageMarginRight", "getBottomMessageMarginRight", "setBottomMessageMarginRight", "bottomMessageMarginTop", "getBottomMessageMarginTop", "setBottomMessageMarginTop", "bottomMessageTextColor", "getBottomMessageTextColor", "setBottomMessageTextColor", "bottomMessageTextIsBold", "", "getBottomMessageTextIsBold", "()Z", "setBottomMessageTextIsBold", "(Z)V", "bottomMessageTextSize", "", "getBottomMessageTextSize", "()Ljava/lang/Float;", "setBottomMessageTextSize", "(Ljava/lang/Float;)V", "Ljava/lang/Float;", "buttonPositioning", "getButtonPositioning", "setButtonPositioning", "closeButtonVisibility", "getCloseButtonVisibility", "setCloseButtonVisibility", "leftBtnAllCaps", "getLeftBtnAllCaps", "setLeftBtnAllCaps", "leftBtnBackgroundColor", "getLeftBtnBackgroundColor", "setLeftBtnBackgroundColor", "leftBtnBold", "getLeftBtnBold", "setLeftBtnBold", "leftBtnGravity", "getLeftBtnGravity", "setLeftBtnGravity", "leftBtnHeight", "getLeftBtnHeight", "setLeftBtnHeight", "leftBtnListener", "Landroid/view/View$OnClickListener;", "getLeftBtnListener", "()Landroid/view/View$OnClickListener;", "setLeftBtnListener", "(Landroid/view/View$OnClickListener;)V", "leftBtnMarginBottom", "getLeftBtnMarginBottom", "setLeftBtnMarginBottom", "leftBtnMarginLeft", "getLeftBtnMarginLeft", "setLeftBtnMarginLeft", "leftBtnMarginRight", "getLeftBtnMarginRight", "setLeftBtnMarginRight", "leftBtnMarginTop", "getLeftBtnMarginTop", "setLeftBtnMarginTop", "leftBtnResource", "getLeftBtnResource", "setLeftBtnResource", "leftBtnStrokeColor", "getLeftBtnStrokeColor", "setLeftBtnStrokeColor", "leftBtnStrokeWidth", "getLeftBtnStrokeWidth", "setLeftBtnStrokeWidth", "leftBtnText", "Landroid/text/SpannableString;", "getLeftBtnText", "()Landroid/text/SpannableString;", "setLeftBtnText", "(Landroid/text/SpannableString;)V", "leftBtnTextColor", "getLeftBtnTextColor", "setLeftBtnTextColor", "leftBtnTextSize", "getLeftBtnTextSize", "setLeftBtnTextSize", "leftBtnWidth", "getLeftBtnWidth", "setLeftBtnWidth", "leftWrapContentWidth", "getLeftWrapContentWidth", "setLeftWrapContentWidth", "message", "getMessage", "setMessage", "messageMarginBottom", "getMessageMarginBottom", "setMessageMarginBottom", "messageMarginLeft", "getMessageMarginLeft", "setMessageMarginLeft", "messageMarginRight", "getMessageMarginRight", "setMessageMarginRight", "messageMarginTop", "getMessageMarginTop", "setMessageMarginTop", "messageTextColor", "getMessageTextColor", "setMessageTextColor", "messageTextIsBold", "getMessageTextIsBold", "setMessageTextIsBold", "messageTextSize", "getMessageTextSize", "setMessageTextSize", "rightBtnAllCaps", "getRightBtnAllCaps", "setRightBtnAllCaps", "rightBtnBackgroundColor", "getRightBtnBackgroundColor", "setRightBtnBackgroundColor", "rightBtnBold", "getRightBtnBold", "setRightBtnBold", "rightBtnGravity", "getRightBtnGravity", "setRightBtnGravity", "rightBtnHeight", "getRightBtnHeight", "setRightBtnHeight", "rightBtnListener", "getRightBtnListener", "setRightBtnListener", "rightBtnMarginBottom", "getRightBtnMarginBottom", "setRightBtnMarginBottom", "rightBtnMarginLeft", "getRightBtnMarginLeft", "setRightBtnMarginLeft", "rightBtnMarginRight", "getRightBtnMarginRight", "setRightBtnMarginRight", "rightBtnMarginTop", "getRightBtnMarginTop", "setRightBtnMarginTop", "rightBtnResource", "getRightBtnResource", "setRightBtnResource", "rightBtnStrokeColor", "getRightBtnStrokeColor", "setRightBtnStrokeColor", "rightBtnStrokeWidth", "getRightBtnStrokeWidth", "setRightBtnStrokeWidth", "rightBtnText", "getRightBtnText", "setRightBtnText", "rightBtnTextColor", "getRightBtnTextColor", "setRightBtnTextColor", "rightBtnTextSize", "getRightBtnTextSize", "setRightBtnTextSize", "rightBtnWidth", "getRightBtnWidth", "setRightBtnWidth", "rightWrapContentWidth", "getRightWrapContentWidth", "setRightWrapContentWidth", "shapeBackgroundColor", "getShapeBackgroundColor", "setShapeBackgroundColor", "shapePaddingBottom", "getShapePaddingBottom", "setShapePaddingBottom", "shapePaddingLeft", "getShapePaddingLeft", "setShapePaddingLeft", "shapePaddingRight", "getShapePaddingRight", "setShapePaddingRight", "shapePaddingTop", "getShapePaddingTop", "setShapePaddingTop", "shapeStrokeColor", "getShapeStrokeColor", "setShapeStrokeColor", "shapeWrapContent", "getShapeWrapContent", "setShapeWrapContent", "title", "getTitle", "setTitle", "titleMarginBottom", "getTitleMarginBottom", "setTitleMarginBottom", "titleMarginLeft", "getTitleMarginLeft", "setTitleMarginLeft", "titleMarginRight", "getTitleMarginRight", "setTitleMarginRight", "titleMarginTop", "getTitleMarginTop", "setTitleMarginTop", "titleTextColor", "getTitleTextColor", "setTitleTextColor", "titleTextIsBold", "getTitleTextIsBold", "setTitleTextIsBold", "titleTextSize", "getTitleTextSize", "setTitleTextSize", "topImageMarginBottom", "getTopImageMarginBottom", "setTopImageMarginBottom", "topImageMarginLeft", "getTopImageMarginLeft", "setTopImageMarginLeft", "topImageMarginRight", "getTopImageMarginRight", "setTopImageMarginRight", "topImageMarginTop", "getTopImageMarginTop", "setTopImageMarginTop", "topImageResource", "getTopImageResource", "setTopImageResource", JsonPOJOBuilder.DEFAULT_BUILD_METHOD, "Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew;", "withBottomImageResource", "(Ljava/lang/Integer;IIII)Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;", "withBottomMessage", "(Ljava/lang/CharSequence;Ljava/lang/Integer;Ljava/lang/Float;ZIIII)Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;", "withBottomMessageImage", "withButtonPositioning", "(Ljava/lang/Float;)Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;", "withCloseButton", "withLeftButton", "(Landroid/text/SpannableString;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Float;Landroid/view/View$OnClickListener;ZLjava/lang/Integer;ZZIIIILjava/lang/Integer;Ljava/lang/Integer;)Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;", "withMessage", "isTextBold", "withRightButton", "withShape", "(Ljava/lang/Integer;Ljava/lang/Integer;IIIIZ)Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;", "withTitle", "withTopImageResource", "callapp-client_playRelease"}, m4297k = 1, m4296mv = {1, 4, 2})
        /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder.class */
        public static final class DialogMessageWithTopImageBuilder {

            /* renamed from: A */
            private View.OnClickListener f27123A;

            /* renamed from: B */
            private boolean f27124B;

            /* renamed from: C */
            private boolean f27125C;

            /* renamed from: D */
            private boolean f27126D;

            /* renamed from: E */
            private int f27127E;

            /* renamed from: F */
            private int f27128F;

            /* renamed from: G */
            private int f27129G;

            /* renamed from: H */
            private int f27130H;

            /* renamed from: I */
            private Integer f27131I;

            /* renamed from: J */
            private Integer f27132J;

            /* renamed from: K */
            private SpannableString f27133K;

            /* renamed from: L */
            private Integer f27134L;

            /* renamed from: M */
            private Integer f27135M;

            /* renamed from: O */
            private Integer f27137O;

            /* renamed from: P */
            private Integer f27138P;

            /* renamed from: Q */
            private Integer f27139Q;

            /* renamed from: R */
            private Float f27140R;

            /* renamed from: S */
            private View.OnClickListener f27141S;

            /* renamed from: T */
            private boolean f27142T;

            /* renamed from: U */
            private boolean f27143U;

            /* renamed from: V */
            private boolean f27144V;

            /* renamed from: W */
            private int f27145W;

            /* renamed from: X */
            private int f27146X;

            /* renamed from: Y */
            private int f27147Y;

            /* renamed from: Z */
            private int f27148Z;

            /* renamed from: a */
            public Float f27149a;

            /* renamed from: aA */
            private Integer f27150aA;

            /* renamed from: aB */
            private int f27151aB;

            /* renamed from: aC */
            private int f27152aC;

            /* renamed from: aD */
            private int f27153aD;

            /* renamed from: aE */
            private int f27154aE;

            /* renamed from: aF */
            private boolean f27155aF;

            /* renamed from: aa */
            private Integer f27156aa;

            /* renamed from: ab */
            private Integer f27157ab;

            /* renamed from: ac */
            private CharSequence f27158ac;

            /* renamed from: ad */
            private Integer f27159ad;

            /* renamed from: ae */
            private Float f27160ae;

            /* renamed from: af */
            private boolean f27161af;

            /* renamed from: ag */
            private int f27162ag;

            /* renamed from: ah */
            private int f27163ah;

            /* renamed from: ai */
            private int f27164ai;

            /* renamed from: aj */
            private int f27165aj;

            /* renamed from: ak */
            private CharSequence f27166ak;

            /* renamed from: al */
            private Integer f27167al;

            /* renamed from: am */
            private Float f27168am;

            /* renamed from: an */
            private boolean f27169an;

            /* renamed from: ao */
            private int f27170ao;

            /* renamed from: ap */
            private int f27171ap;

            /* renamed from: aq */
            private int f27172aq;

            /* renamed from: ar */
            private int f27173ar;

            /* renamed from: as */
            private CharSequence f27174as;

            /* renamed from: at */
            private Integer f27175at;

            /* renamed from: au */
            private Float f27176au;

            /* renamed from: av */
            private boolean f27177av;

            /* renamed from: aw */
            private int f27178aw;

            /* renamed from: ax */
            private int f27179ax;

            /* renamed from: ay */
            private int f27180ay;

            /* renamed from: az */
            private int f27181az;

            /* renamed from: c */
            private int f27183c;

            /* renamed from: d */
            private int f27184d;

            /* renamed from: e */
            private int f27185e;

            /* renamed from: f */
            private int f27186f;

            /* renamed from: h */
            private int f27188h;

            /* renamed from: i */
            private int f27189i;

            /* renamed from: j */
            private int f27190j;

            /* renamed from: k */
            private int f27191k;

            /* renamed from: n */
            private int f27194n;

            /* renamed from: o */
            private int f27195o;

            /* renamed from: p */
            private int f27196p;

            /* renamed from: q */
            private int f27197q;

            /* renamed from: r */
            private boolean f27198r;

            /* renamed from: s */
            private SpannableString f27199s;

            /* renamed from: t */
            private Integer f27200t;

            /* renamed from: u */
            private Integer f27201u;

            /* renamed from: w */
            private Integer f27203w;

            /* renamed from: x */
            private Integer f27204x;

            /* renamed from: y */
            private Integer f27205y;

            /* renamed from: z */
            private Float f27206z;

            /* renamed from: b */
            private Integer f27182b = 0;

            /* renamed from: g */
            private Integer f27187g = 0;

            /* renamed from: l */
            private Integer f27192l = 0;

            /* renamed from: m */
            private Integer f27193m = 0;

            /* renamed from: v */
            private Integer f27202v = 0;

            /* renamed from: N */
            private Integer f27136N = 0;

            /* renamed from: a */
            public static /* synthetic */ DialogMessageWithTopImageBuilder m27966a(DialogMessageWithTopImageBuilder dialogMessageWithTopImageBuilder, int i, int i2, int i3, int i4, boolean z, int i5) {
                if ((i5 & 4) != 0) {
                    i = 0;
                }
                if ((i5 & 8) != 0) {
                    i2 = 0;
                }
                if ((i5 & 16) != 0) {
                    i3 = 0;
                }
                if ((i5 & 32) != 0) {
                    i4 = 0;
                }
                if ((i5 & 64) != 0) {
                    z = false;
                }
                dialogMessageWithTopImageBuilder.f27192l = null;
                dialogMessageWithTopImageBuilder.f27193m = null;
                dialogMessageWithTopImageBuilder.f27194n = i;
                dialogMessageWithTopImageBuilder.f27195o = i2;
                dialogMessageWithTopImageBuilder.f27196p = i3;
                dialogMessageWithTopImageBuilder.f27197q = i4;
                dialogMessageWithTopImageBuilder.f27198r = z;
                return dialogMessageWithTopImageBuilder;
            }

            /* renamed from: a */
            public static /* synthetic */ DialogMessageWithTopImageBuilder m27965a(DialogMessageWithTopImageBuilder dialogMessageWithTopImageBuilder, SpannableString spannableString, Integer num, Integer num2, Integer num3, Integer num4, Integer num5, Float f, View.OnClickListener onClickListener, boolean z, Integer num6, boolean z2, int i, int i2, int i3, Integer num7, Integer num8, int i4) {
                if ((i4 & 1) != 0) {
                    spannableString = null;
                }
                if ((i4 & 2) != 0) {
                    num = null;
                }
                if ((i4 & 4) != 0) {
                    num2 = null;
                }
                if ((i4 & 8) != 0) {
                    num3 = null;
                }
                if ((i4 & 16) != 0) {
                    num4 = null;
                }
                if ((i4 & 32) != 0) {
                    num5 = null;
                }
                if ((i4 & 64) != 0) {
                    f = null;
                }
                if ((i4 & 128) != 0) {
                    onClickListener = null;
                }
                if ((i4 & PropertyFlags.INDEX_PARTIAL_SKIP_NULL) != 0) {
                    z = false;
                }
                if ((i4 & 512) != 0) {
                    num6 = null;
                }
                if ((i4 & 1024) != 0) {
                    z2 = false;
                }
                if ((i4 & 4096) != 0) {
                    i = 0;
                }
                if ((i4 & 16384) != 0) {
                    i2 = 0;
                }
                if ((i4 & 32768) != 0) {
                    i3 = 0;
                }
                if ((i4 & 65536) != 0) {
                    num7 = null;
                }
                if ((i4 & 131072) != 0) {
                    num8 = null;
                }
                dialogMessageWithTopImageBuilder.f27199s = spannableString;
                dialogMessageWithTopImageBuilder.f27200t = num;
                dialogMessageWithTopImageBuilder.f27201u = num2;
                dialogMessageWithTopImageBuilder.f27202v = num3;
                dialogMessageWithTopImageBuilder.f27204x = num4;
                dialogMessageWithTopImageBuilder.f27205y = num5;
                dialogMessageWithTopImageBuilder.f27206z = f;
                dialogMessageWithTopImageBuilder.f27123A = onClickListener;
                dialogMessageWithTopImageBuilder.f27124B = z;
                dialogMessageWithTopImageBuilder.f27203w = num6;
                dialogMessageWithTopImageBuilder.f27125C = z2;
                dialogMessageWithTopImageBuilder.f27126D = false;
                dialogMessageWithTopImageBuilder.f27127E = i;
                dialogMessageWithTopImageBuilder.f27128F = 0;
                dialogMessageWithTopImageBuilder.f27129G = i2;
                dialogMessageWithTopImageBuilder.f27130H = i3;
                dialogMessageWithTopImageBuilder.f27131I = num7;
                dialogMessageWithTopImageBuilder.f27132J = num8;
                return dialogMessageWithTopImageBuilder;
            }

            /* renamed from: a */
            public static /* synthetic */ DialogMessageWithTopImageBuilder m27964a(DialogMessageWithTopImageBuilder dialogMessageWithTopImageBuilder, SpannableString spannableString, Integer num, Integer num2, Integer num3, Integer num4, Integer num5, Float f, View.OnClickListener onClickListener, boolean z, Integer num6, boolean z2, boolean z3, int i, int i2, int i3, Integer num7, Integer num8, int i4) {
                if ((i4 & 1) != 0) {
                    spannableString = null;
                }
                if ((i4 & 2) != 0) {
                    num = null;
                }
                if ((i4 & 4) != 0) {
                    num2 = null;
                }
                if ((i4 & 8) != 0) {
                    num3 = null;
                }
                if ((i4 & 16) != 0) {
                    num4 = null;
                }
                if ((i4 & 32) != 0) {
                    num5 = null;
                }
                if ((i4 & 64) != 0) {
                    f = null;
                }
                if ((i4 & 128) != 0) {
                    onClickListener = null;
                }
                if ((i4 & PropertyFlags.INDEX_PARTIAL_SKIP_NULL) != 0) {
                    z = false;
                }
                if ((i4 & 512) != 0) {
                    num6 = null;
                }
                if ((i4 & 1024) != 0) {
                    z2 = false;
                }
                if ((i4 & 2048) != 0) {
                    z3 = false;
                }
                if ((i4 & 4096) != 0) {
                    i = 0;
                }
                if ((i4 & 16384) != 0) {
                    i2 = 0;
                }
                if ((i4 & 32768) != 0) {
                    i3 = 0;
                }
                if ((i4 & 65536) != 0) {
                    num7 = null;
                }
                if ((i4 & 131072) != 0) {
                    num8 = null;
                }
                dialogMessageWithTopImageBuilder.f27133K = spannableString;
                dialogMessageWithTopImageBuilder.f27134L = num;
                dialogMessageWithTopImageBuilder.f27135M = num2;
                dialogMessageWithTopImageBuilder.f27136N = num3;
                dialogMessageWithTopImageBuilder.f27138P = num4;
                dialogMessageWithTopImageBuilder.f27139Q = num5;
                dialogMessageWithTopImageBuilder.f27140R = f;
                dialogMessageWithTopImageBuilder.f27141S = onClickListener;
                dialogMessageWithTopImageBuilder.f27142T = z;
                dialogMessageWithTopImageBuilder.f27137O = num6;
                dialogMessageWithTopImageBuilder.f27143U = z2;
                dialogMessageWithTopImageBuilder.f27144V = z3;
                dialogMessageWithTopImageBuilder.f27145W = i;
                dialogMessageWithTopImageBuilder.f27146X = 0;
                dialogMessageWithTopImageBuilder.f27147Y = i2;
                dialogMessageWithTopImageBuilder.f27148Z = i3;
                dialogMessageWithTopImageBuilder.f27156aa = num7;
                dialogMessageWithTopImageBuilder.f27157ab = num8;
                return dialogMessageWithTopImageBuilder;
            }

            /* renamed from: a */
            public static /* synthetic */ DialogMessageWithTopImageBuilder m27963a(DialogMessageWithTopImageBuilder dialogMessageWithTopImageBuilder, CharSequence charSequence, Integer num) {
                dialogMessageWithTopImageBuilder.f27174as = charSequence;
                dialogMessageWithTopImageBuilder.f27175at = num;
                dialogMessageWithTopImageBuilder.f27176au = null;
                dialogMessageWithTopImageBuilder.f27177av = false;
                dialogMessageWithTopImageBuilder.f27178aw = 10;
                dialogMessageWithTopImageBuilder.f27179ax = 0;
                dialogMessageWithTopImageBuilder.f27180ay = 30;
                dialogMessageWithTopImageBuilder.f27181az = 0;
                return dialogMessageWithTopImageBuilder;
            }

            /* renamed from: a */
            public static /* synthetic */ DialogMessageWithTopImageBuilder m27962a(DialogMessageWithTopImageBuilder dialogMessageWithTopImageBuilder, CharSequence charSequence, Integer num, int i) {
                dialogMessageWithTopImageBuilder.f27166ak = charSequence;
                dialogMessageWithTopImageBuilder.f27167al = num;
                dialogMessageWithTopImageBuilder.f27168am = null;
                dialogMessageWithTopImageBuilder.f27169an = false;
                dialogMessageWithTopImageBuilder.f27170ao = i;
                dialogMessageWithTopImageBuilder.f27171ap = 0;
                dialogMessageWithTopImageBuilder.f27172aq = 0;
                dialogMessageWithTopImageBuilder.f27173ar = 0;
                return dialogMessageWithTopImageBuilder;
            }

            /* renamed from: a */
            public static /* synthetic */ DialogMessageWithTopImageBuilder m27961a(DialogMessageWithTopImageBuilder dialogMessageWithTopImageBuilder, CharSequence charSequence, Integer num, boolean z, int i, int i2) {
                if ((i2 & 1) != 0) {
                    charSequence = null;
                }
                if ((i2 & 2) != 0) {
                    num = null;
                }
                if ((i2 & 8) != 0) {
                    z = false;
                }
                if ((i2 & 16) != 0) {
                    i = 0;
                }
                dialogMessageWithTopImageBuilder.f27158ac = charSequence;
                dialogMessageWithTopImageBuilder.f27159ad = num;
                dialogMessageWithTopImageBuilder.f27160ae = null;
                dialogMessageWithTopImageBuilder.f27161af = z;
                dialogMessageWithTopImageBuilder.f27162ag = i;
                dialogMessageWithTopImageBuilder.f27163ah = 0;
                dialogMessageWithTopImageBuilder.f27164ai = 0;
                dialogMessageWithTopImageBuilder.f27165aj = 0;
                return dialogMessageWithTopImageBuilder;
            }

            /* renamed from: a */
            public static /* synthetic */ DialogMessageWithTopImageBuilder m27960a(DialogMessageWithTopImageBuilder dialogMessageWithTopImageBuilder, Integer num) {
                dialogMessageWithTopImageBuilder.f27150aA = num;
                dialogMessageWithTopImageBuilder.f27151aB = 10;
                dialogMessageWithTopImageBuilder.f27152aC = 0;
                dialogMessageWithTopImageBuilder.f27153aD = 0;
                dialogMessageWithTopImageBuilder.f27154aE = 0;
                return dialogMessageWithTopImageBuilder;
            }

            /* renamed from: b */
            public static /* synthetic */ DialogMessageWithTopImageBuilder m27959b(DialogMessageWithTopImageBuilder dialogMessageWithTopImageBuilder, Integer num) {
                dialogMessageWithTopImageBuilder.f27182b = num;
                dialogMessageWithTopImageBuilder.f27183c = 0;
                dialogMessageWithTopImageBuilder.f27184d = 0;
                dialogMessageWithTopImageBuilder.f27185e = 0;
                dialogMessageWithTopImageBuilder.f27186f = 0;
                return dialogMessageWithTopImageBuilder;
            }

            /* renamed from: a */
            public final DialogMessageWithTopImageNew m27967a() {
                return new DialogMessageWithTopImageNew(this);
            }

            public final int getBottomImageMarginBottom() {
                return this.f27189i;
            }

            public final int getBottomImageMarginLeft() {
                return this.f27190j;
            }

            public final int getBottomImageMarginRight() {
                return this.f27191k;
            }

            public final int getBottomImageMarginTop() {
                return this.f27188h;
            }

            public final Integer getBottomImageResource() {
                return this.f27187g;
            }

            public final CharSequence getBottomMessage() {
                return this.f27174as;
            }

            public final Integer getBottomMessageImage() {
                return this.f27150aA;
            }

            public final int getBottomMessageImageMarginBottom() {
                return this.f27152aC;
            }

            public final int getBottomMessageImageMarginLeft() {
                return this.f27153aD;
            }

            public final int getBottomMessageImageMarginRight() {
                return this.f27154aE;
            }

            public final int getBottomMessageImageMarginTop() {
                return this.f27151aB;
            }

            public final int getBottomMessageMarginBottom() {
                return this.f27179ax;
            }

            public final int getBottomMessageMarginLeft() {
                return this.f27180ay;
            }

            public final int getBottomMessageMarginRight() {
                return this.f27181az;
            }

            public final int getBottomMessageMarginTop() {
                return this.f27178aw;
            }

            public final Integer getBottomMessageTextColor() {
                return this.f27175at;
            }

            public final boolean getBottomMessageTextIsBold() {
                return this.f27177av;
            }

            public final Float getButtonPositioning() {
                return this.f27149a;
            }

            public final boolean getCloseButtonVisibility() {
                return this.f27155aF;
            }

            public final boolean getLeftBtnAllCaps() {
                return this.f27124B;
            }

            public final Integer getLeftBtnBackgroundColor() {
                return this.f27200t;
            }

            public final boolean getLeftBtnBold() {
                return this.f27125C;
            }

            public final Integer getLeftBtnGravity() {
                return this.f27203w;
            }

            public final Integer getLeftBtnHeight() {
                return this.f27132J;
            }

            public final View.OnClickListener getLeftBtnListener() {
                return this.f27123A;
            }

            public final int getLeftBtnMarginBottom() {
                return this.f27128F;
            }

            public final int getLeftBtnMarginLeft() {
                return this.f27129G;
            }

            public final int getLeftBtnMarginRight() {
                return this.f27130H;
            }

            public final int getLeftBtnMarginTop() {
                return this.f27127E;
            }

            public final Integer getLeftBtnResource() {
                return this.f27201u;
            }

            public final Integer getLeftBtnStrokeColor() {
                return this.f27204x;
            }

            public final Integer getLeftBtnStrokeWidth() {
                return this.f27202v;
            }

            public final SpannableString getLeftBtnText() {
                return this.f27199s;
            }

            public final Integer getLeftBtnTextColor() {
                return this.f27205y;
            }

            public final Float getLeftBtnTextSize() {
                return this.f27206z;
            }

            public final Integer getLeftBtnWidth() {
                return this.f27131I;
            }

            public final boolean getLeftWrapContentWidth() {
                return this.f27126D;
            }

            public final CharSequence getMessage() {
                return this.f27166ak;
            }

            public final int getMessageMarginBottom() {
                return this.f27171ap;
            }

            public final int getMessageMarginLeft() {
                return this.f27172aq;
            }

            public final int getMessageMarginRight() {
                return this.f27173ar;
            }

            public final int getMessageMarginTop() {
                return this.f27170ao;
            }

            public final Integer getMessageTextColor() {
                return this.f27167al;
            }

            public final boolean getMessageTextIsBold() {
                return this.f27169an;
            }

            public final boolean getRightBtnAllCaps() {
                return this.f27142T;
            }

            public final Integer getRightBtnBackgroundColor() {
                return this.f27134L;
            }

            public final boolean getRightBtnBold() {
                return this.f27143U;
            }

            public final Integer getRightBtnGravity() {
                return this.f27137O;
            }

            public final Integer getRightBtnHeight() {
                return this.f27157ab;
            }

            public final View.OnClickListener getRightBtnListener() {
                return this.f27141S;
            }

            public final int getRightBtnMarginBottom() {
                return this.f27146X;
            }

            public final int getRightBtnMarginLeft() {
                return this.f27147Y;
            }

            public final int getRightBtnMarginRight() {
                return this.f27148Z;
            }

            public final int getRightBtnMarginTop() {
                return this.f27145W;
            }

            public final Integer getRightBtnResource() {
                return this.f27135M;
            }

            public final Integer getRightBtnStrokeColor() {
                return this.f27138P;
            }

            public final Integer getRightBtnStrokeWidth() {
                return this.f27136N;
            }

            public final SpannableString getRightBtnText() {
                return this.f27133K;
            }

            public final Integer getRightBtnTextColor() {
                return this.f27139Q;
            }

            public final Float getRightBtnTextSize() {
                return this.f27140R;
            }

            public final Integer getRightBtnWidth() {
                return this.f27156aa;
            }

            public final boolean getRightWrapContentWidth() {
                return this.f27144V;
            }

            public final int getShapePaddingBottom() {
                return this.f27195o;
            }

            public final int getShapePaddingLeft() {
                return this.f27196p;
            }

            public final int getShapePaddingRight() {
                return this.f27197q;
            }

            public final int getShapePaddingTop() {
                return this.f27194n;
            }

            public final CharSequence getTitle() {
                return this.f27158ac;
            }

            public final int getTitleMarginBottom() {
                return this.f27163ah;
            }

            public final int getTitleMarginLeft() {
                return this.f27164ai;
            }

            public final int getTitleMarginRight() {
                return this.f27165aj;
            }

            public final int getTitleMarginTop() {
                return this.f27162ag;
            }

            public final Integer getTitleTextColor() {
                return this.f27159ad;
            }

            public final boolean getTitleTextIsBold() {
                return this.f27161af;
            }

            public final int getTopImageMarginBottom() {
                return this.f27184d;
            }

            public final int getTopImageMarginLeft() {
                return this.f27185e;
            }

            public final int getTopImageMarginRight() {
                return this.f27186f;
            }

            public final int getTopImageMarginTop() {
                return this.f27183c;
            }

            public final Integer getTopImageResource() {
                return this.f27182b;
            }
        }

        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* renamed from: a */
        public static void m27968a(TextView textView, Integer num, Integer num2, Integer num3, Integer num4, Integer num5, SpannableString spannableString, Float f, boolean z, boolean z2) {
            if (textView != null) {
                textView.setVisibility(0);
                if (num != null) {
                    textView.setBackgroundResource(num.intValue());
                    Drawable background = textView.getBackground();
                    C18524p.m3843b(background, "it.background");
                    if (background instanceof GradientDrawable) {
                        if (num2 != null) {
                            ((GradientDrawable) background).setColor(num2.intValue());
                        }
                        if (num4 != null) {
                            int intValue = num4.intValue();
                            if (num3 != null) {
                                ((GradientDrawable) background).setStroke(intValue, num3.intValue());
                            }
                        }
                        if (Build.VERSION.SDK_INT >= 23) {
                            textView.setForeground(C0790b.m44502a(CallAppApplication.get(), 2131230873));
                        }
                    }
                }
                SpannableString spannableString2 = spannableString;
                if (!StringUtils.m26045b(spannableString2)) {
                    return;
                }
                textView.setText(spannableString2);
                textView.setAllCaps(z);
                if (z2) {
                    textView.setTypeface(textView.getTypeface(), 1);
                }
                if (f != null) {
                    textView.setTextSize(1, f.floatValue());
                }
                if (num5 == null) {
                    return;
                }
                textView.setTextColor(num5.intValue());
            }
        }
    }

    public DialogMessageWithTopImageNew(Companion.DialogMessageWithTopImageBuilder dialogMessageBuilder) {
        C18524p.m3840d(dialogMessageBuilder, "dialogMessageBuilder");
        this.f27122b = dialogMessageBuilder;
    }

    protected final int getLayoutResource() {
        return 2131558577;
    }

    @Override // com.callapp.contacts.manager.popup.DialogPopup
    public Popup.DialogType getPopupType() {
        return Popup.DialogType.roundedCenter;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        Integer valueOf = view != null ? Integer.valueOf(view.getId()) : null;
        if (valueOf != null && valueOf.intValue() == 2131363672) {
            View.OnClickListener rightBtnListener = this.f27122b.getRightBtnListener();
            if (rightBtnListener != null) {
                rightBtnListener.onClick(view);
            }
            dismiss();
        } else if (valueOf != null && valueOf.intValue() == 2131363176) {
            View.OnClickListener leftBtnListener = this.f27122b.getLeftBtnListener();
            if (leftBtnListener != null) {
                leftBtnListener.onClick(view);
            }
            dismiss();
        } else if (valueOf == null || valueOf.intValue() != 2131362372) {
        } else {
            dismiss();
        }
    }

    @Override // com.callapp.contacts.manager.popup.DialogPopup
    public void onDialogCancelled(DialogInterface dialogInterface) {
        super.onDialogCancelled(dialogInterface);
        dismiss();
    }

    @Override // com.callapp.contacts.manager.popup.DialogPopup
    public View ovViewCreated(LayoutInflater inflater, ViewGroup viewGroup) {
        C18524p.m3840d(inflater, "inflater");
        View view = inflater.inflate(getLayoutResource(), (ViewGroup) null);
        C18524p.m3843b(view, "view");
        setupViews(view);
        return view;
    }

    @Override // com.callapp.contacts.manager.popup.DialogPopup
    public void setDialogWindowSize(Window window) {
        C18524p.m3840d(window, "window");
        window.setLayout(-1, -2);
    }

    public final void setupViews(View itemView) {
        C18524p.m3840d(itemView, "itemView");
        ConstraintLayout constraintLayout = (ConstraintLayout) itemView.findViewById(2131362577);
        ImageView topImage = (ImageView) itemView.findViewById(2131364173);
        ImageView bottomImage = (ImageView) itemView.findViewById(2131362123);
        TextView dialogTitle = (TextView) itemView.findViewById(2131362579);
        TextView dialogBody = (TextView) itemView.findViewById(2131362573);
        TextView dialogBottomBody = (TextView) itemView.findViewById(2131362575);
        ImageView dialogBottomBodyImage = (ImageView) itemView.findViewById(2131362576);
        TextView rightButton = (TextView) itemView.findViewById(2131363672);
        TextView leftButton = (TextView) itemView.findViewById(2131363176);
        Guideline customDialogGuideline = (Guideline) itemView.findViewById(2131362514);
        ImageView closeButton = (ImageView) itemView.findViewById(C8217a.C8218a.closeButton);
        DialogMessageWithTopImageNew dialogMessageWithTopImageNew = this;
        rightButton.setOnClickListener(dialogMessageWithTopImageNew);
        leftButton.setOnClickListener(dialogMessageWithTopImageNew);
        constraintLayout.setPadding(this.f27122b.getShapePaddingLeft(), this.f27122b.getShapePaddingTop(), this.f27122b.getShapePaddingRight(), this.f27122b.getShapePaddingBottom());
        if (this.f27122b.getLeftBtnText() != null) {
            Companion.m27968a(leftButton, this.f27122b.getLeftBtnResource(), this.f27122b.getLeftBtnBackgroundColor(), this.f27122b.getLeftBtnStrokeColor(), this.f27122b.getLeftBtnStrokeWidth(), this.f27122b.getLeftBtnTextColor(), this.f27122b.getLeftBtnText(), this.f27122b.getLeftBtnTextSize(), this.f27122b.getLeftBtnAllCaps(), this.f27122b.getLeftBtnBold());
            C18524p.m3843b(leftButton, "leftButton");
            ViewGroup.LayoutParams layoutParams = leftButton.getLayoutParams();
            Objects.requireNonNull(layoutParams, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams");
            ConstraintLayout.LayoutParams layoutParams2 = (ConstraintLayout.LayoutParams) layoutParams;
            layoutParams2.setMargins(this.f27122b.getLeftBtnMarginLeft(), this.f27122b.getLeftBtnMarginTop(), this.f27122b.getLeftBtnMarginRight(), this.f27122b.getLeftBtnMarginBottom());
            Integer leftBtnWidth = this.f27122b.getLeftBtnWidth();
            if (leftBtnWidth != null) {
                layoutParams2.width = leftBtnWidth.intValue();
                C20128v c20128v = C20128v.f66529a;
            }
            Integer leftBtnHeight = this.f27122b.getLeftBtnHeight();
            if (leftBtnHeight != null) {
                layoutParams2.height = leftBtnHeight.intValue();
                C20128v c20128v2 = C20128v.f66529a;
            }
            leftButton.setLayoutParams(layoutParams2);
            C20128v c20128v3 = C20128v.f66529a;
        }
        if (this.f27122b.getRightBtnText() != null) {
            Companion.m27968a(rightButton, this.f27122b.getRightBtnResource(), this.f27122b.getRightBtnBackgroundColor(), this.f27122b.getRightBtnStrokeColor(), this.f27122b.getRightBtnStrokeWidth(), this.f27122b.getRightBtnTextColor(), this.f27122b.getRightBtnText(), this.f27122b.getRightBtnTextSize(), this.f27122b.getRightBtnAllCaps(), this.f27122b.getRightBtnBold());
            C18524p.m3843b(rightButton, "rightButton");
            ViewGroup.LayoutParams layoutParams3 = rightButton.getLayoutParams();
            Objects.requireNonNull(layoutParams3, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams");
            ConstraintLayout.LayoutParams layoutParams4 = (ConstraintLayout.LayoutParams) layoutParams3;
            layoutParams4.setMargins(this.f27122b.getRightBtnMarginLeft(), this.f27122b.getRightBtnMarginTop(), this.f27122b.getRightBtnMarginRight(), this.f27122b.getRightBtnMarginBottom());
            Integer rightBtnWidth = this.f27122b.getRightBtnWidth();
            if (rightBtnWidth != null) {
                layoutParams4.width = rightBtnWidth.intValue();
                C20128v c20128v4 = C20128v.f66529a;
            }
            Integer rightBtnHeight = this.f27122b.getRightBtnHeight();
            if (rightBtnHeight != null) {
                layoutParams4.height = rightBtnHeight.intValue();
                C20128v c20128v5 = C20128v.f66529a;
            }
            rightButton.setLayoutParams(layoutParams4);
            C20128v c20128v6 = C20128v.f66529a;
        }
        CharSequence title = this.f27122b.getTitle();
        if (title != null) {
            C18524p.m3843b(dialogTitle, "dialogTitle");
            dialogTitle.setVisibility(0);
            dialogTitle.setText(title);
            if (this.f27122b.getTitleTextIsBold()) {
                dialogTitle.setTypeface(dialogTitle.getTypeface(), 1);
            }
            Integer titleTextColor = this.f27122b.getTitleTextColor();
            if (titleTextColor != null) {
                dialogTitle.setTextColor(titleTextColor.intValue());
                C20128v c20128v7 = C20128v.f66529a;
            }
            ViewGroup.LayoutParams layoutParams5 = dialogTitle.getLayoutParams();
            Objects.requireNonNull(layoutParams5, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams");
            ConstraintLayout.LayoutParams layoutParams6 = (ConstraintLayout.LayoutParams) layoutParams5;
            layoutParams6.setMargins(this.f27122b.getTitleMarginLeft(), this.f27122b.getTitleMarginTop(), this.f27122b.getTitleMarginRight(), this.f27122b.getTitleMarginBottom());
            dialogTitle.setLayoutParams(layoutParams6);
            C20128v c20128v8 = C20128v.f66529a;
        }
        CharSequence message = this.f27122b.getMessage();
        if (message != null) {
            C18524p.m3843b(dialogBody, "dialogBody");
            dialogBody.setVisibility(0);
            dialogBody.setText(message);
            if (this.f27122b.getMessageTextIsBold()) {
                dialogBody.setTypeface(dialogBody.getTypeface(), 1);
            }
            Integer messageTextColor = this.f27122b.getMessageTextColor();
            if (messageTextColor != null) {
                dialogBody.setTextColor(messageTextColor.intValue());
                C20128v c20128v9 = C20128v.f66529a;
            }
            ViewGroup.LayoutParams layoutParams7 = dialogBody.getLayoutParams();
            Objects.requireNonNull(layoutParams7, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams");
            ConstraintLayout.LayoutParams layoutParams8 = (ConstraintLayout.LayoutParams) layoutParams7;
            layoutParams8.setMargins(this.f27122b.getMessageMarginLeft(), this.f27122b.getMessageMarginTop(), this.f27122b.getMessageMarginRight(), this.f27122b.getMessageMarginBottom());
            dialogBody.setLayoutParams(layoutParams8);
            C20128v c20128v10 = C20128v.f66529a;
        }
        CharSequence bottomMessage = this.f27122b.getBottomMessage();
        if (bottomMessage != null) {
            C18524p.m3843b(dialogBottomBody, "dialogBottomBody");
            dialogBottomBody.setVisibility(0);
            dialogBottomBody.setText(bottomMessage);
            if (this.f27122b.getBottomMessageTextIsBold()) {
                dialogBottomBody.setTypeface(dialogBottomBody.getTypeface(), 1);
            }
            Integer bottomMessageTextColor = this.f27122b.getBottomMessageTextColor();
            if (bottomMessageTextColor != null) {
                dialogBottomBody.setTextColor(bottomMessageTextColor.intValue());
                C20128v c20128v11 = C20128v.f66529a;
            }
            ViewGroup.LayoutParams layoutParams9 = dialogBottomBody.getLayoutParams();
            Objects.requireNonNull(layoutParams9, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams");
            ConstraintLayout.LayoutParams layoutParams10 = (ConstraintLayout.LayoutParams) layoutParams9;
            layoutParams10.setMargins(this.f27122b.getBottomMessageMarginLeft(), this.f27122b.getBottomMessageMarginTop(), this.f27122b.getBottomMessageMarginRight(), this.f27122b.getBottomMessageMarginBottom());
            dialogBottomBody.setLayoutParams(layoutParams10);
            C20128v c20128v12 = C20128v.f66529a;
        }
        Integer bottomMessageImage = this.f27122b.getBottomMessageImage();
        if (bottomMessageImage != null) {
            int intValue = bottomMessageImage.intValue();
            C18524p.m3843b(dialogBottomBodyImage, "dialogBottomBodyImage");
            ViewGroup.LayoutParams layoutParams11 = dialogBottomBodyImage.getLayoutParams();
            Objects.requireNonNull(layoutParams11, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams");
            ConstraintLayout.LayoutParams layoutParams12 = (ConstraintLayout.LayoutParams) layoutParams11;
            layoutParams12.setMargins(this.f27122b.getBottomMessageImageMarginLeft(), this.f27122b.getBottomMessageImageMarginTop(), this.f27122b.getBottomMessageImageMarginRight(), this.f27122b.getBottomMessageImageMarginBottom());
            dialogBottomBodyImage.setImageResource(intValue);
            dialogBottomBodyImage.setVisibility(0);
            dialogBottomBodyImage.setLayoutParams(layoutParams12);
            C20128v c20128v13 = C20128v.f66529a;
        }
        if (this.f27122b.getLeftWrapContentWidth()) {
            C18524p.m3843b(leftButton, "leftButton");
            ViewGroup.LayoutParams layoutParams13 = leftButton.getLayoutParams();
            layoutParams13.width = -2;
            leftButton.setLayoutParams(layoutParams13);
        }
        if (this.f27122b.getRightWrapContentWidth()) {
            C18524p.m3843b(rightButton, "rightButton");
            ViewGroup.LayoutParams layoutParams14 = rightButton.getLayoutParams();
            layoutParams14.width = -2;
            rightButton.setLayoutParams(layoutParams14);
        }
        Integer rightBtnGravity = this.f27122b.getRightBtnGravity();
        if (rightBtnGravity != null) {
            int intValue2 = rightBtnGravity.intValue();
            C18524p.m3843b(rightButton, "rightButton");
            rightButton.setGravity(intValue2);
            C20128v c20128v14 = C20128v.f66529a;
        }
        Integer leftBtnGravity = this.f27122b.getLeftBtnGravity();
        if (leftBtnGravity != null) {
            int intValue3 = leftBtnGravity.intValue();
            C18524p.m3843b(leftButton, "leftButton");
            leftButton.setGravity(intValue3);
            C20128v c20128v15 = C20128v.f66529a;
        }
        Float buttonPositioning = this.f27122b.getButtonPositioning();
        if (buttonPositioning != null) {
            float floatValue = buttonPositioning.floatValue();
            C18524p.m3843b(customDialogGuideline, "customDialogGuideline");
            ViewGroup.LayoutParams layoutParams15 = customDialogGuideline.getLayoutParams();
            Objects.requireNonNull(layoutParams15, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams");
            ConstraintLayout.LayoutParams layoutParams16 = (ConstraintLayout.LayoutParams) layoutParams15;
            layoutParams16.f2977c = floatValue;
            customDialogGuideline.setLayoutParams(layoutParams16);
            C20128v c20128v16 = C20128v.f66529a;
        }
        Integer topImageResource = this.f27122b.getTopImageResource();
        if (topImageResource != null) {
            int intValue4 = topImageResource.intValue();
            C18524p.m3843b(topImage, "topImage");
            topImage.setVisibility(0);
            topImage.setImageResource(intValue4);
            ViewGroup.LayoutParams layoutParams17 = topImage.getLayoutParams();
            Objects.requireNonNull(layoutParams17, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams");
            ConstraintLayout.LayoutParams layoutParams18 = (ConstraintLayout.LayoutParams) layoutParams17;
            layoutParams18.setMargins(this.f27122b.getTopImageMarginLeft(), this.f27122b.getTopImageMarginTop(), this.f27122b.getTopImageMarginRight(), this.f27122b.getTopImageMarginBottom());
            topImage.setLayoutParams(layoutParams18);
            C20128v c20128v17 = C20128v.f66529a;
        }
        Integer bottomImageResource = this.f27122b.getBottomImageResource();
        if (bottomImageResource != null) {
            int intValue5 = bottomImageResource.intValue();
            C18524p.m3843b(bottomImage, "bottomImage");
            bottomImage.setVisibility(0);
            bottomImage.setImageResource(intValue5);
            ViewGroup.LayoutParams layoutParams19 = bottomImage.getLayoutParams();
            Objects.requireNonNull(layoutParams19, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams");
            ConstraintLayout.LayoutParams layoutParams20 = (ConstraintLayout.LayoutParams) layoutParams19;
            layoutParams20.setMargins(this.f27122b.getBottomImageMarginLeft(), this.f27122b.getBottomImageMarginTop(), this.f27122b.getBottomImageMarginRight(), this.f27122b.getBottomImageMarginBottom());
            bottomImage.setLayoutParams(layoutParams20);
            C20128v c20128v18 = C20128v.f66529a;
        }
        if (this.f27122b.getCloseButtonVisibility()) {
            C18524p.m3843b(closeButton, "closeButton");
            closeButton.setVisibility(0);
            closeButton.setColorFilter(new PorterDuffColorFilter(ThemeUtils.getColor(2131100140), PorterDuff.Mode.SRC_IN));
            closeButton.setOnClickListener(dialogMessageWithTopImageNew);
        }
    }
}
