package kotlinx.coroutines;

import com.verizon.ads.verizonsspwaterfallprovider.VerizonSSPWaterfallProvider;
import java.util.ArrayList;
import java.util.Collections;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.C18298b;
import kotlin.C20128v;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.C18524p;
import kotlin.p521c.AbstractC18332d;
import kotlin.p521c.AbstractC18335f;
import kotlin.p521c.p522a.C18308b;
import kotlin.p521c.p522a.EnumC18307a;
import kotlin.p521c.p523b.p524a.AbstractC18319d;
import kotlinx.coroutines.AbstractC20218bv;
import kotlinx.coroutines.internal.AbstractC20292r;
import kotlinx.coroutines.internal.C20282k;
import kotlinx.coroutines.internal.C20283l;
import kotlinx.coroutines.internal.C20295u;
import kotlinx.coroutines.internal.C20296v;
import net.pubnative.lite.sdk.vpaid.enums.EventConstants;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��è\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0003\n��\n\u0002\u0010 \n��\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0017\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u0001\n\u0002\b\u0013\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\b\n\u0002\b\u0010\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0012\b\u0017\u0018��2\u00020X2\u00020\u00172\u00030\u0081\u00012\u00030Å\u0001:\u0006Ô\u0001Õ\u0001Ö\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0001¢\u0006\u0004\b\u0003\u0010\u0004J'\u0010\u000b\u001a\u00020\u00012\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\tH\u0002¢\u0006\u0004\b\u000b\u0010\fJ%\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u000e\u001a\u00020\r2\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\r0\u000fH\u0002¢\u0006\u0004\b\u0012\u0010\u0013J\u0019\u0010\u0015\u001a\u00020\u00112\b\u0010\u0014\u001a\u0004\u0018\u00010\u0005H\u0014¢\u0006\u0004\b\u0015\u0010\u0016J\u0015\u0010\u001a\u001a\u00020\u00192\u0006\u0010\u0018\u001a\u00020\u0017¢\u0006\u0004\b\u001a\u0010\u001bJ\u0015\u0010\u001e\u001a\u0004\u0018\u00010\u0005H\u0080@ø\u0001��¢\u0006\u0004\b\u001c\u0010\u001dJ\u0015\u0010\u001f\u001a\u0004\u0018\u00010\u0005H\u0082@ø\u0001��¢\u0006\u0004\b\u001f\u0010\u001dJ\u0019\u0010!\u001a\u00020\u00012\b\u0010 \u001a\u0004\u0018\u00010\rH\u0017¢\u0006\u0004\b!\u0010\"J\u001f\u0010!\u001a\u00020\u00112\u000e\u0010 \u001a\n\u0018\u00010#j\u0004\u0018\u0001`$H\u0016¢\u0006\u0004\b!\u0010%J\u0017\u0010&\u001a\u00020\u00012\b\u0010 \u001a\u0004\u0018\u00010\r¢\u0006\u0004\b&\u0010\"J\u0019\u0010)\u001a\u00020\u00012\b\u0010 \u001a\u0004\u0018\u00010\u0005H��¢\u0006\u0004\b'\u0010(J\u0017\u0010*\u001a\u00020\u00112\u0006\u0010 \u001a\u00020\rH\u0016¢\u0006\u0004\b*\u0010+J\u001b\u0010,\u001a\u0004\u0018\u00010\u00052\b\u0010 \u001a\u0004\u0018\u00010\u0005H\u0002¢\u0006\u0004\b,\u0010-J\u0017\u0010.\u001a\u00020\u00012\u0006\u0010 \u001a\u00020\rH\u0002¢\u0006\u0004\b.\u0010\"J\u000f\u00100\u001a\u00020/H\u0014¢\u0006\u0004\b0\u00101J\u0017\u00102\u001a\u00020\u00012\u0006\u0010 \u001a\u00020\rH\u0016¢\u0006\u0004\b2\u0010\"J!\u00105\u001a\u00020\u00112\u0006\u0010\u0014\u001a\u0002032\b\u00104\u001a\u0004\u0018\u00010\u0005H\u0002¢\u0006\u0004\b5\u00106J)\u0010;\u001a\u00020\u00112\u0006\u0010\u0014\u001a\u0002072\u0006\u00109\u001a\u0002082\b\u0010:\u001a\u0004\u0018\u00010\u0005H\u0002¢\u0006\u0004\b;\u0010<J\u0019\u0010=\u001a\u00020\r2\b\u0010 \u001a\u0004\u0018\u00010\u0005H\u0002¢\u0006\u0004\b=\u0010>J(\u0010C\u001a\u00020@2\n\b\u0002\u0010?\u001a\u0004\u0018\u00010/2\n\b\u0002\u0010 \u001a\u0004\u0018\u00010\rH\u0080\b¢\u0006\u0004\bA\u0010BJ#\u0010D\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0014\u001a\u0002072\b\u0010:\u001a\u0004\u0018\u00010\u0005H\u0002¢\u0006\u0004\bD\u0010EJ\u0019\u0010F\u001a\u0004\u0018\u0001082\u0006\u0010\u0014\u001a\u000203H\u0002¢\u0006\u0004\bF\u0010GJ\u0011\u0010H\u001a\u00060#j\u0002`$¢\u0006\u0004\bH\u0010IJ\u0013\u0010J\u001a\u00060#j\u0002`$H\u0016¢\u0006\u0004\bJ\u0010IJ\u0011\u0010M\u001a\u0004\u0018\u00010\u0005H��¢\u0006\u0004\bK\u0010LJ\u000f\u0010N\u001a\u0004\u0018\u00010\r¢\u0006\u0004\bN\u0010OJ'\u0010P\u001a\u0004\u0018\u00010\r2\u0006\u0010\u0014\u001a\u0002072\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\r0\u000fH\u0002¢\u0006\u0004\bP\u0010QJ\u0019\u0010R\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u0014\u001a\u000203H\u0002¢\u0006\u0004\bR\u0010SJ\u0017\u0010U\u001a\u00020\u00012\u0006\u0010T\u001a\u00020\rH\u0014¢\u0006\u0004\bU\u0010\"J\u0017\u0010W\u001a\u00020\u00112\u0006\u0010T\u001a\u00020\rH\u0010¢\u0006\u0004\bV\u0010+J\u0019\u0010\\\u001a\u00020\u00112\b\u0010Y\u001a\u0004\u0018\u00010XH��¢\u0006\u0004\bZ\u0010[JF\u0010e\u001a\u00020d2\u0006\u0010]\u001a\u00020\u00012\u0006\u0010^\u001a\u00020\u00012'\u0010c\u001a#\u0012\u0015\u0012\u0013\u0018\u00010\r¢\u0006\f\b`\u0012\b\ba\u0012\u0004\b\b( \u0012\u0004\u0012\u00020\u00110_j\u0002`b¢\u0006\u0004\be\u0010fJ6\u0010e\u001a\u00020d2'\u0010c\u001a#\u0012\u0015\u0012\u0013\u0018\u00010\r¢\u0006\f\b`\u0012\b\ba\u0012\u0004\b\b( \u0012\u0004\u0012\u00020\u00110_j\u0002`b¢\u0006\u0004\be\u0010gJ\u0013\u0010h\u001a\u00020\u0011H\u0086@ø\u0001��¢\u0006\u0004\bh\u0010\u001dJ\u000f\u0010i\u001a\u00020\u0001H\u0002¢\u0006\u0004\bi\u0010jJ\u0013\u0010k\u001a\u00020\u0011H\u0082@ø\u0001��¢\u0006\u0004\bk\u0010\u001dJ&\u0010n\u001a\u00020m2\u0014\u0010l\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0005\u0012\u0004\u0012\u00020\u00110_H\u0082\b¢\u0006\u0004\bn\u0010oJ\u001b\u0010p\u001a\u0004\u0018\u00010\u00052\b\u0010 \u001a\u0004\u0018\u00010\u0005H\u0002¢\u0006\u0004\bp\u0010-J\u0019\u0010r\u001a\u00020\u00012\b\u0010:\u001a\u0004\u0018\u00010\u0005H��¢\u0006\u0004\bq\u0010(J\u001b\u0010t\u001a\u0004\u0018\u00010\u00052\b\u0010:\u001a\u0004\u0018\u00010\u0005H��¢\u0006\u0004\bs\u0010-J@\u0010u\u001a\u00020\t2'\u0010c\u001a#\u0012\u0015\u0012\u0013\u0018\u00010\r¢\u0006\f\b`\u0012\b\ba\u0012\u0004\b\b( \u0012\u0004\u0012\u00020\u00110_j\u0002`b2\u0006\u0010]\u001a\u00020\u0001H\u0002¢\u0006\u0004\bu\u0010vJ\u000f\u0010x\u001a\u00020/H\u0010¢\u0006\u0004\bw\u00101J\u001f\u0010y\u001a\u00020\u00112\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010 \u001a\u00020\rH\u0002¢\u0006\u0004\by\u0010zJ.\u0010|\u001a\u00020\u0011\"\n\b��\u0010{\u0018\u0001*\u00020\t2\u0006\u0010\b\u001a\u00020\u00072\b\u0010 \u001a\u0004\u0018\u00010\rH\u0082\b¢\u0006\u0004\b|\u0010zJ\u0019\u0010]\u001a\u00020\u00112\b\u0010 \u001a\u0004\u0018\u00010\rH\u0014¢\u0006\u0004\b]\u0010+J\u0019\u0010}\u001a\u00020\u00112\b\u0010\u0014\u001a\u0004\u0018\u00010\u0005H\u0014¢\u0006\u0004\b}\u0010\u0016J\u0010\u0010\u0080\u0001\u001a\u00020\u0011H\u0010¢\u0006\u0004\b~\u0010\u007fJ\u001a\u0010\u0083\u0001\u001a\u00020\u00112\b\u0010\u0082\u0001\u001a\u00030\u0081\u0001¢\u0006\u0006\b\u0083\u0001\u0010\u0084\u0001J\u001b\u0010\u0086\u0001\u001a\u00020\u00112\u0007\u0010\u0014\u001a\u00030\u0085\u0001H\u0002¢\u0006\u0006\b\u0086\u0001\u0010\u0087\u0001J\u001a\u0010\u0088\u0001\u001a\u00020\u00112\u0006\u0010\u0014\u001a\u00020\tH\u0002¢\u0006\u0006\b\u0088\u0001\u0010\u0089\u0001JI\u0010\u008e\u0001\u001a\u00020\u0011\"\u0005\b��\u0010\u008a\u00012\u000e\u0010\u008c\u0001\u001a\t\u0012\u0004\u0012\u00028��0\u008b\u00012\u001d\u0010l\u001a\u0019\b\u0001\u0012\u000b\u0012\t\u0012\u0004\u0012\u00028��0\u008d\u0001\u0012\u0006\u0012\u0004\u0018\u00010\u00050_ø\u0001��¢\u0006\u0006\b\u008e\u0001\u0010\u008f\u0001JX\u0010\u0093\u0001\u001a\u00020\u0011\"\u0004\b��\u0010{\"\u0005\b\u0001\u0010\u008a\u00012\u000e\u0010\u008c\u0001\u001a\t\u0012\u0004\u0012\u00028\u00010\u008b\u00012$\u0010l\u001a \b\u0001\u0012\u0004\u0012\u00028��\u0012\u000b\u0012\t\u0012\u0004\u0012\u00028\u00010\u008d\u0001\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u0090\u0001H��ø\u0001��¢\u0006\u0006\b\u0091\u0001\u0010\u0092\u0001J\u001a\u0010\u0095\u0001\u001a\u00020\u00112\u0006\u0010\n\u001a\u00020\tH��¢\u0006\u0006\b\u0094\u0001\u0010\u0089\u0001JX\u0010\u0097\u0001\u001a\u00020\u0011\"\u0004\b��\u0010{\"\u0005\b\u0001\u0010\u008a\u00012\u000e\u0010\u008c\u0001\u001a\t\u0012\u0004\u0012\u00028\u00010\u008b\u00012$\u0010l\u001a \b\u0001\u0012\u0004\u0012\u00028��\u0012\u000b\u0012\t\u0012\u0004\u0012\u00028\u00010\u008d\u0001\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u0090\u0001H��ø\u0001��¢\u0006\u0006\b\u0096\u0001\u0010\u0092\u0001J\u000f\u0010\u0098\u0001\u001a\u00020\u0001¢\u0006\u0005\b\u0098\u0001\u0010jJ\u001d\u0010\u009a\u0001\u001a\u00030\u0099\u00012\b\u0010\u0014\u001a\u0004\u0018\u00010\u0005H\u0002¢\u0006\u0006\b\u009a\u0001\u0010\u009b\u0001J\u001c\u0010\u009c\u0001\u001a\u00020/2\b\u0010\u0014\u001a\u0004\u0018\u00010\u0005H\u0002¢\u0006\u0006\b\u009c\u0001\u0010\u009d\u0001J\u0011\u0010\u009e\u0001\u001a\u00020/H\u0007¢\u0006\u0005\b\u009e\u0001\u00101J\u0011\u0010\u009f\u0001\u001a\u00020/H\u0016¢\u0006\u0005\b\u009f\u0001\u00101J$\u0010 \u0001\u001a\u00020\u00012\u0006\u0010\u0014\u001a\u0002032\b\u00104\u001a\u0004\u0018\u00010\u0005H\u0002¢\u0006\u0006\b \u0001\u0010¡\u0001J\"\u0010¢\u0001\u001a\u00020\u00012\u0006\u0010\u0014\u001a\u0002032\u0006\u0010\u000e\u001a\u00020\rH\u0002¢\u0006\u0006\b¢\u0001\u0010£\u0001J(\u0010¤\u0001\u001a\u0004\u0018\u00010\u00052\b\u0010\u0014\u001a\u0004\u0018\u00010\u00052\b\u0010:\u001a\u0004\u0018\u00010\u0005H\u0002¢\u0006\u0006\b¤\u0001\u0010¥\u0001J&\u0010¦\u0001\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0014\u001a\u0002032\b\u0010:\u001a\u0004\u0018\u00010\u0005H\u0002¢\u0006\u0006\b¦\u0001\u0010§\u0001J-\u0010¨\u0001\u001a\u00020\u00012\u0006\u0010\u0014\u001a\u0002072\u0006\u0010\u0018\u001a\u0002082\b\u0010:\u001a\u0004\u0018\u00010\u0005H\u0082\u0010¢\u0006\u0006\b¨\u0001\u0010©\u0001J\u0019\u0010«\u0001\u001a\u0004\u0018\u000108*\u00030ª\u0001H\u0002¢\u0006\u0006\b«\u0001\u0010¬\u0001J\u001f\u0010\u00ad\u0001\u001a\u00020\u0011*\u00020\u00072\b\u0010 \u001a\u0004\u0018\u00010\rH\u0002¢\u0006\u0005\b\u00ad\u0001\u0010zJ&\u0010®\u0001\u001a\u00060#j\u0002`$*\u00020\r2\n\b\u0002\u0010?\u001a\u0004\u0018\u00010/H\u0004¢\u0006\u0006\b®\u0001\u0010¯\u0001R\u001d\u0010³\u0001\u001a\t\u0012\u0004\u0012\u00020X0°\u00018F@\u0006¢\u0006\b\u001a\u0006\b±\u0001\u0010²\u0001R\u001a\u0010µ\u0001\u001a\u0004\u0018\u00010\r8D@\u0004X\u0084\u0004¢\u0006\u0007\u001a\u0005\b´\u0001\u0010OR\u0018\u0010·\u0001\u001a\u00020\u00018D@\u0004X\u0084\u0004¢\u0006\u0007\u001a\u0005\b¶\u0001\u0010jR\u0018\u0010¹\u0001\u001a\u00020\u00018P@\u0010X\u0090\u0004¢\u0006\u0007\u001a\u0005\b¸\u0001\u0010jR\u0018\u0010º\u0001\u001a\u00020\u00018V@\u0016X\u0096\u0004¢\u0006\u0007\u001a\u0005\bº\u0001\u0010jR\u0015\u0010»\u0001\u001a\u00020\u00018F@\u0006¢\u0006\u0007\u001a\u0005\b»\u0001\u0010jR\u0015\u0010¼\u0001\u001a\u00020\u00018F@\u0006¢\u0006\u0007\u001a\u0005\b¼\u0001\u0010jR\u0015\u0010½\u0001\u001a\u00020\u00018F@\u0006¢\u0006\u0007\u001a\u0005\b½\u0001\u0010jR\u0018\u0010¾\u0001\u001a\u00020\u00018T@\u0014X\u0094\u0004¢\u0006\u0007\u001a\u0005\b¾\u0001\u0010jR\u001b\u0010Â\u0001\u001a\u0007\u0012\u0002\b\u00030¿\u00018F@\u0006¢\u0006\b\u001a\u0006\bÀ\u0001\u0010Á\u0001R\u0018\u0010Ä\u0001\u001a\u00020\u00018P@\u0010X\u0090\u0004¢\u0006\u0007\u001a\u0005\bÃ\u0001\u0010jR\u0017\u0010È\u0001\u001a\u00030Å\u00018F@\u0006¢\u0006\b\u001a\u0006\bÆ\u0001\u0010Ç\u0001R.\u0010Î\u0001\u001a\u0004\u0018\u00010\u00192\t\u0010É\u0001\u001a\u0004\u0018\u00010\u00198@@@X\u0080\u000e¢\u0006\u0010\u001a\u0006\bÊ\u0001\u0010Ë\u0001\"\u0006\bÌ\u0001\u0010Í\u0001R\u0019\u0010\u0014\u001a\u0004\u0018\u00010\u00058@@��X\u0080\u0004¢\u0006\u0007\u001a\u0005\bÏ\u0001\u0010LR \u0010Ñ\u0001\u001a\u0004\u0018\u00010\r*\u0004\u0018\u00010\u00058B@\u0002X\u0082\u0004¢\u0006\u0007\u001a\u0005\bÐ\u0001\u0010>R\u001d\u0010Ò\u0001\u001a\u00020\u0001*\u0002038B@\u0002X\u0082\u0004¢\u0006\b\u001a\u0006\bÒ\u0001\u0010Ó\u0001\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006×\u0001"}, m4298d2 = {"Lkotlinx/coroutines/JobSupport;", "", "active", "<init>", "(Z)V", "", "expect", "Lkotlinx/coroutines/NodeList;", "list", "Lkotlinx/coroutines/JobNode;", "node", "addLastAtomic", "(Ljava/lang/Object;Lkotlinx/coroutines/NodeList;Lkotlinx/coroutines/JobNode;)Z", "", "rootCause", "", "exceptions", "", "addSuppressedExceptions", "(Ljava/lang/Throwable;Ljava/util/List;)V", VerizonSSPWaterfallProvider.USER_DATA_STATE_KEY, "afterCompletion", "(Ljava/lang/Object;)V", "Lkotlinx/coroutines/ChildJob;", "child", "Lkotlinx/coroutines/ChildHandle;", "attachChild", "(Lkotlinx/coroutines/ChildJob;)Lkotlinx/coroutines/ChildHandle;", "awaitInternal$kotlinx_coroutines_core", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "awaitInternal", "awaitSuspend", "cause", "cancel", "(Ljava/lang/Throwable;)Z", "Ljava/util/concurrent/CancellationException;", "Lkotlinx/coroutines/CancellationException;", "(Ljava/util/concurrent/CancellationException;)V", "cancelCoroutine", "cancelImpl$kotlinx_coroutines_core", "(Ljava/lang/Object;)Z", "cancelImpl", "cancelInternal", "(Ljava/lang/Throwable;)V", "cancelMakeCompleting", "(Ljava/lang/Object;)Ljava/lang/Object;", "cancelParent", "", "cancellationExceptionMessage", "()Ljava/lang/String;", "childCancelled", "Lkotlinx/coroutines/Incomplete;", "update", "completeStateFinalization", "(Lkotlinx/coroutines/Incomplete;Ljava/lang/Object;)V", "Lkotlinx/coroutines/JobSupport$Finishing;", "Lkotlinx/coroutines/ChildHandleNode;", "lastChild", "proposedUpdate", "continueCompleting", "(Lkotlinx/coroutines/JobSupport$Finishing;Lkotlinx/coroutines/ChildHandleNode;Ljava/lang/Object;)V", "createCauseException", "(Ljava/lang/Object;)Ljava/lang/Throwable;", "message", "Lkotlinx/coroutines/JobCancellationException;", "defaultCancellationException$kotlinx_coroutines_core", "(Ljava/lang/String;Ljava/lang/Throwable;)Lkotlinx/coroutines/JobCancellationException;", "defaultCancellationException", "finalizeFinishingState", "(Lkotlinx/coroutines/JobSupport$Finishing;Ljava/lang/Object;)Ljava/lang/Object;", "firstChild", "(Lkotlinx/coroutines/Incomplete;)Lkotlinx/coroutines/ChildHandleNode;", "getCancellationException", "()Ljava/util/concurrent/CancellationException;", "getChildJobCancellationCause", "getCompletedInternal$kotlinx_coroutines_core", "()Ljava/lang/Object;", "getCompletedInternal", "getCompletionExceptionOrNull", "()Ljava/lang/Throwable;", "getFinalRootCause", "(Lkotlinx/coroutines/JobSupport$Finishing;Ljava/util/List;)Ljava/lang/Throwable;", "getOrPromoteCancellingList", "(Lkotlinx/coroutines/Incomplete;)Lkotlinx/coroutines/NodeList;", "exception", "handleJobException", "handleOnCompletionException$kotlinx_coroutines_core", "handleOnCompletionException", "Lkotlinx/coroutines/Job;", "parent", "initParentJobInternal$kotlinx_coroutines_core", "(Lkotlinx/coroutines/Job;)V", "initParentJobInternal", "onCancelling", "invokeImmediately", "Lkotlin/Function1;", "Lkotlin/ParameterName;", "name", "Lkotlinx/coroutines/CompletionHandler;", "handler", "Lkotlinx/coroutines/DisposableHandle;", "invokeOnCompletion", "(ZZLkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/DisposableHandle;", "(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/DisposableHandle;", "join", "joinInternal", "()Z", "joinSuspend", "block", "", "loopOnState", "(Lkotlin/jvm/functions/Function1;)Ljava/lang/Void;", "makeCancelling", "makeCompleting$kotlinx_coroutines_core", "makeCompleting", "makeCompletingOnce$kotlinx_coroutines_core", "makeCompletingOnce", "makeNode", "(Lkotlin/jvm/functions/Function1;Z)Lkotlinx/coroutines/JobNode;", "nameString$kotlinx_coroutines_core", "nameString", "notifyCancelling", "(Lkotlinx/coroutines/NodeList;Ljava/lang/Throwable;)V", "T", "notifyHandlers", "onCompletionInternal", "onStartInternal$kotlinx_coroutines_core", "()V", "onStartInternal", "Lkotlinx/coroutines/ParentJob;", "parentJob", "parentCancelled", "(Lkotlinx/coroutines/ParentJob;)V", "Lkotlinx/coroutines/Empty;", "promoteEmptyToNodeList", "(Lkotlinx/coroutines/Empty;)V", "promoteSingleToNodeList", "(Lkotlinx/coroutines/JobNode;)V", "R", "Lkotlinx/coroutines/selects/SelectInstance;", "select", "Lkotlin/coroutines/Continuation;", "registerSelectClause0", "(Lkotlinx/coroutines/selects/SelectInstance;Lkotlin/jvm/functions/Function1;)V", "Lkotlin/Function2;", "registerSelectClause1Internal$kotlinx_coroutines_core", "(Lkotlinx/coroutines/selects/SelectInstance;Lkotlin/jvm/functions/Function2;)V", "registerSelectClause1Internal", "removeNode$kotlinx_coroutines_core", "removeNode", "selectAwaitCompletion$kotlinx_coroutines_core", "selectAwaitCompletion", EventConstants.START, "", "startInternal", "(Ljava/lang/Object;)I", "stateString", "(Ljava/lang/Object;)Ljava/lang/String;", "toDebugString", "toString", "tryFinalizeSimpleState", "(Lkotlinx/coroutines/Incomplete;Ljava/lang/Object;)Z", "tryMakeCancelling", "(Lkotlinx/coroutines/Incomplete;Ljava/lang/Throwable;)Z", "tryMakeCompleting", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", "tryMakeCompletingSlowPath", "(Lkotlinx/coroutines/Incomplete;Ljava/lang/Object;)Ljava/lang/Object;", "tryWaitForChild", "(Lkotlinx/coroutines/JobSupport$Finishing;Lkotlinx/coroutines/ChildHandleNode;Ljava/lang/Object;)Z", "Lkotlinx/coroutines/internal/LockFreeLinkedListNode;", "nextChild", "(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;)Lkotlinx/coroutines/ChildHandleNode;", "notifyCompletion", "toCancellationException", "(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/util/concurrent/CancellationException;", "Lkotlin/sequences/Sequence;", "getChildren", "()Lkotlin/sequences/Sequence;", VerizonSSPWaterfallProvider.USER_DATA_CHILDREN_KEY, "getCompletionCause", "completionCause", "getCompletionCauseHandled", "completionCauseHandled", "getHandlesException$kotlinx_coroutines_core", "handlesException", "isActive", "isCancelled", "isCompleted", "isCompletedExceptionally", "isScopedCoroutine", "Lkotlin/coroutines/CoroutineContext$Key;", "getKey", "()Lkotlin/coroutines/CoroutineContext$Key;", "key", "getOnCancelComplete$kotlinx_coroutines_core", "onCancelComplete", "Lkotlinx/coroutines/selects/SelectClause0;", "getOnJoin", "()Lkotlinx/coroutines/selects/SelectClause0;", "onJoin", "value", "getParentHandle$kotlinx_coroutines_core", "()Lkotlinx/coroutines/ChildHandle;", "setParentHandle$kotlinx_coroutines_core", "(Lkotlinx/coroutines/ChildHandle;)V", "parentHandle", "getState$kotlinx_coroutines_core", "getExceptionOrNull", "exceptionOrNull", "isCancelling", "(Lkotlinx/coroutines/Incomplete;)Z", "AwaitContinuation", "ChildCompletion", "Finishing", "kotlinx-coroutines-core"}, m4297k = 1, m4296mv = {1, 4, 2})
/* renamed from: kotlinx.coroutines.ca */
/* loaded from: classes5-dex2jar.jar:kotlinx/coroutines/ca.class */
public class C20228ca implements AbstractC20218bv, AbstractC20240ci, AbstractC20316v {

    /* renamed from: d */
    static final /* synthetic */ AtomicReferenceFieldUpdater f66677d = AtomicReferenceFieldUpdater.newUpdater(C20228ca.class, Object.class, "_state");
    private volatile /* synthetic */ Object _parentHandle;
    private volatile /* synthetic */ Object _state;

    /* JADX INFO: Access modifiers changed from: package-private */
    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��,\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0003\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n��\b\u0002\u0018��*\u0004\b��\u0010\u00012\b\u0012\u0004\u0012\u0002H\u00010\u0002B\u001b\u0012\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028��0\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007J\u0010\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0016J\b\u0010\f\u001a\u00020\rH\u0014R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n��¨\u0006\u000e"}, m4298d2 = {"Lkotlinx/coroutines/JobSupport$AwaitContinuation;", "T", "Lkotlinx/coroutines/CancellableContinuationImpl;", "delegate", "Lkotlin/coroutines/Continuation;", "job", "Lkotlinx/coroutines/JobSupport;", "(Lkotlin/coroutines/Continuation;Lkotlinx/coroutines/JobSupport;)V", "getContinuationCancellationCause", "", "parent", "Lkotlinx/coroutines/Job;", "nameString", "", "kotlinx-coroutines-core"}, m4297k = 1, m4296mv = {1, 4, 2})
    /* renamed from: kotlinx.coroutines.ca$a */
    /* loaded from: classes5-dex2jar.jar:kotlinx/coroutines/ca$a.class */
    public static final class C20229a<T> extends C20309o<T> {

        /* renamed from: c */
        private final C20228ca f66678c;

        public C20229a(AbstractC18332d<? super T> abstractC18332d, C20228ca c20228ca) {
            super(abstractC18332d, 1);
            this.f66678c = c20228ca;
        }

        @Override // kotlinx.coroutines.C20309o
        /* renamed from: a */
        public final Throwable mo790a(AbstractC20218bv abstractC20218bv) {
            Throwable th;
            Object m935p = this.f66678c.m935p();
            return (!(m935p instanceof C20231c) || (th = (Throwable) ((C20231c) m935p)._rootCause) == null) ? m935p instanceof C20322z ? ((C20322z) m935p).f66802b : abstractC20218bv.mo938m() : th;
        }

        @Override // kotlinx.coroutines.C20309o
        /* renamed from: j */
        protected final String mo775j() {
            return "AwaitContinuation";
        }
    }

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��0\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u0002\n��\n\u0002\u0010\u0003\n��\b\u0002\u0018��2\u00020\u0001B'\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\b\u0010\b\u001a\u0004\u0018\u00010\t¢\u0006\u0002\u0010\nJ\u0013\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0096\u0002R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n��R\u0010\u0010\b\u001a\u0004\u0018\u00010\tX\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n��¨\u0006\u000f"}, m4298d2 = {"Lkotlinx/coroutines/JobSupport$ChildCompletion;", "Lkotlinx/coroutines/JobNode;", "parent", "Lkotlinx/coroutines/JobSupport;", VerizonSSPWaterfallProvider.USER_DATA_STATE_KEY, "Lkotlinx/coroutines/JobSupport$Finishing;", "child", "Lkotlinx/coroutines/ChildHandleNode;", "proposedUpdate", "", "(Lkotlinx/coroutines/JobSupport;Lkotlinx/coroutines/JobSupport$Finishing;Lkotlinx/coroutines/ChildHandleNode;Ljava/lang/Object;)V", "invoke", "", "cause", "", "kotlinx-coroutines-core"}, m4297k = 1, m4296mv = {1, 4, 2})
    /* renamed from: kotlinx.coroutines.ca$b */
    /* loaded from: classes5-dex2jar.jar:kotlinx/coroutines/ca$b.class */
    public static final class C20230b extends AbstractC20224bz {

        /* renamed from: a */
        private final C20228ca f66679a;

        /* renamed from: b */
        private final C20231c f66680b;

        /* renamed from: f */
        private final C20315u f66681f;

        /* renamed from: g */
        private final Object f66682g;

        public C20230b(C20228ca c20228ca, C20231c c20231c, C20315u c20315u, Object obj) {
            this.f66679a = c20228ca;
            this.f66680b = c20231c;
            this.f66681f = c20315u;
            this.f66682g = obj;
        }

        @Override // kotlinx.coroutines.AbstractC20136ab
        /* renamed from: a */
        public final void mo768a(Throwable th) {
            C20228ca.m961a(this.f66679a, this.f66680b, this.f66681f, this.f66682g);
        }

        @Override // kotlin.jvm.functions.Function1
        public final /* synthetic */ C20128v invoke(Throwable th) {
            mo768a(th);
            return C20128v.f66529a;
        }
    }

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n��\n\u0002\u0010\u0003\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010��\n\u0002\b\u0013\n\u0002\u0018\u0002\n\u0002\u0018\u0002\b\u0002\u0018��2\u00060\u0018j\u0002`,2\u00020-B!\u0012\u0006\u0010\u0002\u001a\u00020\u0001\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b\u0007\u0010\bJ\u0015\u0010\u000b\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\u0005¢\u0006\u0004\b\u000b\u0010\fJ\u001f\u0010\u000f\u001a\u0012\u0012\u0004\u0012\u00020\u00050\rj\b\u0012\u0004\u0012\u00020\u0005`\u000eH\u0002¢\u0006\u0004\b\u000f\u0010\u0010J\u001d\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00050\u00122\b\u0010\u0011\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b\u0013\u0010\u0014J\u000f\u0010\u0016\u001a\u00020\u0015H\u0016¢\u0006\u0004\b\u0016\u0010\u0017R(\u0010\u001e\u001a\u0004\u0018\u00010\u00182\b\u0010\u0019\u001a\u0004\u0018\u00010\u00188B@BX\u0082\u000e¢\u0006\f\u001a\u0004\b\u001a\u0010\u001b\"\u0004\b\u001c\u0010\u001dR\u0016\u0010\u001f\u001a\u00020\u00038V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u001f\u0010 R\u0013\u0010!\u001a\u00020\u00038F@\u0006¢\u0006\u0006\u001a\u0004\b!\u0010 R$\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0019\u001a\u00020\u00038F@FX\u0086\u000e¢\u0006\f\u001a\u0004\b\u0004\u0010 \"\u0004\b\"\u0010#R\u0013\u0010$\u001a\u00020\u00038F@\u0006¢\u0006\u0006\u001a\u0004\b$\u0010 R\u001c\u0010\u0002\u001a\u00020\u00018\u0016@\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u0002\u0010%\u001a\u0004\b&\u0010'R(\u0010\u0006\u001a\u0004\u0018\u00010\u00052\b\u0010\u0019\u001a\u0004\u0018\u00010\u00058F@FX\u0086\u000e¢\u0006\f\u001a\u0004\b(\u0010)\"\u0004\b*\u0010\f¨\u0006+"}, m4298d2 = {"Lkotlinx/coroutines/JobSupport$Finishing;", "Lkotlinx/coroutines/NodeList;", "list", "", "isCompleting", "", "rootCause", "<init>", "(Lkotlinx/coroutines/NodeList;ZLjava/lang/Throwable;)V", "exception", "", "addExceptionLocked", "(Ljava/lang/Throwable;)V", "Ljava/util/ArrayList;", "Lkotlin/collections/ArrayList;", "allocateList", "()Ljava/util/ArrayList;", "proposedException", "", "sealLocked", "(Ljava/lang/Throwable;)Ljava/util/List;", "", "toString", "()Ljava/lang/String;", "", "value", "getExceptionsHolder", "()Ljava/lang/Object;", "setExceptionsHolder", "(Ljava/lang/Object;)V", "exceptionsHolder", "isActive", "()Z", "isCancelling", "setCompleting", "(Z)V", "isSealed", "Lkotlinx/coroutines/NodeList;", "getList", "()Lkotlinx/coroutines/NodeList;", "getRootCause", "()Ljava/lang/Throwable;", "setRootCause", "kotlinx-coroutines-core", "Lkotlinx/coroutines/internal/SynchronizedObject;", "Lkotlinx/coroutines/Incomplete;"}, m4297k = 1, m4296mv = {1, 4, 2})
    /* renamed from: kotlinx.coroutines.ca$c */
    /* loaded from: classes5-dex2jar.jar:kotlinx/coroutines/ca$c.class */
    public static final class C20231c implements AbstractC20213bq {
        volatile /* synthetic */ Object _exceptionsHolder = null;
        volatile /* synthetic */ int _isCompleting;
        volatile /* synthetic */ Object _rootCause;

        /* renamed from: a */
        final C20237cf f66683a;

        public C20231c(C20237cf c20237cf, boolean z, Throwable th) {
            this.f66683a = c20237cf;
            this._isCompleting = z ? 1 : 0;
            this._rootCause = th;
        }

        /* renamed from: e */
        static ArrayList<Throwable> m931e() {
            return new ArrayList<>(4);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* renamed from: a */
        public final void m934a(Throwable th) {
            Throwable th2 = (Throwable) this._rootCause;
            if (th2 == null) {
                this._rootCause = th;
            } else if (th == th2) {
            } else {
                Object obj = this._exceptionsHolder;
                if (obj == null) {
                    this._exceptionsHolder = th;
                } else if (!(obj instanceof Throwable)) {
                    if (!(obj instanceof ArrayList)) {
                        throw new IllegalStateException("State is ".concat(String.valueOf(obj)).toString());
                    }
                    ((ArrayList) obj).add(th);
                } else if (th == obj) {
                } else {
                    ArrayList<Throwable> m931e = m931e();
                    m931e.add(obj);
                    m931e.add(th);
                    C20128v c20128v = C20128v.f66529a;
                    this._exceptionsHolder = m931e;
                }
            }
        }

        @Override // kotlinx.coroutines.AbstractC20213bq
        public final C20237cf ax_() {
            return this.f66683a;
        }

        @Override // kotlinx.coroutines.AbstractC20213bq
        /* renamed from: b */
        public final boolean mo919b() {
            return ((Throwable) this._rootCause) == null;
        }

        /* renamed from: c */
        public final boolean m933c() {
            C20296v c20296v;
            Object obj = this._exceptionsHolder;
            c20296v = C20233cb.f66691e;
            return obj == c20296v;
        }

        /* renamed from: d */
        public final boolean m932d() {
            return ((Throwable) this._rootCause) != null;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r1v5, types: [boolean, int] */
        public final String toString() {
            return "Finishing[cancelling=" + m932d() + ", completing=" + ((boolean) this._isCompleting) + ", rootCause=" + ((Throwable) this._rootCause) + ", exceptions=" + this._exceptionsHolder + ", list=" + this.f66683a + ']';
        }
    }

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u001b\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��*\u0001��\b\n\u0018��2\u00020\u0001J\u0016\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\u0010\u0004\u001a\u00060\u0005j\u0002`\u0006H\u0016¨\u0006\u0007¸\u0006��"}, m4298d2 = {"kotlinx/coroutines/internal/LockFreeLinkedListNode$makeCondAddOp$1", "Lkotlinx/coroutines/internal/LockFreeLinkedListNode$CondAddOp;", "prepare", "", "affected", "Lkotlinx/coroutines/internal/LockFreeLinkedListNode;", "Lkotlinx/coroutines/internal/Node;", "kotlinx-coroutines-core"}, m4297k = 1, m4296mv = {1, 4, 2})
    /* renamed from: kotlinx.coroutines.ca$d */
    /* loaded from: classes5-dex2jar.jar:kotlinx/coroutines/ca$d.class */
    public static final class C20232d extends C20283l.AbstractC20284a {

        /* renamed from: a */
        final /* synthetic */ C20283l f66684a;

        /* renamed from: b */
        final /* synthetic */ C20228ca f66685b;

        /* renamed from: c */
        final /* synthetic */ Object f66686c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C20232d(C20283l c20283l, C20283l c20283l2, C20228ca c20228ca, Object obj) {
            super(c20283l2);
            this.f66684a = c20283l;
            this.f66685b = c20228ca;
            this.f66686c = obj;
        }

        @Override // kotlinx.coroutines.internal.AbstractC20267c
        /* renamed from: a */
        public final /* synthetic */ Object mo879a() {
            if (this.f66685b.m935p() == this.f66686c) {
                return null;
            }
            return C20282k.m861a();
        }
    }

    public C20228ca(boolean z) {
        C20195be c20195be;
        C20195be c20195be2;
        C20195be c20195be3;
        if (z) {
            c20195be3 = C20233cb.f66693g;
            c20195be = c20195be3;
        } else {
            c20195be2 = C20233cb.f66692f;
            c20195be = c20195be2;
        }
        this._state = c20195be;
        this._parentHandle = null;
    }

    /* renamed from: a */
    private final Object m975a(Object obj, Object obj2) {
        C20296v c20296v;
        C20296v c20296v2;
        if (!(obj instanceof AbstractC20213bq)) {
            c20296v2 = C20233cb.f66688b;
            return c20296v2;
        } else if ((!(obj instanceof C20195be) && !(obj instanceof AbstractC20224bz)) || (obj instanceof C20315u) || (obj2 instanceof C20322z)) {
            return m951c((AbstractC20213bq) obj, obj2);
        } else {
            if (m967a((AbstractC20213bq) obj, obj2)) {
                return obj2;
            }
            c20296v = C20233cb.f66689c;
            return c20296v;
        }
    }

    /* renamed from: a */
    private final Object m964a(C20231c c20231c, Object obj) {
        ArrayList<Throwable> arrayList;
        C20296v c20296v;
        Throwable m963a;
        if (C20159ao.m1083a()) {
            if (!(m935p() == c20231c)) {
                throw new AssertionError();
            }
        }
        if (!C20159ao.m1083a() || (!c20231c.m933c())) {
            if (C20159ao.m1083a() && c20231c._isCompleting == 0) {
                throw new AssertionError();
            }
            C20322z c20322z = (C20322z) (!(obj instanceof C20322z) ? null : obj);
            Throwable th = c20322z != null ? c20322z.f66802b : null;
            synchronized (c20231c) {
                c20231c.m932d();
                Object obj2 = c20231c._exceptionsHolder;
                if (obj2 == null) {
                    arrayList = C20231c.m931e();
                } else if (obj2 instanceof Throwable) {
                    arrayList = C20231c.m931e();
                    arrayList.add(obj2);
                } else if (!(obj2 instanceof ArrayList)) {
                    throw new IllegalStateException("State is ".concat(String.valueOf(obj2)).toString());
                } else {
                    arrayList = (ArrayList) obj2;
                }
                Throwable th2 = (Throwable) c20231c._rootCause;
                if (th2 != null) {
                    arrayList.add(0, th2);
                }
                if (th != null && (!C18524p.m3850a(th, th2))) {
                    arrayList.add(th);
                }
                c20296v = C20233cb.f66691e;
                c20231c._exceptionsHolder = c20296v;
                ArrayList<Throwable> arrayList2 = arrayList;
                m963a = m963a(c20231c, (List<? extends Throwable>) arrayList2);
                if (m963a != null) {
                    m971a(m963a, (List<? extends Throwable>) arrayList2);
                }
            }
            if (m963a != null && m963a != th) {
                obj = new C20322z(m963a, false, 2, null);
            }
            if (m963a != null) {
                boolean z = true;
                if (!m950d(m963a)) {
                    z = mo916c(m963a);
                }
                if (z) {
                    Objects.requireNonNull(obj, "null cannot be cast to non-null type kotlinx.coroutines.CompletedExceptionally");
                    ((C20322z) obj).m755a();
                }
            }
            mo976a(obj);
            boolean compareAndSet = f66677d.compareAndSet(this, c20231c, C20233cb.m929a(obj));
            if (C20159ao.m1083a() && !compareAndSet) {
                throw new AssertionError();
            }
            m954b(c20231c, obj);
            return obj;
        }
        throw new AssertionError();
    }

    /* renamed from: a */
    private final Throwable m963a(C20231c c20231c, List<? extends Throwable> list) {
        Object obj;
        Object obj2;
        Throwable th;
        if (list.isEmpty()) {
            if (!c20231c.m932d()) {
                return null;
            }
            return new JobCancellationException(mo943i(), null, this);
        }
        List<? extends Throwable> list2 = list;
        Iterator<T> it2 = list2.iterator();
        while (true) {
            if (!it2.hasNext()) {
                obj = null;
                break;
            }
            obj = it2.next();
            if (!(((Throwable) obj) instanceof CancellationException)) {
                break;
            }
        }
        Throwable th2 = (Throwable) obj;
        if (th2 != null) {
            return th2;
        }
        Throwable th3 = list.get(0);
        if (th3 instanceof TimeoutCancellationException) {
            Iterator<T> it3 = list2.iterator();
            do {
                obj2 = null;
                if (!it3.hasNext()) {
                    break;
                }
                obj2 = it3.next();
                th = (Throwable) obj2;
            } while (!(th != th3 && (th instanceof TimeoutCancellationException)));
            Throwable th4 = (Throwable) obj2;
            if (th4 != null) {
                return th4;
            }
        }
        return th3;
    }

    /* renamed from: a */
    private CancellationException m972a(Throwable th, String str) {
        CancellationException cancellationException = (CancellationException) (!(th instanceof CancellationException) ? null : th);
        JobCancellationException jobCancellationException = cancellationException;
        if (cancellationException == null) {
            String str2 = str;
            if (str == null) {
                str2 = mo943i();
            }
            jobCancellationException = new JobCancellationException(str2, th, this);
        }
        return jobCancellationException;
    }

    /* renamed from: a */
    private final C20237cf m968a(AbstractC20213bq abstractC20213bq) {
        C20237cf ax_ = abstractC20213bq.ax_();
        if (ax_ == null) {
            if (abstractC20213bq instanceof C20195be) {
                return new C20237cf();
            }
            if (!(abstractC20213bq instanceof AbstractC20224bz)) {
                throw new IllegalStateException("State should have list: ".concat(String.valueOf(abstractC20213bq)).toString());
            }
            m965a((AbstractC20224bz) abstractC20213bq);
            return null;
        }
        return ax_;
    }

    /* renamed from: a */
    private static C20315u m959a(C20283l c20283l) {
        C20283l c20283l2;
        while (true) {
            c20283l2 = c20283l;
            if (c20283l.mo855d()) {
                c20283l = c20283l.m852g();
            }
        }
        while (true) {
            C20283l m860a = C20282k.m860a(c20283l2.m854e());
            c20283l2 = m860a;
            if (!m860a.mo855d()) {
                if (m860a instanceof C20315u) {
                    return (C20315u) m860a;
                }
                c20283l2 = m860a;
                if (m860a instanceof C20237cf) {
                    return null;
                }
            }
        }
    }

    /* renamed from: a */
    private static void m971a(Throwable th, List<? extends Throwable> list) {
        if (list.size() <= 1) {
            return;
        }
        Set newSetFromMap = Collections.newSetFromMap(new IdentityHashMap(list.size()));
        Throwable m818a = !C20159ao.m1081c() ? th : C20295u.m818a(th);
        Iterator<? extends Throwable> it2 = list.iterator();
        while (it2.hasNext()) {
            Throwable next = it2.next();
            if (C20159ao.m1081c()) {
                next = C20295u.m818a(next);
            }
            if (next != th && next != m818a && !(next instanceof CancellationException) && newSetFromMap.add(next)) {
                C18298b.m4101a(th, next);
            }
        }
    }

    /* renamed from: a */
    private final void m965a(AbstractC20224bz abstractC20224bz) {
        abstractC20224bz.m859a(new C20237cf());
        f66677d.compareAndSet(this, abstractC20224bz, C20282k.m860a(abstractC20224bz.m854e()));
    }

    /* renamed from: a */
    public static final /* synthetic */ void m961a(C20228ca c20228ca, C20231c c20231c, C20315u c20315u, Object obj) {
        if (C20159ao.m1083a()) {
            if (!(c20228ca.m935p() == c20231c)) {
                throw new AssertionError();
            }
        }
        C20315u m959a = m959a((C20283l) c20315u);
        if (m959a == null || !c20228ca.m962a(c20231c, m959a, obj)) {
            c20228ca.mo820d(c20228ca.m964a(c20231c, obj));
        }
    }

    /* renamed from: a */
    private final void m960a(C20237cf c20237cf, Throwable th) {
        CompletionHandlerException completionHandlerException;
        C20237cf c20237cf2 = c20237cf;
        Object e = c20237cf2.m854e();
        Objects.requireNonNull(e, "null cannot be cast to non-null type kotlinx.coroutines.internal.Node /* = kotlinx.coroutines.internal.LockFreeLinkedListNode */");
        C20283l c20283l = (C20283l) e;
        CompletionHandlerException completionHandlerException2 = null;
        while (true) {
            completionHandlerException = completionHandlerException2;
            if (!(!C18524p.m3850a(c20283l, c20237cf2))) {
                break;
            }
            CompletionHandlerException completionHandlerException3 = completionHandlerException;
            if (c20283l instanceof AbstractC20221bw) {
                AbstractC20224bz abstractC20224bz = (AbstractC20224bz) c20283l;
                try {
                    abstractC20224bz.mo768a(th);
                    completionHandlerException3 = completionHandlerException;
                } catch (Throwable th2) {
                    if (completionHandlerException != null) {
                        C18298b.m4101a(completionHandlerException, th2);
                        completionHandlerException3 = completionHandlerException;
                        if (completionHandlerException != null) {
                        }
                    }
                    completionHandlerException3 = new CompletionHandlerException("Exception in completion handler " + abstractC20224bz + " for " + this, th2);
                    C20128v c20128v = C20128v.f66529a;
                }
            }
            c20283l = c20283l.m853f();
            completionHandlerException2 = completionHandlerException3;
        }
        if (completionHandlerException != null) {
            mo973a((Throwable) completionHandlerException);
        }
        m950d(th);
    }

    /* renamed from: a */
    private final boolean m974a(Object obj, C20237cf c20237cf, AbstractC20224bz abstractC20224bz) {
        boolean z;
        C20237cf c20237cf2 = c20237cf;
        AbstractC20224bz abstractC20224bz2 = abstractC20224bz;
        C20232d c20232d = new C20232d(abstractC20224bz2, abstractC20224bz2, this, obj);
        do {
            C20283l m852g = c20237cf2.m852g();
            C20283l.f66750e.lazySet(abstractC20224bz2, m852g);
            C20283l.f66749d.lazySet(abstractC20224bz2, c20237cf2);
            c20232d.f66751d = c20237cf2;
            z = !C20283l.f66749d.compareAndSet(m852g, c20237cf2, c20232d) ? false : c20232d.mo822a(m852g) == null ? true : true;
            if (z) {
                return true;
            }
        } while (!z);
        return false;
    }

    /* renamed from: a */
    private final boolean m967a(AbstractC20213bq abstractC20213bq, Object obj) {
        if (C20159ao.m1083a()) {
            if (!((abstractC20213bq instanceof C20195be) || (abstractC20213bq instanceof AbstractC20224bz))) {
                throw new AssertionError();
            }
        }
        if (!C20159ao.m1083a() || (!(obj instanceof C20322z))) {
            if (!f66677d.compareAndSet(this, abstractC20213bq, C20233cb.m929a(obj))) {
                return false;
            }
            mo976a(obj);
            m954b(abstractC20213bq, obj);
            return true;
        }
        throw new AssertionError();
    }

    /* renamed from: a */
    private final boolean m962a(C20231c c20231c, C20315u c20315u, Object obj) {
        while (AbstractC20218bv.C20219a.m982a(c20315u.f66790a, false, false, new C20230b(this, c20231c, c20315u, obj), 1) == C20238cg.f66696a) {
            C20315u m959a = m959a((C20283l) c20315u);
            c20315u = m959a;
            if (m959a == null) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: b */
    private final void m954b(AbstractC20213bq abstractC20213bq, Object obj) {
        AbstractC20314t abstractC20314t = (AbstractC20314t) this._parentHandle;
        if (abstractC20314t != null) {
            abstractC20314t.mo918a();
            this._parentHandle = C20238cg.f66696a;
        }
        if (!(obj instanceof C20322z)) {
            obj = null;
        }
        C20322z c20322z = (C20322z) obj;
        Throwable th = null;
        if (c20322z != null) {
            th = c20322z.f66802b;
        }
        if (!(abstractC20213bq instanceof AbstractC20224bz)) {
            C20237cf ax_ = abstractC20213bq.ax_();
            if (ax_ == null) {
                return;
            }
            m953b(ax_, th);
            return;
        }
        try {
            ((AbstractC20224bz) abstractC20213bq).mo768a(th);
        } catch (Throwable th2) {
            mo973a((Throwable) new CompletionHandlerException("Exception in completion handler " + abstractC20213bq + " for " + this, th2));
        }
    }

    /* renamed from: b */
    private final void m953b(C20237cf c20237cf, Throwable th) {
        CompletionHandlerException completionHandlerException;
        C20237cf c20237cf2 = c20237cf;
        Object e = c20237cf2.m854e();
        Objects.requireNonNull(e, "null cannot be cast to non-null type kotlinx.coroutines.internal.Node /* = kotlinx.coroutines.internal.LockFreeLinkedListNode */");
        C20283l c20283l = (C20283l) e;
        CompletionHandlerException completionHandlerException2 = null;
        while (true) {
            completionHandlerException = completionHandlerException2;
            if (!(!C18524p.m3850a(c20283l, c20237cf2))) {
                break;
            }
            CompletionHandlerException completionHandlerException3 = completionHandlerException;
            if (c20283l instanceof AbstractC20224bz) {
                AbstractC20224bz abstractC20224bz = (AbstractC20224bz) c20283l;
                try {
                    abstractC20224bz.mo768a(th);
                    completionHandlerException3 = completionHandlerException;
                } catch (Throwable th2) {
                    if (completionHandlerException != null) {
                        C18298b.m4101a(completionHandlerException, th2);
                        completionHandlerException3 = completionHandlerException;
                        if (completionHandlerException != null) {
                        }
                    }
                    completionHandlerException3 = new CompletionHandlerException("Exception in completion handler " + abstractC20224bz + " for " + this, th2);
                    C20128v c20128v = C20128v.f66529a;
                }
            }
            c20283l = c20283l.m853f();
            completionHandlerException2 = completionHandlerException3;
        }
        if (completionHandlerException != null) {
            mo973a((Throwable) completionHandlerException);
        }
    }

    /* renamed from: c */
    private final int m952c(Object obj) {
        C20195be c20195be;
        if (!(obj instanceof C20195be)) {
            if (!(obj instanceof C20212bp)) {
                return 0;
            }
            if (!f66677d.compareAndSet(this, obj, ((C20212bp) obj).f66660a)) {
                return -1;
            }
            mo945h();
            return 1;
        } else if (((C20195be) obj).f66640a) {
            return 0;
        } else {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f66677d;
            c20195be = C20233cb.f66693g;
            if (!atomicReferenceFieldUpdater.compareAndSet(this, obj, c20195be)) {
                return -1;
            }
            mo945h();
            return 1;
        }
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: c */
    private final Object m951c(AbstractC20213bq abstractC20213bq, Object obj) {
        C20315u c20315u;
        C20296v c20296v;
        C20296v c20296v2;
        C20296v c20296v3;
        C20237cf m968a = m968a(abstractC20213bq);
        if (m968a == null) {
            c20296v3 = C20233cb.f66689c;
            return c20296v3;
        }
        C20231c c20231c = (C20231c) (!(abstractC20213bq instanceof C20231c) ? null : abstractC20213bq);
        C20231c c20231c2 = c20231c;
        if (c20231c == null) {
            c20231c2 = new C20231c(m968a, false, null);
        }
        synchronized (c20231c2) {
            try {
                if (c20231c2._isCompleting != 0) {
                    c20296v2 = C20233cb.f66688b;
                    return c20296v2;
                }
                c20231c2._isCompleting = 1;
                if (c20231c2 != abstractC20213bq && !f66677d.compareAndSet(this, abstractC20213bq, c20231c2)) {
                    c20296v = C20233cb.f66689c;
                    return c20296v;
                }
                if (C20159ao.m1083a() && !(!c20231c2.m933c())) {
                    throw new AssertionError();
                }
                boolean m932d = c20231c2.m932d();
                C20322z c20322z = (C20322z) (!(obj instanceof C20322z) ? null : obj);
                if (c20322z != null) {
                    c20231c2.m934a(c20322z.f66802b);
                }
                Throwable th = (Throwable) c20231c2._rootCause;
                if (!(true ^ m932d)) {
                    th = null;
                }
                C20128v c20128v = C20128v.f66529a;
                if (th != null) {
                    m960a(m968a, th);
                }
                C20315u c20315u2 = (C20315u) (!(abstractC20213bq instanceof C20315u) ? null : abstractC20213bq);
                if (c20315u2 == null) {
                    C20237cf ax_ = abstractC20213bq.ax_();
                    c20315u = null;
                    if (ax_ != null) {
                        c20315u = m959a((C20283l) ax_);
                    }
                } else {
                    c20315u = c20315u2;
                }
                return (c20315u == null || !m962a(c20231c2, c20315u, obj)) ? m964a(c20231c2, obj) : C20233cb.f66687a;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    /* renamed from: d */
    private final boolean m950d(Throwable th) {
        if (aA_()) {
            return true;
        }
        boolean z = th instanceof CancellationException;
        AbstractC20314t abstractC20314t = (AbstractC20314t) this._parentHandle;
        return (abstractC20314t == null || abstractC20314t == C20238cg.f66696a) ? z : abstractC20314t.mo767b(th) || z;
    }

    /* renamed from: g */
    private final Object m946g(Object obj) {
        C20296v c20296v;
        Object m975a;
        C20296v c20296v2;
        do {
            Object m935p = m935p();
            if (!(m935p instanceof AbstractC20213bq) || ((m935p instanceof C20231c) && ((C20231c) m935p)._isCompleting != 0)) {
                c20296v = C20233cb.f66688b;
                return c20296v;
            }
            m975a = m975a(m935p, new C20322z(m944h(obj), false, 2, null));
            c20296v2 = C20233cb.f66689c;
        } while (m975a == c20296v2);
        return m975a;
    }

    /* renamed from: h */
    private final Throwable m944h(Object obj) {
        if (obj != null ? obj instanceof Throwable : true) {
            return obj != null ? (Throwable) obj : new JobCancellationException(mo943i(), null, this);
        }
        Objects.requireNonNull(obj, "null cannot be cast to non-null type kotlinx.coroutines.ParentJob");
        return ((AbstractC20240ci) obj).mo917q();
    }

    /* JADX WARN: Removed duplicated region for block: B:82:0x012f A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:88:0x0004 A[SYNTHETIC] */
    /* renamed from: i */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final java.lang.Object m942i(java.lang.Object r10) {
        /*
            Method dump skipped, instructions count: 378
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.C20228ca.m942i(java.lang.Object):java.lang.Object");
    }

    /* renamed from: j */
    private static String m941j(Object obj) {
        if (!(obj instanceof C20231c)) {
            return obj instanceof AbstractC20213bq ? ((AbstractC20213bq) obj).mo919b() ? "Active" : "New" : obj instanceof C20322z ? "Cancelled" : "Completed";
        }
        C20231c c20231c = (C20231c) obj;
        return c20231c.m932d() ? "Cancelling" : c20231c._isCompleting != 0 ? "Completing" : "Active";
    }

    @Override // kotlinx.coroutines.AbstractC20218bv
    /* renamed from: a */
    public final AbstractC20192bb mo969a(Function1<? super Throwable, C20128v> function1) {
        return mo957a(false, true, function1);
    }

    /* JADX WARN: Code restructure failed: missing block: B:25:0x007e, code lost:
        if (r0 == null) goto L26;
     */
    @Override // kotlinx.coroutines.AbstractC20218bv
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final kotlinx.coroutines.AbstractC20192bb mo957a(boolean r6, boolean r7, kotlin.jvm.functions.Function1<? super java.lang.Throwable, kotlin.C20128v> r8) {
        /*
            Method dump skipped, instructions count: 537
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.C20228ca.mo957a(boolean, boolean, kotlin.jvm.functions.Function1):kotlinx.coroutines.bb");
    }

    @Override // kotlinx.coroutines.AbstractC20218bv
    /* renamed from: a */
    public final AbstractC20314t mo958a(AbstractC20316v abstractC20316v) {
        AbstractC20192bb m982a = AbstractC20218bv.C20219a.m982a(this, true, false, new C20315u(abstractC20316v), 2);
        Objects.requireNonNull(m982a, "null cannot be cast to non-null type kotlinx.coroutines.ChildHandle");
        return (AbstractC20314t) m982a;
    }

    /* renamed from: a */
    protected void mo976a(Object obj) {
    }

    /* renamed from: a */
    public void mo973a(Throwable th) {
        throw th;
    }

    @Override // kotlinx.coroutines.AbstractC20218bv
    /* renamed from: a */
    public final void mo970a(CancellationException cancellationException) {
        JobCancellationException jobCancellationException = cancellationException;
        if (cancellationException == null) {
            jobCancellationException = new JobCancellationException(mo943i(), null, this);
        }
        m948e(jobCancellationException);
    }

    /* renamed from: a */
    public final void m966a(AbstractC20218bv abstractC20218bv) {
        if (C20159ao.m1083a()) {
            if (!(((AbstractC20314t) this._parentHandle) == null)) {
                throw new AssertionError();
            }
        }
        if (abstractC20218bv == null) {
            this._parentHandle = C20238cg.f66696a;
            return;
        }
        abstractC20218bv.mo937n();
        AbstractC20314t mo958a = abstractC20218bv.mo958a(this);
        this._parentHandle = mo958a;
        if (!mo940k()) {
            return;
        }
        mo958a.mo918a();
        this._parentHandle = C20238cg.f66696a;
    }

    @Override // kotlinx.coroutines.AbstractC20316v
    /* renamed from: a */
    public final void mo766a(AbstractC20240ci abstractC20240ci) {
        m948e(abstractC20240ci);
    }

    protected boolean aA_() {
        return false;
    }

    public boolean au_() {
        return false;
    }

    public boolean av_() {
        return true;
    }

    /* renamed from: b */
    public final Object m955b(AbstractC18332d<Object> frame) {
        Object m935p;
        do {
            m935p = m935p();
            if (!(m935p instanceof AbstractC20213bq)) {
                if (!(m935p instanceof C20322z)) {
                    return C20233cb.m927b(m935p);
                }
                Throwable th = ((C20322z) m935p).f66802b;
                if (!C20159ao.m1081c()) {
                    throw th;
                }
                if (frame instanceof AbstractC18319d) {
                    throw C20295u.m816a(th, (AbstractC18319d) frame);
                }
                throw th;
            }
        } while (m952c(m935p) < 0);
        C20229a c20229a = new C20229a(C18308b.m4100a(frame), this);
        C20311q.m769a(c20229a, mo957a(false, true, (Function1<? super Throwable, C20128v>) new C20241cj(c20229a)));
        Object g = c20229a.m778g();
        if (g == EnumC18307a.COROUTINE_SUSPENDED) {
            C18524p.m3840d(frame, "frame");
        }
        return g;
    }

    /* renamed from: b */
    public final boolean m956b(Throwable th) {
        return m948e(th);
    }

    /* renamed from: c */
    protected boolean mo916c(Throwable th) {
        return false;
    }

    /* renamed from: d */
    public void mo820d(Object obj) {
    }

    @Override // kotlinx.coroutines.AbstractC20218bv
    /* renamed from: e */
    public boolean mo949e() {
        Object m935p = m935p();
        return (m935p instanceof AbstractC20213bq) && ((AbstractC20213bq) m935p).mo919b();
    }

    /* renamed from: e */
    public final boolean m948e(Object obj) {
        C20296v c20296v;
        C20296v c20296v2;
        C20296v c20296v3;
        C20296v c20296v4;
        c20296v = C20233cb.f66688b;
        C20296v c20296v5 = c20296v;
        if (au_()) {
            Object m946g = m946g(obj);
            c20296v5 = m946g;
            if (m946g == C20233cb.f66687a) {
                return true;
            }
        }
        Object obj2 = c20296v5;
        Object obj3 = c20296v5;
        c20296v2 = C20233cb.f66688b;
        if (obj3 == c20296v2) {
            obj2 = m942i(obj);
        }
        Object obj4 = obj2;
        c20296v3 = C20233cb.f66688b;
        if (obj4 == c20296v3 || obj2 == C20233cb.f66687a) {
            return true;
        }
        Object obj5 = obj2;
        c20296v4 = C20233cb.f66690d;
        if (obj5 == c20296v4) {
            return false;
        }
        mo820d(obj2);
        return true;
    }

    /* renamed from: f */
    public final Object m947f(Object obj) {
        Object m975a;
        C20296v c20296v;
        C20296v c20296v2;
        do {
            m975a = m975a(m935p(), obj);
            c20296v = C20233cb.f66688b;
            if (m975a == c20296v) {
                String str = "Job " + this + " is already complete or completing, but is being completed with " + obj;
                if (!(obj instanceof C20322z)) {
                    obj = null;
                }
                C20322z c20322z = (C20322z) obj;
                Throwable th = null;
                if (c20322z != null) {
                    th = c20322z.f66802b;
                }
                throw new IllegalStateException(str, th);
            }
            c20296v2 = C20233cb.f66689c;
        } while (m975a == c20296v2);
        return m975a;
    }

    @Override // kotlin.p521c.AbstractC18335f
    public <R> R fold(R r, Function2<? super R, ? super AbstractC18335f.AbstractC18338b, ? extends R> function2) {
        return (R) AbstractC18335f.AbstractC18338b.C18339a.m4076a(this, r, function2);
    }

    @Override // kotlin.p521c.AbstractC18335f.AbstractC18338b, kotlin.p521c.AbstractC18335f
    public <E extends AbstractC18335f.AbstractC18338b> E get(AbstractC18335f.AbstractC18340c<E> abstractC18340c) {
        return (E) AbstractC18335f.AbstractC18338b.C18339a.m4075a(this, abstractC18340c);
    }

    @Override // kotlin.p521c.AbstractC18335f.AbstractC18338b
    public final AbstractC18335f.AbstractC18340c<?> getKey() {
        return AbstractC20218bv.f66666c;
    }

    /* renamed from: h */
    public void mo945h() {
    }

    /* renamed from: i */
    protected String mo943i() {
        return "Job was cancelled";
    }

    /* renamed from: j */
    public String mo907j() {
        return getClass().getSimpleName();
    }

    @Override // kotlinx.coroutines.AbstractC20218bv
    /* renamed from: k */
    public final boolean mo940k() {
        return !(m935p() instanceof AbstractC20213bq);
    }

    @Override // kotlinx.coroutines.AbstractC20218bv
    /* renamed from: l */
    public final boolean mo939l() {
        Object m935p = m935p();
        if (!(m935p instanceof C20322z)) {
            return (m935p instanceof C20231c) && ((C20231c) m935p).m932d();
        }
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x0042, code lost:
        if (r7 != null) goto L17;
     */
    @Override // kotlinx.coroutines.AbstractC20218bv
    /* renamed from: m */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.concurrent.CancellationException mo938m() {
        /*
            r6 = this;
            r0 = r6
            java.lang.Object r0 = r0.m935p()
            r7 = r0
            r0 = r7
            boolean r0 = r0 instanceof kotlinx.coroutines.C20228ca.C20231c
            if (r0 == 0) goto L60
            r0 = r7
            kotlinx.coroutines.ca$c r0 = (kotlinx.coroutines.C20228ca.C20231c) r0
            java.lang.Object r0 = r0._rootCause
            java.lang.Throwable r0 = (java.lang.Throwable) r0
            r8 = r0
            r0 = r8
            if (r0 == 0) goto L48
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r1 = r0
            r1.<init>()
            r7 = r0
            r0 = r7
            r1 = r6
            java.lang.Class r1 = r1.getClass()
            java.lang.String r1 = r1.getSimpleName()
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r7
            java.lang.String r1 = " is cancelling"
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r6
            r1 = r8
            r2 = r7
            java.lang.String r2 = r2.toString()
            java.util.concurrent.CancellationException r0 = r0.m972a(r1, r2)
            r7 = r0
            r0 = r7
            if (r0 == 0) goto L48
            goto Lab
        L48:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            r1 = r0
            java.lang.String r2 = "Job is still new or active: "
            r3 = r6
            java.lang.String r3 = java.lang.String.valueOf(r3)
            java.lang.String r2 = r2.concat(r3)
            java.lang.String r2 = r2.toString()
            r1.<init>(r2)
            java.lang.Throwable r0 = (java.lang.Throwable) r0
            throw r0
        L60:
            r0 = r7
            boolean r0 = r0 instanceof kotlinx.coroutines.AbstractC20213bq
            if (r0 != 0) goto Lad
            r0 = r7
            boolean r0 = r0 instanceof kotlinx.coroutines.C20322z
            if (r0 == 0) goto L7b
            r0 = r6
            r1 = r7
            kotlinx.coroutines.z r1 = (kotlinx.coroutines.C20322z) r1
            java.lang.Throwable r1 = r1.f66802b
            r2 = 0
            java.util.concurrent.CancellationException r0 = r0.m972a(r1, r2)
            return r0
        L7b:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r1 = r0
            r1.<init>()
            r7 = r0
            r0 = r7
            r1 = r6
            java.lang.Class r1 = r1.getClass()
            java.lang.String r1 = r1.getSimpleName()
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r7
            java.lang.String r1 = " has completed normally"
            java.lang.StringBuilder r0 = r0.append(r1)
            kotlinx.coroutines.JobCancellationException r0 = new kotlinx.coroutines.JobCancellationException
            r1 = r0
            r2 = r7
            java.lang.String r2 = r2.toString()
            r3 = 0
            r4 = r6
            kotlinx.coroutines.bv r4 = (kotlinx.coroutines.AbstractC20218bv) r4
            r1.<init>(r2, r3, r4)
            java.util.concurrent.CancellationException r0 = (java.util.concurrent.CancellationException) r0
            r7 = r0
        Lab:
            r0 = r7
            return r0
        Lad:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            r1 = r0
            java.lang.String r2 = "Job is still new or active: "
            r3 = r6
            java.lang.String r3 = java.lang.String.valueOf(r3)
            java.lang.String r2 = r2.concat(r3)
            java.lang.String r2 = r2.toString()
            r1.<init>(r2)
            java.lang.Throwable r0 = (java.lang.Throwable) r0
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.C20228ca.mo938m():java.util.concurrent.CancellationException");
    }

    @Override // kotlin.p521c.AbstractC18335f
    public AbstractC18335f minusKey(AbstractC18335f.AbstractC18340c<?> abstractC18340c) {
        return AbstractC18335f.AbstractC18338b.C18339a.m4073b(this, abstractC18340c);
    }

    @Override // kotlinx.coroutines.AbstractC20218bv
    /* renamed from: n */
    public final boolean mo937n() {
        int m952c;
        do {
            m952c = m952c(m935p());
            if (m952c == 0) {
                return false;
            }
        } while (m952c != 1);
        return true;
    }

    /* renamed from: o */
    public final AbstractC20314t m936o() {
        return (AbstractC20314t) this._parentHandle;
    }

    /* renamed from: p */
    public final Object m935p() {
        while (true) {
            Object obj = this._state;
            if (!(obj instanceof AbstractC20292r)) {
                return obj;
            }
            ((AbstractC20292r) obj).mo822a(this);
        }
    }

    @Override // kotlin.p521c.AbstractC18335f
    public AbstractC18335f plus(AbstractC18335f abstractC18335f) {
        return AbstractC18335f.AbstractC18338b.C18339a.m4074a(this, abstractC18335f);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v28, types: [java.lang.Throwable] */
    /* JADX WARN: Type inference failed for: r0v32, types: [java.lang.Throwable] */
    @Override // kotlinx.coroutines.AbstractC20240ci
    /* renamed from: q */
    public final CancellationException mo917q() {
        CancellationException cancellationException;
        Object m935p = m935p();
        CancellationException cancellationException2 = null;
        if (m935p instanceof C20231c) {
            cancellationException = (Throwable) ((C20231c) m935p)._rootCause;
        } else if (m935p instanceof C20322z) {
            cancellationException = ((C20322z) m935p).f66802b;
        } else if (m935p instanceof AbstractC20213bq) {
            throw new IllegalStateException("Cannot be cancelling child in this state: ".concat(String.valueOf(m935p)).toString());
        } else {
            cancellationException = null;
        }
        if (cancellationException instanceof CancellationException) {
            cancellationException2 = cancellationException;
        }
        CancellationException cancellationException3 = cancellationException2;
        JobCancellationException jobCancellationException = cancellationException3;
        if (cancellationException3 == null) {
            jobCancellationException = new JobCancellationException("Parent job is " + m941j(m935p), cancellationException, this);
        }
        return jobCancellationException;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(mo907j() + '{' + m941j(m935p()) + '}');
        sb.append('@');
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        return sb.toString();
    }
}
