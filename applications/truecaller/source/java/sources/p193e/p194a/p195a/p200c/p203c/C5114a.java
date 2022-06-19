package p193e.p194a.p195a.p200c.p203c;

import android.content.ClipData;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.res.ColorStateList;
import android.net.Uri;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.ImageButton;
import android.widget.Toast;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.exoplayer2.SimpleExoPlayer;
import com.google.android.exoplayer2.source.TrackGroupArray;
import com.google.android.material.floatingactionbutton.FloatingActionButton;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.razorpay.AnalyticsConstants;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.C2752R;
import com.truecaller.account.network.TokenResponseDto;
import com.truecaller.data.entity.messaging.Participant;
import com.truecaller.messaging.conversation.ConversationActivity;
import com.truecaller.messaging.conversation.draft.DraftArguments;
import com.truecaller.messaging.conversation.mention.MentionSpan;
import com.truecaller.messaging.mediaviewer.InteractiveMediaView;
import com.truecaller.messaging.mediaviewer.MediaPosition;
import com.truecaller.messaging.views.MediaEditText;
import com.truecaller.p183ui.TruecallerInit;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import javax.inject.Inject;
import kotlin.Metadata;
import n3.b.a.h;
import p1727n3.p1734b.p1735a.AbstractC25393a;
import p1727n3.p1734b.p1735a.g$a;
import p1727n3.p1807k.p1809b.C26467a;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p1577m.p1578a.p1596c.AbstractC24760q0;
import p193e.p1577m.p1578a.p1596c.AbstractC24861y0;
import p193e.p1577m.p1578a.p1596c.C24189b0;
import p193e.p1577m.p1578a.p1596c.C24652o0;
import p193e.p1577m.p1578a.p1596c.C24811r0;
import p193e.p1577m.p1578a.p1596c.p1631n1.C24648g;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.AbstractC15539j2;
import p193e.p194a.AbstractC21187w1;
import p193e.p194a.p1111o2.C18898f;
import p193e.p194a.p1111o2.C18910r;
import p193e.p194a.p1129p5.AbstractC19233h0;
import p193e.p194a.p1129p5.C19235i0;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p195a.p200c.p204f.C5255a;
import p193e.p194a.p195a.p200c.p218o8.AbstractC5634c;
import p193e.p194a.p195a.p200c.p218o8.AbstractC5635d;
import p193e.p194a.p195a.p200c.p218o8.AbstractC5639g;
import p193e.p194a.p195a.p200c.p218o8.C5637f;
import p193e.p194a.p195a.p200c.p219p8.ActionMode$CallbackC5669i;
import p193e.p194a.p195a.p200c.p219p8.ActionMode$CallbackC5671k;
import p193e.p194a.p195a.p200c.p219p8.C5668h;
import p193e.p194a.p195a.p243j1.AbstractC6437d;
import p193e.p194a.p372b0.p373a.p390w.C8342b;
import p193e.p194a.p372b0.p373a.p390w.C8345d;
import p193e.p194a.p851h5.AbstractC14965w;
import p193e.p194a.p916i5.C15314a;
import s1.d0.i;
import s1.d0.j;
import s1.f0.v;
import s1.u.s;
import s1.u.z;
import s1.z.c.l;
import s1.z.c.m;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0092\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0007\n\u0002\b!\n\u0002\u0010\u0011\n\u0002\b\u0006\n\u0002\u0010\t\n\u0002\b\u0013\n\u0002\u0018\u0002\n\u0002\b\u0019\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018��2\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u0004B\b¢\u0006\u0005\bï\u0001\u0010\u001aJ\u0019\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006*\u00020\u0005H\u0002¢\u0006\u0004\b\b\u0010\tJ\u0019\u0010\r\u001a\u00020\f2\b\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0016¢\u0006\u0004\b\r\u0010\u000eJ-\u0010\u0014\u001a\u0004\u0018\u00010\u00132\u0006\u0010\u0010\u001a\u00020\u000f2\b\u0010\u0012\u001a\u0004\u0018\u00010\u00112\b\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0016¢\u0006\u0004\b\u0014\u0010\u0015J!\u0010\u0017\u001a\u00020\f2\u0006\u0010\u0016\u001a\u00020\u00132\b\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0016¢\u0006\u0004\b\u0017\u0010\u0018J\u000f\u0010\u0019\u001a\u00020\fH\u0016¢\u0006\u0004\b\u0019\u0010\u001aJ\u000f\u0010\u001b\u001a\u00020\fH\u0016¢\u0006\u0004\b\u001b\u0010\u001aJ\u000f\u0010\u001c\u001a\u00020\fH\u0016¢\u0006\u0004\b\u001c\u0010\u001aJ)\u0010!\u001a\u00020\f2\u0006\u0010\u001e\u001a\u00020\u001d2\u0006\u0010\u001f\u001a\u00020\u001d2\b\u0010 \u001a\u0004\u0018\u00010\u0005H\u0016¢\u0006\u0004\b!\u0010\"J\u0017\u0010&\u001a\u00020%2\u0006\u0010$\u001a\u00020#H\u0016¢\u0006\u0004\b&\u0010'J)\u0010-\u001a\u00020\f2\u0006\u0010(\u001a\u00020\u00072\b\u0010*\u001a\u0004\u0018\u00010)2\u0006\u0010,\u001a\u00020+H\u0016¢\u0006\u0004\b-\u0010.J\u0017\u00100\u001a\u00020\f2\u0006\u0010/\u001a\u00020)H\u0016¢\u0006\u0004\b0\u00101J\u0019\u00103\u001a\u00020\f2\b\u00102\u001a\u0004\u0018\u00010)H\u0016¢\u0006\u0004\b3\u00101J\u001f\u00106\u001a\u00020\f2\u0006\u00105\u001a\u0002042\u0006\u0010(\u001a\u00020\u0007H\u0016¢\u0006\u0004\b6\u00107J'\u0010:\u001a\u00020\f2\u0006\u00105\u001a\u0002042\u0006\u0010(\u001a\u00020\u00072\u0006\u00109\u001a\u000208H\u0016¢\u0006\u0004\b:\u0010;J/\u0010=\u001a\u00020\f2\u0006\u00105\u001a\u0002042\u0006\u0010<\u001a\u00020)2\u0006\u0010/\u001a\u00020)2\u0006\u00102\u001a\u00020)H\u0016¢\u0006\u0004\b=\u0010>J1\u0010@\u001a\u00020\f2\u0006\u00105\u001a\u0002042\b\u0010?\u001a\u0004\u0018\u00010\u00072\u0006\u0010/\u001a\u00020)2\u0006\u00102\u001a\u00020)H\u0016¢\u0006\u0004\b@\u0010AJ\u0017\u0010B\u001a\u00020\f2\u0006\u00105\u001a\u000204H\u0016¢\u0006\u0004\bB\u0010CJ\u000f\u0010D\u001a\u00020\fH\u0016¢\u0006\u0004\bD\u0010\u001aJ\u000f\u0010E\u001a\u00020\fH\u0016¢\u0006\u0004\bE\u0010\u001aJ\u0017\u0010G\u001a\u00020\f2\u0006\u0010F\u001a\u00020%H\u0016¢\u0006\u0004\bG\u0010HJ\u0019\u0010J\u001a\u00020\f2\b\b\u0001\u0010I\u001a\u00020\u001dH\u0016¢\u0006\u0004\bJ\u0010KJ\u0017\u0010M\u001a\u00020\f2\u0006\u0010L\u001a\u00020%H\u0016¢\u0006\u0004\bM\u0010HJ\u000f\u0010N\u001a\u00020\fH\u0016¢\u0006\u0004\bN\u0010\u001aJ\u000f\u0010O\u001a\u00020)H\u0016¢\u0006\u0004\bO\u0010PJ\u0017\u0010R\u001a\u00020\f2\u0006\u0010Q\u001a\u00020)H\u0016¢\u0006\u0004\bR\u00101J\u000f\u0010S\u001a\u00020\fH\u0016¢\u0006\u0004\bS\u0010\u001aJ\u0017\u0010U\u001a\u00020\f2\u0006\u0010T\u001a\u00020%H\u0016¢\u0006\u0004\bU\u0010HJ\u0017\u0010V\u001a\u00020\f2\u0006\u0010I\u001a\u00020\u001dH\u0016¢\u0006\u0004\bV\u0010KJ\u0017\u0010W\u001a\u00020\f2\u0006\u0010I\u001a\u00020\u001dH\u0016¢\u0006\u0004\bW\u0010KJ\u0017\u0010Y\u001a\u00020\f2\u0006\u0010X\u001a\u00020%H\u0016¢\u0006\u0004\bY\u0010HJ%\u0010\\\u001a\u00020\f2\f\u0010[\u001a\b\u0012\u0004\u0012\u00020)0Z2\u0006\u0010X\u001a\u00020%H\u0016¢\u0006\u0004\b\\\u0010]J\u000f\u0010^\u001a\u00020\fH\u0016¢\u0006\u0004\b^\u0010\u001aJ\u0017\u0010_\u001a\u00020\f2\u0006\u0010(\u001a\u00020\u0007H\u0016¢\u0006\u0004\b_\u0010`J\u001f\u0010c\u001a\u00020\f2\u0006\u0010(\u001a\u00020\u00072\u0006\u0010b\u001a\u00020aH\u0016¢\u0006\u0004\bc\u0010dJ!\u0010f\u001a\u00020\f2\u0006\u0010(\u001a\u00020\u00072\b\u0010e\u001a\u0004\u0018\u00010aH\u0016¢\u0006\u0004\bf\u0010gJ\u0017\u0010h\u001a\u00020\f2\u0006\u0010I\u001a\u00020\u001dH\u0016¢\u0006\u0004\bh\u0010KJ\u000f\u0010i\u001a\u00020\fH\u0016¢\u0006\u0004\bi\u0010\u001aJ\u0017\u0010j\u001a\u00020\f2\u0006\u00105\u001a\u00020\u001dH\u0016¢\u0006\u0004\bj\u0010KJ\u000f\u0010k\u001a\u00020\fH\u0016¢\u0006\u0004\bk\u0010\u001aJ\u000f\u0010l\u001a\u00020\fH\u0016¢\u0006\u0004\bl\u0010\u001aJ\u0017\u0010n\u001a\u00020\f2\u0006\u0010m\u001a\u00020aH\u0016¢\u0006\u0004\bn\u0010oJ\u0017\u0010q\u001a\u00020\f2\u0006\u0010p\u001a\u00020%H\u0016¢\u0006\u0004\bq\u0010HJ\u0017\u0010s\u001a\u00020\f2\u0006\u0010r\u001a\u00020%H\u0016¢\u0006\u0004\bs\u0010HJ3\u0010x\u001a\u00020\f2\b\u0010t\u001a\u0004\u0018\u00010a2\u000e\u0010v\u001a\n\u0012\u0004\u0012\u00020u\u0018\u00010Z2\b\u0010w\u001a\u0004\u0018\u00010\u0005H\u0016¢\u0006\u0004\bx\u0010yJ\u000f\u0010z\u001a\u00020\fH\u0016¢\u0006\u0004\bz\u0010\u001aJ\u0017\u0010|\u001a\u00020\u001d2\u0006\u0010{\u001a\u00020)H\u0016¢\u0006\u0004\b|\u0010}J\"\u0010\u0080\u0001\u001a\u00020\f2\u0006\u0010~\u001a\u00020\u001d2\u0006\u0010\u007f\u001a\u00020\u001dH\u0016¢\u0006\u0006\b\u0080\u0001\u0010\u0081\u0001J\u001a\u0010\u0083\u0001\u001a\u00020\f2\u0007\u0010\u0082\u0001\u001a\u00020\u001dH\u0016¢\u0006\u0005\b\u0083\u0001\u0010KJ\u001a\u0010\u0085\u0001\u001a\u00020\f2\u0007\u0010\u0084\u0001\u001a\u00020\u001dH\u0016¢\u0006\u0005\b\u0085\u0001\u0010KJ\u0011\u0010\u0086\u0001\u001a\u00020\fH\u0016¢\u0006\u0005\b\u0086\u0001\u0010\u001aJ\u0011\u0010\u0087\u0001\u001a\u00020\fH\u0016¢\u0006\u0005\b\u0087\u0001\u0010\u001aJ\u001a\u0010\u0089\u0001\u001a\u00020\f2\u0007\u0010\u0088\u0001\u001a\u00020aH\u0016¢\u0006\u0005\b\u0089\u0001\u0010oJ-\u0010\u008c\u0001\u001a\u00020\f2\u0007\u0010\u0088\u0001\u001a\u00020a2\u0007\u0010\u008a\u0001\u001a\u00020a2\u0007\u0010\u008b\u0001\u001a\u00020\u001dH\u0016¢\u0006\u0006\b\u008c\u0001\u0010\u008d\u0001J\u0011\u0010\u008e\u0001\u001a\u00020\fH\u0016¢\u0006\u0005\b\u008e\u0001\u0010\u001aR\u001a\u0010\u0092\u0001\u001a\u00030\u008f\u00018\u0002@\u0002X\u0082.¢\u0006\b\n\u0006\b\u0090\u0001\u0010\u0091\u0001R\u001a\u0010\u0096\u0001\u001a\u00030\u0093\u00018\u0002@\u0002X\u0082.¢\u0006\b\n\u0006\b\u0094\u0001\u0010\u0095\u0001R\u001a\u0010\u009a\u0001\u001a\u00030\u0097\u00018\u0002@\u0002X\u0082.¢\u0006\b\n\u0006\b\u0098\u0001\u0010\u0099\u0001R*\u0010¢\u0001\u001a\u00030\u009b\u00018\u0006@\u0006X\u0087.¢\u0006\u0018\n\u0006\b\u009c\u0001\u0010\u009d\u0001\u001a\u0006\b\u009e\u0001\u0010\u009f\u0001\"\u0006\b \u0001\u0010¡\u0001R\u001a\u0010¦\u0001\u001a\u00030£\u00018\u0002@\u0002X\u0082.¢\u0006\b\n\u0006\b¤\u0001\u0010¥\u0001R)\u0010\u00ad\u0001\u001a\u00030§\u00018\u0006@\u0006X\u0087.¢\u0006\u0017\n\u0005\bh\u0010¨\u0001\u001a\u0006\b©\u0001\u0010ª\u0001\"\u0006\b«\u0001\u0010¬\u0001R*\u0010µ\u0001\u001a\u00030®\u00018\u0006@\u0006X\u0087.¢\u0006\u0018\n\u0006\b¯\u0001\u0010°\u0001\u001a\u0006\b±\u0001\u0010²\u0001\"\u0006\b³\u0001\u0010´\u0001R\u001f\u0010¸\u0001\u001a\b\u0012\u0004\u0012\u00020)0Z8V@\u0016X\u0096\u0004¢\u0006\b\u001a\u0006\b¶\u0001\u0010·\u0001R*\u0010À\u0001\u001a\u00030¹\u00018\u0006@\u0006X\u0087.¢\u0006\u0018\n\u0006\bº\u0001\u0010»\u0001\u001a\u0006\b¼\u0001\u0010½\u0001\"\u0006\b¾\u0001\u0010¿\u0001R*\u0010È\u0001\u001a\u00030Á\u00018\u0006@\u0006X\u0087.¢\u0006\u0018\n\u0006\bÂ\u0001\u0010Ã\u0001\u001a\u0006\bÄ\u0001\u0010Å\u0001\"\u0006\bÆ\u0001\u0010Ç\u0001R\u001a\u0010Ì\u0001\u001a\u00030É\u00018\u0002@\u0002X\u0082.¢\u0006\b\n\u0006\bÊ\u0001\u0010Ë\u0001R\u001a\u0010Î\u0001\u001a\u00030\u008f\u00018\u0002@\u0002X\u0082.¢\u0006\b\n\u0006\bÍ\u0001\u0010\u0091\u0001R\u001a\u0010Ò\u0001\u001a\u00030Ï\u00018\u0002@\u0002X\u0082\u0004¢\u0006\b\n\u0006\bÐ\u0001\u0010Ñ\u0001R\u0019\u0010Õ\u0001\u001a\u00020\u00138\u0002@\u0002X\u0082.¢\u0006\b\n\u0006\bÓ\u0001\u0010Ô\u0001R\u001a\u0010×\u0001\u001a\u00030É\u00018\u0002@\u0002X\u0082.¢\u0006\b\n\u0006\bÖ\u0001\u0010Ë\u0001R\u001c\u0010Û\u0001\u001a\u0005\u0018\u00010Ø\u00018B@\u0002X\u0082\u0004¢\u0006\b\u001a\u0006\bÙ\u0001\u0010Ú\u0001R)\u0010â\u0001\u001a\u00030Ü\u00018\u0006@\u0006X\u0087.¢\u0006\u0017\n\u0005\b3\u0010Ý\u0001\u001a\u0006\bÞ\u0001\u0010ß\u0001\"\u0006\bà\u0001\u0010á\u0001R\u001a\u0010æ\u0001\u001a\u00030ã\u00018\u0002@\u0002X\u0082\u0004¢\u0006\b\n\u0006\bä\u0001\u0010å\u0001R\u001a\u0010ê\u0001\u001a\u00030ç\u00018\u0002@\u0002X\u0082.¢\u0006\b\n\u0006\bè\u0001\u0010é\u0001R\u001a\u0010î\u0001\u001a\u00030ë\u00018\u0002@\u0002X\u0082.¢\u0006\b\n\u0006\bì\u0001\u0010í\u0001¨\u0006ð\u0001"}, d2 = {"Le/a/a/c/c/a;", "Landroidx/fragment/app/Fragment;", "Le/a/a/c/c/q;", "Lcom/truecaller/messaging/views/MediaEditText$a;", "Le/a/a/c/f/a$c;", "Landroid/content/Intent;", "", "Landroid/net/Uri;", "RA", "(Landroid/content/Intent;)Ljava/util/List;", "Landroid/os/Bundle;", "savedInstanceState", "Ls1/s;", "onCreate", "(Landroid/os/Bundle;)V", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "container", "Landroid/view/View;", "onCreateView", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;", ViewAction.VIEW, "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "onDestroyView", "()V", "onStart", "onStop", "", "requestCode", "resultCode", RemoteMessageConst.DATA, "onActivityResult", "(IILandroid/content/Intent;)V", "Landroid/view/MenuItem;", "item", "", "onOptionsItemSelected", "(Landroid/view/MenuItem;)Z", "uri", "", "mimeType", "Ljava/lang/Runnable;", "releaseCallback", "b1", "(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/Runnable;)V", "title", "setTitle", "(Ljava/lang/String;)V", "subtitle", AbstractC2405c.f7629a, "Lcom/truecaller/messaging/mediaviewer/MediaPosition;", "position", "nr", "(Lcom/truecaller/messaging/mediaviewer/MediaPosition;Landroid/net/Uri;)V", "", "aspectRatio", "Mt", "(Lcom/truecaller/messaging/mediaviewer/MediaPosition;Landroid/net/Uri;F)V", "fileExtension", "gu", "(Lcom/truecaller/messaging/mediaviewer/MediaPosition;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "avatarUri", "Jl", "(Lcom/truecaller/messaging/mediaviewer/MediaPosition;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V", "za", "(Lcom/truecaller/messaging/mediaviewer/MediaPosition;)V", "n3", "oj", "playing", "If", "(Z)V", "res", "z2", "(I)V", "visible", "r2", "xb", "m1", "()Ljava/lang/String;", "text", "setText", "x1", "dark", "vp", "M3", "E8", "allowMultiple", "yo", "", "mimeTypes", "O8", "([Ljava/lang/String;Z)V", "q1", "ci", "(Landroid/net/Uri;)V", "", "durationLimitSeconds", "Fk", "(Landroid/net/Uri;J)V", "sizeLimit", "xm", "(Landroid/net/Uri;Ljava/lang/Long;)V", "a", "W7", "scrollToPosition", "c0", "j1", "maxSize", "uA", "(J)V", "disableTransition", "Y4", AnalyticsConstants.SHOW, "lx", "conversationId", "Lcom/truecaller/data/entity/messaging/Participant;", "participants", "sendIntent", "L3", "(Ljava/lang/Long;[Lcom/truecaller/data/entity/messaging/Participant;Landroid/content/Intent;)V", "w0", "mentionText", "iu", "(Ljava/lang/String;)I", AnalyticsConstants.START, AnalyticsConstants.END, "Hx", "(II)V", "startMentionIndex", "ko", "cursorPosition", "Gl", "b2", "w4", "result", "gr", "messageId", "transport", "jp", "(JJI)V", "sb", "Landroidx/recyclerview/widget/RecyclerView;", "n", "Landroidx/recyclerview/widget/RecyclerView;", "mentionRecyclerView", "Landroid/widget/ImageButton;", "h", "Landroid/widget/ImageButton;", "playbackButton", "Lcom/truecaller/messaging/views/MediaEditText;", "j", "Lcom/truecaller/messaging/views/MediaEditText;", "editText", "Le/a/p5/h0;", "f", "Le/a/p5/h0;", "getResourceProvider", "()Le/a/p5/h0;", "setResourceProvider", "(Le/a/p5/h0;)V", "resourceProvider", "Lcom/truecaller/common/ui/fab/FloatingActionButton;", "l", "Lcom/truecaller/common/ui/fab/FloatingActionButton;", "fabOptions", "Le/a/a/c/c/p;", "Le/a/a/c/c/p;", "PA", "()Le/a/a/c/c/p;", "setPresenter", "(Le/a/a/c/c/p;)V", "presenter", "Le/a/a/c/c/m;", C22021b.f61237c, "Le/a/a/c/c/m;", "getItemPresenter", "()Le/a/a/c/c/m;", "setItemPresenter", "(Le/a/a/c/c/m;)V", "itemPresenter", "Ue", "()[Ljava/lang/String;", "supportedMediaMimeTypes", "Le/a/a/c/o8/c;", "e", "Le/a/a/c/o8/c;", "getMentionItemPresenter", "()Le/a/a/c/o8/c;", "setMentionItemPresenter", "(Le/a/a/c/o8/c;)V", "mentionItemPresenter", "Le/a/a/c/o8/g;", "d", "Le/a/a/c/o8/g;", "OA", "()Le/a/a/c/o8/g;", "setMentionPresenter", "(Le/a/a/c/o8/g;)V", "mentionPresenter", "Le/a/o2/f;", "o", "Le/a/o2/f;", "mentionAdapter", "i", "recyclerView", "Le/a/a/j1/d;", "r", "Le/a/a/j1/d;", "mentionSelectionListener", "m", "Landroid/view/View;", "overlayView", "p", "adapter", "Ln3/b/a/a;", "QA", "()Ln3/b/a/a;", "supportActionBar", "Le/a/h5/w;", "Le/a/h5/w;", "getTcPermissionsUtil", "()Le/a/h5/w;", "setTcPermissionsUtil", "(Le/a/h5/w;)V", "tcPermissionsUtil", "Landroid/text/TextWatcher;", "q", "Landroid/text/TextWatcher;", "mentionChangedListener", "Lcom/truecaller/messaging/mediaviewer/InteractiveMediaView;", "g", "Lcom/truecaller/messaging/mediaviewer/InteractiveMediaView;", "mediaView", "Lcom/google/android/material/floatingactionbutton/FloatingActionButton;", "k", "Lcom/google/android/material/floatingactionbutton/FloatingActionButton;", "sendButton", "<init>", "truecaller_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.a.c.c.a */
/* loaded from: classes5-dex2jar.jar:e/a/a/c/c/a.class */
public final class C5114a extends Fragment implements AbstractC5149q, MediaEditText.AbstractC4283a, C5255a.AbstractC5258c {
    @Inject

    /* renamed from: a */
    public AbstractC5148p f17493a;
    @Inject

    /* renamed from: b */
    public AbstractC5145m f17494b;
    @Inject

    /* renamed from: c */
    public AbstractC14965w f17495c;
    @Inject

    /* renamed from: d */
    public AbstractC5639g f17496d;
    @Inject

    /* renamed from: e */
    public AbstractC5634c f17497e;
    @Inject

    /* renamed from: f */
    public AbstractC19233h0 f17498f;

    /* renamed from: g */
    public InteractiveMediaView f17499g;

    /* renamed from: h */
    public ImageButton f17500h;

    /* renamed from: i */
    public RecyclerView f17501i;

    /* renamed from: j */
    public MediaEditText f17502j;

    /* renamed from: k */
    public FloatingActionButton f17503k;

    /* renamed from: l */
    public com.truecaller.common.p156ui.fab.FloatingActionButton f17504l;

    /* renamed from: m */
    public View f17505m;

    /* renamed from: n */
    public RecyclerView f17506n;

    /* renamed from: o */
    public C18898f f17507o;

    /* renamed from: p */
    public C18898f f17508p;

    /* renamed from: q */
    public final TextWatcher f17509q = new C5119d();

    /* renamed from: r */
    public final AbstractC6437d f17510r = new C5120e();

    /* renamed from: e.a.a.c.c.a$a */
    /* loaded from: classes3-dex2jar.jar:e/a/a/c/c/a$a.class */
    public static final class View$OnClickListenerC5115a implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ int f17511a;

        /* renamed from: b */
        public final /* synthetic */ Object f17512b;

        public View$OnClickListenerC5115a(int i, Object obj) {
            this.f17511a = i;
            this.f17512b = obj;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            int i = this.f17511a;
            if (i == 0) {
                ((C5114a) this.f17512b).m33826PA().mo33741mh();
            } else if (i == 1) {
                ((C5114a) this.f17512b).m33826PA().mo33748Z();
            } else if (i != 2) {
                throw null;
            } else {
                ((C5114a) this.f17512b).m33826PA().mo33750Ve();
            }
        }
    }

    /* renamed from: e.a.a.c.c.a$b */
    /* loaded from: classes3-dex2jar.jar:e/a/a/c/c/a$b.class */
    public static final class DialogInterface$OnClickListenerC5116b implements DialogInterface.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ int f17513a;

        /* renamed from: b */
        public final /* synthetic */ Object f17514b;

        public DialogInterface$OnClickListenerC5116b(int i, Object obj) {
            this.f17513a = i;
            this.f17514b = obj;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public final void onClick(DialogInterface dialogInterface, int i) {
            int i2 = this.f17513a;
            if (i2 == 0) {
                ((C5114a) this.f17514b).m33826PA().mo33739t();
            } else if (i2 != 1) {
                throw null;
            } else {
                ((C5114a) this.f17514b).m33826PA().mo33738w();
            }
        }
    }

    /* renamed from: e.a.a.c.c.a$c */
    /* loaded from: classes5-dex2jar.jar:e/a/a/c/c/a$c.class */
    public static final class View$OnLongClickListenerC5117c implements View.OnLongClickListener {

        /* renamed from: e.a.a.c.c.a$c$a */
        /* loaded from: classes5-dex2jar.jar:e/a/a/c/c/a$c$a.class */
        public static final class C5118a extends C8342b {
            public C5118a() {
                View$OnLongClickListenerC5117c.this = r4;
            }

            @Override // p193e.p194a.p372b0.p373a.p390w.C8342b, p193e.p194a.p372b0.p373a.p390w.AbstractC8341a
            /* renamed from: bf */
            public void mo28658bf() {
                com.truecaller.common.p156ui.fab.FloatingActionButton floatingActionButton = C5114a.this.f17504l;
                if (floatingActionButton != null) {
                    C19286f.m13687Q(floatingActionButton);
                } else {
                    l.l("fabOptions");
                    throw null;
                }
            }

            @Override // p193e.p194a.p372b0.p373a.p390w.C8342b, p193e.p194a.p372b0.p373a.p390w.AbstractC8341a
            /* renamed from: u0 */
            public void mo28656u0(int i) {
                C5114a.this.m33826PA().mo33764Li();
            }
        }

        public View$OnLongClickListenerC5117c() {
            C5114a.this = r4;
        }

        @Override // android.view.View.OnLongClickListener
        public final boolean onLongClick(View view) {
            com.truecaller.common.p156ui.fab.FloatingActionButton floatingActionButton = C5114a.this.f17504l;
            if (floatingActionButton == null) {
                l.l("fabOptions");
                throw null;
            }
            C19286f.m13684T(floatingActionButton);
            AbstractC19233h0 abstractC19233h0 = C5114a.this.f17498f;
            if (abstractC19233h0 == null) {
                l.l("resourceProvider");
                throw null;
            }
            int mo13769a = abstractC19233h0.mo13769a(C2752R.color.tcx_sendIconTint_all);
            AbstractC19233h0 abstractC19233h02 = C5114a.this.f17498f;
            if (abstractC19233h02 == null) {
                l.l("resourceProvider");
                throw null;
            }
            floatingActionButton.setMenuItems(new C8345d[]{new C8345d(0, C2752R.C2753drawable.ic_send_schedule, C2752R.string.schedule_message, mo13769a, null, abstractC19233h02.mo13758l(C2752R.attr.tcx_scheduleSmsFabBackground), 16)});
            floatingActionButton.m35687d();
            floatingActionButton.setFabActionListener(new C5118a());
            return true;
        }
    }

    /* renamed from: e.a.a.c.c.a$d */
    /* loaded from: classes5-dex2jar.jar:e/a/a/c/c/a$d.class */
    public static final class C5119d implements TextWatcher {
        public C5119d() {
            C5114a.this = r4;
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            l.e(editable, "editable");
            AbstractC5639g m33827OA = C5114a.this.m33827OA();
            String obj = editable.toString();
            MediaEditText mediaEditText = C5114a.this.f17502j;
            if (mediaEditText == null) {
                l.l("editText");
                throw null;
            }
            m33827OA.mo32826W7(obj, mediaEditText.getSelectionStart(), true);
            C5114a.this.m33827OA().mo32828V1(editable);
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            l.e(charSequence, "charSequence");
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            l.e(charSequence, "charSequence");
            if (i3 != 0 || i2 <= 0) {
                return;
            }
            C5114a.this.m33827OA().mo32827W5(i, i2);
        }
    }

    /* renamed from: e.a.a.c.c.a$e */
    /* loaded from: classes5-dex2jar.jar:e/a/a/c/c/a$e.class */
    public static final class C5120e implements AbstractC6437d {
        public C5120e() {
            C5114a.this = r4;
        }

        @Override // p193e.p194a.p195a.p243j1.AbstractC6437d
        /* renamed from: V */
        public void mo30960V(int i, int i2) {
            C5114a.this.m33827OA().mo32824ff(i, i2, C5114a.this.mo33789m1());
        }
    }

    /* renamed from: e.a.a.c.c.a$f */
    /* loaded from: classes5-dex2jar.jar:e/a/a/c/c/a$f.class */
    public static final class C5121f extends m implements s1.z.b.l<View, C5142j> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C5121f() {
            super(1);
            C5114a.this = r4;
        }

        /* renamed from: d */
        public Object m33823d(Object obj) {
            View view = (View) obj;
            l.e(view, "it");
            C18898f c18898f = C5114a.this.f17508p;
            if (c18898f != null) {
                return new C5142j(view, c18898f);
            }
            l.l("adapter");
            throw null;
        }
    }

    /* renamed from: e.a.a.c.c.a$g */
    /* loaded from: classes5-dex2jar.jar:e/a/a/c/c/a$g.class */
    public static final class C5122g extends m implements s1.z.b.l<C5142j, AbstractC5146n> {

        /* renamed from: b */
        public static final C5122g f17520b = new C5122g();

        public C5122g() {
            super(1);
        }

        /* renamed from: d */
        public Object m33822d(Object obj) {
            C5142j c5142j = (C5142j) obj;
            l.e(c5142j, "it");
            return c5142j;
        }
    }

    /* renamed from: e.a.a.c.c.a$h */
    /* loaded from: classes5-dex2jar.jar:e/a/a/c/c/a$h.class */
    public static final class C5123h extends m implements s1.z.b.l<View, C5637f> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C5123h() {
            super(1);
            C5114a.this = r4;
        }

        /* renamed from: d */
        public Object m33821d(Object obj) {
            View view = (View) obj;
            l.e(view, "it");
            C18898f c18898f = C5114a.this.f17507o;
            if (c18898f != null) {
                return new C5637f(view, c18898f, true);
            }
            l.l("mentionAdapter");
            throw null;
        }
    }

    /* renamed from: e.a.a.c.c.a$i */
    /* loaded from: classes5-dex2jar.jar:e/a/a/c/c/a$i.class */
    public static final class C5124i extends m implements s1.z.b.l<C5637f, AbstractC5635d> {

        /* renamed from: b */
        public static final C5124i f17522b = new C5124i();

        public C5124i() {
            super(1);
        }

        /* renamed from: d */
        public Object m33820d(Object obj) {
            C5637f c5637f = (C5637f) obj;
            l.e(c5637f, "it");
            return c5637f;
        }
    }

    /* renamed from: e.a.a.c.c.a$j */
    /* loaded from: classes5-dex2jar.jar:e/a/a/c/c/a$j.class */
    public static final class C5125j implements AbstractC24760q0.AbstractC24762b {
        public C5125j() {
            C5114a.this = r4;
        }

        @Override // p193e.p1577m.p1578a.p1596c.AbstractC24760q0.AbstractC24762b
        /* renamed from: A0 */
        public /* synthetic */ void mo4655A0() {
            C24811r0.m4490i(this);
        }

        @Override // p193e.p1577m.p1578a.p1596c.AbstractC24760q0.AbstractC24762b
        /* renamed from: G5 */
        public void mo4654G5(boolean z, int i) {
            C5114a.this.m33826PA().mo33740pc(z, i == 4);
        }

        @Override // p193e.p1577m.p1578a.p1596c.AbstractC24760q0.AbstractC24762b
        /* renamed from: N7 */
        public /* synthetic */ void mo4653N7(AbstractC24861y0 abstractC24861y0, int i) {
            C24811r0.m4488k(this, abstractC24861y0, i);
        }

        @Override // p193e.p1577m.p1578a.p1596c.AbstractC24760q0.AbstractC24762b
        /* renamed from: Pi */
        public /* synthetic */ void mo4652Pi(AbstractC24861y0 abstractC24861y0, Object obj, int i) {
            C24811r0.m4487l(this, abstractC24861y0, obj, i);
        }

        @Override // p193e.p1577m.p1578a.p1596c.AbstractC24760q0.AbstractC24762b
        /* renamed from: S8 */
        public /* synthetic */ void mo4651S8(boolean z) {
            C24811r0.m4489j(this, z);
        }

        @Override // p193e.p1577m.p1578a.p1596c.AbstractC24760q0.AbstractC24762b
        /* renamed from: Xl */
        public /* synthetic */ void mo4650Xl(boolean z) {
            C24811r0.m4498a(this, z);
        }

        @Override // p193e.p1577m.p1578a.p1596c.AbstractC24760q0.AbstractC24762b
        /* renamed from: Zl */
        public /* synthetic */ void mo4649Zl(int i) {
            C24811r0.m4495d(this, i);
        }

        @Override // p193e.p1577m.p1578a.p1596c.AbstractC24760q0.AbstractC24762b
        /* renamed from: fs */
        public /* synthetic */ void mo4648fs(TrackGroupArray trackGroupArray, C24648g c24648g) {
            C24811r0.m4486m(this, trackGroupArray, c24648g);
        }

        @Override // p193e.p1577m.p1578a.p1596c.AbstractC24760q0.AbstractC24762b
        /* renamed from: h5 */
        public /* synthetic */ void mo4647h5(int i) {
            C24811r0.m4492g(this, i);
        }

        @Override // p193e.p1577m.p1578a.p1596c.AbstractC24760q0.AbstractC24762b
        /* renamed from: hy */
        public /* synthetic */ void mo4646hy(int i) {
            C24811r0.m4491h(this, i);
        }

        @Override // p193e.p1577m.p1578a.p1596c.AbstractC24760q0.AbstractC24762b
        /* renamed from: rs */
        public /* synthetic */ void mo4645rs(C24652o0 c24652o0) {
            C24811r0.m4496c(this, c24652o0);
        }

        @Override // p193e.p1577m.p1578a.p1596c.AbstractC24760q0.AbstractC24762b
        /* renamed from: tf */
        public /* synthetic */ void mo4644tf(C24189b0 c24189b0) {
            C24811r0.m4494e(this, c24189b0);
        }

        @Override // p193e.p1577m.p1578a.p1596c.AbstractC24760q0.AbstractC24762b
        /* renamed from: w1 */
        public /* synthetic */ void mo4643w1(boolean z) {
            C24811r0.m4497b(this, z);
        }
    }

    @Override // p193e.p194a.p195a.p200c.p203c.AbstractC5149q
    /* renamed from: E8 */
    public void mo33806E8(int i) {
        FloatingActionButton floatingActionButton = this.f17503k;
        if (floatingActionButton != null) {
            floatingActionButton.setImageResource(i);
        } else {
            l.l("sendButton");
            throw null;
        }
    }

    @Override // p193e.p194a.p195a.p200c.p203c.AbstractC5149q
    /* renamed from: Fk */
    public void mo33805Fk(Uri uri, long j) {
        l.e(uri, "uri");
        startActivityForResult(new Intent("android.media.action.VIDEO_CAPTURE").putExtra("output", uri).putExtra("android.intent.extra.durationLimit", (int) j), 5);
    }

    @Override // p193e.p194a.p195a.p200c.p218o8.AbstractC5644j
    /* renamed from: Gl */
    public void mo32543Gl(int i) {
        if (i >= 0) {
            MediaEditText mediaEditText = this.f17502j;
            if (mediaEditText == null) {
                l.l("editText");
                throw null;
            } else if (i > mediaEditText.length()) {
            } else {
                MediaEditText mediaEditText2 = this.f17502j;
                if (mediaEditText2 != null) {
                    mediaEditText2.setSelection(i);
                } else {
                    l.l("editText");
                    throw null;
                }
            }
        }
    }

    @Override // p193e.p194a.p195a.p200c.p218o8.AbstractC5644j
    /* renamed from: Hx */
    public void mo32540Hx(int i, int i2) {
        if (i >= 0) {
            MediaEditText mediaEditText = this.f17502j;
            if (mediaEditText == null) {
                l.l("editText");
                throw null;
            } else if (i2 > mediaEditText.getText().length()) {
            } else {
                Context requireContext = requireContext();
                Object obj = C26467a.f74235a;
                MentionSpan mentionSpan = new MentionSpan(i, i2, C26467a.C26471d.m1787a(requireContext, 2131101238));
                MediaEditText mediaEditText2 = this.f17502j;
                if (mediaEditText2 != null) {
                    mediaEditText2.getText().setSpan(mentionSpan, i, i2, 33);
                } else {
                    l.l("editText");
                    throw null;
                }
            }
        }
    }

    @Override // p193e.p194a.p195a.p200c.p203c.AbstractC5149q
    /* renamed from: If */
    public void mo33804If(boolean z) {
        InteractiveMediaView interactiveMediaView = this.f17499g;
        if (interactiveMediaView != null) {
            interactiveMediaView.setPlayWhenReady(z);
        } else {
            l.l("mediaView");
            throw null;
        }
    }

    @Override // p193e.p194a.p195a.p200c.p203c.AbstractC5149q
    /* renamed from: Jl */
    public void mo33803Jl(MediaPosition mediaPosition, Uri uri, String str, String str2) {
        l.e(mediaPosition, "position");
        l.e(str, "title");
        l.e(str2, "subtitle");
        InteractiveMediaView interactiveMediaView = this.f17499g;
        if (interactiveMediaView == null) {
            l.l("mediaView");
            throw null;
        }
        Context requireContext = requireContext();
        Object obj = C26467a.f74235a;
        interactiveMediaView.m34960l(mediaPosition, C26467a.C26470c.m1789b(requireContext, C2752R.C2753drawable.ic_draft_contact), uri, str, str2);
    }

    @Override // p193e.p194a.p195a.p200c.p203c.AbstractC5149q
    /* renamed from: L3 */
    public void mo33802L3(Long l, Participant[] participantArr, Intent intent) {
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

    @Override // p193e.p194a.p195a.p200c.p203c.AbstractC5149q
    /* renamed from: M3 */
    public void mo33801M3(int i) {
        FloatingActionButton floatingActionButton = this.f17503k;
        if (floatingActionButton != null) {
            floatingActionButton.setBackgroundTintList(ColorStateList.valueOf(C19291g.m13612L(requireContext(), i)));
        } else {
            l.l("sendButton");
            throw null;
        }
    }

    @Override // p193e.p194a.p195a.p200c.p203c.AbstractC5149q
    /* renamed from: Mt */
    public void mo33800Mt(MediaPosition mediaPosition, Uri uri, float f) {
        l.e(mediaPosition, "position");
        l.e(uri, "uri");
        InteractiveMediaView interactiveMediaView = this.f17499g;
        if (interactiveMediaView == null) {
            l.l("mediaView");
            throw null;
        }
        l.e(mediaPosition, "position");
        l.e(uri, "uri");
        interactiveMediaView.m34964h(mediaPosition).m31286e(uri, f, -1L);
    }

    @Override // p193e.p194a.p195a.p200c.p203c.AbstractC5149q
    /* renamed from: O8 */
    public void mo33799O8(String[] strArr, boolean z) {
        l.e(strArr, "mimeTypes");
        Intent type = new Intent("android.intent.action.GET_CONTENT").setType("*/*");
        if (!(strArr.length == 0)) {
            type.putExtra("android.intent.extra.MIME_TYPES", strArr);
        }
        startActivityForResult(type.putExtra("android.intent.extra.ALLOW_MULTIPLE", z), 2);
    }

    /* renamed from: OA */
    public final AbstractC5639g m33827OA() {
        AbstractC5639g abstractC5639g = this.f17496d;
        if (abstractC5639g != null) {
            return abstractC5639g;
        }
        l.l("mentionPresenter");
        throw null;
    }

    /* renamed from: PA */
    public final AbstractC5148p m33826PA() {
        AbstractC5148p abstractC5148p = this.f17493a;
        if (abstractC5148p != null) {
            return abstractC5148p;
        }
        l.l("presenter");
        throw null;
    }

    /* renamed from: QA */
    public final AbstractC25393a m33825QA() {
        n3.r.a.l activity = getActivity();
        if (!(activity instanceof h)) {
            activity = null;
        }
        h hVar = activity;
        AbstractC25393a abstractC25393a = null;
        if (hVar != null) {
            abstractC25393a = hVar.getSupportActionBar();
        }
        return abstractC25393a;
    }

    /* renamed from: RA */
    public final List<Uri> m33824RA(Intent intent) {
        Uri data = intent.getData();
        ClipData clipData = intent.getClipData();
        if (clipData == null) {
            return data != null ? C25225a.m3962T1(data) : s.a;
        }
        i j = j.j(0, clipData.getItemCount());
        ArrayList arrayList = new ArrayList();
        z it = j.iterator();
        while (((s1.d0.h) it).b) {
            ClipData.Item itemAt = clipData.getItemAt(it.a());
            Uri uri = itemAt != null ? itemAt.getUri() : null;
            if (uri != null) {
                arrayList.add(uri);
            }
        }
        return arrayList;
    }

    @Override // com.truecaller.messaging.views.MediaEditText.AbstractC4283a
    /* renamed from: Ue */
    public String[] mo32490Ue() {
        AbstractC5148p abstractC5148p = this.f17493a;
        if (abstractC5148p != null) {
            return abstractC5148p.mo33757Q2();
        }
        l.l("presenter");
        throw null;
    }

    @Override // p193e.p194a.p195a.p200c.p203c.AbstractC5149q
    /* renamed from: W7 */
    public void mo33798W7() {
        RecyclerView recyclerView = this.f17501i;
        if (recyclerView != null) {
            recyclerView.setVisibility(8);
        } else {
            l.l("recyclerView");
            throw null;
        }
    }

    @Override // p193e.p194a.p195a.p200c.p203c.AbstractC5149q
    /* renamed from: Y4 */
    public void mo33797Y4(boolean z) {
        n3.r.a.l activity;
        n3.r.a.l activity2 = getActivity();
        if (activity2 != null) {
            activity2.finish();
        }
        if (!z || (activity = getActivity()) == null) {
            return;
        }
        activity.overridePendingTransition(0, 0);
    }

    @Override // p193e.p194a.p195a.p200c.p203c.AbstractC5149q
    /* renamed from: a */
    public void mo33796a(int i) {
        Toast.makeText(requireContext(), i, 1).show();
    }

    @Override // com.truecaller.messaging.views.MediaEditText.AbstractC4283a
    /* renamed from: b1 */
    public void mo32473b1(Uri uri, String str, Runnable runnable) {
        l.e(uri, "uri");
        l.e(runnable, "releaseCallback");
        AbstractC5148p abstractC5148p = this.f17493a;
        if (abstractC5148p != null) {
            abstractC5148p.mo33745b1(uri, str, runnable);
        } else {
            l.l("presenter");
            throw null;
        }
    }

    @Override // p193e.p194a.p195a.p200c.p203c.AbstractC5149q
    /* renamed from: b2 */
    public void mo33795b2() {
        com.truecaller.common.p156ui.fab.FloatingActionButton floatingActionButton = this.f17504l;
        if (floatingActionButton != null) {
            floatingActionButton.m35688c();
        } else {
            l.l("fabOptions");
            throw null;
        }
    }

    @Override // p193e.p194a.p195a.p200c.p203c.AbstractC5149q
    /* renamed from: c */
    public void mo33794c(String str) {
        AbstractC25393a m33825QA = m33825QA();
        if (m33825QA != null) {
            m33825QA.mo3544w(str);
        }
    }

    @Override // p193e.p194a.p195a.p200c.p203c.AbstractC5149q
    /* renamed from: c0 */
    public void mo33793c0() {
        RecyclerView recyclerView = this.f17501i;
        if (recyclerView == null) {
            l.l("recyclerView");
            throw null;
        }
        RecyclerView.AbstractC0317g adapter = recyclerView.getAdapter();
        if (adapter == null) {
            return;
        }
        adapter.notifyDataSetChanged();
    }

    @Override // p193e.p194a.p195a.p200c.p203c.AbstractC5149q
    /* renamed from: ci */
    public void mo33792ci(Uri uri) {
        l.e(uri, "uri");
        startActivityForResult(new Intent("android.media.action.IMAGE_CAPTURE").putExtra("output", uri), 4);
    }

    @Override // p193e.p194a.p195a.p200c.p204f.C5255a.AbstractC5258c
    /* renamed from: gr */
    public void mo32459gr(long j) {
        AbstractC5148p abstractC5148p = this.f17493a;
        if (abstractC5148p != null) {
            abstractC5148p.mo33766K2(j);
        } else {
            l.l("presenter");
            throw null;
        }
    }

    @Override // p193e.p194a.p195a.p200c.p203c.AbstractC5149q
    /* renamed from: gu */
    public void mo33791gu(MediaPosition mediaPosition, String str, String str2, String str3) {
        l.e(mediaPosition, "position");
        l.e(str, "fileExtension");
        l.e(str2, "title");
        l.e(str3, "subtitle");
        Context requireContext = requireContext();
        l.d(requireContext, "requireContext()");
        C5137e c5137e = new C5137e(requireContext, str);
        InteractiveMediaView interactiveMediaView = this.f17499g;
        if (interactiveMediaView != null) {
            interactiveMediaView.m34960l(mediaPosition, c5137e, null, str2, str3);
        } else {
            l.l("mediaView");
            throw null;
        }
    }

    @Override // p193e.p194a.p195a.p200c.p218o8.AbstractC5644j
    /* renamed from: iu */
    public int mo32454iu(String str) {
        l.e(str, "mentionText");
        MediaEditText mediaEditText = this.f17502j;
        if (mediaEditText == null) {
            l.l("editText");
            throw null;
        }
        int selectionStart = mediaEditText.getSelectionStart();
        MediaEditText mediaEditText2 = this.f17502j;
        if (mediaEditText2 == null) {
            l.l("editText");
            throw null;
        }
        Editable text = mediaEditText2.getText();
        l.d(text, "editText.text");
        int J = v.J(text.toString(), '@', selectionStart, false, 4);
        if (J == -1) {
            return -1;
        }
        text.replace(J, selectionStart, str + ' ');
        mo32540Hx(J, str.length() + J);
        return J + 1;
    }

    @Override // p193e.p194a.p195a.p200c.p203c.AbstractC5149q
    /* renamed from: j1 */
    public void mo33790j1() {
        g$a g_a = new g$a(requireContext());
        g_a.m3656m(C2752R.string.DialogSendGroupSmsTitle);
        g_a.m3664e(C2752R.string.DialogSendGroupSmsMessage);
        g_a.m3660i(C2752R.string.DialogSendGroupSmsButtonSms, new DialogInterface$OnClickListenerC5116b(0, this));
        g_a.m3662g(C2752R.string.DialogSendGroupSmsButtonMms, new DialogInterface$OnClickListenerC5116b(1, this));
        g_a.m3652q();
    }

    @Override // p193e.p194a.p195a.p200c.p204f.C5255a.AbstractC5258c
    /* renamed from: jp */
    public void mo32452jp(long j, long j2, int i) {
    }

    @Override // p193e.p194a.p195a.p200c.p218o8.AbstractC5644j
    /* renamed from: ko */
    public void mo32446ko(int i) {
        MediaEditText mediaEditText = this.f17502j;
        if (mediaEditText == null) {
            l.l("editText");
            throw null;
        }
        int selectionStart = mediaEditText.getSelectionStart();
        MediaEditText mediaEditText2 = this.f17502j;
        if (mediaEditText2 != null) {
            mediaEditText2.getText().replace(i, selectionStart, "");
        } else {
            l.l("editText");
            throw null;
        }
    }

    @Override // p193e.p194a.p195a.p200c.p218o8.AbstractC5644j
    /* renamed from: lx */
    public void mo32441lx(boolean z) {
        C18898f c18898f = this.f17507o;
        if (c18898f == null) {
            l.l("mentionAdapter");
            throw null;
        }
        c18898f.notifyDataSetChanged();
        RecyclerView recyclerView = this.f17506n;
        if (recyclerView == null) {
            l.l("mentionRecyclerView");
            throw null;
        }
        C19286f.m13683U(recyclerView, z);
        AbstractC5148p abstractC5148p = this.f17493a;
        if (abstractC5148p == null) {
            l.l("presenter");
            throw null;
        } else if (abstractC5148p.mo33762Mc()) {
        } else {
            RecyclerView recyclerView2 = this.f17501i;
            if (recyclerView2 != null) {
                C19286f.m13683U(recyclerView2, !z);
            } else {
                l.l("recyclerView");
                throw null;
            }
        }
    }

    @Override // p193e.p194a.p195a.p200c.p203c.AbstractC5149q
    /* renamed from: m1 */
    public String mo33789m1() {
        MediaEditText mediaEditText = this.f17502j;
        if (mediaEditText != null) {
            return mediaEditText.getText().toString();
        }
        l.l("editText");
        throw null;
    }

    @Override // p193e.p194a.p195a.p200c.p203c.AbstractC5149q
    /* renamed from: n3 */
    public void mo33788n3() {
        InteractiveMediaView interactiveMediaView = this.f17499g;
        if (interactiveMediaView == null) {
            l.l("mediaView");
            throw null;
        }
        interactiveMediaView.f13567s.m31289b();
        interactiveMediaView.f13568t.m31289b();
        interactiveMediaView.f13569u.m31289b();
    }

    @Override // p193e.p194a.p195a.p200c.p203c.AbstractC5149q
    /* renamed from: nr */
    public void mo33787nr(MediaPosition mediaPosition, Uri uri) {
        l.e(mediaPosition, "position");
        l.e(uri, "uri");
        InteractiveMediaView interactiveMediaView = this.f17499g;
        if (interactiveMediaView != null) {
            interactiveMediaView.m34959m(mediaPosition, uri, -1L);
        } else {
            l.l("mediaView");
            throw null;
        }
    }

    @Override // p193e.p194a.p195a.p200c.p203c.AbstractC5149q
    /* renamed from: oj */
    public void mo33786oj() {
        InteractiveMediaView interactiveMediaView = this.f17499g;
        if (interactiveMediaView == null) {
            l.l("mediaView");
            throw null;
        }
        SimpleExoPlayer simpleExoPlayer = interactiveMediaView.f13568t.f21353i;
        if (simpleExoPlayer == null) {
            return;
        }
        simpleExoPlayer.seekTo(0L);
    }

    public void onActivityResult(int i, int i2, Intent intent) {
        List<Uri> list = s.a;
        C5114a.super.onActivityResult(i, i2, intent);
        boolean z = i2 == -1;
        if (i == 4) {
            AbstractC5148p abstractC5148p = this.f17493a;
            if (abstractC5148p == null) {
                l.l("presenter");
                throw null;
            }
            abstractC5148p.mo33772Af(z);
        } else if (i == 5) {
            AbstractC5148p abstractC5148p2 = this.f17493a;
            if (abstractC5148p2 == null) {
                l.l("presenter");
                throw null;
            }
            abstractC5148p2.mo33747Z6(z);
        }
        if (!z) {
            return;
        }
        if (i == 1) {
            AbstractC5148p abstractC5148p3 = this.f17493a;
            if (abstractC5148p3 == null) {
                l.l("presenter");
                throw null;
            }
            if (intent != null) {
                list = m33824RA(intent);
            }
            abstractC5148p3.mo33746ac(list);
        } else if (i == 2) {
            AbstractC5148p abstractC5148p4 = this.f17493a;
            if (abstractC5148p4 == null) {
                l.l("presenter");
                throw null;
            }
            if (intent != null) {
                list = m33824RA(intent);
            }
            abstractC5148p4.mo33771D9(list);
        } else if (i != 3) {
        } else {
            AbstractC5148p abstractC5148p5 = this.f17493a;
            if (abstractC5148p5 == null) {
                l.l("presenter");
                throw null;
            }
            Uri uri = null;
            if (intent != null) {
                uri = intent.getData();
            }
            abstractC5148p5.mo33744ga(uri);
        }
    }

    public void onCreate(Bundle bundle) {
        DraftArguments draftArguments;
        C5114a.super.onCreate(bundle);
        Bundle arguments = getArguments();
        if (arguments == null || (draftArguments = (DraftArguments) arguments.getParcelable("draft_arguments")) == null) {
            return;
        }
        Context requireContext = requireContext();
        l.d(requireContext, "requireContext()");
        C5143k c5143k = new C5143k(draftArguments, requireContext);
        Context requireContext2 = requireContext();
        l.d(requireContext2, "requireContext()");
        Context applicationContext = requireContext2.getApplicationContext();
        Objects.requireNonNull(applicationContext, "null cannot be cast to non-null type com.truecaller.GraphHolder");
        AbstractC15539j2 mo10154s = ((AbstractC21187w1) applicationContext).mo10154s();
        Objects.requireNonNull(mo10154s);
        C25225a.m3846s(c5143k, C5143k.class);
        C25225a.m3846s(mo10154s, AbstractC15539j2.class);
        C5131c c5131c = new C5131c(c5143k, mo10154s, null);
        this.f17493a = (AbstractC5148p) c5131c.f17538d.get();
        this.f17494b = (AbstractC5145m) c5131c.f17543i.get();
        AbstractC14965w mo12182u6 = c5131c.f17535a.mo12182u6();
        Objects.requireNonNull(mo12182u6, "Cannot return null from a non-@Nullable component method");
        this.f17495c = mo12182u6;
        this.f17496d = (AbstractC5639g) c5131c.f17540f.get();
        this.f17497e = (AbstractC5634c) c5131c.f17545k.get();
        this.f17498f = new C19235i0(c5131c.f17536b.f17581b);
        AbstractC5145m abstractC5145m = this.f17494b;
        if (abstractC5145m == null) {
            l.l("itemPresenter");
            throw null;
        }
        this.f17508p = new C18898f(new C18910r(abstractC5145m, C2752R.layout.item_draft, new C5121f(), C5122g.f17520b));
        AbstractC5634c abstractC5634c = this.f17497e;
        if (abstractC5634c == null) {
            l.l("mentionItemPresenter");
            throw null;
        }
        this.f17507o = new C18898f(new C18910r(abstractC5634c, C2752R.layout.item_mention_participant, new C5123h(), C5124i.f17522b));
        setHasOptionsMenu(true);
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        l.e(layoutInflater, "inflater");
        return layoutInflater.inflate(C2752R.layout.fragment_draft, viewGroup, false);
    }

    public void onDestroyView() {
        MediaEditText mediaEditText = this.f17502j;
        if (mediaEditText == null) {
            l.l("editText");
            throw null;
        }
        mediaEditText.removeTextChangedListener(this.f17509q);
        MediaEditText mediaEditText2 = this.f17502j;
        if (mediaEditText2 == null) {
            l.l("editText");
            throw null;
        }
        mediaEditText2.f13951d = null;
        InteractiveMediaView interactiveMediaView = this.f17499g;
        if (interactiveMediaView == null) {
            l.l("mediaView");
            throw null;
        }
        interactiveMediaView.setOnImageSwipeListener(null);
        InteractiveMediaView interactiveMediaView2 = this.f17499g;
        if (interactiveMediaView2 == null) {
            l.l("mediaView");
            throw null;
        }
        interactiveMediaView2.setPlayerEventListener(null);
        AbstractC5148p abstractC5148p = this.f17493a;
        if (abstractC5148p == null) {
            l.l("presenter");
            throw null;
        }
        abstractC5148p.mo9806c();
        AbstractC5639g abstractC5639g = this.f17496d;
        if (abstractC5639g == null) {
            l.l("mentionPresenter");
            throw null;
        }
        abstractC5639g.mo9806c();
        C5114a.super.onDestroyView();
    }

    public boolean onOptionsItemSelected(MenuItem menuItem) {
        l.e(menuItem, "item");
        if (menuItem.getItemId() == 16908332) {
            AbstractC5148p abstractC5148p = this.f17493a;
            if (abstractC5148p != null) {
                abstractC5148p.mo33743m();
                return true;
            }
            l.l("presenter");
            throw null;
        }
        return C5114a.super.onOptionsItemSelected(menuItem);
    }

    public void onStart() {
        C5114a.super.onStart();
        AbstractC5148p abstractC5148p = this.f17493a;
        if (abstractC5148p == null) {
            l.l("presenter");
            throw null;
        }
        abstractC5148p.onStart();
        MediaEditText mediaEditText = this.f17502j;
        if (mediaEditText != null) {
            mediaEditText.setMediaCallback(this);
        } else {
            l.l("editText");
            throw null;
        }
    }

    public void onStop() {
        C5114a.super.onStop();
        AbstractC5148p abstractC5148p = this.f17493a;
        if (abstractC5148p == null) {
            l.l("presenter");
            throw null;
        }
        abstractC5148p.onStop();
        MediaEditText mediaEditText = this.f17502j;
        if (mediaEditText != null) {
            mediaEditText.setMediaCallback(null);
        } else {
            l.l("editText");
            throw null;
        }
    }

    public void onViewCreated(View view, Bundle bundle) {
        Window window;
        View decorView;
        l.e(view, ViewAction.VIEW);
        C5114a.super.onViewCreated(view, bundle);
        View findViewById = view.findViewById(C2752R.C2754id.mediaView);
        l.d(findViewById, "view.findViewById(R.id.mediaView)");
        this.f17499g = (InteractiveMediaView) findViewById;
        View findViewById2 = view.findViewById(C2752R.C2754id.playbackButton);
        l.d(findViewById2, "view.findViewById(R.id.playbackButton)");
        this.f17500h = (ImageButton) findViewById2;
        View findViewById3 = view.findViewById(2131365378);
        l.d(findViewById3, "view.findViewById(R.id.recyclerView)");
        this.f17501i = (RecyclerView) findViewById3;
        View findViewById4 = view.findViewById(2131363455);
        l.d(findViewById4, "view.findViewById(R.id.editText)");
        this.f17502j = (MediaEditText) findViewById4;
        FloatingActionButton findViewById5 = view.findViewById(2131365654);
        l.d(findViewById5, "view.findViewById(R.id.sendButton)");
        this.f17503k = findViewById5;
        View findViewById6 = view.findViewById(C2752R.C2754id.fabOptions);
        l.d(findViewById6, "view.findViewById(R.id.fabOptions)");
        this.f17504l = (com.truecaller.common.p156ui.fab.FloatingActionButton) findViewById6;
        View findViewById7 = view.findViewById(C2752R.C2754id.overlayView);
        l.d(findViewById7, "view.findViewById(R.id.overlayView)");
        this.f17505m = findViewById7;
        View findViewById8 = view.findViewById(C2752R.C2754id.mentionRecyclerView);
        l.d(findViewById8, "view.findViewById(R.id.mentionRecyclerView)");
        RecyclerView recyclerView = (RecyclerView) findViewById8;
        this.f17506n = recyclerView;
        C18898f c18898f = this.f17507o;
        if (c18898f == null) {
            l.l("mentionAdapter");
            throw null;
        }
        recyclerView.setAdapter(c18898f);
        RecyclerView recyclerView2 = this.f17501i;
        if (recyclerView2 == null) {
            l.l("recyclerView");
            throw null;
        }
        C18898f c18898f2 = this.f17508p;
        if (c18898f2 == null) {
            l.l("adapter");
            throw null;
        }
        recyclerView2.setAdapter(c18898f2);
        AbstractC5148p abstractC5148p = this.f17493a;
        if (abstractC5148p == null) {
            l.l("presenter");
            throw null;
        }
        abstractC5148p.mo9029Y0(this);
        AbstractC5639g abstractC5639g = this.f17496d;
        if (abstractC5639g == null) {
            l.l("mentionPresenter");
            throw null;
        }
        abstractC5639g.mo9029Y0(this);
        InteractiveMediaView interactiveMediaView = this.f17499g;
        if (interactiveMediaView == null) {
            l.l("mediaView");
            throw null;
        }
        AbstractC5148p abstractC5148p2 = this.f17493a;
        if (abstractC5148p2 == null) {
            l.l("presenter");
            throw null;
        }
        interactiveMediaView.setOnImageSwipeListener(abstractC5148p2);
        InteractiveMediaView interactiveMediaView2 = this.f17499g;
        if (interactiveMediaView2 == null) {
            l.l("mediaView");
            throw null;
        }
        interactiveMediaView2.setOnClickListener(new View$OnClickListenerC5115a(0, this));
        FloatingActionButton floatingActionButton = this.f17503k;
        if (floatingActionButton == null) {
            l.l("sendButton");
            throw null;
        }
        floatingActionButton.setOnClickListener(new View$OnClickListenerC5115a(1, this));
        ImageButton imageButton = this.f17500h;
        if (imageButton == null) {
            l.l("playbackButton");
            throw null;
        }
        imageButton.setOnClickListener(new View$OnClickListenerC5115a(2, this));
        InteractiveMediaView interactiveMediaView3 = this.f17499g;
        if (interactiveMediaView3 == null) {
            l.l("mediaView");
            throw null;
        }
        interactiveMediaView3.setPlayerEventListener(new C5125j());
        MediaEditText mediaEditText = this.f17502j;
        if (mediaEditText == null) {
            l.l("editText");
            throw null;
        }
        mediaEditText.addTextChangedListener(this.f17509q);
        MediaEditText mediaEditText2 = this.f17502j;
        if (mediaEditText2 == null) {
            l.l("editText");
            throw null;
        }
        AbstractC6437d abstractC6437d = this.f17510r;
        l.e(abstractC6437d, "listener");
        mediaEditText2.f13951d = abstractC6437d;
        n3.r.a.l activity = getActivity();
        if (activity == null || (window = activity.getWindow()) == null || (decorView = window.getDecorView()) == null) {
            return;
        }
        decorView.setSystemUiVisibility(1536);
    }

    @Override // p193e.p194a.p195a.p200c.p203c.AbstractC5149q
    /* renamed from: q1 */
    public void mo33785q1() {
        startActivityForResult(new Intent("android.intent.action.PICK").setType("vnd.android.cursor.dir/phone_v2"), 3);
    }

    @Override // p193e.p194a.p195a.p200c.p203c.AbstractC5149q
    /* renamed from: r2 */
    public void mo33784r2(boolean z) {
        ImageButton imageButton = this.f17500h;
        if (imageButton != null) {
            C19286f.m13683U(imageButton, z);
        } else {
            l.l("playbackButton");
            throw null;
        }
    }

    @Override // p193e.p194a.p195a.p200c.p203c.AbstractC5149q
    /* renamed from: sb */
    public void mo33783sb() {
        FloatingActionButton floatingActionButton = this.f17503k;
        if (floatingActionButton != null) {
            floatingActionButton.setOnLongClickListener(new View$OnLongClickListenerC5117c());
        } else {
            l.l("sendButton");
            throw null;
        }
    }

    @Override // p193e.p194a.p195a.p200c.p203c.AbstractC5149q
    public void scrollToPosition(int i) {
        RecyclerView recyclerView = this.f17501i;
        if (recyclerView != null) {
            recyclerView.scrollToPosition(i);
        } else {
            l.l("recyclerView");
            throw null;
        }
    }

    @Override // p193e.p194a.p195a.p200c.p203c.AbstractC5149q
    public void setText(String str) {
        l.e(str, "text");
        MediaEditText mediaEditText = this.f17502j;
        if (mediaEditText != null) {
            mediaEditText.setText(str);
        } else {
            l.l("editText");
            throw null;
        }
    }

    @Override // p193e.p194a.p195a.p200c.p203c.AbstractC5149q
    public void setTitle(String str) {
        l.e(str, "title");
        AbstractC25393a m33825QA = m33825QA();
        if (m33825QA != null) {
            m33825QA.mo3542y(str);
        }
    }

    @Override // p193e.p194a.p195a.p200c.p203c.AbstractC5149q
    /* renamed from: uA */
    public void mo33782uA(long j) {
        Toast.makeText(requireContext(), getString((int) C2752R.string.ConversationAttachmentSizeLimitationWarning, new Object[]{C19291g.m13527o(j, null, 1)}), 1).show();
    }

    @Override // p193e.p194a.p195a.p200c.p203c.AbstractC5149q
    /* renamed from: vp */
    public void mo33781vp(boolean z) {
        Context requireContext = requireContext();
        int i = z ? 2131099933 : 2131099932;
        Object obj = C26467a.f74235a;
        int m1787a = C26467a.C26471d.m1787a(requireContext, i);
        View view = this.f17505m;
        if (view == null) {
            l.l("overlayView");
            throw null;
        }
        view.setBackgroundColor(m1787a);
        RecyclerView recyclerView = this.f17506n;
        if (recyclerView != null) {
            recyclerView.setBackgroundColor(m1787a);
        } else {
            l.l("mentionRecyclerView");
            throw null;
        }
    }

    @Override // p193e.p194a.p195a.p200c.p203c.AbstractC5149q
    /* renamed from: w0 */
    public void mo33780w0() {
        TruecallerInit.m34565Xa(requireActivity(), "messages", "forwardMessages");
    }

    @Override // p193e.p194a.p195a.p200c.p203c.AbstractC5149q
    /* renamed from: w4 */
    public void mo33779w4() {
        C5255a.C5259d c5259d = C5255a.f18065e;
        FragmentManager childFragmentManager = getChildFragmentManager();
        l.d(childFragmentManager, "childFragmentManager");
        Objects.requireNonNull(c5259d);
        l.e(childFragmentManager, "fragmentManager");
        new C5255a().show(childFragmentManager, "schedule_message_date_picker");
    }

    @Override // p193e.p194a.p195a.p200c.p203c.AbstractC5149q
    /* renamed from: x1 */
    public void mo33778x1() {
        Context requireContext = requireContext();
        C15314a c15314a = C15314a.f43582g;
        ContextThemeWrapper contextThemeWrapper = new ContextThemeWrapper(requireContext, C15314a.m18937b().f43588d);
        MediaEditText mediaEditText = this.f17502j;
        if (mediaEditText == null) {
            l.l("editText");
            throw null;
        }
        mediaEditText.addTextChangedListener(new C5668h(contextThemeWrapper, true));
        MediaEditText mediaEditText2 = this.f17502j;
        if (mediaEditText2 == null) {
            l.l("editText");
            throw null;
        } else if (mediaEditText2 == null) {
            l.l("editText");
            throw null;
        } else {
            mediaEditText2.setCustomSelectionActionModeCallback(new ActionMode$CallbackC5671k(contextThemeWrapper, mediaEditText2, true));
            MediaEditText mediaEditText3 = this.f17502j;
            if (mediaEditText3 == null) {
                l.l("editText");
                throw null;
            } else if (mediaEditText3 != null) {
                mediaEditText3.setCustomInsertionActionModeCallback(new ActionMode$CallbackC5669i(contextThemeWrapper, mediaEditText3, true));
            } else {
                l.l("editText");
                throw null;
            }
        }
    }

    @Override // p193e.p194a.p195a.p200c.p203c.AbstractC5149q
    /* renamed from: xb */
    public void mo33777xb() {
        ImageButton imageButton = this.f17500h;
        if (imageButton == null) {
            l.l("playbackButton");
            throw null;
        } else if (imageButton != null) {
            C19286f.m13683U(imageButton, !C19286f.m13663p(imageButton));
        } else {
            l.l("playbackButton");
            throw null;
        }
    }

    @Override // p193e.p194a.p195a.p200c.p203c.AbstractC5149q
    /* renamed from: xm */
    public void mo33776xm(Uri uri, Long l) {
        l.e(uri, "uri");
        Intent putExtra = new Intent("android.media.action.VIDEO_CAPTURE").putExtra("output", uri).putExtra("android.intent.extra.videoQuality", 0).putExtra(TokenResponseDto.METHOD_SMS, true);
        if (l != null) {
            putExtra.putExtra("android.intent.extra.sizeLimit", l.longValue());
        }
        startActivityForResult(putExtra, 5);
    }

    @Override // p193e.p194a.p195a.p200c.p203c.AbstractC5149q
    /* renamed from: yo */
    public void mo33775yo(boolean z) {
        startActivityForResult(new Intent("android.intent.action.GET_CONTENT").setType("*/*").putExtra("android.intent.extra.MIME_TYPES", new String[]{"image/*", "video/*"}).putExtra("android.intent.extra.ALLOW_MULTIPLE", z), 1);
    }

    @Override // p193e.p194a.p195a.p200c.p203c.AbstractC5149q
    /* renamed from: z2 */
    public void mo33774z2(int i) {
        ImageButton imageButton = this.f17500h;
        if (imageButton != null) {
            imageButton.setImageResource(i);
        } else {
            l.l("playbackButton");
            throw null;
        }
    }

    @Override // p193e.p194a.p195a.p200c.p203c.AbstractC5149q
    /* renamed from: za */
    public void mo33773za(MediaPosition mediaPosition) {
        l.e(mediaPosition, "position");
        InteractiveMediaView interactiveMediaView = this.f17499g;
        if (interactiveMediaView == null) {
            l.l("mediaView");
            throw null;
        }
        Objects.requireNonNull(interactiveMediaView);
        l.e(mediaPosition, "position");
        interactiveMediaView.m34964h(mediaPosition).m31287d();
    }
}
