package p193e.p194a.p195a.p224d;

import android.animation.ArgbEvaluator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.Intent;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextWatcher;
import android.util.TypedValue;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.PopupMenu;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;
import androidx.appcompat.widget.Toolbar;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.floatingactionbutton.FloatingActionButton;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.razorpay.AnalyticsConstants;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.C2752R;
import com.truecaller.data.entity.messaging.Participant;
import com.truecaller.messaging.conversation.ConversationActivity;
import com.truecaller.messaging.conversation.draft.DraftActivity;
import com.truecaller.messaging.conversation.draft.DraftArguments;
import com.truecaller.messaging.conversation.draft.SharedTextDraftsArguments;
import com.truecaller.messaging.conversation.draft.TextDraftActivity;
import com.truecaller.messaging.data.types.Draft;
import com.truecaller.messaging.defaultsms.DefaultSmsActivity;
import com.truecaller.p183ui.TruecallerInit;
import com.truecaller.p183ui.view.TintedImageView;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import javax.inject.Inject;
import kotlin.Metadata;
import n3.b.a.h;
import p1727n3.p1734b.p1735a.AbstractC25393a;
import p1727n3.p1734b.p1735a.g$a;
import p1727n3.p1807k.p1809b.p1811d.C26488h;
import p1727n3.p1859r.p1860a.C26907a;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p194a.C21846z1;
import p193e.p194a.p1049l4.C17422k;
import p193e.p194a.p1111o2.C18898f;
import p193e.p194a.p1111o2.C18910r;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p195a.p224d.p225a.C5869a;
import p193e.p194a.p372b0.p430q.C8613t;
import p193e.p194a.p682e.C13338z0;
import p193e.p194a.p851h5.AbstractC14965w;
import s1.z.c.l;
import s1.z.c.m;
@Metadata(bv = {1, 0, 3}, d1 = {"��ü\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n��\n\u0002\u0010\u0015\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b1\n\u0002\u0018\u0002\n\u0002\b\u0012\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\t\u0018��2\u00020\u00012\u00020\u00022\u00020\u0003B\b¢\u0006\u0005\bÜ\u0001\u0010\u0014J\u0019\u0010\u0007\u001a\u00020\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016¢\u0006\u0004\b\u0007\u0010\bJ-\u0010\u000e\u001a\u0004\u0018\u00010\r2\u0006\u0010\n\u001a\u00020\t2\b\u0010\f\u001a\u0004\u0018\u00010\u000b2\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016¢\u0006\u0004\b\u000e\u0010\u000fJ!\u0010\u0011\u001a\u00020\u00062\u0006\u0010\u0010\u001a\u00020\r2\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016¢\u0006\u0004\b\u0011\u0010\u0012J\u000f\u0010\u0013\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u0013\u0010\u0014J\u000f\u0010\u0015\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u0015\u0010\u0014J\u0017\u0010\u0017\u001a\u00020\u00062\u0006\u0010\u0016\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0017\u0010\bJ)\u0010\u001d\u001a\u00020\u00062\u0006\u0010\u0019\u001a\u00020\u00182\u0006\u0010\u001a\u001a\u00020\u00182\b\u0010\u001c\u001a\u0004\u0018\u00010\u001bH\u0016¢\u0006\u0004\b\u001d\u0010\u001eJ/\u0010$\u001a\u00020\u00062\u0006\u0010\u0019\u001a\u00020\u00182\u000e\u0010!\u001a\n\u0012\u0006\b\u0001\u0012\u00020 0\u001f2\u0006\u0010#\u001a\u00020\"H\u0016¢\u0006\u0004\b$\u0010%J\u000f\u0010&\u001a\u00020\u0006H\u0016¢\u0006\u0004\b&\u0010\u0014J\u0017\u0010)\u001a\u00020\u00062\u0006\u0010(\u001a\u00020'H\u0016¢\u0006\u0004\b)\u0010*J\u000f\u0010+\u001a\u00020\u0006H\u0016¢\u0006\u0004\b+\u0010\u0014J\u0017\u0010.\u001a\u00020\u00062\u0006\u0010-\u001a\u00020,H\u0016¢\u0006\u0004\b.\u0010/J3\u00104\u001a\u00020\u00062\b\u00101\u001a\u0004\u0018\u0001002\u000e\u00102\u001a\n\u0012\u0004\u0012\u00020,\u0018\u00010\u001f2\b\u00103\u001a\u0004\u0018\u00010\u001bH\u0016¢\u0006\u0004\b4\u00105J\u0019\u00107\u001a\u00020\u00062\b\b\u0001\u00106\u001a\u00020\u0018H\u0016¢\u0006\u0004\b7\u00108J!\u0010:\u001a\u00020\u00062\b\b\u0001\u00106\u001a\u00020\u00182\u0006\u00109\u001a\u00020\u0018H\u0016¢\u0006\u0004\b:\u0010;J\u000f\u0010<\u001a\u00020\u0006H\u0016¢\u0006\u0004\b<\u0010\u0014J\u000f\u0010=\u001a\u00020\u0006H\u0016¢\u0006\u0004\b=\u0010\u0014J\u001f\u0010>\u001a\u00020\u00062\u000e\u00102\u001a\n\u0012\u0004\u0012\u00020,\u0018\u00010\u001fH\u0016¢\u0006\u0004\b>\u0010?J\u000f\u0010@\u001a\u00020\u0006H\u0016¢\u0006\u0004\b@\u0010\u0014J\u000f\u0010A\u001a\u00020\u0006H\u0016¢\u0006\u0004\bA\u0010\u0014J\u0017\u0010B\u001a\u00020\u00062\u0006\u0010(\u001a\u00020'H\u0016¢\u0006\u0004\bB\u0010*J\u000f\u0010C\u001a\u00020\u0006H\u0016¢\u0006\u0004\bC\u0010\u0014J\u000f\u0010D\u001a\u00020\u0006H\u0016¢\u0006\u0004\bD\u0010\u0014J\u0011\u0010E\u001a\u0004\u0018\u00010\u001bH\u0016¢\u0006\u0004\bE\u0010FJ\u0017\u0010G\u001a\u00020\u00062\u0006\u0010(\u001a\u00020'H\u0016¢\u0006\u0004\bG\u0010*J\u0017\u0010H\u001a\u00020\u00062\u0006\u0010(\u001a\u00020'H\u0016¢\u0006\u0004\bH\u0010*J\u000f\u0010I\u001a\u00020\u0006H\u0016¢\u0006\u0004\bI\u0010\u0014J\u0017\u0010K\u001a\u00020\u00062\u0006\u0010J\u001a\u00020\u0018H\u0016¢\u0006\u0004\bK\u00108J\u0017\u0010L\u001a\u00020\u00062\u0006\u0010(\u001a\u00020'H\u0016¢\u0006\u0004\bL\u0010*J\u000f\u0010M\u001a\u00020\u0018H\u0016¢\u0006\u0004\bM\u0010NJ\u0017\u0010P\u001a\u00020\u00062\u0006\u0010O\u001a\u00020\u0018H\u0016¢\u0006\u0004\bP\u00108J\u0019\u0010R\u001a\u00020\u00062\b\b\u0001\u0010Q\u001a\u00020\u0018H\u0016¢\u0006\u0004\bR\u00108J\u000f\u0010S\u001a\u00020\u0006H\u0016¢\u0006\u0004\bS\u0010\u0014J\u0017\u0010T\u001a\u00020\u00062\u0006\u0010(\u001a\u00020'H\u0016¢\u0006\u0004\bT\u0010*J-\u0010X\u001a\u00020\u00062\b\b\u0001\u0010U\u001a\u00020\u00182\b\b\u0001\u0010V\u001a\u00020\u00182\b\b\u0001\u0010W\u001a\u00020\u0018H\u0016¢\u0006\u0004\bX\u0010YJ3\u0010\\\u001a\u00020\u00062\u0006\u0010(\u001a\u00020'2\b\u0010Z\u001a\u0004\u0018\u00010 2\b\u0010J\u001a\u0004\u0018\u00010\u00182\u0006\u0010[\u001a\u00020\u0018H\u0016¢\u0006\u0004\b\\\u0010]J\u0017\u0010^\u001a\u00020\u00062\u0006\u0010(\u001a\u00020'H\u0016¢\u0006\u0004\b^\u0010*J\u0019\u0010`\u001a\u00020\u00062\b\u0010_\u001a\u0004\u0018\u00010\u0018H\u0016¢\u0006\u0004\b`\u0010aJ\u001d\u0010c\u001a\u00020\u00062\f\u00102\u001a\b\u0012\u0004\u0012\u00020,0bH\u0016¢\u0006\u0004\bc\u0010dJ\u0017\u0010f\u001a\u00020'2\u0006\u0010e\u001a\u00020 H\u0016¢\u0006\u0004\bf\u0010gJ\u000f\u0010h\u001a\u00020\u0006H\u0016¢\u0006\u0004\bh\u0010\u0014J\u0017\u0010j\u001a\u00020\u00062\u0006\u0010i\u001a\u00020 H\u0016¢\u0006\u0004\bj\u0010kJ\u000f\u0010l\u001a\u00020\u0006H\u0016¢\u0006\u0004\bl\u0010\u0014J\u0017\u0010n\u001a\u00020\u00062\u0006\u0010m\u001a\u00020\u0018H\u0016¢\u0006\u0004\bn\u00108J\u0017\u0010p\u001a\u00020\u00062\u0006\u0010o\u001a\u000200H\u0016¢\u0006\u0004\bp\u0010qJ\u000f\u0010r\u001a\u00020\u0006H\u0016¢\u0006\u0004\br\u0010\u0014J\u0017\u0010t\u001a\u00020\u00062\u0006\u0010s\u001a\u00020'H\u0016¢\u0006\u0004\bt\u0010*J\u0017\u0010w\u001a\u00020\u00062\u0006\u0010v\u001a\u00020uH\u0016¢\u0006\u0004\bw\u0010xJ6\u0010\u007f\u001a\u00020\u00062\f\u0010{\u001a\b\u0012\u0004\u0012\u00020z0y2\u0006\u0010|\u001a\u00020'2\u0006\u0010}\u001a\u00020 2\u0006\u0010~\u001a\u00020 H\u0016¢\u0006\u0005\b\u007f\u0010\u0080\u0001J\u0011\u0010\u0081\u0001\u001a\u00020\u0006H\u0016¢\u0006\u0005\b\u0081\u0001\u0010\u0014R\u001c\u0010\u0085\u0001\u001a\u0005\u0018\u00010\u0082\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0083\u0001\u0010\u0084\u0001R\u0019\u0010\u0088\u0001\u001a\u00020\r8\u0002@\u0002X\u0082.¢\u0006\b\n\u0006\b\u0086\u0001\u0010\u0087\u0001R'\u0010\u008c\u0001\u001a\u0011\u0012\u0005\u0012\u00030\u008a\u0001\u0012\u0005\u0012\u00030\u008a\u00010\u0089\u00018\u0002@\u0002X\u0082.¢\u0006\u0007\n\u0005\bt\u0010\u008b\u0001R\u0019\u0010\u008e\u0001\u001a\u00020\r8\u0002@\u0002X\u0082.¢\u0006\b\n\u0006\b\u008d\u0001\u0010\u0087\u0001R\u001a\u0010\u0092\u0001\u001a\u00030\u008f\u00018\u0002@\u0002X\u0082.¢\u0006\b\n\u0006\b\u0090\u0001\u0010\u0091\u0001R\u0019\u0010\u0094\u0001\u001a\u00020\r8\u0002@\u0002X\u0082.¢\u0006\b\n\u0006\b\u0093\u0001\u0010\u0087\u0001R*\u0010\u009c\u0001\u001a\u00030\u0095\u00018��@��X\u0081.¢\u0006\u0018\n\u0006\b\u0096\u0001\u0010\u0097\u0001\u001a\u0006\b\u0098\u0001\u0010\u0099\u0001\"\u0006\b\u009a\u0001\u0010\u009b\u0001R\u001a\u0010 \u0001\u001a\u00030\u009d\u00018\u0002@\u0002X\u0082.¢\u0006\b\n\u0006\b\u009e\u0001\u0010\u009f\u0001R\u0019\u0010¢\u0001\u001a\u00020\r8\u0002@\u0002X\u0082.¢\u0006\b\n\u0006\b¡\u0001\u0010\u0087\u0001R\u0019\u0010¤\u0001\u001a\u00020\r8\u0002@\u0002X\u0082.¢\u0006\b\n\u0006\b£\u0001\u0010\u0087\u0001R\u0019\u0010¦\u0001\u001a\u00020\r8\u0002@\u0002X\u0082.¢\u0006\b\n\u0006\b¥\u0001\u0010\u0087\u0001R\u001a\u0010ª\u0001\u001a\u00030§\u00018\u0002@\u0002X\u0082.¢\u0006\b\n\u0006\b¨\u0001\u0010©\u0001R\u0019\u0010\u00ad\u0001\u001a\u00030«\u00018\u0002@\u0002X\u0082.¢\u0006\u0007\n\u0005\bf\u0010¬\u0001R\u001a\u0010±\u0001\u001a\u00030®\u00018\u0002@\u0002X\u0082.¢\u0006\b\n\u0006\b¯\u0001\u0010°\u0001R\u001a\u0010µ\u0001\u001a\u00030²\u00018\u0002@\u0002X\u0082.¢\u0006\b\n\u0006\b³\u0001\u0010´\u0001R\u001a\u0010·\u0001\u001a\u00030²\u00018\u0002@\u0002X\u0082.¢\u0006\b\n\u0006\b¶\u0001\u0010´\u0001R\u001a\u0010»\u0001\u001a\u00030¸\u00018\u0002@\u0002X\u0082.¢\u0006\b\n\u0006\b¹\u0001\u0010º\u0001R*\u0010Ã\u0001\u001a\u00030¼\u00018��@��X\u0081.¢\u0006\u0018\n\u0006\b½\u0001\u0010¾\u0001\u001a\u0006\b¿\u0001\u0010À\u0001\"\u0006\bÁ\u0001\u0010Â\u0001R*\u0010Ë\u0001\u001a\u00030Ä\u00018��@��X\u0081.¢\u0006\u0018\n\u0006\bÅ\u0001\u0010Æ\u0001\u001a\u0006\bÇ\u0001\u0010È\u0001\"\u0006\bÉ\u0001\u0010Ê\u0001R*\u0010Ó\u0001\u001a\u00030Ì\u00018��@��X\u0081.¢\u0006\u0018\n\u0006\bÍ\u0001\u0010Î\u0001\u001a\u0006\bÏ\u0001\u0010Ð\u0001\"\u0006\bÑ\u0001\u0010Ò\u0001R\u001a\u0010×\u0001\u001a\u00030Ô\u00018\u0002@\u0002X\u0082.¢\u0006\b\n\u0006\bÕ\u0001\u0010Ö\u0001R\u001a\u0010Ù\u0001\u001a\u00030¸\u00018\u0002@\u0002X\u0082.¢\u0006\b\n\u0006\bØ\u0001\u0010º\u0001R\u0019\u0010Û\u0001\u001a\u00020\r8\u0002@\u0002X\u0082.¢\u0006\b\n\u0006\bÚ\u0001\u0010\u0087\u0001¨\u0006Ý\u0001"}, d2 = {"Le/a/a/d/b;", "Landroidx/fragment/app/Fragment;", "Le/a/a/d/v;", "Le/a/a/d/q;", "Landroid/os/Bundle;", "savedInstanceState", "Ls1/s;", "onCreate", "(Landroid/os/Bundle;)V", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "container", "Landroid/view/View;", "onCreateView", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;", ViewAction.VIEW, "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "onResume", "()V", "onDestroy", "outState", "onSaveInstanceState", "", "requestCode", "resultCode", "Landroid/content/Intent;", RemoteMessageConst.DATA, "onActivityResult", "(IILandroid/content/Intent;)V", "", "", "permissions", "", "grantResults", "onRequestPermissionsResult", "(I[Ljava/lang/String;[I)V", "l2", "", "visible", "i2", "(Z)V", "Lg", "Lcom/truecaller/data/entity/messaging/Participant;", "participant", "s0", "(Lcom/truecaller/data/entity/messaging/Participant;)V", "", "conversationId", "participants", "sendIntent", "L3", "(Ljava/lang/Long;[Lcom/truecaller/data/entity/messaging/Participant;Landroid/content/Intent;)V", "res", "w2", "(I)V", "args", "J1", "(II)V", "az", "uw", "oz", "([Lcom/truecaller/data/entity/messaging/Participant;)V", "ux", "l0", "th", "C", "h0", "getIntent", "()Landroid/content/Intent;", "Nc", "St", "Tp", "position", "An", "m3", "jg", "()I", RemoteMessageConst.INPUT_TYPE, "lr", "drawableId", "Pp", "rr", "Vy", "sendIcon", "iconTint", "backgroundColor", "db", "(III)V", "destinationText", "destinationsCount", "eA", "(ZLjava/lang/String;Ljava/lang/Integer;I)V", "Sw", "title", "c2", "(Ljava/lang/Integer;)V", "Ljava/util/ArrayList;", "vd", "(Ljava/util/ArrayList;)V", "permission", "k", "(Ljava/lang/String;)Z", "kj", "analyticsContext", "j2", "(Ljava/lang/String;)V", "t0", "resId", "Hc", "maxSize", "L2", "(J)V", "onBackPressed", AnalyticsConstants.SHOW, "f", "Lcom/truecaller/messaging/conversation/draft/DraftArguments;", "draftArguments", "R4", "(Lcom/truecaller/messaging/conversation/draft/DraftArguments;)V", "", "Lcom/truecaller/messaging/data/types/Draft;", "drafts", "isIm", "simToken", "text", "ba", "(Ljava/util/List;ZLjava/lang/String;Ljava/lang/String;)V", "Go", "Landroid/animation/ValueAnimator;", "a", "Landroid/animation/ValueAnimator;", "valueAnimator", "v", "Landroid/view/View;", "progress", "Le/a/o2/r;", "Le/a/a/d/l;", "Le/a/o2/r;", "adapterDelegate", "w", "clearBtn", "Landroidx/appcompat/widget/Toolbar;", "j", "Landroidx/appcompat/widget/Toolbar;", "toolbar", "p", "groupView", "Le/a/a/d/t;", C22021b.f61237c, "Le/a/a/d/t;", "OA", "()Le/a/a/d/t;", "setPresenter$truecaller_googlePlayRelease", "(Le/a/a/d/t;)V", "presenter", "Le/a/o2/f;", "g", "Le/a/o2/f;", "adapter", "n", "newImGroupView", "o", "switchToNewMmsGroupView", "s", "bottomContainer", "Le/a/a/d/d;", "h", "Le/a/a/d/d;", "groupParticipantAdapter", "Landroid/widget/EditText;", "Landroid/widget/EditText;", "searchText", "Lcom/truecaller/ui/view/TintedImageView;", "l", "Lcom/truecaller/ui/view/TintedImageView;", "keypadView", "Landroidx/recyclerview/widget/RecyclerView;", "m", "Landroidx/recyclerview/widget/RecyclerView;", "recyclerView", "i", "groupParticipantsRecyclerView", "Landroid/widget/TextView;", "q", "Landroid/widget/TextView;", "emptyGroupView", "Le/a/a/d/p;", "d", "Le/a/a/d/p;", "getGroupPresenter$truecaller_googlePlayRelease", "()Le/a/a/d/p;", "setGroupPresenter$truecaller_googlePlayRelease", "(Le/a/a/d/p;)V", "groupPresenter", "Le/a/a/d/n;", AbstractC2405c.f7629a, "Le/a/a/d/n;", "getAdapterPresenter$truecaller_googlePlayRelease", "()Le/a/a/d/n;", "setAdapterPresenter$truecaller_googlePlayRelease", "(Le/a/a/d/n;)V", "adapterPresenter", "Le/a/h5/w;", "e", "Le/a/h5/w;", "getTcPermissionsUtil$truecaller_googlePlayRelease", "()Le/a/h5/w;", "setTcPermissionsUtil$truecaller_googlePlayRelease", "(Le/a/h5/w;)V", "tcPermissionsUtil", "Lcom/google/android/material/floatingactionbutton/FloatingActionButton;", "r", "Lcom/google/android/material/floatingactionbutton/FloatingActionButton;", "fabContainer", "u", "forwardDestinationTextView", "t", "bottomShadow", "<init>", "truecaller_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.a.d.b */
/* loaded from: classes7-dex2jar.jar:e/a/a/d/b.class */
public final class C5903b extends Fragment implements AbstractC5938v, AbstractC5929q {

    /* renamed from: x */
    public static final /* synthetic */ int f19715x = 0;

    /* renamed from: a */
    public ValueAnimator f19716a;
    @Inject

    /* renamed from: b */
    public AbstractC5936t f19717b;
    @Inject

    /* renamed from: c */
    public AbstractC5926n f19718c;
    @Inject

    /* renamed from: d */
    public AbstractC5928p f19719d;
    @Inject

    /* renamed from: e */
    public AbstractC14965w f19720e;

    /* renamed from: f */
    public C18910r<? super C5924l, ? super C5924l> f19721f;

    /* renamed from: g */
    public C18898f f19722g;

    /* renamed from: h */
    public C5913d f19723h;

    /* renamed from: i */
    public RecyclerView f19724i;

    /* renamed from: j */
    public Toolbar f19725j;

    /* renamed from: k */
    public EditText f19726k;

    /* renamed from: l */
    public TintedImageView f19727l;

    /* renamed from: m */
    public RecyclerView f19728m;

    /* renamed from: n */
    public View f19729n;

    /* renamed from: o */
    public View f19730o;

    /* renamed from: p */
    public View f19731p;

    /* renamed from: q */
    public TextView f19732q;

    /* renamed from: r */
    public FloatingActionButton f19733r;

    /* renamed from: s */
    public View f19734s;

    /* renamed from: t */
    public View f19735t;

    /* renamed from: u */
    public TextView f19736u;

    /* renamed from: v */
    public View f19737v;

    /* renamed from: w */
    public View f19738w;

    /* renamed from: e.a.a.d.b$a */
    /* loaded from: classes3-dex2jar.jar:e/a/a/d/b$a.class */
    public static final class View$OnClickListenerC5904a implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ int f19739a;

        /* renamed from: b */
        public final /* synthetic */ Object f19740b;

        public View$OnClickListenerC5904a(int i, Object obj) {
            this.f19739a = i;
            this.f19740b = obj;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            int i = this.f19739a;
            if (i == 0) {
                ((C5903b) this.f19740b).m32235OA().mo32170r0();
            } else if (i == 1) {
                AbstractC5928p abstractC5928p = ((C5903b) this.f19740b).f19719d;
                if (abstractC5928p != null) {
                    abstractC5928p.mo32191Nj();
                } else {
                    l.l("groupPresenter");
                    throw null;
                }
            } else if (i != 2) {
                if (i == 3) {
                    ((C5903b) this.f19740b).m32235OA().mo32172O7();
                } else if (i == 4) {
                    ((C5903b) this.f19740b).m32235OA().mo32176Jj();
                } else if (i != 5) {
                    throw null;
                } else {
                    ((C5903b) this.f19740b).m32235OA().mo32173Mj();
                }
            } else {
                C5903b c5903b = (C5903b) this.f19740b;
                int i2 = C5903b.f19715x;
                Objects.requireNonNull(c5903b);
                n3.r.a.l activity = c5903b.getActivity();
                View view2 = c5903b.f19730o;
                if (view2 == null) {
                    l.l("switchToNewMmsGroupView");
                    throw null;
                }
                PopupMenu popupMenu = new PopupMenu(activity, view2, 8388613, 0, 2131952164);
                popupMenu.getMenuInflater().inflate(C2752R.C2756menu.new_mms_group, popupMenu.getMenu());
                popupMenu.setOnMenuItemClickListener(new C5921i(c5903b));
                popupMenu.show();
            }
        }
    }

    /* renamed from: e.a.a.d.b$b */
    /* loaded from: classes7-dex2jar.jar:e/a/a/d/b$b.class */
    public static final class C5905b extends m implements s1.z.b.l<View, C5924l> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C5905b() {
            super(1);
            C5903b.this = r4;
        }

        /* renamed from: d */
        public Object m32232d(Object obj) {
            View view = (View) obj;
            l.e(view, ViewAction.VIEW);
            C18898f c18898f = C5903b.this.f19722g;
            if (c18898f != null) {
                return new C5924l(view, c18898f);
            }
            l.l("adapter");
            throw null;
        }
    }

    /* renamed from: e.a.a.d.b$c */
    /* loaded from: classes7-dex2jar.jar:e/a/a/d/b$c.class */
    public static final class C5906c extends m implements s1.z.b.l<C5924l, C5924l> {

        /* renamed from: b */
        public static final C5906c f19742b = new C5906c();

        public C5906c() {
            super(1);
        }

        /* renamed from: d */
        public Object m32231d(Object obj) {
            C5924l c5924l = (C5924l) obj;
            l.e(c5924l, "it");
            return c5924l;
        }
    }

    /* renamed from: e.a.a.d.b$d */
    /* loaded from: classes7-dex2jar.jar:e/a/a/d/b$d.class */
    public static final class C5907d implements TextWatcher {
        public C5907d() {
            C5903b.this = r4;
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            l.e(editable, "editable");
            C5903b.this.m32235OA().mo32171ha(editable.toString());
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            l.e(charSequence, "charSequence");
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            l.e(charSequence, "charSequence");
        }
    }

    /* renamed from: e.a.a.d.b$e */
    /* loaded from: classes7-dex2jar.jar:e/a/a/d/b$e.class */
    public static final class C5908e implements TextView.OnEditorActionListener {
        public C5908e() {
            C5903b.this = r4;
        }

        @Override // android.widget.TextView.OnEditorActionListener
        public final boolean onEditorAction(TextView textView, int i, KeyEvent keyEvent) {
            if (i == 6) {
                AbstractC5936t m32235OA = C5903b.this.m32235OA();
                l.d(textView, "v");
                m32235OA.mo32177Ij(textView.getText().toString());
                return false;
            }
            return false;
        }
    }

    /* renamed from: e.a.a.d.b$f */
    /* loaded from: classes7-dex2jar.jar:e/a/a/d/b$f.class */
    public static final class C5909f implements ValueAnimator.AnimatorUpdateListener {
        public C5909f() {
            C5903b.this = r4;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public final void onAnimationUpdate(ValueAnimator valueAnimator) {
            View view = C5903b.this.f19729n;
            if (view == null) {
                l.l("newImGroupView");
                throw null;
            }
            l.d(valueAnimator, "animator");
            Object animatedValue = valueAnimator.getAnimatedValue();
            Objects.requireNonNull(animatedValue, "null cannot be cast to non-null type kotlin.Int");
            view.setBackgroundColor(((Integer) animatedValue).intValue());
        }
    }

    @Override // p193e.p194a.p195a.p224d.AbstractC5929q
    /* renamed from: An */
    public void mo32185An(int i) {
        RecyclerView recyclerView = this.f19724i;
        if (recyclerView != null) {
            recyclerView.scrollToPosition(i);
        } else {
            l.l("groupParticipantsRecyclerView");
            throw null;
        }
    }

    @Override // p193e.p194a.p195a.p224d.AbstractC5938v
    /* renamed from: C */
    public void mo32166C() {
        n3.r.a.l activity = getActivity();
        if (activity != null) {
            activity.finish();
        }
    }

    @Override // p193e.p194a.p195a.p224d.AbstractC5938v
    /* renamed from: Go */
    public void mo32165Go() {
        n3.r.a.l activity = getActivity();
        if (activity != null) {
            activity.setResult(-1);
        }
    }

    @Override // p193e.p194a.p195a.p223c1.AbstractC5860j
    /* renamed from: Hc */
    public void mo32237Hc(int i) {
        Context context = getContext();
        if (context != null) {
            Toast.makeText(context, i, 0).show();
        }
    }

    @Override // p193e.p194a.p195a.p224d.AbstractC5938v, p193e.p194a.p195a.p224d.AbstractC5929q
    /* renamed from: J1 */
    public void mo32164J1(int i, int i2) {
        Context context = getContext();
        if (context != null) {
            Toast.makeText(context, getString(i, new Object[]{Integer.valueOf(i2)}), 0).show();
        }
    }

    @Override // p193e.p194a.p195a.p223c1.AbstractC5860j, p193e.p194a.p195a.p200c.AbstractC5522m3
    /* renamed from: L2 */
    public void mo32236L2(long j) {
        l.e(this, "fragment");
        Context context = getContext();
        if (context != null) {
            String string = context.getString(C2752R.string.ConversationAttachmentSizeLimitationWarning, C19291g.m13527o(j, null, 1));
            l.d(string, "context.getString(string…e.bytesToMegabytesText())");
            g$a g_a = new g$a(context);
            g_a.f70854a.f156f = string;
            g_a.m3660i(2131887910, null);
            g_a.m3652q();
        }
    }

    @Override // p193e.p194a.p195a.p224d.AbstractC5938v
    /* renamed from: L3 */
    public void mo32163L3(Long l, Participant[] participantArr, Intent intent) {
        Intent intent2 = new Intent(getContext(), ConversationActivity.class);
        if (l != null) {
            intent2.putExtra("conversation_id", l.longValue());
        }
        if (participantArr != null) {
            intent2.putExtra("participants", participantArr);
        }
        intent2.addFlags(67108864);
        startActivity(intent2);
    }

    @Override // p193e.p194a.p195a.p224d.AbstractC5938v
    /* renamed from: Lg */
    public void mo32162Lg() {
        ValueAnimator valueAnimator = this.f19716a;
        if (valueAnimator != null) {
            valueAnimator.removeAllUpdateListeners();
        }
        ArgbEvaluator argbEvaluator = new ArgbEvaluator();
        View view = this.f19729n;
        if (view == null) {
            l.l("newImGroupView");
            throw null;
        }
        int m13612L = C19291g.m13612L(view.getContext(), 2130970002);
        View view2 = this.f19729n;
        if (view2 == null) {
            l.l("newImGroupView");
            throw null;
        }
        ValueAnimator ofObject = ValueAnimator.ofObject(argbEvaluator, Integer.valueOf(m13612L), Integer.valueOf(C19291g.m13612L(view2.getContext(), 2130970021)));
        ofObject.setDuration(1000L);
        ofObject.setRepeatMode(2);
        ofObject.setRepeatCount(-1);
        ofObject.addUpdateListener(new C5909f());
        this.f19716a = ofObject;
        if (ofObject == null) {
            return;
        }
        ofObject.start();
    }

    @Override // p193e.p194a.p195a.p224d.AbstractC5929q
    /* renamed from: Nc */
    public void mo32184Nc(boolean z) {
        View view = this.f19731p;
        if (view != null) {
            view.setVisibility(z ? 0 : 8);
        } else {
            l.l("groupView");
            throw null;
        }
    }

    /* renamed from: OA */
    public final AbstractC5936t m32235OA() {
        AbstractC5936t abstractC5936t = this.f19717b;
        if (abstractC5936t != null) {
            return abstractC5936t;
        }
        l.l("presenter");
        throw null;
    }

    @Override // p193e.p194a.p195a.p224d.AbstractC5938v
    /* renamed from: Pp */
    public void mo32161Pp(int i) {
        TintedImageView tintedImageView = this.f19727l;
        if (tintedImageView != null) {
            tintedImageView.setImageResource(i);
        } else {
            l.l("keypadView");
            throw null;
        }
    }

    @Override // p193e.p194a.p195a.p224d.AbstractC5938v
    /* renamed from: R4 */
    public void mo32160R4(DraftArguments draftArguments) {
        l.e(draftArguments, "draftArguments");
        Context requireContext = requireContext();
        l.d(requireContext, "requireContext()");
        Intent m35107pa = DraftActivity.m35107pa(requireContext, draftArguments);
        Intent intent = getIntent();
        if (intent != null) {
            C8613t.m28204h(intent, m35107pa);
        }
        startActivity(m35107pa);
    }

    @Override // p193e.p194a.p195a.p224d.AbstractC5929q
    /* renamed from: St */
    public void mo32183St(boolean z) {
        TextView textView = this.f19732q;
        if (textView != null) {
            textView.setVisibility(z ? 0 : 8);
        } else {
            l.l("emptyGroupView");
            throw null;
        }
    }

    @Override // p193e.p194a.p195a.p224d.AbstractC5938v
    /* renamed from: Sw */
    public void mo32159Sw(boolean z) {
        View view = this.f19734s;
        if (view == null) {
            l.l("bottomContainer");
            throw null;
        }
        C19286f.m13683U(view, z);
        View view2 = this.f19735t;
        if (view2 != null) {
            C19286f.m13683U(view2, z);
        } else {
            l.l("bottomShadow");
            throw null;
        }
    }

    @Override // p193e.p194a.p195a.p224d.AbstractC5929q
    /* renamed from: Tp */
    public void mo32182Tp() {
        C5913d c5913d = this.f19723h;
        if (c5913d != null) {
            c5913d.notifyDataSetChanged();
        } else {
            l.l("groupParticipantAdapter");
            throw null;
        }
    }

    @Override // p193e.p194a.p195a.p224d.AbstractC5938v
    /* renamed from: Vy */
    public void mo32158Vy(boolean z) {
        FloatingActionButton floatingActionButton = this.f19733r;
        if (floatingActionButton != null) {
            C19286f.m13683U(floatingActionButton, z);
        } else {
            l.l("fabContainer");
            throw null;
        }
    }

    @Override // p193e.p194a.p195a.p224d.AbstractC5929q
    /* renamed from: az */
    public void mo32181az() {
        AbstractC5936t abstractC5936t = this.f19717b;
        if (abstractC5936t == null) {
            l.l("presenter");
            throw null;
        }
        EditText editText = this.f19726k;
        if (editText == null) {
            l.l("searchText");
            throw null;
        }
        abstractC5936t.mo32171ha(editText.getText().toString());
        EditText editText2 = this.f19726k;
        if (editText2 != null) {
            C19286f.m13679Y(editText2, true, 0L, 2);
        } else {
            l.l("searchText");
            throw null;
        }
    }

    @Override // p193e.p194a.p195a.p224d.AbstractC5938v
    /* renamed from: ba */
    public void mo32157ba(List<Draft> list, boolean z, String str, String str2) {
        l.e(list, "drafts");
        l.e(str, "simToken");
        l.e(str2, "text");
        Context requireContext = requireContext();
        l.d(requireContext, "requireContext()");
        SharedTextDraftsArguments sharedTextDraftsArguments = new SharedTextDraftsArguments(list, z, str, str2);
        l.e(requireContext, AnalyticsConstants.CONTEXT);
        l.e(sharedTextDraftsArguments, "sharedTextDrafts");
        Intent putExtra = new Intent(requireContext, TextDraftActivity.class).setFlags(268435456).putExtra("shared_text_drafts", sharedTextDraftsArguments);
        l.d(putExtra, "Intent(context, TextDraf…DRAFTS, sharedTextDrafts)");
        startActivity(putExtra);
    }

    @Override // p193e.p194a.p195a.p224d.AbstractC5938v, p193e.p194a.p195a.p224d.AbstractC5929q
    /* renamed from: c2 */
    public void mo32156c2(Integer num) {
        Toolbar toolbar = this.f19725j;
        String str = null;
        if (toolbar == null) {
            l.l("toolbar");
            throw null;
        }
        if (num != null) {
            str = getString(num.intValue());
        }
        toolbar.setTitle(str);
    }

    @Override // p193e.p194a.p195a.p224d.AbstractC5938v
    /* renamed from: db */
    public void mo32155db(int i, int i2, int i3) {
        Context context = getContext();
        if (context != null) {
            Resources resources = context.getResources();
            Resources.Theme theme = context.getTheme();
            ThreadLocal<TypedValue> threadLocal = C26488h.f74265a;
            Drawable drawable = resources.getDrawable(i, theme);
            if (drawable == null) {
                return;
            }
            FloatingActionButton floatingActionButton = this.f19733r;
            if (floatingActionButton == null) {
                l.l("fabContainer");
                throw null;
            }
            floatingActionButton.setBackgroundTintList(ColorStateList.valueOf(i3));
            Drawable mutate = drawable.mutate();
            l.d(mutate, "DrawableCompat.wrap(rawIcon).mutate()");
            mutate.setTint(i2);
            FloatingActionButton floatingActionButton2 = this.f19733r;
            if (floatingActionButton2 == null) {
                l.l("fabContainer");
                throw null;
            }
            floatingActionButton2.setImageDrawable(mutate);
            FloatingActionButton floatingActionButton3 = this.f19733r;
            if (floatingActionButton3 != null) {
                C19286f.m13684T(floatingActionButton3);
            } else {
                l.l("fabContainer");
                throw null;
            }
        }
    }

    @Override // p193e.p194a.p195a.p224d.AbstractC5938v
    /* renamed from: eA */
    public void mo32154eA(boolean z, String str, Integer num, int i) {
        View view = this.f19734s;
        if (view == null) {
            l.l("bottomContainer");
            throw null;
        }
        C19286f.m13683U(view, z);
        View view2 = this.f19735t;
        if (view2 == null) {
            l.l("bottomShadow");
            throw null;
        }
        C19286f.m13683U(view2, z);
        if (num != null) {
            int intValue = num.intValue();
            RecyclerView recyclerView = this.f19728m;
            if (recyclerView == null) {
                l.l("recyclerView");
                throw null;
            }
            recyclerView.scrollToPosition(intValue);
        }
        if (str == null) {
            return;
        }
        TextView textView = this.f19736u;
        if (textView == null) {
            l.l("forwardDestinationTextView");
            throw null;
        }
        textView.setText(str);
        TextView textView2 = this.f19736u;
        if (textView2 != null) {
            textView2.post(new RunnableC5920h(this, textView2, str, i));
        } else {
            l.l("forwardDestinationTextView");
            throw null;
        }
    }

    @Override // p193e.p194a.p195a.p224d.AbstractC5938v
    /* renamed from: f */
    public void mo32153f(boolean z) {
        View view = this.f19737v;
        if (view == null) {
            l.l("progress");
            throw null;
        }
        C19286f.m13683U(view, z);
        if (!z) {
            return;
        }
        FloatingActionButton floatingActionButton = this.f19733r;
        if (floatingActionButton != null) {
            floatingActionButton.setImageDrawable((Drawable) null);
        } else {
            l.l("fabContainer");
            throw null;
        }
    }

    @Override // p193e.p194a.p195a.p224d.AbstractC5938v
    public Intent getIntent() {
        n3.r.a.l activity = getActivity();
        return activity != null ? activity.getIntent() : null;
    }

    @Override // p193e.p194a.p195a.p224d.AbstractC5938v
    /* renamed from: h0 */
    public void mo32152h0() {
        Context context = getContext();
        if (context != null) {
            TruecallerInit.m34567Va(context, "messages", false, "newConversation");
        }
    }

    @Override // p193e.p194a.p195a.p224d.AbstractC5938v, p193e.p194a.p195a.p224d.AbstractC5929q
    /* renamed from: i2 */
    public void mo32151i2(boolean z) {
        View view = this.f19729n;
        if (view != null) {
            view.setVisibility(z ? 0 : 8);
        } else {
            l.l("newImGroupView");
            throw null;
        }
    }

    @Override // p193e.p194a.p195a.p223c1.AbstractC5860j
    /* renamed from: j2 */
    public void mo32234j2(String str) {
        l.e(str, "analyticsContext");
        l.e(this, "fragment");
        l.e(str, "analyticsContext");
        Context context = getContext();
        if (context != null) {
            startActivityForResult(DefaultSmsActivity.m34991pa(context, str), 200);
        }
    }

    @Override // p193e.p194a.p195a.p224d.AbstractC5938v
    /* renamed from: jg */
    public int mo32150jg() {
        EditText editText = this.f19726k;
        if (editText != null) {
            return editText.getInputType();
        }
        l.l("searchText");
        throw null;
    }

    @Override // p193e.p194a.p195a.p224d.AbstractC5938v
    /* renamed from: k */
    public boolean mo32149k(String str) {
        l.e(str, "permission");
        return C19291g.m13502w0(requireActivity(), str);
    }

    @Override // p193e.p194a.p195a.p224d.AbstractC5938v
    /* renamed from: kj */
    public void mo32148kj() {
        Context requireContext = requireContext();
        l.d(requireContext, "requireContext()");
        C21846z1 c21846z1 = new C21846z1(requireContext, C2752R.string.PermissionDialog_sms_reason, C2752R.string.PermissionDialog_sms);
        FragmentManager childFragmentManager = getChildFragmentManager();
        l.d(childFragmentManager, "childFragmentManager");
        c21846z1.m8995cB(childFragmentManager);
    }

    @Override // p193e.p194a.p195a.p224d.AbstractC5938v, p193e.p194a.p195a.p224d.AbstractC5929q
    /* renamed from: l0 */
    public void mo32147l0() {
        EditText editText = this.f19726k;
        if (editText != null) {
            editText.getText().clear();
        } else {
            l.l("searchText");
            throw null;
        }
    }

    @Override // p193e.p194a.p195a.p224d.AbstractC5938v
    /* renamed from: l2 */
    public void mo32146l2() {
        C18898f c18898f = this.f19722g;
        if (c18898f != null) {
            c18898f.notifyDataSetChanged();
        } else {
            l.l("adapter");
            throw null;
        }
    }

    @Override // p193e.p194a.p195a.p224d.AbstractC5938v
    /* renamed from: lr */
    public void mo32145lr(int i) {
        EditText editText = this.f19726k;
        if (editText != null) {
            editText.setInputType(i);
        } else {
            l.l("searchText");
            throw null;
        }
    }

    @Override // p193e.p194a.p195a.p224d.AbstractC5938v, p193e.p194a.p195a.p224d.AbstractC5929q
    /* renamed from: m3 */
    public void mo32144m3(boolean z) {
        int i;
        Context context = getContext();
        if (context != null) {
            FloatingActionButton floatingActionButton = this.f19733r;
            if (floatingActionButton == null) {
                l.l("fabContainer");
                throw null;
            }
            if (z) {
                Context context2 = getContext();
                if (context2 != null) {
                    l.d(context2, "context ?: return");
                    RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
                    int dimension = (int) context2.getResources().getDimension(2131165612);
                    int m13645A = C19291g.m13645A(context2, 36);
                    View view = this.f19734s;
                    if (view == null) {
                        l.l("bottomContainer");
                        throw null;
                    }
                    if (C19286f.m13663p(view)) {
                        layoutParams.setMargins(dimension, dimension, dimension, m13645A);
                    } else {
                        layoutParams.setMargins(dimension, dimension, dimension, dimension);
                    }
                    layoutParams.addRule(21);
                    layoutParams.addRule(12);
                    FloatingActionButton floatingActionButton2 = this.f19733r;
                    if (floatingActionButton2 == null) {
                        l.l("fabContainer");
                        throw null;
                    }
                    floatingActionButton2.setLayoutParams(layoutParams);
                    int m13645A2 = C19291g.m13645A(context2, 4);
                    layoutParams.setMargins(layoutParams.leftMargin, layoutParams.topMargin, layoutParams.rightMargin + m13645A2, layoutParams.bottomMargin + m13645A2);
                    View view2 = this.f19737v;
                    if (view2 == null) {
                        l.l("progress");
                        throw null;
                    }
                    view2.setLayoutParams(layoutParams);
                }
                i = 0;
            } else {
                i = 8;
            }
            floatingActionButton.setVisibility(i);
            if (!z) {
                return;
            }
            FloatingActionButton floatingActionButton3 = this.f19733r;
            if (floatingActionButton3 == null) {
                l.l("fabContainer");
                throw null;
            }
            Resources resources = context.getResources();
            Resources.Theme theme = context.getTheme();
            ThreadLocal<TypedValue> threadLocal = C26488h.f74265a;
            floatingActionButton3.setImageDrawable(resources.getDrawable(2131232406, theme));
            FloatingActionButton floatingActionButton4 = this.f19733r;
            if (floatingActionButton4 != null) {
                floatingActionButton4.setBackgroundTintList(ColorStateList.valueOf(C19291g.m13612L(context, 2130970017)));
            } else {
                l.l("fabContainer");
                throw null;
            }
        }
    }

    public void onActivityResult(int i, int i2, Intent intent) {
        if (i2 == -1 && i == 200) {
            AbstractC5936t abstractC5936t = this.f19717b;
            if (abstractC5936t != null) {
                abstractC5936t.mo32174Lj();
            } else {
                l.l("presenter");
                throw null;
            }
        }
    }

    @Override // p193e.p194a.p195a.p224d.AbstractC5938v
    public void onBackPressed() {
        n3.r.a.l activity = getActivity();
        if (activity != null) {
            activity.onBackPressed();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:36:0x010f  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0199  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x01e6  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onCreate(android.os.Bundle r9) {
        /*
            Method dump skipped, instructions count: 495
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p195a.p224d.C5903b.onCreate(android.os.Bundle):void");
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        l.e(layoutInflater, "inflater");
        return layoutInflater.inflate(C2752R.layout.fragment_new_conversation, viewGroup, false);
    }

    public void onDestroy() {
        AbstractC5936t abstractC5936t = this.f19717b;
        if (abstractC5936t == null) {
            l.l("presenter");
            throw null;
        }
        abstractC5936t.mo9806c();
        AbstractC5928p abstractC5928p = this.f19719d;
        if (abstractC5928p == null) {
            l.l("groupPresenter");
            throw null;
        }
        abstractC5928p.f57683a = null;
        ValueAnimator valueAnimator = this.f19716a;
        if (valueAnimator != null) {
            valueAnimator.removeAllUpdateListeners();
        }
        this.f19716a = null;
        C5903b.super.onDestroy();
    }

    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        boolean z;
        l.e(strArr, "permissions");
        l.e(iArr, "grantResults");
        C5903b.super.onRequestPermissionsResult(i, strArr, iArr);
        C19291g.m13608M0(strArr, iArr);
        if (i == 200) {
            int length = iArr.length;
            int i2 = 0;
            while (true) {
                boolean z2 = true;
                if (i2 >= length) {
                    z = true;
                    break;
                }
                if (iArr[i2] != 0) {
                    z2 = false;
                }
                if (!z2) {
                    z = false;
                    break;
                }
                i2++;
            }
            if (!z) {
                return;
            }
            AbstractC5936t abstractC5936t = this.f19717b;
            if (abstractC5936t != null) {
                abstractC5936t.mo32174Lj();
            } else {
                l.l("presenter");
                throw null;
            }
        }
    }

    public void onResume() {
        C5903b.super.onResume();
        AbstractC5936t abstractC5936t = this.f19717b;
        if (abstractC5936t != null) {
            abstractC5936t.onResume();
        } else {
            l.l("presenter");
            throw null;
        }
    }

    public void onSaveInstanceState(Bundle bundle) {
        l.e(bundle, "outState");
        C5903b.super.onSaveInstanceState(bundle);
        AbstractC5928p abstractC5928p = this.f19719d;
        if (abstractC5928p != null) {
            abstractC5928p.mo32188Qj(bundle);
        } else {
            l.l("groupPresenter");
            throw null;
        }
    }

    public void onViewCreated(View view, Bundle bundle) {
        Bundle extras;
        ArrayList parcelableArrayList;
        l.e(view, ViewAction.VIEW);
        C5903b.super.onViewCreated(view, bundle);
        h activity = getActivity();
        if (activity != null) {
            View findViewById = view.findViewById(2131366512);
            l.d(findViewById, "view.findViewById(R.id.toolbar)");
            Toolbar toolbar = (Toolbar) findViewById;
            this.f19725j = toolbar;
            toolbar.setNavigationOnClickListener(new View$OnClickListenerC5904a(0, this));
            View findViewById2 = view.findViewById(C2752R.C2754id.new_im_group_view);
            l.d(findViewById2, "view.findViewById(R.id.new_im_group_view)");
            this.f19729n = findViewById2;
            View findViewById3 = view.findViewById(C2752R.C2754id.mms_switch_view);
            l.d(findViewById3, "view.findViewById(R.id.mms_switch_view)");
            this.f19730o = findViewById3;
            View view2 = this.f19729n;
            if (view2 == null) {
                l.l("newImGroupView");
                throw null;
            }
            view2.setOnClickListener(new View$OnClickListenerC5904a(1, this));
            View view3 = this.f19730o;
            if (view3 == null) {
                l.l("switchToNewMmsGroupView");
                throw null;
            }
            view3.setOnClickListener(new View$OnClickListenerC5904a(2, this));
            AbstractC25393a supportActionBar = activity.getSupportActionBar();
            if (supportActionBar != null) {
                supportActionBar.mo3553n(true);
                supportActionBar.mo3551p(false);
            }
            View findViewById4 = view.findViewById(C2752R.C2754id.search_text);
            l.d(findViewById4, "view.findViewById(R.id.search_text)");
            this.f19726k = (EditText) findViewById4;
            View findViewById5 = view.findViewById(C2752R.C2754id.keypadView);
            l.d(findViewById5, "view.findViewById(R.id.keypadView)");
            this.f19727l = (TintedImageView) findViewById5;
            mo32142rr();
            View findViewById6 = view.findViewById(2131365382);
            l.d(findViewById6, "view.findViewById(R.id.recycler_view)");
            RecyclerView recyclerView = (RecyclerView) findViewById6;
            this.f19728m = recyclerView;
            recyclerView.setItemAnimator(null);
            RecyclerView recyclerView2 = this.f19728m;
            if (recyclerView2 == null) {
                l.l("recyclerView");
                throw null;
            }
            recyclerView2.addItemDecoration(new C13338z0(C17422k.m16113E(activity, true), C2752R.layout.view_list_header_new_conversation, C19291g.m13612L(requireContext(), 2130970002)));
            RecyclerView recyclerView3 = this.f19728m;
            if (recyclerView3 == null) {
                l.l("recyclerView");
                throw null;
            }
            recyclerView3.setLayoutManager(new LinearLayoutManager(activity));
            RecyclerView recyclerView4 = this.f19728m;
            if (recyclerView4 == null) {
                l.l("recyclerView");
                throw null;
            }
            C18898f c18898f = this.f19722g;
            if (c18898f == null) {
                l.l("adapter");
                throw null;
            }
            recyclerView4.setAdapter(c18898f);
            EditText editText = this.f19726k;
            if (editText == null) {
                l.l("searchText");
                throw null;
            }
            editText.addTextChangedListener(new C5907d());
            EditText editText2 = this.f19726k;
            if (editText2 == null) {
                l.l("searchText");
                throw null;
            }
            editText2.setOnEditorActionListener(new C5908e());
            View findViewById7 = view.findViewById(C2752R.C2754id.clearBtn);
            l.d(findViewById7, "view.findViewById(R.id.clearBtn)");
            this.f19738w = findViewById7;
            findViewById7.setOnClickListener(new View$OnClickListenerC5904a(3, this));
            TintedImageView tintedImageView = this.f19727l;
            if (tintedImageView == null) {
                l.l("keypadView");
                throw null;
            }
            tintedImageView.setOnClickListener(new View$OnClickListenerC5904a(4, this));
            View findViewById8 = view.findViewById(C2752R.C2754id.groupParticipantsList);
            l.d(findViewById8, "view.findViewById(R.id.groupParticipantsList)");
            RecyclerView recyclerView5 = (RecyclerView) findViewById8;
            this.f19724i = recyclerView5;
            C5913d c5913d = this.f19723h;
            if (c5913d == null) {
                l.l("groupParticipantAdapter");
                throw null;
            }
            recyclerView5.setAdapter(c5913d);
            View findViewById9 = view.findViewById(C2752R.C2754id.group_view);
            l.d(findViewById9, "view.findViewById(R.id.group_view)");
            this.f19731p = findViewById9;
            View findViewById10 = view.findViewById(C2752R.C2754id.empty_group_view);
            l.d(findViewById10, "view.findViewById(R.id.empty_group_view)");
            this.f19732q = (TextView) findViewById10;
            View findViewById11 = view.findViewById(2131362378);
            l.d(findViewById11, "view.findViewById(R.id.bottom_container)");
            this.f19734s = findViewById11;
            View findViewById12 = view.findViewById(C2752R.C2754id.bottom_shadow);
            l.d(findViewById12, "view.findViewById(R.id.bottom_shadow)");
            this.f19735t = findViewById12;
            View findViewById13 = view.findViewById(C2752R.C2754id.destination_text);
            l.d(findViewById13, "view.findViewById(R.id.destination_text)");
            this.f19736u = (TextView) findViewById13;
            FloatingActionButton findViewById14 = view.findViewById(C2752R.C2754id.start_conversation_button);
            l.d(findViewById14, "view.findViewById(R.id.start_conversation_button)");
            FloatingActionButton floatingActionButton = findViewById14;
            this.f19733r = floatingActionButton;
            floatingActionButton.setOnClickListener(new View$OnClickListenerC5904a(5, this));
            View findViewById15 = view.findViewById(2131365275);
            l.d(findViewById15, "view.findViewById(R.id.progress)");
            this.f19737v = findViewById15;
            AbstractC5936t abstractC5936t = this.f19717b;
            if (abstractC5936t == null) {
                l.l("presenter");
                throw null;
            }
            abstractC5936t.mo9029Y0(this);
            AbstractC5928p abstractC5928p = this.f19719d;
            if (abstractC5928p == null) {
                l.l("groupPresenter");
                throw null;
            }
            abstractC5928p.mo9029Y0(this);
            AbstractC5928p abstractC5928p2 = this.f19719d;
            if (abstractC5928p2 == null) {
                l.l("groupPresenter");
                throw null;
            }
            abstractC5928p2.mo32187hh(bundle);
            Intent intent = getIntent();
            if (intent == null || (extras = intent.getExtras()) == null || (parcelableArrayList = extras.getParcelableArrayList("pre_fill_participants")) == null) {
                return;
            }
            AbstractC5928p abstractC5928p3 = this.f19719d;
            if (abstractC5928p3 != null) {
                abstractC5928p3.mo32189Pj(parcelableArrayList);
            } else {
                l.l("groupPresenter");
                throw null;
            }
        }
    }

    @Override // p193e.p194a.p195a.p224d.AbstractC5938v
    /* renamed from: oz */
    public void mo32143oz(Participant[] participantArr) {
        n3.r.a.l activity = getActivity();
        if (activity != null) {
            l.d(activity, "activity ?: return");
            C26907a c26907a = new C26907a(activity.getSupportFragmentManager());
            c26907a.m1120m(16908290, C5869a.f19632f.m32308a(participantArr), null);
            c26907a.mo1127f();
        }
    }

    @Override // p193e.p194a.p195a.p224d.AbstractC5938v
    /* renamed from: rr */
    public void mo32142rr() {
        EditText editText = this.f19726k;
        if (editText == null) {
            l.l("searchText");
            throw null;
        }
        editText.requestFocus();
        EditText editText2 = this.f19726k;
        if (editText2 != null) {
            C19286f.m13680X(editText2, true, 0L);
        } else {
            l.l("searchText");
            throw null;
        }
    }

    @Override // p193e.p194a.p195a.p224d.AbstractC5938v
    /* renamed from: s0 */
    public void mo32141s0(Participant participant) {
        l.e(participant, "participant");
        Intent intent = new Intent(getContext(), ConversationActivity.class);
        intent.putExtra("participants", new Participant[]{participant});
        startActivity(intent);
    }

    @Override // p193e.p194a.p195a.p223c1.AbstractC5860j
    /* renamed from: t0 */
    public void mo32233t0() {
        AbstractC14965w abstractC14965w = this.f19720e;
        if (abstractC14965w == null) {
            l.l("tcPermissionsUtil");
            throw null;
        }
        l.e(this, "fragment");
        l.e(abstractC14965w, "tcPermissionsUtil");
        C19291g.m13555e1(this, abstractC14965w.mo19356a(), 200);
    }

    @Override // p193e.p194a.p195a.p224d.AbstractC5938v
    /* renamed from: th */
    public void mo32140th(boolean z) {
        View view = this.f19738w;
        if (view != null) {
            C19286f.m13683U(view, z);
        } else {
            l.l("clearBtn");
            throw null;
        }
    }

    @Override // p193e.p194a.p195a.p224d.AbstractC5929q
    /* renamed from: uw */
    public void mo32180uw() {
        n3.r.a.l activity = getActivity();
        if (activity != null) {
            l.d(activity, "activity ?: return");
            C26907a c26907a = new C26907a(activity.getSupportFragmentManager());
            c26907a.m1120m(16908290, C5869a.f19632f.m32308a(null), null);
            c26907a.m1128e(null);
            c26907a.mo1127f();
        }
    }

    @Override // p193e.p194a.p195a.p224d.AbstractC5929q
    /* renamed from: ux */
    public void mo32179ux() {
        AbstractC5936t abstractC5936t = this.f19717b;
        if (abstractC5936t != null) {
            abstractC5936t.mo32175Kj();
        } else {
            l.l("presenter");
            throw null;
        }
    }

    @Override // p193e.p194a.p195a.p224d.AbstractC5938v
    /* renamed from: vd */
    public void mo32139vd(ArrayList<Participant> arrayList) {
        l.e(arrayList, "participants");
        n3.r.a.l activity = getActivity();
        if (activity != null) {
            activity.setResult(-1, new Intent().putExtra("RESULT_PARTICIPANTS", arrayList));
        }
    }

    @Override // p193e.p194a.p195a.p224d.AbstractC5938v, p193e.p194a.p195a.p224d.AbstractC5929q
    /* renamed from: w2 */
    public void mo32138w2(int i) {
        Context context = getContext();
        if (context != null) {
            Toast.makeText(context, i, 0).show();
        }
    }
}
