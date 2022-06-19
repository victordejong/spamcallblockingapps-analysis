package p193e.p194a.p195a.p279r0;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.cardview.widget.CardView;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager2.widget.ViewPager2;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.razorpay.AnalyticsConstants;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.C2752R;
import com.truecaller.common.p156ui.C3700R;
import com.truecaller.common.p156ui.tablayout.TabLayoutX;
import com.truecaller.common.p156ui.tooltip.TooltipDirection;
import com.truecaller.insights.p168ui.categorizerupdatedialog.CategorizerUpdateActivity;
import com.truecaller.insights.p168ui.important.view.BusinessInsightsFragment;
import com.truecaller.insights.p168ui.markedimportantpage.view.MarkedImportantPageActivity;
import com.truecaller.messaging.conversation.archive.ArchiveConversationListActivity;
import com.truecaller.messaging.data.types.InboxTab;
import com.truecaller.messaging.defaultsms.DefaultSmsActivity;
import com.truecaller.messaging.inboxcleanup.InboxCleanupActivity;
import com.truecaller.messaging.newconversation.NewConversationActivity;
import com.truecaller.p183ui.TruecallerInit;
import com.truecaller.p183ui.settings.SettingsActivity;
import com.truecaller.p183ui.settings.SettingsCategory;
import com.truecaller.utils.viewbinding.ViewBindingProperty;
import io.agora.rtc.Constants;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import javax.inject.Inject;
import kotlin.Metadata;
import p1727n3.p1734b.p1743f.C25508g0;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.AbstractC15539j2;
import p193e.p194a.AbstractC21187w1;
import p193e.p194a.p1049l4.C17422k;
import p193e.p194a.p1059m3.C18187t0;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p1129p5.p1137x0.C19350a;
import p193e.p194a.p1146q2.AbstractC19550v0;
import p193e.p194a.p195a.p198b.C4916a;
import p193e.p194a.p195a.p198b.C4978p0;
import p193e.p194a.p372b0.p373a.AbstractC8318l;
import p193e.p194a.p372b0.p373a.C8321n;
import p193e.p194a.p372b0.p373a.p381c0.C8280a;
import p193e.p194a.p372b0.p373a.p381c0.C8281b;
import p193e.p194a.p372b0.p373a.p383e0.C8301a;
import p193e.p194a.p372b0.p373a.p390w.AbstractC8341a;
import p193e.p194a.p372b0.p373a.p390w.AbstractC8343c;
import p193e.p194a.p372b0.p373a.p390w.C8342b;
import p193e.p194a.p372b0.p373a.p390w.C8345d;
import p193e.p194a.p437c.p438a.p478h.C9092a;
import p193e.p194a.p437c.p438a.p487k.p492e.C9223e;
import p193e.p194a.p437c.p438a.p507p.p513e.C9507f;
import p193e.p194a.p682e.AbstractC13289n1;
import p193e.p194a.p682e.AbstractC13301p1;
import p193e.p194a.p682e.AbstractC13335y0;
import p193e.p194a.p851h5.AbstractC14965w;
import s1.a.l;
import s1.g;
import s1.s;
import s1.z.b.a;
import s1.z.b.p;
import s1.z.c.b;
import s1.z.c.f;
import s1.z.c.j;
import s1.z.c.m;
@Metadata(bv = {1, 0, 3}, d1 = {"��ô\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0016\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010 \n��\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010\u0015\n\u0002\b\u0014\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\n\u0018�� »\u00012\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u00042\u00020\u00052\u00020\u00062\u00020\u00072\u00020\b2\u00020\t:\u0002¤\u0001B\b¢\u0006\u0005\bº\u0001\u0010\u0011J\u001d\u0010\r\u001a\u00020\f2\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00010\nH\u0002¢\u0006\u0004\b\r\u0010\u000eJ\u000f\u0010\u0010\u001a\u00020\u000fH\u0002¢\u0006\u0004\b\u0010\u0010\u0011J\u0017\u0010\u0014\u001a\u00020\u000f2\u0006\u0010\u0013\u001a\u00020\u0012H\u0002¢\u0006\u0004\b\u0014\u0010\u0015J\u0019\u0010\u0018\u001a\u00020\u000f2\b\u0010\u0017\u001a\u0004\u0018\u00010\u0016H\u0016¢\u0006\u0004\b\u0018\u0010\u0019J-\u0010\u001f\u001a\u0004\u0018\u00010\u001e2\u0006\u0010\u001b\u001a\u00020\u001a2\b\u0010\u001d\u001a\u0004\u0018\u00010\u001c2\b\u0010\u0017\u001a\u0004\u0018\u00010\u0016H\u0016¢\u0006\u0004\b\u001f\u0010 J!\u0010\"\u001a\u00020\u000f2\u0006\u0010!\u001a\u00020\u001e2\b\u0010\u0017\u001a\u0004\u0018\u00010\u0016H\u0016¢\u0006\u0004\b\"\u0010#J\u000f\u0010$\u001a\u00020\u000fH\u0016¢\u0006\u0004\b$\u0010\u0011J\u000f\u0010%\u001a\u00020\u000fH\u0016¢\u0006\u0004\b%\u0010\u0011J\u000f\u0010&\u001a\u00020\u000fH\u0016¢\u0006\u0004\b&\u0010\u0011J\u000f\u0010'\u001a\u00020\u000fH\u0016¢\u0006\u0004\b'\u0010\u0011J\u001f\u0010+\u001a\u00020\u000f2\u0006\u0010)\u001a\u00020(2\u0006\u0010\u001b\u001a\u00020*H\u0016¢\u0006\u0004\b+\u0010,J\u0017\u00100\u001a\u00020/2\u0006\u0010.\u001a\u00020-H\u0016¢\u0006\u0004\b0\u00101J)\u00106\u001a\u00020\u000f2\u0006\u00102\u001a\u00020\u00122\u0006\u00103\u001a\u00020\u00122\b\u00105\u001a\u0004\u0018\u000104H\u0016¢\u0006\u0004\b6\u00107J\u0019\u0010:\u001a\u00020\u000f2\b\u00109\u001a\u0004\u0018\u000108H\u0016¢\u0006\u0004\b:\u0010;J)\u0010>\u001a\u00020\u000f2\u0006\u00102\u001a\u00020\u00122\u0006\u0010<\u001a\u00020/2\b\b\u0001\u0010=\u001a\u000208H\u0016¢\u0006\u0004\b>\u0010?J\u000f\u0010@\u001a\u00020\u000fH\u0016¢\u0006\u0004\b@\u0010\u0011J\u000f\u0010A\u001a\u00020\u000fH\u0016¢\u0006\u0004\bA\u0010\u0011J\u000f\u0010B\u001a\u00020\u000fH\u0016¢\u0006\u0004\bB\u0010\u0011J\u000f\u0010C\u001a\u00020\u000fH\u0016¢\u0006\u0004\bC\u0010\u0011J\u000f\u0010D\u001a\u00020\u000fH\u0016¢\u0006\u0004\bD\u0010\u0011J\u000f\u0010E\u001a\u00020/H\u0016¢\u0006\u0004\bE\u0010FJ\u000f\u0010G\u001a\u00020\u000fH\u0016¢\u0006\u0004\bG\u0010\u0011J\u000f\u0010H\u001a\u00020\u000fH\u0016¢\u0006\u0004\bH\u0010\u0011J\u0017\u0010J\u001a\u00020\u000f2\u0006\u0010I\u001a\u00020/H\u0016¢\u0006\u0004\bJ\u0010KJ\u0017\u0010M\u001a\u00020\u000f2\u0006\u0010L\u001a\u000204H\u0016¢\u0006\u0004\bM\u0010NJ\u0011\u0010P\u001a\u0004\u0018\u00010OH\u0016¢\u0006\u0004\bP\u0010QJ\u0017\u0010T\u001a\u00020\u000f2\u0006\u0010S\u001a\u00020RH\u0016¢\u0006\u0004\bT\u0010UJ\u0017\u0010W\u001a\u00020\u000f2\u0006\u0010V\u001a\u00020/H\u0016¢\u0006\u0004\bW\u0010KJ\u0017\u0010Y\u001a\u00020\u000f2\u0006\u0010X\u001a\u00020\u0012H\u0016¢\u0006\u0004\bY\u0010\u0015J+\u0010^\u001a\u00020\u000f2\f\u0010[\u001a\b\u0012\u0004\u0012\u0002080Z2\f\u0010]\u001a\b\u0012\u0004\u0012\u00020\\0ZH\u0016¢\u0006\u0004\b^\u0010_J\u000f\u0010`\u001a\u00020\u000fH\u0016¢\u0006\u0004\b`\u0010\u0011J\u0017\u0010a\u001a\u00020\u000f2\u0006\u0010V\u001a\u00020/H\u0016¢\u0006\u0004\ba\u0010KJ\u0017\u0010c\u001a\u00020\u000f2\u0006\u0010b\u001a\u00020\u0012H\u0016¢\u0006\u0004\bc\u0010\u0015J\u000f\u0010d\u001a\u00020\u0012H\u0016¢\u0006\u0004\bd\u0010eJ\u0017\u0010h\u001a\n\u0012\u0004\u0012\u00020g\u0018\u00010fH\u0016¢\u0006\u0004\bh\u0010iJ\u0011\u0010k\u001a\u0004\u0018\u00010jH\u0016¢\u0006\u0004\bk\u0010lJ\u000f\u0010m\u001a\u00020/H\u0016¢\u0006\u0004\bm\u0010FJ\u000f\u0010n\u001a\u00020\u000fH\u0016¢\u0006\u0004\bn\u0010\u0011J'\u0010r\u001a\u00020\u000f2\u0006\u0010o\u001a\u00020\u00122\u0006\u0010p\u001a\u00020\u00122\u0006\u0010q\u001a\u00020/H\u0016¢\u0006\u0004\br\u0010sJ\u0017\u0010t\u001a\u00020\u000f2\u0006\u0010o\u001a\u00020\u0012H\u0016¢\u0006\u0004\bt\u0010\u0015J-\u0010x\u001a\u00020\u000f2\u0006\u00102\u001a\u00020\u00122\f\u0010u\u001a\b\u0012\u0004\u0012\u0002080f2\u0006\u0010w\u001a\u00020vH\u0016¢\u0006\u0004\bx\u0010yJ\u000f\u0010z\u001a\u00020\u000fH\u0016¢\u0006\u0004\bz\u0010\u0011J\u000f\u0010{\u001a\u00020\u000fH\u0016¢\u0006\u0004\b{\u0010\u0011J\u000f\u0010|\u001a\u00020\u000fH\u0016¢\u0006\u0004\b|\u0010\u0011J\u000f\u0010}\u001a\u00020\u000fH\u0016¢\u0006\u0004\b}\u0010\u0011J\u0017\u0010~\u001a\u00020\u000f2\u0006\u0010S\u001a\u00020RH\u0016¢\u0006\u0004\b~\u0010UJG\u0010\u0085\u0001\u001a\u00020\u000f2\u0006\u0010\u007f\u001a\u00020/2\u0007\u0010\u0080\u0001\u001a\u00020/2\u0007\u0010\u0081\u0001\u001a\u00020/2\u0007\u0010\u0082\u0001\u001a\u00020/2\u0007\u0010\u0083\u0001\u001a\u00020/2\u0007\u0010\u0084\u0001\u001a\u00020/H\u0016¢\u0006\u0006\b\u0085\u0001\u0010\u0086\u0001J\u0011\u0010\u0087\u0001\u001a\u00020\u000fH\u0016¢\u0006\u0005\b\u0087\u0001\u0010\u0011J\u0011\u0010\u0088\u0001\u001a\u00020\u000fH\u0016¢\u0006\u0005\b\u0088\u0001\u0010\u0011J\u0011\u0010\u0089\u0001\u001a\u00020\u000fH\u0016¢\u0006\u0005\b\u0089\u0001\u0010\u0011J\u0011\u0010\u008a\u0001\u001a\u00020\u000fH\u0016¢\u0006\u0005\b\u008a\u0001\u0010\u0011R(\u0010\u0090\u0001\u001a\n\u0012\u0005\u0012\u00030\u008c\u00010\u008b\u00018\u0016@\u0016X\u0096\u0004¢\u0006\u000f\n\u0005\bc\u0010\u008d\u0001\u001a\u0006\b\u008e\u0001\u0010\u008f\u0001R\u001f\u0010\u0093\u0001\u001a\u00020/8\u0016@\u0016X\u0096D¢\u0006\u000e\n\u0005\bH\u0010\u0091\u0001\u001a\u0005\b\u0092\u0001\u0010FR#\u0010\u0099\u0001\u001a\u00030\u0094\u00018B@\u0002X\u0082\u0084\u0002¢\u0006\u0010\n\u0006\b\u0095\u0001\u0010\u0096\u0001\u001a\u0006\b\u0097\u0001\u0010\u0098\u0001R\u0019\u0010\u009b\u0001\u001a\u00020/8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u009a\u0001\u0010\u0091\u0001R*\u0010£\u0001\u001a\u00030\u009c\u00018\u0006@\u0006X\u0087.¢\u0006\u0018\n\u0006\b\u009d\u0001\u0010\u009e\u0001\u001a\u0006\b\u009f\u0001\u0010 \u0001\"\u0006\b¡\u0001\u0010¢\u0001R\u0019\u0010¥\u0001\u001a\u00020/8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b¤\u0001\u0010\u0091\u0001R#\u0010«\u0001\u001a\u00030¦\u00018B@\u0002X\u0082\u0084\u0002¢\u0006\u0010\n\u0006\b§\u0001\u0010¨\u0001\u001a\u0006\b©\u0001\u0010ª\u0001R\u0018\u0010\u00ad\u0001\u001a\u00020\u00128V@\u0016X\u0096\u0004¢\u0006\u0007\u001a\u0005\b¬\u0001\u0010eR\u0019\u0010¯\u0001\u001a\u00020/8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b®\u0001\u0010\u0091\u0001R\u0019\u0010±\u0001\u001a\u00020/8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b°\u0001\u0010\u0091\u0001R*\u0010¹\u0001\u001a\u00030²\u00018\u0006@\u0006X\u0087.¢\u0006\u0018\n\u0006\b³\u0001\u0010´\u0001\u001a\u0006\bµ\u0001\u0010¶\u0001\"\u0006\b·\u0001\u0010¸\u0001¨\u0006¼\u0001"}, d2 = {"Le/a/a/r0/j;", "Landroidx/fragment/app/Fragment;", "Le/a/q2/v0;", "Le/a/a/r0/p;", "Le/a/e/n1;", "Le/a/e/p1;", "Le/a/b0/a/w/c;", "Le/a/e/y0;", "Le/a/a/r0/q;", "Le/a/a/r0/h;", "Lkotlin/Function0;", "fragmentFactory", "Le/a/b0/a/c0/b$d;", "RA", "(Ls1/z/b/a;)Le/a/b0/a/c0/b$d;", "Ls1/s;", "OA", "()V", "", "itemId", "UA", "(I)V", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "container", "Landroid/view/View;", "onCreateView", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;", ViewAction.VIEW, "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "onResume", "onPause", "onStop", "onDestroy", "Landroid/view/Menu;", "menu", "Landroid/view/MenuInflater;", "onCreateOptionsMenu", "(Landroid/view/Menu;Landroid/view/MenuInflater;)V", "Landroid/view/MenuItem;", "item", "", "onOptionsItemSelected", "(Landroid/view/MenuItem;)Z", "requestCode", "resultCode", "Landroid/content/Intent;", RemoteMessageConst.DATA, "onActivityResult", "(IILandroid/content/Intent;)V", "", AnalyticsConstants.CONTEXT, "Zn", "(Ljava/lang/String;)V", "shouldShowPrepScreen", "analyticsContext", "iz", "(IZLjava/lang/String;)V", "t0", "Gv", "h6", "co", "Fn", "or", "()Z", "y0", "j", "tabSwitched", "bx", "(Z)V", "intent", "Cc", "(Landroid/content/Intent;)V", "Le/a/b0/a/n;", "LA", "()Le/a/b0/a/n;", "Lcom/truecaller/messaging/data/types/InboxTab;", "inboxTab", "z0", "(Lcom/truecaller/messaging/data/types/InboxTab;)V", "enabled", "jy", "unreadConversationsCount", "dk", "", "names", "Landroid/net/Uri;", "imageUris", "Pr", "(Ljava/util/List;Ljava/util/List;)V", "F0", "Zu", "stringId", "a", "hz", "()I", "", "Le/a/b0/a/w/d;", "Bm", "()[Lcom/truecaller/common/ui/fab/FabMenuItem;", "Le/a/b0/a/w/a;", "Sm", "()Le/a/b0/a/w/a;", "F4", "mm", "position", "unreadCount", "showChangedAfterLastVisit", "Aa", "(IIZ)V", "im", "permissions", "", "grantResults", "onRequestPermissionsResult", "(I[Ljava/lang/String;[I)V", "o2", "g5", "x0", "O", "D7", "businessTabEnabled", "markImportantROWEnabled", "showOthers", "showPromotions", "showInbox", "smartFeedEnabled", "Vs", "(ZZZZZZ)V", "my", "Ju", "ln", "GA", "", "Le/a/a/r0/g;", "Ljava/util/List;", "QA", "()Ljava/util/List;", "holderList", "Z", "Di", "isTabsPresent", "Le/a/b0/a/c0/b;", "g", "Ls1/g;", "TA", "()Le/a/b0/a/c0/b;", "tabLayoutXHelper", "h", "isOverflowMenuDismissEvent", "Le/a/a/r0/m;", "e", "Le/a/a/r0/m;", "SA", "()Le/a/a/r0/m;", "setPresenter", "(Le/a/a/r0/m;)V", "presenter", C22021b.f61237c, "markAsReadEnabled", "Le/a/m3/t0;", "i", "Lcom/truecaller/utils/viewbinding/ViewBindingProperty;", "PA", "()Le/a/m3/t0;", "binding", "Wy", "searchBarVisibility", AbstractC2405c.f7629a, "setDefaultSmsAppEnabled", "d", "showUnreadConversationsStateEnabled", "Le/a/h5/w;", "f", "Le/a/h5/w;", "getTcPermissionUtil", "()Le/a/h5/w;", "setTcPermissionUtil", "(Le/a/h5/w;)V", "tcPermissionUtil", "<init>", "l", "truecaller_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.a.r0.j */
/* loaded from: classes5-dex2jar.jar:e/a/a/r0/j.class */
public final class C7219j extends Fragment implements AbstractC19550v0, AbstractC7243p, AbstractC13289n1, AbstractC13301p1, AbstractC8343c, AbstractC13335y0, AbstractC7244q, AbstractC7217h {

    /* renamed from: k */
    public static final /* synthetic */ l[] f23114k = {C22128a.m8621g0(C7219j.class, "binding", "getBinding()Lcom/truecaller/databinding/LayoutTcxPagerWithTabsBinding;", 0)};

    /* renamed from: l */
    public static final C7221b f23115l = new C7221b(null);

    /* renamed from: b */
    public boolean f23117b;

    /* renamed from: c */
    public boolean f23118c;

    /* renamed from: d */
    public boolean f23119d;
    @Inject

    /* renamed from: e */
    public AbstractC7240m f23120e;
    @Inject

    /* renamed from: f */
    public AbstractC14965w f23121f;

    /* renamed from: a */
    public final List<AbstractC7216g> f23116a = new ArrayList();

    /* renamed from: g */
    public final g f23122g = C25225a.m3978P1(new C7237q());

    /* renamed from: h */
    public boolean f23123h = true;

    /* renamed from: i */
    public final ViewBindingProperty f23124i = new C19350a(new C7220a());

    /* renamed from: j */
    public final boolean f23125j = true;

    /* renamed from: e.a.a.r0.j$a */
    /* loaded from: classes5-dex2jar.jar:e/a/a/r0/j$a.class */
    public static final class C7220a extends m implements s1.z.b.l<C7219j, C18187t0> {
        public C7220a() {
            super(1);
        }

        /* renamed from: d */
        public Object m29968d(Object obj) {
            Fragment fragment = (Fragment) obj;
            s1.z.c.l.e(fragment, "fragment");
            View requireView = fragment.requireView();
            int i = 2131366197;
            TabLayoutX tabLayoutX = (TabLayoutX) requireView.findViewById(C2752R.C2754id.tabsLayout);
            if (tabLayoutX != null) {
                i = 2131366788;
                ViewPager2 viewPager2 = (ViewPager2) requireView.findViewById(2131366788);
                if (viewPager2 != null) {
                    return new C18187t0((LinearLayout) requireView, tabLayoutX, viewPager2);
                }
            }
            throw new NullPointerException("Missing required view with ID: ".concat(requireView.getResources().getResourceName(i)));
        }
    }

    /* renamed from: e.a.a.r0.j$b */
    /* loaded from: classes5-dex2jar.jar:e/a/a/r0/j$b.class */
    public static final class C7221b {
        public C7221b(f fVar) {
        }

        /* renamed from: a */
        public final Intent m29967a(Context context, InboxTab inboxTab, String str) {
            s1.z.c.l.e(context, AnalyticsConstants.CONTEXT);
            s1.z.c.l.e(inboxTab, "tab");
            s1.z.c.l.e(str, "analyticsContext");
            Intent putExtra = TruecallerInit.m34553xa(context, "messages", str).putExtra("inbox_tab", inboxTab);
            s1.z.c.l.d(putExtra, "TruecallerInit.buildInte…tra(EXTRA_INBOX_TAB, tab)");
            return putExtra;
        }
    }

    /* renamed from: e.a.a.r0.j$c */
    /* loaded from: classes5-dex2jar.jar:e/a/a/r0/j$c.class */
    public static final class C7222c extends C8342b {
        public C7222c() {
            C7219j.this = r4;
        }

        @Override // p193e.p194a.p372b0.p373a.p390w.C8342b, p193e.p194a.p372b0.p373a.p390w.AbstractC8341a
        /* renamed from: No */
        public void mo28659No() {
            C7219j.this.m29975SA().mo29951Qj();
        }
    }

    /* renamed from: e.a.a.r0.j$d */
    /* loaded from: classes5-dex2jar.jar:e/a/a/r0/j$d.class */
    public static final class C7223d implements C25508g0.AbstractC25510b {
        public C7223d() {
            C7219j.this = r4;
        }

        @Override // p1727n3.p1734b.p1743f.C25508g0.AbstractC25510b
        public final boolean onMenuItemClick(MenuItem menuItem) {
            C7219j c7219j = C7219j.this;
            s1.z.c.l.d(menuItem, "item");
            c7219j.onOptionsItemSelected(menuItem);
            return true;
        }
    }

    /* renamed from: e.a.a.r0.j$e */
    /* loaded from: classes5-dex2jar.jar:e/a/a/r0/j$e.class */
    public static final class View$OnClickListenerC7224e implements View.OnClickListener {

        /* renamed from: b */
        public final /* synthetic */ C25508g0 f23129b;

        public View$OnClickListenerC7224e(C25508g0 c25508g0) {
            C7219j.this = r4;
            this.f23129b = c25508g0;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            C7219j.this.f23123h = true;
            this.f23129b.f71382d.m3426f();
        }
    }

    /* renamed from: e.a.a.r0.j$f */
    /* loaded from: classes5-dex2jar.jar:e/a/a/r0/j$f.class */
    public static final class C7225f implements C25508g0.AbstractC25509a {
        public C7225f() {
            C7219j.this = r4;
        }

        @Override // p1727n3.p1734b.p1743f.C25508g0.AbstractC25509a
        /* renamed from: a */
        public final void mo3361a(C25508g0 c25508g0) {
            C7219j c7219j = C7219j.this;
            if (c7219j.f23123h) {
                c7219j.m29973UA(0);
            }
        }
    }

    /* renamed from: e.a.a.r0.j$g */
    /* loaded from: classes5-dex2jar.jar:e/a/a/r0/j$g.class */
    public static final class RunnableC7226g implements Runnable {

        /* renamed from: b */
        public final /* synthetic */ InboxTab f23132b;

        public RunnableC7226g(InboxTab inboxTab) {
            C7219j.this = r4;
            this.f23132b = inboxTab;
        }

        @Override // java.lang.Runnable
        public final void run() {
            C7219j c7219j = C7219j.this;
            l[] lVarArr = C7219j.f23114k;
            ViewPager2 viewPager2 = c7219j.m29978PA().f51414b;
            s1.z.c.l.d(viewPager2, "binding.viewPager");
            viewPager2.setCurrentItem(C7219j.this.m29975SA().mo29960Ij().indexOf(this.f23132b));
        }
    }

    /* renamed from: e.a.a.r0.j$h */
    /* loaded from: classes5-dex2jar.jar:e/a/a/r0/j$h.class */
    public static final class C7227h extends m implements p<C8280a, Integer, s> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C7227h(boolean z, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6) {
            super(2);
            C7219j.this = r4;
        }

        /* renamed from: k */
        public Object m29966k(Object obj, Object obj2) {
            int intValue = ((Number) obj2).intValue();
            s1.z.c.l.e((C8280a) obj, "<anonymous parameter 0>");
            C7219j.this.m29975SA().mo29949Sj(intValue);
            for (AbstractC7216g abstractC7216g : C7219j.this.f23116a) {
                abstractC7216g.mo29987Q5();
            }
            n3.r.a.l activity = C7219j.this.getActivity();
            if (!(activity instanceof AbstractC8343c.AbstractC8344a)) {
                activity = null;
            }
            AbstractC8343c.AbstractC8344a abstractC8344a = activity;
            if (abstractC8344a != null) {
                abstractC8344a.mo28650L1();
            }
            n3.r.a.l activity2 = C7219j.this.getActivity();
            if (!(activity2 instanceof AbstractC8343c.AbstractC8344a)) {
                activity2 = null;
            }
            AbstractC8343c.AbstractC8344a abstractC8344a2 = activity2;
            if (abstractC8344a2 != null) {
                abstractC8344a2.mo28649v7(false);
            }
            C7219j.this.m29975SA().mo29940bk();
            C7219j.this.m29972VA();
            C7219j c7219j = C7219j.this;
            if (c7219j.f23119d) {
                c7219j.m29979OA();
            }
            return s.a;
        }
    }

    /* renamed from: e.a.a.r0.j$i */
    /* loaded from: classes5-dex2jar.jar:e/a/a/r0/j$i.class */
    public static final /* synthetic */ class C7228i extends j implements a<C4916a> {
        public C7228i(InboxTab inboxTab) {
            super(0, inboxTab, C7238k.class, "buildFragment", "buildFragment(Lcom/truecaller/messaging/data/types/InboxTab;)Lcom/truecaller/messaging/messaginglist/MessagingListFragment;", 1);
        }

        public Object invoke() {
            return C7238k.m29965a((InboxTab) ((b) this).b);
        }
    }

    /* renamed from: e.a.a.r0.j$j */
    /* loaded from: classes5-dex2jar.jar:e/a/a/r0/j$j.class */
    public static final /* synthetic */ class C7229j extends j implements a<C9507f> {
        public C7229j(C9507f.C9511d c9511d) {
            super(0, c9511d, C9507f.C9511d.class, "newInstance", "newInstance()Lcom/truecaller/insights/ui/smartfeed/view/InsightsSmartFeedFragment;", 0);
        }

        public Object invoke() {
            Objects.requireNonNull((C9507f.C9511d) ((b) this).b);
            return new C9507f();
        }
    }

    /* renamed from: e.a.a.r0.j$k */
    /* loaded from: classes5-dex2jar.jar:e/a/a/r0/j$k.class */
    public static final /* synthetic */ class C7230k extends j implements a<BusinessInsightsFragment> {
        public C7230k(BusinessInsightsFragment.C4098b c4098b) {
            super(0, c4098b, BusinessInsightsFragment.C4098b.class, "newInstance", "newInstance()Lcom/truecaller/insights/ui/important/view/BusinessInsightsFragment;", 0);
        }

        public Object invoke() {
            Objects.requireNonNull((BusinessInsightsFragment.C4098b) ((b) this).b);
            return new BusinessInsightsFragment();
        }
    }

    /* renamed from: e.a.a.r0.j$l */
    /* loaded from: classes5-dex2jar.jar:e/a/a/r0/j$l.class */
    public static final /* synthetic */ class C7231l extends j implements a<Fragment> {
        public C7231l(C9223e.C9225b c9225b) {
            super(0, c9225b, C9223e.C9225b.class, "newInstance", "newInstance()Landroidx/fragment/app/Fragment;", 0);
        }

        public Object invoke() {
            Objects.requireNonNull((C9223e.C9225b) ((b) this).b);
            return new C9223e();
        }
    }

    /* renamed from: e.a.a.r0.j$m */
    /* loaded from: classes5-dex2jar.jar:e/a/a/r0/j$m.class */
    public static final /* synthetic */ class C7232m extends j implements a<C4916a> {
        public C7232m(InboxTab inboxTab) {
            super(0, inboxTab, C7238k.class, "buildFragment", "buildFragment(Lcom/truecaller/messaging/data/types/InboxTab;)Lcom/truecaller/messaging/messaginglist/MessagingListFragment;", 1);
        }

        public Object invoke() {
            return C7238k.m29965a((InboxTab) ((b) this).b);
        }
    }

    /* renamed from: e.a.a.r0.j$n */
    /* loaded from: classes5-dex2jar.jar:e/a/a/r0/j$n.class */
    public static final /* synthetic */ class C7233n extends j implements a<C4916a> {
        public C7233n(InboxTab inboxTab) {
            super(0, inboxTab, C7238k.class, "buildFragment", "buildFragment(Lcom/truecaller/messaging/data/types/InboxTab;)Lcom/truecaller/messaging/messaginglist/MessagingListFragment;", 1);
        }

        public Object invoke() {
            return C7238k.m29965a((InboxTab) ((b) this).b);
        }
    }

    /* renamed from: e.a.a.r0.j$o */
    /* loaded from: classes5-dex2jar.jar:e/a/a/r0/j$o.class */
    public static final /* synthetic */ class C7234o extends j implements a<C4916a> {
        public C7234o(InboxTab inboxTab) {
            super(0, inboxTab, C7238k.class, "buildFragment", "buildFragment(Lcom/truecaller/messaging/data/types/InboxTab;)Lcom/truecaller/messaging/messaginglist/MessagingListFragment;", 1);
        }

        public Object invoke() {
            return C7238k.m29965a((InboxTab) ((b) this).b);
        }
    }

    /* renamed from: e.a.a.r0.j$p */
    /* loaded from: classes5-dex2jar.jar:e/a/a/r0/j$p.class */
    public static final class RunnableC7235p implements Runnable {

        /* renamed from: b */
        public final /* synthetic */ CoordinatorLayout f23135b;

        /* renamed from: c */
        public final /* synthetic */ CardView f23136c;

        /* renamed from: e.a.a.r0.j$p$a */
        /* loaded from: classes5-dex2jar.jar:e/a/a/r0/j$p$a.class */
        public static final class C7236a extends m implements a<s> {

            /* renamed from: b */
            public static final C7236a f23137b = new C7236a();

            public C7236a() {
                super(0);
            }

            public Object invoke() {
                return s.a;
            }
        }

        public RunnableC7235p(CoordinatorLayout coordinatorLayout, CardView cardView) {
            C7219j.this = r4;
            this.f23135b = coordinatorLayout;
            this.f23136c = cardView;
        }

        @Override // java.lang.Runnable
        public final void run() {
            C8301a c8301a = C8301a.f25570a;
            CoordinatorLayout coordinatorLayout = this.f23135b;
            s1.z.c.l.d(coordinatorLayout, "parent");
            TooltipDirection tooltipDirection = TooltipDirection.TOP_FAR_END;
            String string = C7219j.this.getString((int) C2752R.string.OverflowMenuTooltip);
            s1.z.c.l.d(string, "getString(R.string.OverflowMenuTooltip)");
            CardView cardView = this.f23136c;
            C7236a c7236a = C7236a.f23137b;
            Context context = coordinatorLayout.getContext();
            s1.z.c.l.d(context, "parent.context");
            c8301a.m28682b(coordinatorLayout, tooltipDirection, string, cardView, 0.0f, context, 0, false, c7236a);
        }
    }

    /* renamed from: e.a.a.r0.j$q */
    /* loaded from: classes5-dex2jar.jar:e/a/a/r0/j$q.class */
    public static final class C7237q extends m implements a<C8281b> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C7237q() {
            super(0);
            C7219j.this = r4;
        }

        public Object invoke() {
            return new C8281b(C7219j.this, false);
        }
    }

    @Override // p193e.p194a.p195a.p279r0.AbstractC7243p
    /* renamed from: Aa */
    public void mo29930Aa(int i, int i2, boolean z) {
        if (z) {
            C8280a m28691d = m29974TA().m28691d(i);
            if (m28691d == null) {
                return;
            }
            C8280a.m28696i1(m28691d, true, 0, 2);
            return;
        }
        AbstractC7240m abstractC7240m = this.f23120e;
        if (abstractC7240m == null) {
            s1.z.c.l.l("presenter");
            throw null;
        } else if (abstractC7240m.mo29960Ij().get(i).ordinal() != 3) {
            C8280a m28691d2 = m29974TA().m28691d(i);
            if (m28691d2 == null) {
                return;
            }
            m28691d2.m28698g1(i2, 2130970017);
        } else {
            C8280a m28691d3 = m29974TA().m28691d(i);
            if (m28691d3 == null) {
                return;
            }
            int i3 = C8280a.f25524z;
            m28691d3.m28698g1(i2, C3700R.attr.tcx_alertBackgroundRed);
        }
    }

    @Override // p193e.p194a.p372b0.p373a.p390w.AbstractC8343c
    /* renamed from: Bm */
    public C8345d[] mo28654Bm() {
        return null;
    }

    @Override // p193e.p194a.p682e.AbstractC13289n1
    /* renamed from: Cc */
    public void mo10112Cc(Intent intent) {
        s1.z.c.l.e(intent, "intent");
        AbstractC7240m abstractC7240m = this.f23120e;
        if (abstractC7240m == null) {
            s1.z.c.l.l("presenter");
            throw null;
        }
        abstractC7240m.mo29931z6(intent);
        Bundle extras = intent.getExtras();
        if (extras == null) {
            return;
        }
        s1.z.c.l.d(extras, "intent.extras ?: return");
        AbstractC7240m abstractC7240m2 = this.f23120e;
        if (abstractC7240m2 != null) {
            abstractC7240m2.mo29944Xj(extras);
        } else {
            s1.z.c.l.l("presenter");
            throw null;
        }
    }

    @Override // p193e.p194a.p195a.p279r0.AbstractC7243p
    /* renamed from: D7 */
    public void mo29929D7(InboxTab inboxTab) {
        Object obj;
        s1.z.c.l.e(inboxTab, "inboxTab");
        Iterator<T> it = this.f23116a.iterator();
        while (true) {
            if (!it.hasNext()) {
                obj = null;
                break;
            }
            Object next = it.next();
            if (((AbstractC7216g) next).mo29986S5() == inboxTab) {
                obj = next;
                break;
            }
        }
        AbstractC7216g abstractC7216g = (AbstractC7216g) obj;
        if (abstractC7216g != null) {
            abstractC7216g.mo29990A4();
        }
    }

    @Override // p193e.p194a.p682e.AbstractC13301p1
    /* renamed from: Di */
    public boolean mo21944Di() {
        return this.f23125j;
    }

    @Override // p193e.p194a.p195a.p279r0.AbstractC7243p
    /* renamed from: F0 */
    public void mo29928F0() {
        this.f23119d = true;
        m29979OA();
    }

    @Override // p193e.p194a.p372b0.p373a.p390w.AbstractC8343c
    /* renamed from: F4 */
    public boolean mo28653F4() {
        return true;
    }

    @Override // p193e.p194a.p195a.p279r0.AbstractC7243p
    /* renamed from: Fn */
    public void mo29927Fn() {
        Context requireContext = requireContext();
        s1.z.c.l.d(requireContext, "requireContext()");
        s1.z.c.l.e(requireContext, AnalyticsConstants.CONTEXT);
        startActivity(new Intent(requireContext, CategorizerUpdateActivity.class));
    }

    @Override // p193e.p194a.p195a.p279r0.AbstractC7243p
    /* renamed from: GA */
    public void mo29926GA() {
        C9092a.C9094b c9094b = C9092a.f27756j;
        Objects.requireNonNull(c9094b);
        C9092a c9092a = new C9092a();
        FragmentManager parentFragmentManager = getParentFragmentManager();
        Objects.requireNonNull(c9094b);
        c9092a.show(parentFragmentManager, C9092a.f27755i);
    }

    @Override // p193e.p194a.p195a.p279r0.AbstractC7243p
    /* renamed from: Gv */
    public void mo29925Gv() {
        Context requireContext = requireContext();
        s1.z.c.l.d(requireContext, "requireContext()");
        s1.z.c.l.e(requireContext, AnalyticsConstants.CONTEXT);
        startActivity(new Intent(requireContext, ArchiveConversationListActivity.class));
    }

    @Override // p193e.p194a.p195a.p279r0.AbstractC7243p
    /* renamed from: Ju */
    public void mo29924Ju() {
        startActivity(new Intent(getContext(), MarkedImportantPageActivity.class));
    }

    @Override // p193e.p194a.p372b0.p373a.AbstractC8322o
    /* renamed from: LA */
    public C8321n mo10111LA() {
        return null;
    }

    @Override // p193e.p194a.p195a.p279r0.AbstractC7217h
    /* renamed from: O */
    public void mo29980O() {
        AbstractC7240m abstractC7240m = this.f23120e;
        if (abstractC7240m != null) {
            abstractC7240m.mo29954O();
        } else {
            s1.z.c.l.l("presenter");
            throw null;
        }
    }

    /* renamed from: OA */
    public final void m29979OA() {
        Object obj;
        Iterator<T> it = this.f23116a.iterator();
        while (true) {
            if (!it.hasNext()) {
                obj = null;
                break;
            }
            obj = it.next();
            if (((AbstractC7216g) obj).mo29986S5() == InboxTab.PERSONAL) {
                break;
            }
        }
        AbstractC7216g abstractC7216g = (AbstractC7216g) obj;
        if (abstractC7216g != null) {
            abstractC7216g.mo29988F0();
            this.f23119d = false;
        }
    }

    /* renamed from: PA */
    public final C18187t0 m29978PA() {
        return (C18187t0) this.f23124i.m34468b(this, f23114k[0]);
    }

    @Override // p193e.p194a.p195a.p279r0.AbstractC7243p
    /* renamed from: Pr */
    public void mo29923Pr(List<String> list, List<? extends Uri> list2) {
        Object obj;
        s1.z.c.l.e(list, "names");
        s1.z.c.l.e(list2, "imageUris");
        Iterator<T> it = this.f23116a.iterator();
        while (true) {
            if (!it.hasNext()) {
                obj = null;
                break;
            }
            obj = it.next();
            if (((AbstractC7216g) obj).mo29986S5() == InboxTab.PERSONAL) {
                break;
            }
        }
        AbstractC7216g abstractC7216g = (AbstractC7216g) obj;
        if (abstractC7216g != null) {
            abstractC7216g.mo29983e2(list, list2);
        }
    }

    /* renamed from: QA */
    public List<AbstractC7216g> m29977QA() {
        return this.f23116a;
    }

    /* renamed from: RA */
    public final C8281b.C8285d m29976RA(a<? extends Fragment> aVar) {
        String string = getString((int) C2752R.string.SwitcherBusiness);
        s1.z.c.l.d(string, "getString(R.string.SwitcherBusiness)");
        return new C8281b.C8285d(string, 2131232558, 2131232557, 0, 0, "important_tab", aVar, null, Constants.ERR_PUBLISH_STREAM_NUM_REACH_LIMIT);
    }

    /* renamed from: SA */
    public final AbstractC7240m m29975SA() {
        AbstractC7240m abstractC7240m = this.f23120e;
        if (abstractC7240m != null) {
            return abstractC7240m;
        }
        s1.z.c.l.l("presenter");
        throw null;
    }

    @Override // p193e.p194a.p372b0.p373a.p390w.AbstractC8343c
    /* renamed from: Sm */
    public AbstractC8341a mo28652Sm() {
        return new C7222c();
    }

    /* renamed from: TA */
    public final C8281b m29974TA() {
        return (C8281b) this.f23122g.getValue();
    }

    /* renamed from: UA */
    public final void m29973UA(int i) {
        String str;
        switch (i) {
            case C2752R.C2754id.action_archived_conversations /* 2131361931 */:
                str = "archivedConversations";
                break;
            case C2752R.C2754id.action_auto_hide_transactions /* 2131361932 */:
                str = "autoHideTransactions";
                break;
            case C2752R.C2754id.action_cleanup_inbox /* 2131361950 */:
                str = "inboxCleanup";
                break;
            case C2752R.C2754id.action_mark_all_as_read /* 2131361984 */:
                str = "markAllAsRead";
                break;
            case C2752R.C2754id.action_messaging_settings /* 2131361992 */:
                str = "settings";
                break;
            case C2752R.C2754id.action_set_default_sms_app /* 2131362020 */:
                str = "changeDefaultSmsApp";
                break;
            case C2752R.C2754id.action_starred_messages /* 2131362025 */:
                str = "starred";
                break;
            default:
                str = "dismiss";
                break;
        }
        AbstractC7240m abstractC7240m = this.f23120e;
        if (abstractC7240m != null) {
            abstractC7240m.mo29945Wj(str);
        } else {
            s1.z.c.l.l("presenter");
            throw null;
        }
    }

    /* renamed from: VA */
    public void m29972VA() {
        for (AbstractC7216g abstractC7216g : m29977QA()) {
            abstractC7216g.mo29984e();
        }
    }

    @Override // p193e.p194a.p195a.p279r0.AbstractC7243p
    /* renamed from: Vs */
    public void mo29922Vs(boolean z, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6) {
        ViewPager2 viewPager2 = m29978PA().f51414b;
        s1.z.c.l.d(viewPager2, "binding.viewPager");
        viewPager2.setOffscreenPageLimit(4);
        ViewPager2 viewPager22 = m29978PA().f51414b;
        s1.z.c.l.d(viewPager22, "binding.viewPager");
        s1.z.c.l.e(viewPager22, "$this$adjustDiagonalGestures");
        View childAt = viewPager22.getChildAt(0);
        View view = childAt;
        if (!(childAt instanceof RecyclerView)) {
            view = null;
        }
        RecyclerView recyclerView = (RecyclerView) view;
        if (recyclerView != null) {
            C4978p0 c4978p0 = new C4978p0();
            recyclerView.addOnItemTouchListener(c4978p0);
            recyclerView.addOnScrollListener(c4978p0);
        }
        if (z || z2 || z6) {
            m29978PA().f51413a.setSelectedTabWidthRatio(1.5f);
        }
        C8281b m29974TA = m29974TA();
        String string = getString(z5 ? 2131887968 : 2131887970);
        s1.z.c.l.d(string, "getString(if (showInbox)….string.SwitcherPersonal)");
        m29974TA.m28694a(new C8281b.C8285d(string, z5 ? 2131231975 : 2131232619, z5 ? 2131231967 : 2131232618, 0, 0, "personal_tab", new C7228i(InboxTab.PERSONAL), null, Constants.ERR_PUBLISH_STREAM_NUM_REACH_LIMIT));
        if (z6) {
            C7229j c7229j = new C7229j(C9507f.f28830n);
            String string2 = getString((int) C2752R.string.SwitcherHighlights);
            s1.z.c.l.d(string2, "getString(R.string.SwitcherHighlights)");
            m29974TA.m28694a(new C8281b.C8285d(string2, 2131232007, 2131232006, 0, 0, "highlights_tab", c7229j, null, Constants.ERR_PUBLISH_STREAM_NUM_REACH_LIMIT));
        } else if (z) {
            m29974TA.m28694a(m29976RA(new C7230k(BusinessInsightsFragment.f12806n)));
        } else if (z2) {
            m29974TA.m28694a(m29976RA(new C7231l(C9223e.f28015f)));
        }
        if (z4) {
            String string3 = getString((int) C2752R.string.SwitcherPromotions);
            s1.z.c.l.d(string3, "getString(R.string.SwitcherPromotions)");
            m29974TA.m28694a(new C8281b.C8285d(string3, 2131232158, C2752R.C2753drawable.ic_local_offer_24dp, 0, 0, "promotions_tab", new C7232m(InboxTab.PROMOTIONAL), null, Constants.ERR_PUBLISH_STREAM_NUM_REACH_LIMIT));
        }
        if (z3) {
            String string4 = getString((int) C2752R.string.SwitcherOthers);
            s1.z.c.l.d(string4, "getString(R.string.SwitcherOthers)");
            m29974TA.m28694a(new C8281b.C8285d(string4, 2131232607, 2131232606, 0, 0, "others_tab", new C7233n(InboxTab.OTHERS), null, Constants.ERR_PUBLISH_STREAM_NUM_REACH_LIMIT));
        }
        String string5 = getString((int) C2752R.string.SwitcherSpam);
        s1.z.c.l.d(string5, "getString(R.string.SwitcherSpam)");
        m29974TA.m28694a(new C8281b.C8285d(string5, 2131232659, 2131232657, 0, 2130969966, "spam_tab", new C7234o(InboxTab.SPAM), null, 136));
        ViewPager2 viewPager23 = m29978PA().f51414b;
        s1.z.c.l.d(viewPager23, "binding.viewPager");
        TabLayoutX tabLayoutX = m29978PA().f51413a;
        s1.z.c.l.d(tabLayoutX, "binding.tabsLayout");
        m29974TA.m28693b(viewPager23, tabLayoutX);
        m29974TA.m28690e(new C7227h(z5, z6, z, z2, z4, z3));
    }

    @Override // p193e.p194a.p372b0.p373a.AbstractC8318l
    /* renamed from: Wy */
    public int mo10109Wy() {
        AbstractC7240m abstractC7240m = this.f23120e;
        if (abstractC7240m != null) {
            return abstractC7240m.mo29935t9();
        }
        s1.z.c.l.l("presenter");
        throw null;
    }

    @Override // p193e.p194a.p1146q2.AbstractC19550v0
    /* renamed from: Zn */
    public void mo10107Zn(String str) {
        AbstractC7240m abstractC7240m = this.f23120e;
        if (abstractC7240m != null) {
            abstractC7240m.mo29946Vj(str);
        } else {
            s1.z.c.l.l("presenter");
            throw null;
        }
    }

    @Override // p193e.p194a.p195a.p279r0.AbstractC7243p
    /* renamed from: Zu */
    public void mo29921Zu(boolean z) {
        this.f23118c = z;
        n3.r.a.l activity = getActivity();
        if (activity != null) {
            activity.invalidateOptionsMenu();
        }
    }

    @Override // p193e.p194a.p195a.p279r0.AbstractC7243p
    /* renamed from: a */
    public void mo29920a(int i) {
        n3.r.a.l activity = getActivity();
        if (activity != null) {
            C19291g.m13589S1(activity, i, null, 0, 6);
        }
    }

    @Override // p193e.p194a.p682e.AbstractC13289n1
    /* renamed from: bx */
    public void mo10106bx(boolean z) {
        AbstractC7240m abstractC7240m = this.f23120e;
        if (abstractC7240m == null) {
            s1.z.c.l.l("presenter");
            throw null;
        }
        abstractC7240m.mo29961E2();
        for (AbstractC7216g abstractC7216g : m29977QA()) {
            abstractC7216g.mo29989E2();
        }
        if (!z) {
            return;
        }
        m29972VA();
    }

    @Override // p193e.p194a.p195a.p279r0.AbstractC7243p
    /* renamed from: co */
    public void mo29919co() {
        InboxCleanupActivity.C4221a c4221a = InboxCleanupActivity.f13499a;
        Context requireContext = requireContext();
        s1.z.c.l.d(requireContext, "requireContext()");
        startActivity(InboxCleanupActivity.C4221a.m34985b(c4221a, requireContext, null, "Overflow", 0, 10));
    }

    @Override // p193e.p194a.p195a.p279r0.AbstractC7217h
    /* renamed from: dh */
    public void mo29971dh(AbstractC7216g abstractC7216g) {
        s1.z.c.l.e(abstractC7216g, "holder");
        s1.z.c.l.e(abstractC7216g, "holder");
        this.f23116a.remove(abstractC7216g);
    }

    @Override // p193e.p194a.p195a.p279r0.AbstractC7243p
    /* renamed from: dk */
    public void mo29918dk(int i) {
        for (AbstractC7216g abstractC7216g : m29977QA()) {
            abstractC7216g.mo29985d3(i);
        }
    }

    @Override // p193e.p194a.p195a.p279r0.AbstractC7243p
    /* renamed from: g5 */
    public void mo29917g5() {
        AbstractC8318l.AbstractC8319a activity = getActivity();
        if (activity instanceof AbstractC8318l.AbstractC8319a) {
            activity.mo28679c1();
        }
    }

    @Override // p193e.p194a.p195a.p279r0.AbstractC7243p
    /* renamed from: h6 */
    public void mo29916h6() {
        SettingsActivity.C4692a c4692a = SettingsActivity.f15840g;
        Context requireContext = requireContext();
        s1.z.c.l.d(requireContext, "requireContext()");
        SettingsCategory settingsCategory = SettingsCategory.SETTINGS_MAIN;
        s1.z.c.l.e(requireContext, AnalyticsConstants.CONTEXT);
        s1.z.c.l.e(settingsCategory, "category");
        s1.z.c.l.e("inbox-overflowMenuSettingsMessagingChangeDma", "analyticsContext");
        Intent putExtra = c4692a.m34494a(requireContext, settingsCategory, true, null).putExtra("analytics_context", "inbox-overflowMenuSettingsMessagingChangeDma");
        s1.z.c.l.d(putExtra, "buildIntent(context, cat…ONTEXT, analyticsContext)");
        startActivity(putExtra);
    }

    @Override // p193e.p194a.p372b0.p373a.p390w.AbstractC8343c
    /* renamed from: hz */
    public int mo28651hz() {
        return 2131232592;
    }

    @Override // p193e.p194a.p195a.p279r0.AbstractC7243p
    /* renamed from: im */
    public void mo29915im(int i) {
        C8280a m28691d = m29974TA().m28691d(i);
        if (m28691d != null) {
            m28691d.m28699f1();
        }
    }

    @Override // p193e.p194a.p195a.p279r0.AbstractC7243p
    /* renamed from: iz */
    public void mo29914iz(int i, boolean z, String str) {
        s1.z.c.l.e(str, "analyticsContext");
        Context context = getContext();
        if (context != null) {
            startActivityForResult(DefaultSmsActivity.m34991pa(context, str), i);
        }
    }

    @Override // p193e.p194a.p682e.AbstractC13289n1
    /* renamed from: j */
    public void mo10102j() {
        AbstractC7240m abstractC7240m = this.f23120e;
        if (abstractC7240m == null) {
            s1.z.c.l.l("presenter");
            throw null;
        }
        abstractC7240m.mo29937j();
        for (AbstractC7216g abstractC7216g : m29977QA()) {
            abstractC7216g.mo29982j();
        }
    }

    @Override // p193e.p194a.p195a.p279r0.AbstractC7243p
    /* renamed from: jy */
    public void mo29913jy(boolean z) {
        this.f23117b = z;
        n3.r.a.l activity = getActivity();
        if (activity != null) {
            activity.invalidateOptionsMenu();
        }
    }

    @Override // p193e.p194a.p195a.p279r0.AbstractC7243p
    /* renamed from: ln */
    public void mo29912ln() {
        CoordinatorLayout findViewById = requireActivity().findViewById(C2752R.C2754id.main_coordinator_layout);
        CardView cardView = (CardView) findViewById.findViewById(C2752R.C2754id.toolbar_container);
        cardView.post(new RunnableC7235p(findViewById, cardView));
    }

    @Override // p193e.p194a.p195a.p279r0.AbstractC7217h
    /* renamed from: me */
    public void mo29970me(AbstractC7216g abstractC7216g) {
        s1.z.c.l.e(abstractC7216g, "holder");
        s1.z.c.l.e(abstractC7216g, "holder");
        this.f23116a.add(abstractC7216g);
    }

    @Override // p193e.p194a.p195a.p279r0.AbstractC7243p
    /* renamed from: mm */
    public void mo29911mm() {
        startActivity(new Intent((Context) getActivity(), (Class<?>) NewConversationActivity.class));
    }

    @Override // p193e.p194a.p195a.p279r0.AbstractC7243p
    /* renamed from: my */
    public void mo29910my() {
        C8281b m29974TA = m29974TA();
        m29974TA.f25538h = true;
        m29974TA.f25531a.notifyDataSetChanged();
    }

    @Override // p193e.p194a.p195a.p279r0.AbstractC7244q
    /* renamed from: o2 */
    public void mo29907o2() {
        AbstractC7240m abstractC7240m = this.f23120e;
        if (abstractC7240m != null) {
            abstractC7240m.mo29943Yj();
        } else {
            s1.z.c.l.l("presenter");
            throw null;
        }
    }

    public void onActivityResult(int i, int i2, Intent intent) {
        AbstractC7240m abstractC7240m = this.f23120e;
        if (abstractC7240m == null) {
            s1.z.c.l.l("presenter");
            throw null;
        }
        abstractC7240m.onActivityResult(i, i2, intent);
        C7219j.super.onActivityResult(i, i2, intent);
    }

    public void onCreate(Bundle bundle) {
        C7219j.super.onCreate(bundle);
        Context context = getContext();
        if (context != null) {
            s1.z.c.l.d(context, "it");
            Context applicationContext = context.getApplicationContext();
            Objects.requireNonNull(applicationContext, "null cannot be cast to non-null type com.truecaller.GraphHolder");
            AbstractC15539j2 mo10154s = ((AbstractC21187w1) applicationContext).mo10154s();
            Objects.requireNonNull(mo10154s);
            C7239l c7239l = new C7239l(context);
            C25225a.m3846s(c7239l, C7239l.class);
            C25225a.m3846s(mo10154s, AbstractC15539j2.class);
            C7213f c7213f = new C7213f(c7239l, mo10154s, null);
            this.f23120e = (AbstractC7240m) c7213f.f23111d.get();
            AbstractC14965w mo12182u6 = c7213f.f23109b.mo12182u6();
            Objects.requireNonNull(mo12182u6, "Cannot return null from a non-@Nullable component method");
            this.f23121f = mo12182u6;
        }
        setHasOptionsMenu(true);
    }

    public void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
        s1.z.c.l.e(menu, "menu");
        s1.z.c.l.e(menuInflater, "inflater");
        C7219j.super.onCreateOptionsMenu(menu, menuInflater);
        menuInflater.inflate(C2752R.C2756menu.list_menu_more, menu);
        MenuItem findItem = menu.findItem(2131364778);
        s1.z.c.l.d(findItem, "item");
        View findViewById = findItem.getActionView().findViewById(2131362272);
        s1.z.c.l.d(findViewById, "item.actionView.findViewById<View>(R.id.badge)");
        AbstractC7240m abstractC7240m = this.f23120e;
        if (abstractC7240m == null) {
            s1.z.c.l.l("presenter");
            throw null;
        }
        findViewById.setVisibility(abstractC7240m.mo29941ak() ? 0 : 8);
        C25508g0 c25508g0 = new C25508g0(requireContext(), findItem.getActionView(), 8388613);
        c25508g0.m3362a(C2752R.C2756menu.conversation_list_menu);
        int size = c25508g0.f71380b.size();
        for (int i = 0; i < size; i++) {
            MenuItem item = c25508g0.f71380b.getItem(i);
            s1.z.c.l.d(item, "menu.getItem(i)");
            if (item.getItemId() == 2131361950) {
                AbstractC7240m abstractC7240m2 = this.f23120e;
                if (abstractC7240m2 == null) {
                    s1.z.c.l.l("presenter");
                    throw null;
                } else if (abstractC7240m2.mo29942Zj()) {
                    c25508g0.f71380b.getItem(i).setIcon(C2752R.C2753drawable.ic_inbox_cleanup_badge);
                    MenuItem item2 = c25508g0.f71380b.getItem(i);
                    s1.z.c.l.d(item2, "menu.getItem(i)");
                    C19286f.m13673f(item2, null, null, 3);
                }
            }
            MenuItem item3 = c25508g0.f71380b.getItem(i);
            s1.z.c.l.d(item3, "menu.getItem(i)");
            if (item3.getItemId() == 2131362025) {
                AbstractC7240m abstractC7240m3 = this.f23120e;
                if (abstractC7240m3 == null) {
                    s1.z.c.l.l("presenter");
                    throw null;
                } else if (abstractC7240m3.mo29941ak()) {
                    c25508g0.f71380b.getItem(i).setIcon(C2752R.C2753drawable.ic_starred_messages_badge);
                    MenuItem item4 = c25508g0.f71380b.getItem(i);
                    s1.z.c.l.d(item4, "menu.getItem(i)");
                    C19286f.m13673f(item4, null, null, 3);
                }
            }
            MenuItem item5 = c25508g0.f71380b.getItem(i);
            s1.z.c.l.d(item5, "menu.getItem(i)");
            C19286f.m13673f(item5, Integer.valueOf(C19291g.m13612L(requireContext(), 2130970255)), null, 2);
        }
        c25508g0.f71383e = new C7223d();
        MenuItem findItem2 = c25508g0.f71380b.findItem(C2752R.C2754id.action_mark_all_as_read);
        if (findItem2 != null) {
            findItem2.setVisible(this.f23117b);
        }
        MenuItem findItem3 = c25508g0.f71380b.findItem(C2752R.C2754id.action_set_default_sms_app);
        if (findItem3 != null) {
            findItem3.setVisible(this.f23118c);
        }
        MenuItem findItem4 = c25508g0.f71380b.findItem(C2752R.C2754id.action_cleanup_inbox);
        if (findItem4 != null) {
            AbstractC7240m abstractC7240m4 = this.f23120e;
            if (abstractC7240m4 == null) {
                s1.z.c.l.l("presenter");
                throw null;
            }
            findItem4.setVisible(abstractC7240m4.mo29957Lj());
        }
        MenuItem findItem5 = c25508g0.f71380b.findItem(C2752R.C2754id.action_starred_messages);
        if (findItem5 != null) {
            AbstractC7240m abstractC7240m5 = this.f23120e;
            if (abstractC7240m5 == null) {
                s1.z.c.l.l("presenter");
                throw null;
            }
            findItem5.setVisible(abstractC7240m5.mo29956Mj());
        }
        MenuItem findItem6 = c25508g0.f71380b.findItem(C2752R.C2754id.action_auto_hide_transactions);
        if (findItem6 != null) {
            AbstractC7240m abstractC7240m6 = this.f23120e;
            if (abstractC7240m6 == null) {
                s1.z.c.l.l("presenter");
                throw null;
            }
            findItem6.setVisible(abstractC7240m6.mo29958Kj());
        }
        findItem.getActionView().setOnClickListener(new View$OnClickListenerC7224e(c25508g0));
        c25508g0.f71384f = new C7225f();
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        s1.z.c.l.e(layoutInflater, "inflater");
        return C17422k.m16050u0(layoutInflater, true).inflate(C2752R.layout.layout_tcx_pager_with_tabs, viewGroup, false);
    }

    public void onDestroy() {
        C7219j.super.onDestroy();
        AbstractC7240m abstractC7240m = this.f23120e;
        if (abstractC7240m == null) {
            s1.z.c.l.l("presenter");
            throw null;
        }
        abstractC7240m.mo9806c();
        m29974TA().m28692c();
    }

    public boolean onOptionsItemSelected(MenuItem menuItem) {
        boolean z;
        s1.z.c.l.e(menuItem, "item");
        this.f23123h = false;
        m29973UA(menuItem.getItemId());
        switch (menuItem.getItemId()) {
            case C2752R.C2754id.action_archived_conversations /* 2131361931 */:
                AbstractC7240m abstractC7240m = this.f23120e;
                if (abstractC7240m == null) {
                    s1.z.c.l.l("presenter");
                    throw null;
                }
                z = abstractC7240m.mo29955Nj();
                break;
            case C2752R.C2754id.action_auto_hide_transactions /* 2131361932 */:
                AbstractC7240m abstractC7240m2 = this.f23120e;
                if (abstractC7240m2 == null) {
                    s1.z.c.l.l("presenter");
                    throw null;
                }
                z = abstractC7240m2.mo29953Oj();
                break;
            case C2752R.C2754id.action_cleanup_inbox /* 2131361950 */:
                AbstractC7240m abstractC7240m3 = this.f23120e;
                if (abstractC7240m3 == null) {
                    s1.z.c.l.l("presenter");
                    throw null;
                }
                z = abstractC7240m3.mo29952Pj();
                break;
            case C2752R.C2754id.action_mark_all_as_read /* 2131361984 */:
                AbstractC7240m abstractC7240m4 = this.f23120e;
                if (abstractC7240m4 == null) {
                    s1.z.c.l.l("presenter");
                    throw null;
                }
                z = abstractC7240m4.mo29950Rj();
                break;
            case C2752R.C2754id.action_messaging_settings /* 2131361992 */:
                AbstractC7240m abstractC7240m5 = this.f23120e;
                if (abstractC7240m5 == null) {
                    s1.z.c.l.l("presenter");
                    throw null;
                }
                z = abstractC7240m5.mo29934v0();
                break;
            case C2752R.C2754id.action_set_default_sms_app /* 2131362020 */:
                AbstractC7240m abstractC7240m6 = this.f23120e;
                if (abstractC7240m6 == null) {
                    s1.z.c.l.l("presenter");
                    throw null;
                }
                z = abstractC7240m6.mo29948Tj();
                break;
            case C2752R.C2754id.action_starred_messages /* 2131362025 */:
                AbstractC7240m abstractC7240m7 = this.f23120e;
                if (abstractC7240m7 == null) {
                    s1.z.c.l.l("presenter");
                    throw null;
                }
                z = abstractC7240m7.mo29947Uj();
                break;
            default:
                return C7219j.super.onOptionsItemSelected(menuItem);
        }
        return z;
    }

    public void onPause() {
        C7219j.super.onPause();
        AbstractC7240m abstractC7240m = this.f23120e;
        if (abstractC7240m != null) {
            abstractC7240m.onPause();
        } else {
            s1.z.c.l.l("presenter");
            throw null;
        }
    }

    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        s1.z.c.l.e(strArr, "permissions");
        s1.z.c.l.e(iArr, "grantResults");
        C7219j.super.onRequestPermissionsResult(i, strArr, iArr);
        C19291g.m13608M0(strArr, iArr);
    }

    public void onResume() {
        C7219j.super.onResume();
        AbstractC7240m abstractC7240m = this.f23120e;
        if (abstractC7240m != null) {
            abstractC7240m.onResume();
        } else {
            s1.z.c.l.l("presenter");
            throw null;
        }
    }

    public void onStop() {
        C7219j.super.onStop();
        AbstractC7240m abstractC7240m = this.f23120e;
        if (abstractC7240m != null) {
            abstractC7240m.onStop();
        } else {
            s1.z.c.l.l("presenter");
            throw null;
        }
    }

    public void onViewCreated(View view, Bundle bundle) {
        Intent intent;
        s1.z.c.l.e(view, ViewAction.VIEW);
        C7219j.super.onViewCreated(view, bundle);
        AbstractC7240m abstractC7240m = this.f23120e;
        if (abstractC7240m == null) {
            s1.z.c.l.l("presenter");
            throw null;
        }
        abstractC7240m.mo9029Y0(this);
        n3.r.a.l activity = getActivity();
        if (activity == null || (intent = activity.getIntent()) == null) {
            return;
        }
        AbstractC7240m abstractC7240m2 = this.f23120e;
        if (abstractC7240m2 != null) {
            abstractC7240m2.mo29931z6(intent);
        } else {
            s1.z.c.l.l("presenter");
            throw null;
        }
    }

    @Override // p193e.p194a.p682e.AbstractC13335y0
    /* renamed from: or */
    public boolean mo21904or() {
        AbstractC7240m abstractC7240m = this.f23120e;
        if (abstractC7240m != null) {
            return abstractC7240m.mo29959Jj();
        }
        s1.z.c.l.l("presenter");
        throw null;
    }

    @Override // p193e.p194a.p195a.p279r0.AbstractC7243p
    /* renamed from: t0 */
    public void mo29909t0() {
        AbstractC14965w abstractC14965w = this.f23121f;
        if (abstractC14965w != null) {
            C19291g.m13555e1(this, abstractC14965w.mo19356a(), 11);
        } else {
            s1.z.c.l.l("tcPermissionUtil");
            throw null;
        }
    }

    @Override // p193e.p194a.p195a.p279r0.AbstractC7217h
    /* renamed from: x0 */
    public void mo29969x0() {
        AbstractC7240m abstractC7240m = this.f23120e;
        if (abstractC7240m != null) {
            abstractC7240m.mo29933x0();
        } else {
            s1.z.c.l.l("presenter");
            throw null;
        }
    }

    @Override // p193e.p194a.p682e.AbstractC13289n1
    /* renamed from: y0 */
    public void mo10101y0() {
        AbstractC7240m abstractC7240m = this.f23120e;
        if (abstractC7240m != null) {
            abstractC7240m.mo29932y0();
        } else {
            s1.z.c.l.l("presenter");
            throw null;
        }
    }

    @Override // p193e.p194a.p195a.p279r0.AbstractC7243p, p193e.p194a.p195a.p279r0.AbstractC7217h
    /* renamed from: z0 */
    public void mo29908z0(InboxTab inboxTab) {
        s1.z.c.l.e(inboxTab, "inboxTab");
        s1.z.c.l.e(this, "$this$isSafeToAccess");
        boolean z = false;
        if (getActivity() != null) {
            z = false;
            if (!isRemoving()) {
                z = false;
                if (!isDetached()) {
                    z = false;
                    if (isAdded()) {
                        z = false;
                        if (getView() != null) {
                            z = true;
                        }
                    }
                }
            }
        }
        if (z) {
            m29978PA().f51414b.post(new RunnableC7226g(inboxTab));
        }
    }
}
