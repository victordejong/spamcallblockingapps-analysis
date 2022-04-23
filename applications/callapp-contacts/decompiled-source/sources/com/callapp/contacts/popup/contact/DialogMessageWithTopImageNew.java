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
import androidx.core.content.b;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.manager.popup.DialogPopup;
import com.callapp.contacts.manager.popup.Popup;
import com.callapp.contacts.util.ThemeUtils;
import com.callapp.framework.util.StringUtils;
import com.criteo.publisher.a;
import com.fasterxml.jackson.databind.annotation.JsonPOJOBuilder;
import com.mopub.common.Constants;
import io.objectbox.model.PropertyFlags;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.p;
import kotlin.v;
@Metadata(bv = {1, 0, 3}, d1 = {"��N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0016\u0018�� \u001b2\u00020\u00012\u00020\u0002:\u0001\u001bB\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005J\b\u0010\u0006\u001a\u00020\u0007H\u0005J\b\u0010\b\u001a\u00020\tH\u0016J\u0012\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\rH\u0016J\u0012\u0010\u000e\u001a\u00020\u000b2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0014J\u001a\u0010\u0011\u001a\u00020\r2\u0006\u0010\u0012\u001a\u00020\u00132\b\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u0016J\u0010\u0010\u0016\u001a\u00020\u000b2\u0006\u0010\u0017\u001a\u00020\u0018H\u0016J\u000e\u0010\u0019\u001a\u00020\u000b2\u0006\u0010\u001a\u001a\u00020\rR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n��¨\u0006\u001c"}, d2 = {"Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew;", "Lcom/callapp/contacts/manager/popup/DialogPopup;", "Landroid/view/View$OnClickListener;", "dialogMessageBuilder", "Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;", "(Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;)V", "getLayoutResource", "", "getPopupType", "Lcom/callapp/contacts/manager/popup/Popup$DialogType;", "onClick", "", "v", "Landroid/view/View;", "onDialogCancelled", "dialog", "Landroid/content/DialogInterface;", "ovViewCreated", "inflater", "Landroid/view/LayoutInflater;", "container", "Landroid/view/ViewGroup;", "setDialogWindowSize", "window", "Landroid/view/Window;", "setupViews", "itemView", "Companion", "callapp-client_playRelease"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/popup/contact/DialogMessageWithTopImageNew.class */
public class DialogMessageWithTopImageNew extends DialogPopup implements View.OnClickListener {

    /* renamed from: a  reason: collision with root package name */
    public static final Companion f15494a = new Companion(null);

    /* renamed from: b  reason: collision with root package name */
    private Companion.DialogMessageWithTopImageBuilder f15495b;

    @Metadata(bv = {1, 0, 3}, d1 = {"��4\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0007\n��\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\u0003\u0018��2\u00020\u0001:\u0001\u0015B\u0007\b\u0002¢\u0006\u0002\u0010\u0002Jy\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u00062\b\u0010\u0007\u001a\u0004\u0018\u00010\b2\n\b\u0001\u0010\t\u001a\u0004\u0018\u00010\b2\n\b\u0003\u0010\n\u001a\u0004\u0018\u00010\b2\n\b\u0003\u0010\u000b\u001a\u0004\u0018\u00010\b2\n\b\u0003\u0010\f\u001a\u0004\u0018\u00010\b2\b\u0010\r\u001a\u0004\u0018\u00010\u000e2\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00102\b\b\u0002\u0010\u0011\u001a\u00020\u00122\b\b\u0002\u0010\u0013\u001a\u00020\u0012¢\u0006\u0002\u0010\u0014¨\u0006\u0016"}, d2 = {"Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion;", "", "()V", "setupButtonFromParentWrapper", "", "btnTextView", "Landroid/widget/TextView;", Constants.VAST_RESOURCE, "", "btnBgColor", "btnStrokeColor", "btnStrokeWidth", "btnTextColor", "btnText", "Landroid/text/SpannableString;", "textSizeDP", "", "allCapsText", "", "boldText", "(Landroid/widget/TextView;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Landroid/text/SpannableString;Ljava/lang/Float;ZZ)V", "DialogMessageWithTopImageBuilder", "callapp-client_playRelease"}, k = 1, mv = {1, 4, 2})
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion.class */
    public static final class Companion {

        @Metadata(bv = {1, 0, 3}, d1 = {"��E\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0014\n\u0002\u0010\r\n\u0002\b#\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\u0007\n\u0002\b\u001b\n\u0002\u0018\u0002\n\u0002\b\u001a\n\u0002\u0018\u0002\n\u0003\b\u009b\u0001\n\u0002\u0018\u0002\n\u0002\b\u0012\u0018��2\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u0095\u0002\u001a\u00030\u0096\u0002JA\u0010\u0097\u0002\u001a\u00020��2\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u00042\b\b\u0002\u0010\u000f\u001a\u00020\u00042\b\b\u0002\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\t\u001a\u00020\u00042\b\b\u0002\u0010\f\u001a\u00020\u0004¢\u0006\u0003\u0010\u0098\u0002Jc\u0010\u0099\u0002\u001a\u00020��2\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u00192\n\b\u0002\u00109\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010B\u001a\u0004\u0018\u00010C2\b\b\u0002\u0010<\u001a\u00020=2\b\b\u0002\u00106\u001a\u00020\u00042\b\b\u0002\u0010-\u001a\u00020\u00042\b\b\u0002\u00100\u001a\u00020\u00042\b\b\u0002\u00103\u001a\u00020\u0004¢\u0006\u0003\u0010\u009a\u0002JA\u0010\u009b\u0002\u001a\u00020��2\n\b\u0002\u0010\u001e\u001a\u0004\u0018\u00010\u00042\b\b\u0002\u0010*\u001a\u00020\u00042\b\b\u0002\u0010!\u001a\u00020\u00042\b\b\u0002\u0010$\u001a\u00020\u00042\b\b\u0002\u0010'\u001a\u00020\u0004¢\u0006\u0003\u0010\u0098\u0002J\u0019\u0010\u009c\u0002\u001a\u00020��2\n\b\u0002\u0010I\u001a\u0004\u0018\u00010C¢\u0006\u0003\u0010\u009d\u0002J\u0007\u0010\u009e\u0002\u001a\u00020��JÚ\u0001\u0010\u009f\u0002\u001a\u00020��2\n\b\u0002\u0010y\u001a\u0004\u0018\u00010z2\n\b\u0002\u0010R\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010p\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010v\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010s\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u007f\u001a\u0004\u0018\u00010\u00042\u000b\b\u0002\u0010\u0082\u0001\u001a\u0004\u0018\u00010C2\n\b\u0002\u0010^\u001a\u0004\u0018\u00010_2\b\b\u0002\u0010O\u001a\u00020=2\n\b\u0002\u0010X\u001a\u0004\u0018\u00010\u00042\b\b\u0002\u0010U\u001a\u00020=2\t\b\u0002\u0010\u0088\u0001\u001a\u00020=2\b\b\u0002\u0010m\u001a\u00020\u00042\b\b\u0002\u0010d\u001a\u00020\u00042\b\b\u0002\u0010g\u001a\u00020\u00042\b\b\u0002\u0010j\u001a\u00020\u00042\u000b\b\u0002\u0010\u0085\u0001\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010[\u001a\u0004\u0018\u00010\u0004¢\u0006\u0003\u0010 \u0002Jk\u0010¡\u0002\u001a\u00020��2\u000b\b\u0002\u0010\u008b\u0001\u001a\u0004\u0018\u00010\u00192\u000b\b\u0002\u0010\u009a\u0001\u001a\u0004\u0018\u00010\u00042\u000b\b\u0002\u0010 \u0001\u001a\u0004\u0018\u00010C2\t\b\u0002\u0010¢\u0002\u001a\u00020=2\t\b\u0002\u0010\u0097\u0001\u001a\u00020\u00042\t\b\u0002\u0010\u008e\u0001\u001a\u00020\u00042\t\b\u0002\u0010\u0091\u0001\u001a\u00020\u00042\t\b\u0002\u0010\u0094\u0001\u001a\u00020\u0004¢\u0006\u0003\u0010\u009a\u0002Jé\u0001\u0010£\u0002\u001a\u00020��2\u000b\b\u0002\u0010Ê\u0001\u001a\u0004\u0018\u00010z2\u000b\b\u0002\u0010¦\u0001\u001a\u0004\u0018\u00010\u00042\u000b\b\u0002\u0010Á\u0001\u001a\u0004\u0018\u00010\u00042\u000b\b\u0002\u0010Ç\u0001\u001a\u0004\u0018\u00010\u00042\u000b\b\u0002\u0010Ä\u0001\u001a\u0004\u0018\u00010\u00042\u000b\b\u0002\u0010Í\u0001\u001a\u0004\u0018\u00010\u00042\u000b\b\u0002\u0010Ð\u0001\u001a\u0004\u0018\u00010C2\u000b\b\u0002\u0010²\u0001\u001a\u0004\u0018\u00010_2\t\b\u0002\u0010£\u0001\u001a\u00020=2\u000b\b\u0002\u0010¬\u0001\u001a\u0004\u0018\u00010\u00042\t\b\u0002\u0010©\u0001\u001a\u00020=2\t\b\u0002\u0010Ö\u0001\u001a\u00020=2\t\b\u0002\u0010¾\u0001\u001a\u00020\u00042\t\b\u0002\u0010µ\u0001\u001a\u00020\u00042\t\b\u0002\u0010¸\u0001\u001a\u00020\u00042\t\b\u0002\u0010»\u0001\u001a\u00020\u00042\u000b\b\u0002\u0010Ó\u0001\u001a\u0004\u0018\u00010\u00042\u000b\b\u0002\u0010¯\u0001\u001a\u0004\u0018\u00010\u0004¢\u0006\u0003\u0010 \u0002J^\u0010¤\u0002\u001a\u00020��2\u000b\b\u0002\u0010Ù\u0001\u001a\u0004\u0018\u00010\u00042\u000b\b\u0002\u0010è\u0001\u001a\u0004\u0018\u00010\u00042\t\b\u0002\u0010å\u0001\u001a\u00020\u00042\t\b\u0002\u0010Ü\u0001\u001a\u00020\u00042\t\b\u0002\u0010ß\u0001\u001a\u00020\u00042\t\b\u0002\u0010â\u0001\u001a\u00020\u00042\t\b\u0002\u0010ë\u0001\u001a\u00020=¢\u0006\u0003\u0010¥\u0002Jk\u0010¦\u0002\u001a\u00020��2\u000b\b\u0002\u0010î\u0001\u001a\u0004\u0018\u00010\u00192\u000b\b\u0002\u0010ý\u0001\u001a\u0004\u0018\u00010\u00042\u000b\b\u0002\u0010\u0083\u0002\u001a\u0004\u0018\u00010C2\t\b\u0002\u0010¢\u0002\u001a\u00020=2\t\b\u0002\u0010ú\u0001\u001a\u00020\u00042\t\b\u0002\u0010ñ\u0001\u001a\u00020\u00042\t\b\u0002\u0010ô\u0001\u001a\u00020\u00042\t\b\u0002\u0010÷\u0001\u001a\u00020\u0004¢\u0006\u0003\u0010\u009a\u0002JF\u0010§\u0002\u001a\u00020��2\u000b\b\u0002\u0010\u0092\u0002\u001a\u0004\u0018\u00010\u00042\t\b\u0002\u0010\u008f\u0002\u001a\u00020\u00042\t\b\u0002\u0010\u0086\u0002\u001a\u00020\u00042\t\b\u0002\u0010\u0089\u0002\u001a\u00020\u00042\t\b\u0002\u0010\u008c\u0002\u001a\u00020\u0004¢\u0006\u0003\u0010\u0098\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001a\u0010\t\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\n\u0010\u0006\"\u0004\b\u000b\u0010\bR\u001a\u0010\f\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\r\u0010\u0006\"\u0004\b\u000e\u0010\bR\u001a\u0010\u000f\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0010\u0010\u0006\"\u0004\b\u0011\u0010\bR\u001e\u0010\u0012\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u0017\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0015\u0010\u0016R\u001c\u0010\u0018\u001a\u0004\u0018\u00010\u0019X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u001a\u0010\u001b\"\u0004\b\u001c\u0010\u001dR\u001e\u0010\u001e\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u0017\u001a\u0004\b\u001f\u0010\u0014\"\u0004\b \u0010\u0016R\u001a\u0010!\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\"\u0010\u0006\"\u0004\b#\u0010\bR\u001a\u0010$\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b%\u0010\u0006\"\u0004\b&\u0010\bR\u001a\u0010'\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b(\u0010\u0006\"\u0004\b)\u0010\bR\u001a\u0010*\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b+\u0010\u0006\"\u0004\b,\u0010\bR\u001a\u0010-\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b.\u0010\u0006\"\u0004\b/\u0010\bR\u001a\u00100\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b1\u0010\u0006\"\u0004\b2\u0010\bR\u001a\u00103\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b4\u0010\u0006\"\u0004\b5\u0010\bR\u001a\u00106\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b7\u0010\u0006\"\u0004\b8\u0010\bR\u001e\u00109\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u0017\u001a\u0004\b:\u0010\u0014\"\u0004\b;\u0010\u0016R\u001a\u0010<\u001a\u00020=X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b>\u0010?\"\u0004\b@\u0010AR\u001e\u0010B\u001a\u0004\u0018\u00010CX\u0086\u000e¢\u0006\u0010\n\u0002\u0010H\u001a\u0004\bD\u0010E\"\u0004\bF\u0010GR\u001e\u0010I\u001a\u0004\u0018\u00010CX\u0086\u000e¢\u0006\u0010\n\u0002\u0010H\u001a\u0004\bJ\u0010E\"\u0004\bK\u0010GR\u001a\u0010L\u001a\u00020=X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\bM\u0010?\"\u0004\bN\u0010AR\u001a\u0010O\u001a\u00020=X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\bP\u0010?\"\u0004\bQ\u0010AR\u001e\u0010R\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u0017\u001a\u0004\bS\u0010\u0014\"\u0004\bT\u0010\u0016R\u001a\u0010U\u001a\u00020=X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\bV\u0010?\"\u0004\bW\u0010AR\u001e\u0010X\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u0017\u001a\u0004\bY\u0010\u0014\"\u0004\bZ\u0010\u0016R\u001e\u0010[\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u0017\u001a\u0004\b\\\u0010\u0014\"\u0004\b]\u0010\u0016R\u001c\u0010^\u001a\u0004\u0018\u00010_X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b`\u0010a\"\u0004\bb\u0010cR\u001a\u0010d\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\be\u0010\u0006\"\u0004\bf\u0010\bR\u001a\u0010g\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\bh\u0010\u0006\"\u0004\bi\u0010\bR\u001a\u0010j\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\bk\u0010\u0006\"\u0004\bl\u0010\bR\u001a\u0010m\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\bn\u0010\u0006\"\u0004\bo\u0010\bR\u001e\u0010p\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u0017\u001a\u0004\bq\u0010\u0014\"\u0004\br\u0010\u0016R\u001e\u0010s\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u0017\u001a\u0004\bt\u0010\u0014\"\u0004\bu\u0010\u0016R\u001e\u0010v\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u0017\u001a\u0004\bw\u0010\u0014\"\u0004\bx\u0010\u0016R\u001c\u0010y\u001a\u0004\u0018\u00010zX\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b{\u0010|\"\u0004\b}\u0010~R \u0010\u007f\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u0012\n\u0002\u0010\u0017\u001a\u0005\b\u0080\u0001\u0010\u0014\"\u0005\b\u0081\u0001\u0010\u0016R!\u0010\u0082\u0001\u001a\u0004\u0018\u00010CX\u0086\u000e¢\u0006\u0012\n\u0002\u0010H\u001a\u0005\b\u0083\u0001\u0010E\"\u0005\b\u0084\u0001\u0010GR!\u0010\u0085\u0001\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u0012\n\u0002\u0010\u0017\u001a\u0005\b\u0086\u0001\u0010\u0014\"\u0005\b\u0087\u0001\u0010\u0016R\u001d\u0010\u0088\u0001\u001a\u00020=X\u0086\u000e¢\u0006\u0010\n��\u001a\u0005\b\u0089\u0001\u0010?\"\u0005\b\u008a\u0001\u0010AR\u001f\u0010\u008b\u0001\u001a\u0004\u0018\u00010\u0019X\u0086\u000e¢\u0006\u0010\n��\u001a\u0005\b\u008c\u0001\u0010\u001b\"\u0005\b\u008d\u0001\u0010\u001dR\u001d\u0010\u008e\u0001\u001a\u00020\u0004X\u0086\u000e¢\u0006\u0010\n��\u001a\u0005\b\u008f\u0001\u0010\u0006\"\u0005\b\u0090\u0001\u0010\bR\u001d\u0010\u0091\u0001\u001a\u00020\u0004X\u0086\u000e¢\u0006\u0010\n��\u001a\u0005\b\u0092\u0001\u0010\u0006\"\u0005\b\u0093\u0001\u0010\bR\u001d\u0010\u0094\u0001\u001a\u00020\u0004X\u0086\u000e¢\u0006\u0010\n��\u001a\u0005\b\u0095\u0001\u0010\u0006\"\u0005\b\u0096\u0001\u0010\bR\u001d\u0010\u0097\u0001\u001a\u00020\u0004X\u0086\u000e¢\u0006\u0010\n��\u001a\u0005\b\u0098\u0001\u0010\u0006\"\u0005\b\u0099\u0001\u0010\bR!\u0010\u009a\u0001\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u0012\n\u0002\u0010\u0017\u001a\u0005\b\u009b\u0001\u0010\u0014\"\u0005\b\u009c\u0001\u0010\u0016R\u001d\u0010\u009d\u0001\u001a\u00020=X\u0086\u000e¢\u0006\u0010\n��\u001a\u0005\b\u009e\u0001\u0010?\"\u0005\b\u009f\u0001\u0010AR!\u0010 \u0001\u001a\u0004\u0018\u00010CX\u0086\u000e¢\u0006\u0012\n\u0002\u0010H\u001a\u0005\b¡\u0001\u0010E\"\u0005\b¢\u0001\u0010GR\u001d\u0010£\u0001\u001a\u00020=X\u0086\u000e¢\u0006\u0010\n��\u001a\u0005\b¤\u0001\u0010?\"\u0005\b¥\u0001\u0010AR!\u0010¦\u0001\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u0012\n\u0002\u0010\u0017\u001a\u0005\b§\u0001\u0010\u0014\"\u0005\b¨\u0001\u0010\u0016R\u001d\u0010©\u0001\u001a\u00020=X\u0086\u000e¢\u0006\u0010\n��\u001a\u0005\bª\u0001\u0010?\"\u0005\b«\u0001\u0010AR!\u0010¬\u0001\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u0012\n\u0002\u0010\u0017\u001a\u0005\b\u00ad\u0001\u0010\u0014\"\u0005\b®\u0001\u0010\u0016R!\u0010¯\u0001\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u0012\n\u0002\u0010\u0017\u001a\u0005\b°\u0001\u0010\u0014\"\u0005\b±\u0001\u0010\u0016R\u001f\u0010²\u0001\u001a\u0004\u0018\u00010_X\u0086\u000e¢\u0006\u0010\n��\u001a\u0005\b³\u0001\u0010a\"\u0005\b´\u0001\u0010cR\u001d\u0010µ\u0001\u001a\u00020\u0004X\u0086\u000e¢\u0006\u0010\n��\u001a\u0005\b¶\u0001\u0010\u0006\"\u0005\b·\u0001\u0010\bR\u001d\u0010¸\u0001\u001a\u00020\u0004X\u0086\u000e¢\u0006\u0010\n��\u001a\u0005\b¹\u0001\u0010\u0006\"\u0005\bº\u0001\u0010\bR\u001d\u0010»\u0001\u001a\u00020\u0004X\u0086\u000e¢\u0006\u0010\n��\u001a\u0005\b¼\u0001\u0010\u0006\"\u0005\b½\u0001\u0010\bR\u001d\u0010¾\u0001\u001a\u00020\u0004X\u0086\u000e¢\u0006\u0010\n��\u001a\u0005\b¿\u0001\u0010\u0006\"\u0005\bÀ\u0001\u0010\bR!\u0010Á\u0001\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u0012\n\u0002\u0010\u0017\u001a\u0005\bÂ\u0001\u0010\u0014\"\u0005\bÃ\u0001\u0010\u0016R!\u0010Ä\u0001\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u0012\n\u0002\u0010\u0017\u001a\u0005\bÅ\u0001\u0010\u0014\"\u0005\bÆ\u0001\u0010\u0016R!\u0010Ç\u0001\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u0012\n\u0002\u0010\u0017\u001a\u0005\bÈ\u0001\u0010\u0014\"\u0005\bÉ\u0001\u0010\u0016R\u001f\u0010Ê\u0001\u001a\u0004\u0018\u00010zX\u0086\u000e¢\u0006\u0010\n��\u001a\u0005\bË\u0001\u0010|\"\u0005\bÌ\u0001\u0010~R!\u0010Í\u0001\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u0012\n\u0002\u0010\u0017\u001a\u0005\bÎ\u0001\u0010\u0014\"\u0005\bÏ\u0001\u0010\u0016R!\u0010Ð\u0001\u001a\u0004\u0018\u00010CX\u0086\u000e¢\u0006\u0012\n\u0002\u0010H\u001a\u0005\bÑ\u0001\u0010E\"\u0005\bÒ\u0001\u0010GR!\u0010Ó\u0001\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u0012\n\u0002\u0010\u0017\u001a\u0005\bÔ\u0001\u0010\u0014\"\u0005\bÕ\u0001\u0010\u0016R\u001d\u0010Ö\u0001\u001a\u00020=X\u0086\u000e¢\u0006\u0010\n��\u001a\u0005\b×\u0001\u0010?\"\u0005\bØ\u0001\u0010AR!\u0010Ù\u0001\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u0012\n\u0002\u0010\u0017\u001a\u0005\bÚ\u0001\u0010\u0014\"\u0005\bÛ\u0001\u0010\u0016R\u001d\u0010Ü\u0001\u001a\u00020\u0004X\u0086\u000e¢\u0006\u0010\n��\u001a\u0005\bÝ\u0001\u0010\u0006\"\u0005\bÞ\u0001\u0010\bR\u001d\u0010ß\u0001\u001a\u00020\u0004X\u0086\u000e¢\u0006\u0010\n��\u001a\u0005\bà\u0001\u0010\u0006\"\u0005\bá\u0001\u0010\bR\u001d\u0010â\u0001\u001a\u00020\u0004X\u0086\u000e¢\u0006\u0010\n��\u001a\u0005\bã\u0001\u0010\u0006\"\u0005\bä\u0001\u0010\bR\u001d\u0010å\u0001\u001a\u00020\u0004X\u0086\u000e¢\u0006\u0010\n��\u001a\u0005\bæ\u0001\u0010\u0006\"\u0005\bç\u0001\u0010\bR!\u0010è\u0001\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u0012\n\u0002\u0010\u0017\u001a\u0005\bé\u0001\u0010\u0014\"\u0005\bê\u0001\u0010\u0016R\u001d\u0010ë\u0001\u001a\u00020=X\u0086\u000e¢\u0006\u0010\n��\u001a\u0005\bì\u0001\u0010?\"\u0005\bí\u0001\u0010AR\u001f\u0010î\u0001\u001a\u0004\u0018\u00010\u0019X\u0086\u000e¢\u0006\u0010\n��\u001a\u0005\bï\u0001\u0010\u001b\"\u0005\bð\u0001\u0010\u001dR\u001d\u0010ñ\u0001\u001a\u00020\u0004X\u0086\u000e¢\u0006\u0010\n��\u001a\u0005\bò\u0001\u0010\u0006\"\u0005\bó\u0001\u0010\bR\u001d\u0010ô\u0001\u001a\u00020\u0004X\u0086\u000e¢\u0006\u0010\n��\u001a\u0005\bõ\u0001\u0010\u0006\"\u0005\bö\u0001\u0010\bR\u001d\u0010÷\u0001\u001a\u00020\u0004X\u0086\u000e¢\u0006\u0010\n��\u001a\u0005\bø\u0001\u0010\u0006\"\u0005\bù\u0001\u0010\bR\u001d\u0010ú\u0001\u001a\u00020\u0004X\u0086\u000e¢\u0006\u0010\n��\u001a\u0005\bû\u0001\u0010\u0006\"\u0005\bü\u0001\u0010\bR!\u0010ý\u0001\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u0012\n\u0002\u0010\u0017\u001a\u0005\bþ\u0001\u0010\u0014\"\u0005\bÿ\u0001\u0010\u0016R\u001d\u0010\u0080\u0002\u001a\u00020=X\u0086\u000e¢\u0006\u0010\n��\u001a\u0005\b\u0081\u0002\u0010?\"\u0005\b\u0082\u0002\u0010AR!\u0010\u0083\u0002\u001a\u0004\u0018\u00010CX\u0086\u000e¢\u0006\u0012\n\u0002\u0010H\u001a\u0005\b\u0084\u0002\u0010E\"\u0005\b\u0085\u0002\u0010GR\u001d\u0010\u0086\u0002\u001a\u00020\u0004X\u0086\u000e¢\u0006\u0010\n��\u001a\u0005\b\u0087\u0002\u0010\u0006\"\u0005\b\u0088\u0002\u0010\bR\u001d\u0010\u0089\u0002\u001a\u00020\u0004X\u0086\u000e¢\u0006\u0010\n��\u001a\u0005\b\u008a\u0002\u0010\u0006\"\u0005\b\u008b\u0002\u0010\bR\u001d\u0010\u008c\u0002\u001a\u00020\u0004X\u0086\u000e¢\u0006\u0010\n��\u001a\u0005\b\u008d\u0002\u0010\u0006\"\u0005\b\u008e\u0002\u0010\bR\u001d\u0010\u008f\u0002\u001a\u00020\u0004X\u0086\u000e¢\u0006\u0010\n��\u001a\u0005\b\u0090\u0002\u0010\u0006\"\u0005\b\u0091\u0002\u0010\bR!\u0010\u0092\u0002\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u0012\n\u0002\u0010\u0017\u001a\u0005\b\u0093\u0002\u0010\u0014\"\u0005\b\u0094\u0002\u0010\u0016¨\u0006¨\u0002"}, d2 = {"Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;", "", "()V", "bottomImageMarginBottom", "", "getBottomImageMarginBottom", "()I", "setBottomImageMarginBottom", "(I)V", "bottomImageMarginLeft", "getBottomImageMarginLeft", "setBottomImageMarginLeft", "bottomImageMarginRight", "getBottomImageMarginRight", "setBottomImageMarginRight", "bottomImageMarginTop", "getBottomImageMarginTop", "setBottomImageMarginTop", "bottomImageResource", "getBottomImageResource", "()Ljava/lang/Integer;", "setBottomImageResource", "(Ljava/lang/Integer;)V", "Ljava/lang/Integer;", "bottomMessage", "", "getBottomMessage", "()Ljava/lang/CharSequence;", "setBottomMessage", "(Ljava/lang/CharSequence;)V", "bottomMessageImage", "getBottomMessageImage", "setBottomMessageImage", "bottomMessageImageMarginBottom", "getBottomMessageImageMarginBottom", "setBottomMessageImageMarginBottom", "bottomMessageImageMarginLeft", "getBottomMessageImageMarginLeft", "setBottomMessageImageMarginLeft", "bottomMessageImageMarginRight", "getBottomMessageImageMarginRight", "setBottomMessageImageMarginRight", "bottomMessageImageMarginTop", "getBottomMessageImageMarginTop", "setBottomMessageImageMarginTop", "bottomMessageMarginBottom", "getBottomMessageMarginBottom", "setBottomMessageMarginBottom", "bottomMessageMarginLeft", "getBottomMessageMarginLeft", "setBottomMessageMarginLeft", "bottomMessageMarginRight", "getBottomMessageMarginRight", "setBottomMessageMarginRight", "bottomMessageMarginTop", "getBottomMessageMarginTop", "setBottomMessageMarginTop", "bottomMessageTextColor", "getBottomMessageTextColor", "setBottomMessageTextColor", "bottomMessageTextIsBold", "", "getBottomMessageTextIsBold", "()Z", "setBottomMessageTextIsBold", "(Z)V", "bottomMessageTextSize", "", "getBottomMessageTextSize", "()Ljava/lang/Float;", "setBottomMessageTextSize", "(Ljava/lang/Float;)V", "Ljava/lang/Float;", "buttonPositioning", "getButtonPositioning", "setButtonPositioning", "closeButtonVisibility", "getCloseButtonVisibility", "setCloseButtonVisibility", "leftBtnAllCaps", "getLeftBtnAllCaps", "setLeftBtnAllCaps", "leftBtnBackgroundColor", "getLeftBtnBackgroundColor", "setLeftBtnBackgroundColor", "leftBtnBold", "getLeftBtnBold", "setLeftBtnBold", "leftBtnGravity", "getLeftBtnGravity", "setLeftBtnGravity", "leftBtnHeight", "getLeftBtnHeight", "setLeftBtnHeight", "leftBtnListener", "Landroid/view/View$OnClickListener;", "getLeftBtnListener", "()Landroid/view/View$OnClickListener;", "setLeftBtnListener", "(Landroid/view/View$OnClickListener;)V", "leftBtnMarginBottom", "getLeftBtnMarginBottom", "setLeftBtnMarginBottom", "leftBtnMarginLeft", "getLeftBtnMarginLeft", "setLeftBtnMarginLeft", "leftBtnMarginRight", "getLeftBtnMarginRight", "setLeftBtnMarginRight", "leftBtnMarginTop", "getLeftBtnMarginTop", "setLeftBtnMarginTop", "leftBtnResource", "getLeftBtnResource", "setLeftBtnResource", "leftBtnStrokeColor", "getLeftBtnStrokeColor", "setLeftBtnStrokeColor", "leftBtnStrokeWidth", "getLeftBtnStrokeWidth", "setLeftBtnStrokeWidth", "leftBtnText", "Landroid/text/SpannableString;", "getLeftBtnText", "()Landroid/text/SpannableString;", "setLeftBtnText", "(Landroid/text/SpannableString;)V", "leftBtnTextColor", "getLeftBtnTextColor", "setLeftBtnTextColor", "leftBtnTextSize", "getLeftBtnTextSize", "setLeftBtnTextSize", "leftBtnWidth", "getLeftBtnWidth", "setLeftBtnWidth", "leftWrapContentWidth", "getLeftWrapContentWidth", "setLeftWrapContentWidth", "message", "getMessage", "setMessage", "messageMarginBottom", "getMessageMarginBottom", "setMessageMarginBottom", "messageMarginLeft", "getMessageMarginLeft", "setMessageMarginLeft", "messageMarginRight", "getMessageMarginRight", "setMessageMarginRight", "messageMarginTop", "getMessageMarginTop", "setMessageMarginTop", "messageTextColor", "getMessageTextColor", "setMessageTextColor", "messageTextIsBold", "getMessageTextIsBold", "setMessageTextIsBold", "messageTextSize", "getMessageTextSize", "setMessageTextSize", "rightBtnAllCaps", "getRightBtnAllCaps", "setRightBtnAllCaps", "rightBtnBackgroundColor", "getRightBtnBackgroundColor", "setRightBtnBackgroundColor", "rightBtnBold", "getRightBtnBold", "setRightBtnBold", "rightBtnGravity", "getRightBtnGravity", "setRightBtnGravity", "rightBtnHeight", "getRightBtnHeight", "setRightBtnHeight", "rightBtnListener", "getRightBtnListener", "setRightBtnListener", "rightBtnMarginBottom", "getRightBtnMarginBottom", "setRightBtnMarginBottom", "rightBtnMarginLeft", "getRightBtnMarginLeft", "setRightBtnMarginLeft", "rightBtnMarginRight", "getRightBtnMarginRight", "setRightBtnMarginRight", "rightBtnMarginTop", "getRightBtnMarginTop", "setRightBtnMarginTop", "rightBtnResource", "getRightBtnResource", "setRightBtnResource", "rightBtnStrokeColor", "getRightBtnStrokeColor", "setRightBtnStrokeColor", "rightBtnStrokeWidth", "getRightBtnStrokeWidth", "setRightBtnStrokeWidth", "rightBtnText", "getRightBtnText", "setRightBtnText", "rightBtnTextColor", "getRightBtnTextColor", "setRightBtnTextColor", "rightBtnTextSize", "getRightBtnTextSize", "setRightBtnTextSize", "rightBtnWidth", "getRightBtnWidth", "setRightBtnWidth", "rightWrapContentWidth", "getRightWrapContentWidth", "setRightWrapContentWidth", "shapeBackgroundColor", "getShapeBackgroundColor", "setShapeBackgroundColor", "shapePaddingBottom", "getShapePaddingBottom", "setShapePaddingBottom", "shapePaddingLeft", "getShapePaddingLeft", "setShapePaddingLeft", "shapePaddingRight", "getShapePaddingRight", "setShapePaddingRight", "shapePaddingTop", "getShapePaddingTop", "setShapePaddingTop", "shapeStrokeColor", "getShapeStrokeColor", "setShapeStrokeColor", "shapeWrapContent", "getShapeWrapContent", "setShapeWrapContent", "title", "getTitle", "setTitle", "titleMarginBottom", "getTitleMarginBottom", "setTitleMarginBottom", "titleMarginLeft", "getTitleMarginLeft", "setTitleMarginLeft", "titleMarginRight", "getTitleMarginRight", "setTitleMarginRight", "titleMarginTop", "getTitleMarginTop", "setTitleMarginTop", "titleTextColor", "getTitleTextColor", "setTitleTextColor", "titleTextIsBold", "getTitleTextIsBold", "setTitleTextIsBold", "titleTextSize", "getTitleTextSize", "setTitleTextSize", "topImageMarginBottom", "getTopImageMarginBottom", "setTopImageMarginBottom", "topImageMarginLeft", "getTopImageMarginLeft", "setTopImageMarginLeft", "topImageMarginRight", "getTopImageMarginRight", "setTopImageMarginRight", "topImageMarginTop", "getTopImageMarginTop", "setTopImageMarginTop", "topImageResource", "getTopImageResource", "setTopImageResource", JsonPOJOBuilder.DEFAULT_BUILD_METHOD, "Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew;", "withBottomImageResource", "(Ljava/lang/Integer;IIII)Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;", "withBottomMessage", "(Ljava/lang/CharSequence;Ljava/lang/Integer;Ljava/lang/Float;ZIIII)Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;", "withBottomMessageImage", "withButtonPositioning", "(Ljava/lang/Float;)Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;", "withCloseButton", "withLeftButton", "(Landroid/text/SpannableString;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Float;Landroid/view/View$OnClickListener;ZLjava/lang/Integer;ZZIIIILjava/lang/Integer;Ljava/lang/Integer;)Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;", "withMessage", "isTextBold", "withRightButton", "withShape", "(Ljava/lang/Integer;Ljava/lang/Integer;IIIIZ)Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;", "withTitle", "withTopImageResource", "callapp-client_playRelease"}, k = 1, mv = {1, 4, 2})
        /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder.class */
        public static final class DialogMessageWithTopImageBuilder {
            private View.OnClickListener A;
            private boolean B;
            private boolean C;
            private boolean D;
            private int E;
            private int F;
            private int G;
            private int H;
            private Integer I;
            private Integer J;
            private SpannableString K;
            private Integer L;
            private Integer M;
            private Integer O;
            private Integer P;
            private Integer Q;
            private Float R;
            private View.OnClickListener S;
            private boolean T;
            private boolean U;
            private boolean V;
            private int W;
            private int X;
            private int Y;
            private int Z;

            /* renamed from: a  reason: collision with root package name */
            public Float f15496a;
            private Integer aA;
            private int aB;
            private int aC;
            private int aD;
            private int aE;
            private boolean aF;
            private Integer aa;
            private Integer ab;
            private CharSequence ac;
            private Integer ad;
            private Float ae;
            private boolean af;
            private int ag;
            private int ah;
            private int ai;
            private int aj;
            private CharSequence ak;
            private Integer al;
            private Float am;
            private boolean an;
            private int ao;
            private int ap;
            private int aq;
            private int ar;
            private CharSequence as;
            private Integer at;
            private Float au;
            private boolean av;
            private int aw;
            private int ax;
            private int ay;
            private int az;

            /* renamed from: c  reason: collision with root package name */
            private int f15498c;

            /* renamed from: d  reason: collision with root package name */
            private int f15499d;
            private int e;
            private int f;
            private int h;
            private int i;
            private int j;
            private int k;
            private int n;
            private int o;
            private int p;
            private int q;
            private boolean r;
            private SpannableString s;
            private Integer t;
            private Integer u;
            private Integer w;
            private Integer x;
            private Integer y;
            private Float z;

            /* renamed from: b  reason: collision with root package name */
            private Integer f15497b = 0;
            private Integer g = 0;
            private Integer l = 0;
            private Integer m = 0;
            private Integer v = 0;
            private Integer N = 0;

            public static /* synthetic */ DialogMessageWithTopImageBuilder a(DialogMessageWithTopImageBuilder dialogMessageWithTopImageBuilder, int i, int i2, int i3, int i4, boolean z, int i5) {
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
                dialogMessageWithTopImageBuilder.l = null;
                dialogMessageWithTopImageBuilder.m = null;
                dialogMessageWithTopImageBuilder.n = i;
                dialogMessageWithTopImageBuilder.o = i2;
                dialogMessageWithTopImageBuilder.p = i3;
                dialogMessageWithTopImageBuilder.q = i4;
                dialogMessageWithTopImageBuilder.r = z;
                return dialogMessageWithTopImageBuilder;
            }

            public static /* synthetic */ DialogMessageWithTopImageBuilder a(DialogMessageWithTopImageBuilder dialogMessageWithTopImageBuilder, SpannableString spannableString, Integer num, Integer num2, Integer num3, Integer num4, Integer num5, Float f, View.OnClickListener onClickListener, boolean z, Integer num6, boolean z2, int i, int i2, int i3, Integer num7, Integer num8, int i4) {
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
                dialogMessageWithTopImageBuilder.s = spannableString;
                dialogMessageWithTopImageBuilder.t = num;
                dialogMessageWithTopImageBuilder.u = num2;
                dialogMessageWithTopImageBuilder.v = num3;
                dialogMessageWithTopImageBuilder.x = num4;
                dialogMessageWithTopImageBuilder.y = num5;
                dialogMessageWithTopImageBuilder.z = f;
                dialogMessageWithTopImageBuilder.A = onClickListener;
                dialogMessageWithTopImageBuilder.B = z;
                dialogMessageWithTopImageBuilder.w = num6;
                dialogMessageWithTopImageBuilder.C = z2;
                dialogMessageWithTopImageBuilder.D = false;
                dialogMessageWithTopImageBuilder.E = i;
                dialogMessageWithTopImageBuilder.F = 0;
                dialogMessageWithTopImageBuilder.G = i2;
                dialogMessageWithTopImageBuilder.H = i3;
                dialogMessageWithTopImageBuilder.I = num7;
                dialogMessageWithTopImageBuilder.J = num8;
                return dialogMessageWithTopImageBuilder;
            }

            public static /* synthetic */ DialogMessageWithTopImageBuilder a(DialogMessageWithTopImageBuilder dialogMessageWithTopImageBuilder, SpannableString spannableString, Integer num, Integer num2, Integer num3, Integer num4, Integer num5, Float f, View.OnClickListener onClickListener, boolean z, Integer num6, boolean z2, boolean z3, int i, int i2, int i3, Integer num7, Integer num8, int i4) {
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
                dialogMessageWithTopImageBuilder.K = spannableString;
                dialogMessageWithTopImageBuilder.L = num;
                dialogMessageWithTopImageBuilder.M = num2;
                dialogMessageWithTopImageBuilder.N = num3;
                dialogMessageWithTopImageBuilder.P = num4;
                dialogMessageWithTopImageBuilder.Q = num5;
                dialogMessageWithTopImageBuilder.R = f;
                dialogMessageWithTopImageBuilder.S = onClickListener;
                dialogMessageWithTopImageBuilder.T = z;
                dialogMessageWithTopImageBuilder.O = num6;
                dialogMessageWithTopImageBuilder.U = z2;
                dialogMessageWithTopImageBuilder.V = z3;
                dialogMessageWithTopImageBuilder.W = i;
                dialogMessageWithTopImageBuilder.X = 0;
                dialogMessageWithTopImageBuilder.Y = i2;
                dialogMessageWithTopImageBuilder.Z = i3;
                dialogMessageWithTopImageBuilder.aa = num7;
                dialogMessageWithTopImageBuilder.ab = num8;
                return dialogMessageWithTopImageBuilder;
            }

            public static /* synthetic */ DialogMessageWithTopImageBuilder a(DialogMessageWithTopImageBuilder dialogMessageWithTopImageBuilder, CharSequence charSequence, Integer num) {
                dialogMessageWithTopImageBuilder.as = charSequence;
                dialogMessageWithTopImageBuilder.at = num;
                dialogMessageWithTopImageBuilder.au = null;
                dialogMessageWithTopImageBuilder.av = false;
                dialogMessageWithTopImageBuilder.aw = 10;
                dialogMessageWithTopImageBuilder.ax = 0;
                dialogMessageWithTopImageBuilder.ay = 30;
                dialogMessageWithTopImageBuilder.az = 0;
                return dialogMessageWithTopImageBuilder;
            }

            public static /* synthetic */ DialogMessageWithTopImageBuilder a(DialogMessageWithTopImageBuilder dialogMessageWithTopImageBuilder, CharSequence charSequence, Integer num, int i) {
                dialogMessageWithTopImageBuilder.ak = charSequence;
                dialogMessageWithTopImageBuilder.al = num;
                dialogMessageWithTopImageBuilder.am = null;
                dialogMessageWithTopImageBuilder.an = false;
                dialogMessageWithTopImageBuilder.ao = i;
                dialogMessageWithTopImageBuilder.ap = 0;
                dialogMessageWithTopImageBuilder.aq = 0;
                dialogMessageWithTopImageBuilder.ar = 0;
                return dialogMessageWithTopImageBuilder;
            }

            public static /* synthetic */ DialogMessageWithTopImageBuilder a(DialogMessageWithTopImageBuilder dialogMessageWithTopImageBuilder, CharSequence charSequence, Integer num, boolean z, int i, int i2) {
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
                dialogMessageWithTopImageBuilder.ac = charSequence;
                dialogMessageWithTopImageBuilder.ad = num;
                dialogMessageWithTopImageBuilder.ae = null;
                dialogMessageWithTopImageBuilder.af = z;
                dialogMessageWithTopImageBuilder.ag = i;
                dialogMessageWithTopImageBuilder.ah = 0;
                dialogMessageWithTopImageBuilder.ai = 0;
                dialogMessageWithTopImageBuilder.aj = 0;
                return dialogMessageWithTopImageBuilder;
            }

            public static /* synthetic */ DialogMessageWithTopImageBuilder a(DialogMessageWithTopImageBuilder dialogMessageWithTopImageBuilder, Integer num) {
                dialogMessageWithTopImageBuilder.aA = num;
                dialogMessageWithTopImageBuilder.aB = 10;
                dialogMessageWithTopImageBuilder.aC = 0;
                dialogMessageWithTopImageBuilder.aD = 0;
                dialogMessageWithTopImageBuilder.aE = 0;
                return dialogMessageWithTopImageBuilder;
            }

            public static /* synthetic */ DialogMessageWithTopImageBuilder b(DialogMessageWithTopImageBuilder dialogMessageWithTopImageBuilder, Integer num) {
                dialogMessageWithTopImageBuilder.f15497b = num;
                dialogMessageWithTopImageBuilder.f15498c = 0;
                dialogMessageWithTopImageBuilder.f15499d = 0;
                dialogMessageWithTopImageBuilder.e = 0;
                dialogMessageWithTopImageBuilder.f = 0;
                return dialogMessageWithTopImageBuilder;
            }

            public final DialogMessageWithTopImageNew a() {
                return new DialogMessageWithTopImageNew(this);
            }

            public final int getBottomImageMarginBottom() {
                return this.i;
            }

            public final int getBottomImageMarginLeft() {
                return this.j;
            }

            public final int getBottomImageMarginRight() {
                return this.k;
            }

            public final int getBottomImageMarginTop() {
                return this.h;
            }

            public final Integer getBottomImageResource() {
                return this.g;
            }

            public final CharSequence getBottomMessage() {
                return this.as;
            }

            public final Integer getBottomMessageImage() {
                return this.aA;
            }

            public final int getBottomMessageImageMarginBottom() {
                return this.aC;
            }

            public final int getBottomMessageImageMarginLeft() {
                return this.aD;
            }

            public final int getBottomMessageImageMarginRight() {
                return this.aE;
            }

            public final int getBottomMessageImageMarginTop() {
                return this.aB;
            }

            public final int getBottomMessageMarginBottom() {
                return this.ax;
            }

            public final int getBottomMessageMarginLeft() {
                return this.ay;
            }

            public final int getBottomMessageMarginRight() {
                return this.az;
            }

            public final int getBottomMessageMarginTop() {
                return this.aw;
            }

            public final Integer getBottomMessageTextColor() {
                return this.at;
            }

            public final boolean getBottomMessageTextIsBold() {
                return this.av;
            }

            public final Float getButtonPositioning() {
                return this.f15496a;
            }

            public final boolean getCloseButtonVisibility() {
                return this.aF;
            }

            public final boolean getLeftBtnAllCaps() {
                return this.B;
            }

            public final Integer getLeftBtnBackgroundColor() {
                return this.t;
            }

            public final boolean getLeftBtnBold() {
                return this.C;
            }

            public final Integer getLeftBtnGravity() {
                return this.w;
            }

            public final Integer getLeftBtnHeight() {
                return this.J;
            }

            public final View.OnClickListener getLeftBtnListener() {
                return this.A;
            }

            public final int getLeftBtnMarginBottom() {
                return this.F;
            }

            public final int getLeftBtnMarginLeft() {
                return this.G;
            }

            public final int getLeftBtnMarginRight() {
                return this.H;
            }

            public final int getLeftBtnMarginTop() {
                return this.E;
            }

            public final Integer getLeftBtnResource() {
                return this.u;
            }

            public final Integer getLeftBtnStrokeColor() {
                return this.x;
            }

            public final Integer getLeftBtnStrokeWidth() {
                return this.v;
            }

            public final SpannableString getLeftBtnText() {
                return this.s;
            }

            public final Integer getLeftBtnTextColor() {
                return this.y;
            }

            public final Float getLeftBtnTextSize() {
                return this.z;
            }

            public final Integer getLeftBtnWidth() {
                return this.I;
            }

            public final boolean getLeftWrapContentWidth() {
                return this.D;
            }

            public final CharSequence getMessage() {
                return this.ak;
            }

            public final int getMessageMarginBottom() {
                return this.ap;
            }

            public final int getMessageMarginLeft() {
                return this.aq;
            }

            public final int getMessageMarginRight() {
                return this.ar;
            }

            public final int getMessageMarginTop() {
                return this.ao;
            }

            public final Integer getMessageTextColor() {
                return this.al;
            }

            public final boolean getMessageTextIsBold() {
                return this.an;
            }

            public final boolean getRightBtnAllCaps() {
                return this.T;
            }

            public final Integer getRightBtnBackgroundColor() {
                return this.L;
            }

            public final boolean getRightBtnBold() {
                return this.U;
            }

            public final Integer getRightBtnGravity() {
                return this.O;
            }

            public final Integer getRightBtnHeight() {
                return this.ab;
            }

            public final View.OnClickListener getRightBtnListener() {
                return this.S;
            }

            public final int getRightBtnMarginBottom() {
                return this.X;
            }

            public final int getRightBtnMarginLeft() {
                return this.Y;
            }

            public final int getRightBtnMarginRight() {
                return this.Z;
            }

            public final int getRightBtnMarginTop() {
                return this.W;
            }

            public final Integer getRightBtnResource() {
                return this.M;
            }

            public final Integer getRightBtnStrokeColor() {
                return this.P;
            }

            public final Integer getRightBtnStrokeWidth() {
                return this.N;
            }

            public final SpannableString getRightBtnText() {
                return this.K;
            }

            public final Integer getRightBtnTextColor() {
                return this.Q;
            }

            public final Float getRightBtnTextSize() {
                return this.R;
            }

            public final Integer getRightBtnWidth() {
                return this.aa;
            }

            public final boolean getRightWrapContentWidth() {
                return this.V;
            }

            public final int getShapePaddingBottom() {
                return this.o;
            }

            public final int getShapePaddingLeft() {
                return this.p;
            }

            public final int getShapePaddingRight() {
                return this.q;
            }

            public final int getShapePaddingTop() {
                return this.n;
            }

            public final CharSequence getTitle() {
                return this.ac;
            }

            public final int getTitleMarginBottom() {
                return this.ah;
            }

            public final int getTitleMarginLeft() {
                return this.ai;
            }

            public final int getTitleMarginRight() {
                return this.aj;
            }

            public final int getTitleMarginTop() {
                return this.ag;
            }

            public final Integer getTitleTextColor() {
                return this.ad;
            }

            public final boolean getTitleTextIsBold() {
                return this.af;
            }

            public final int getTopImageMarginBottom() {
                return this.f15499d;
            }

            public final int getTopImageMarginLeft() {
                return this.e;
            }

            public final int getTopImageMarginRight() {
                return this.f;
            }

            public final int getTopImageMarginTop() {
                return this.f15498c;
            }

            public final Integer getTopImageResource() {
                return this.f15497b;
            }
        }

        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static void a(TextView textView, Integer num, Integer num2, Integer num3, Integer num4, Integer num5, SpannableString spannableString, Float f, boolean z, boolean z2) {
            if (textView != null) {
                textView.setVisibility(0);
                if (num != null) {
                    textView.setBackgroundResource(num.intValue());
                    Drawable background = textView.getBackground();
                    p.b(background, "it.background");
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
                            textView.setForeground(b.a(CallAppApplication.get(), 2131230873));
                        }
                    }
                }
                SpannableString spannableString2 = spannableString;
                if (StringUtils.b(spannableString2)) {
                    textView.setText(spannableString2);
                    textView.setAllCaps(z);
                    if (z2) {
                        textView.setTypeface(textView.getTypeface(), 1);
                    }
                    if (f != null) {
                        textView.setTextSize(1, f.floatValue());
                    }
                    if (num5 != null) {
                        textView.setTextColor(num5.intValue());
                    }
                }
            }
        }
    }

    public DialogMessageWithTopImageNew(Companion.DialogMessageWithTopImageBuilder dialogMessageBuilder) {
        p.d(dialogMessageBuilder, "dialogMessageBuilder");
        this.f15495b = dialogMessageBuilder;
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
            View.OnClickListener rightBtnListener = this.f15495b.getRightBtnListener();
            if (rightBtnListener != null) {
                rightBtnListener.onClick(view);
            }
            dismiss();
        } else if (valueOf != null && valueOf.intValue() == 2131363176) {
            View.OnClickListener leftBtnListener = this.f15495b.getLeftBtnListener();
            if (leftBtnListener != null) {
                leftBtnListener.onClick(view);
            }
            dismiss();
        } else if (valueOf != null && valueOf.intValue() == 2131362372) {
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
        p.d(inflater, "inflater");
        View view = inflater.inflate(getLayoutResource(), (ViewGroup) null);
        p.b(view, "view");
        setupViews(view);
        return view;
    }

    @Override // com.callapp.contacts.manager.popup.DialogPopup
    public void setDialogWindowSize(Window window) {
        p.d(window, "window");
        window.setLayout(-1, -2);
    }

    public final void setupViews(View itemView) {
        p.d(itemView, "itemView");
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
        ImageView closeButton = (ImageView) itemView.findViewById(a.C0337a.closeButton);
        DialogMessageWithTopImageNew dialogMessageWithTopImageNew = this;
        rightButton.setOnClickListener(dialogMessageWithTopImageNew);
        leftButton.setOnClickListener(dialogMessageWithTopImageNew);
        constraintLayout.setPadding(this.f15495b.getShapePaddingLeft(), this.f15495b.getShapePaddingTop(), this.f15495b.getShapePaddingRight(), this.f15495b.getShapePaddingBottom());
        if (this.f15495b.getLeftBtnText() != null) {
            Companion.a(leftButton, this.f15495b.getLeftBtnResource(), this.f15495b.getLeftBtnBackgroundColor(), this.f15495b.getLeftBtnStrokeColor(), this.f15495b.getLeftBtnStrokeWidth(), this.f15495b.getLeftBtnTextColor(), this.f15495b.getLeftBtnText(), this.f15495b.getLeftBtnTextSize(), this.f15495b.getLeftBtnAllCaps(), this.f15495b.getLeftBtnBold());
            p.b(leftButton, "leftButton");
            ViewGroup.LayoutParams layoutParams = leftButton.getLayoutParams();
            Objects.requireNonNull(layoutParams, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams");
            ConstraintLayout.LayoutParams layoutParams2 = (ConstraintLayout.LayoutParams) layoutParams;
            layoutParams2.setMargins(this.f15495b.getLeftBtnMarginLeft(), this.f15495b.getLeftBtnMarginTop(), this.f15495b.getLeftBtnMarginRight(), this.f15495b.getLeftBtnMarginBottom());
            Integer leftBtnWidth = this.f15495b.getLeftBtnWidth();
            if (leftBtnWidth != null) {
                layoutParams2.width = leftBtnWidth.intValue();
                v vVar = v.f38654a;
            }
            Integer leftBtnHeight = this.f15495b.getLeftBtnHeight();
            if (leftBtnHeight != null) {
                layoutParams2.height = leftBtnHeight.intValue();
                v vVar2 = v.f38654a;
            }
            leftButton.setLayoutParams(layoutParams2);
            v vVar3 = v.f38654a;
        }
        if (this.f15495b.getRightBtnText() != null) {
            Companion.a(rightButton, this.f15495b.getRightBtnResource(), this.f15495b.getRightBtnBackgroundColor(), this.f15495b.getRightBtnStrokeColor(), this.f15495b.getRightBtnStrokeWidth(), this.f15495b.getRightBtnTextColor(), this.f15495b.getRightBtnText(), this.f15495b.getRightBtnTextSize(), this.f15495b.getRightBtnAllCaps(), this.f15495b.getRightBtnBold());
            p.b(rightButton, "rightButton");
            ViewGroup.LayoutParams layoutParams3 = rightButton.getLayoutParams();
            Objects.requireNonNull(layoutParams3, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams");
            ConstraintLayout.LayoutParams layoutParams4 = (ConstraintLayout.LayoutParams) layoutParams3;
            layoutParams4.setMargins(this.f15495b.getRightBtnMarginLeft(), this.f15495b.getRightBtnMarginTop(), this.f15495b.getRightBtnMarginRight(), this.f15495b.getRightBtnMarginBottom());
            Integer rightBtnWidth = this.f15495b.getRightBtnWidth();
            if (rightBtnWidth != null) {
                layoutParams4.width = rightBtnWidth.intValue();
                v vVar4 = v.f38654a;
            }
            Integer rightBtnHeight = this.f15495b.getRightBtnHeight();
            if (rightBtnHeight != null) {
                layoutParams4.height = rightBtnHeight.intValue();
                v vVar5 = v.f38654a;
            }
            rightButton.setLayoutParams(layoutParams4);
            v vVar6 = v.f38654a;
        }
        CharSequence title = this.f15495b.getTitle();
        if (title != null) {
            p.b(dialogTitle, "dialogTitle");
            dialogTitle.setVisibility(0);
            dialogTitle.setText(title);
            if (this.f15495b.getTitleTextIsBold()) {
                dialogTitle.setTypeface(dialogTitle.getTypeface(), 1);
            }
            Integer titleTextColor = this.f15495b.getTitleTextColor();
            if (titleTextColor != null) {
                dialogTitle.setTextColor(titleTextColor.intValue());
                v vVar7 = v.f38654a;
            }
            ViewGroup.LayoutParams layoutParams5 = dialogTitle.getLayoutParams();
            Objects.requireNonNull(layoutParams5, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams");
            ConstraintLayout.LayoutParams layoutParams6 = (ConstraintLayout.LayoutParams) layoutParams5;
            layoutParams6.setMargins(this.f15495b.getTitleMarginLeft(), this.f15495b.getTitleMarginTop(), this.f15495b.getTitleMarginRight(), this.f15495b.getTitleMarginBottom());
            dialogTitle.setLayoutParams(layoutParams6);
            v vVar8 = v.f38654a;
        }
        CharSequence message = this.f15495b.getMessage();
        if (message != null) {
            p.b(dialogBody, "dialogBody");
            dialogBody.setVisibility(0);
            dialogBody.setText(message);
            if (this.f15495b.getMessageTextIsBold()) {
                dialogBody.setTypeface(dialogBody.getTypeface(), 1);
            }
            Integer messageTextColor = this.f15495b.getMessageTextColor();
            if (messageTextColor != null) {
                dialogBody.setTextColor(messageTextColor.intValue());
                v vVar9 = v.f38654a;
            }
            ViewGroup.LayoutParams layoutParams7 = dialogBody.getLayoutParams();
            Objects.requireNonNull(layoutParams7, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams");
            ConstraintLayout.LayoutParams layoutParams8 = (ConstraintLayout.LayoutParams) layoutParams7;
            layoutParams8.setMargins(this.f15495b.getMessageMarginLeft(), this.f15495b.getMessageMarginTop(), this.f15495b.getMessageMarginRight(), this.f15495b.getMessageMarginBottom());
            dialogBody.setLayoutParams(layoutParams8);
            v vVar10 = v.f38654a;
        }
        CharSequence bottomMessage = this.f15495b.getBottomMessage();
        if (bottomMessage != null) {
            p.b(dialogBottomBody, "dialogBottomBody");
            dialogBottomBody.setVisibility(0);
            dialogBottomBody.setText(bottomMessage);
            if (this.f15495b.getBottomMessageTextIsBold()) {
                dialogBottomBody.setTypeface(dialogBottomBody.getTypeface(), 1);
            }
            Integer bottomMessageTextColor = this.f15495b.getBottomMessageTextColor();
            if (bottomMessageTextColor != null) {
                dialogBottomBody.setTextColor(bottomMessageTextColor.intValue());
                v vVar11 = v.f38654a;
            }
            ViewGroup.LayoutParams layoutParams9 = dialogBottomBody.getLayoutParams();
            Objects.requireNonNull(layoutParams9, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams");
            ConstraintLayout.LayoutParams layoutParams10 = (ConstraintLayout.LayoutParams) layoutParams9;
            layoutParams10.setMargins(this.f15495b.getBottomMessageMarginLeft(), this.f15495b.getBottomMessageMarginTop(), this.f15495b.getBottomMessageMarginRight(), this.f15495b.getBottomMessageMarginBottom());
            dialogBottomBody.setLayoutParams(layoutParams10);
            v vVar12 = v.f38654a;
        }
        Integer bottomMessageImage = this.f15495b.getBottomMessageImage();
        if (bottomMessageImage != null) {
            int intValue = bottomMessageImage.intValue();
            p.b(dialogBottomBodyImage, "dialogBottomBodyImage");
            ViewGroup.LayoutParams layoutParams11 = dialogBottomBodyImage.getLayoutParams();
            Objects.requireNonNull(layoutParams11, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams");
            ConstraintLayout.LayoutParams layoutParams12 = (ConstraintLayout.LayoutParams) layoutParams11;
            layoutParams12.setMargins(this.f15495b.getBottomMessageImageMarginLeft(), this.f15495b.getBottomMessageImageMarginTop(), this.f15495b.getBottomMessageImageMarginRight(), this.f15495b.getBottomMessageImageMarginBottom());
            dialogBottomBodyImage.setImageResource(intValue);
            dialogBottomBodyImage.setVisibility(0);
            dialogBottomBodyImage.setLayoutParams(layoutParams12);
            v vVar13 = v.f38654a;
        }
        if (this.f15495b.getLeftWrapContentWidth()) {
            p.b(leftButton, "leftButton");
            ViewGroup.LayoutParams layoutParams13 = leftButton.getLayoutParams();
            layoutParams13.width = -2;
            leftButton.setLayoutParams(layoutParams13);
        }
        if (this.f15495b.getRightWrapContentWidth()) {
            p.b(rightButton, "rightButton");
            ViewGroup.LayoutParams layoutParams14 = rightButton.getLayoutParams();
            layoutParams14.width = -2;
            rightButton.setLayoutParams(layoutParams14);
        }
        Integer rightBtnGravity = this.f15495b.getRightBtnGravity();
        if (rightBtnGravity != null) {
            int intValue2 = rightBtnGravity.intValue();
            p.b(rightButton, "rightButton");
            rightButton.setGravity(intValue2);
            v vVar14 = v.f38654a;
        }
        Integer leftBtnGravity = this.f15495b.getLeftBtnGravity();
        if (leftBtnGravity != null) {
            int intValue3 = leftBtnGravity.intValue();
            p.b(leftButton, "leftButton");
            leftButton.setGravity(intValue3);
            v vVar15 = v.f38654a;
        }
        Float buttonPositioning = this.f15495b.getButtonPositioning();
        if (buttonPositioning != null) {
            float floatValue = buttonPositioning.floatValue();
            p.b(customDialogGuideline, "customDialogGuideline");
            ViewGroup.LayoutParams layoutParams15 = customDialogGuideline.getLayoutParams();
            Objects.requireNonNull(layoutParams15, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams");
            ConstraintLayout.LayoutParams layoutParams16 = (ConstraintLayout.LayoutParams) layoutParams15;
            layoutParams16.f1591c = floatValue;
            customDialogGuideline.setLayoutParams(layoutParams16);
            v vVar16 = v.f38654a;
        }
        Integer topImageResource = this.f15495b.getTopImageResource();
        if (topImageResource != null) {
            int intValue4 = topImageResource.intValue();
            p.b(topImage, "topImage");
            topImage.setVisibility(0);
            topImage.setImageResource(intValue4);
            ViewGroup.LayoutParams layoutParams17 = topImage.getLayoutParams();
            Objects.requireNonNull(layoutParams17, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams");
            ConstraintLayout.LayoutParams layoutParams18 = (ConstraintLayout.LayoutParams) layoutParams17;
            layoutParams18.setMargins(this.f15495b.getTopImageMarginLeft(), this.f15495b.getTopImageMarginTop(), this.f15495b.getTopImageMarginRight(), this.f15495b.getTopImageMarginBottom());
            topImage.setLayoutParams(layoutParams18);
            v vVar17 = v.f38654a;
        }
        Integer bottomImageResource = this.f15495b.getBottomImageResource();
        if (bottomImageResource != null) {
            int intValue5 = bottomImageResource.intValue();
            p.b(bottomImage, "bottomImage");
            bottomImage.setVisibility(0);
            bottomImage.setImageResource(intValue5);
            ViewGroup.LayoutParams layoutParams19 = bottomImage.getLayoutParams();
            Objects.requireNonNull(layoutParams19, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams");
            ConstraintLayout.LayoutParams layoutParams20 = (ConstraintLayout.LayoutParams) layoutParams19;
            layoutParams20.setMargins(this.f15495b.getBottomImageMarginLeft(), this.f15495b.getBottomImageMarginTop(), this.f15495b.getBottomImageMarginRight(), this.f15495b.getBottomImageMarginBottom());
            bottomImage.setLayoutParams(layoutParams20);
            v vVar18 = v.f38654a;
        }
        if (this.f15495b.getCloseButtonVisibility()) {
            p.b(closeButton, "closeButton");
            closeButton.setVisibility(0);
            closeButton.setColorFilter(new PorterDuffColorFilter(ThemeUtils.getColor(2131100140), PorterDuff.Mode.SRC_IN));
            closeButton.setOnClickListener(dialogMessageWithTopImageNew);
        }
    }
}
