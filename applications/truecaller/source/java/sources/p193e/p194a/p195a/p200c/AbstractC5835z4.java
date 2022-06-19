package p193e.p194a.p195a.p200c;

import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Parcelable;
import com.truecaller.data.entity.messaging.Participant;
import com.truecaller.flashsdk.models.FlashContact;
import com.truecaller.messaging.data.types.BinaryEntity;
import com.truecaller.messaging.data.types.Conversation;
import com.truecaller.messaging.data.types.Message;
import com.truecaller.messaging.data.types.Reaction;
import java.util.List;
import java.util.Map;
/* renamed from: e.a.a.c.z4 */
/* loaded from: classes5-dex2jar.jar:e/a/a/c/z4.class */
public interface AbstractC5835z4 {
    /* renamed from: A */
    void mo32373A();

    /* renamed from: A3 */
    void mo32372A3(int i);

    /* renamed from: C2 */
    void mo32371C2(Message... messageArr);

    /* renamed from: C4 */
    void mo32370C4(int i);

    /* renamed from: Cb */
    void mo32369Cb(Uri uri, String str, Drawable drawable);

    /* renamed from: Ez */
    void mo32368Ez(String str);

    /* renamed from: Fg */
    void mo32367Fg();

    /* renamed from: Kt */
    void mo32366Kt(String str);

    /* renamed from: Lk */
    void mo32365Lk(BinaryEntity binaryEntity, Message message, Conversation conversation, boolean z);

    /* renamed from: N4 */
    void mo32364N4(Message... messageArr);

    /* renamed from: Q */
    void mo32363Q(String str);

    /* renamed from: Qu */
    boolean mo32362Qu(Uri uri, String str);

    /* renamed from: Qw */
    void mo32361Qw(int i);

    /* renamed from: S4 */
    void mo32360S4(boolean z, int i, List<Message> list, String str);

    /* renamed from: Sq */
    void mo32359Sq(String str, Message... messageArr);

    /* renamed from: Uf */
    void mo32358Uf(Message[] messageArr, String str);

    /* renamed from: Vc */
    void mo32357Vc(Map<Reaction, ? extends Participant> map);

    /* renamed from: X */
    void mo32356X(String str);

    /* renamed from: Yx */
    boolean mo32355Yx(String str);

    /* renamed from: Z5 */
    void mo32354Z5();

    /* renamed from: a */
    void mo32353a(int i);

    /* renamed from: a2 */
    void mo32352a2(int i);

    /* renamed from: b */
    void mo32351b(String str);

    /* renamed from: bu */
    void mo32350bu(double d, double d2, String str);

    /* renamed from: ej */
    void mo32349ej(Parcelable parcelable);

    Parcelable getScrollState();

    /* renamed from: gw */
    void mo32348gw(String str);

    /* renamed from: h7 */
    void mo32347h7(String str);

    /* renamed from: h9 */
    void mo32346h9(long j);

    /* renamed from: hb */
    void mo32345hb(int i);

    /* renamed from: hh */
    void mo32344hh();

    /* renamed from: j4 */
    void mo32343j4();

    /* renamed from: j7 */
    void mo32342j7(boolean z);

    /* renamed from: kx */
    void mo32341kx(String str);

    /* renamed from: n4 */
    void mo32340n4(int i, String str, List<Message> list);

    /* renamed from: n8 */
    void mo32339n8(Participant participant, boolean z);

    /* renamed from: qz */
    void mo32338qz();

    /* renamed from: t8 */
    void mo32337t8(List<Message> list);

    /* renamed from: u8 */
    void mo32336u8();

    /* renamed from: ua */
    void mo32335ua(String str);

    /* renamed from: uo */
    void mo32334uo(Participant participant, long j, long j2, boolean z, boolean z2, FlashContact flashContact);

    /* renamed from: vj */
    boolean mo32333vj(String str);
}
