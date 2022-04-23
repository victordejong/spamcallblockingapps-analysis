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
import kotlin.Metadata;
import kotlin.c.f;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.p;
import kotlin.v;
import kotlinx.coroutines.bv;
import kotlinx.coroutines.internal.k;
import kotlinx.coroutines.internal.l;
import kotlinx.coroutines.internal.r;
import kotlinx.coroutines.internal.u;
import net.pubnative.lite.sdk.vpaid.enums.EventConstants;
@Metadata(bv = {1, 0, 3}, d1 = {"��è\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0003\n��\n\u0002\u0010 \n��\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0017\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u0001\n\u0002\b\u0013\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\b\n\u0002\b\u0010\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0012\b\u0017\u0018��2\u00020X2\u00020\u00172\u00030\u0081\u00012\u00030Å\u0001:\u0006Ô\u0001Õ\u0001Ö\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0001¢\u0006\u0004\b\u0003\u0010\u0004J'\u0010\u000b\u001a\u00020\u00012\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\tH\u0002¢\u0006\u0004\b\u000b\u0010\fJ%\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u000e\u001a\u00020\r2\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\r0\u000fH\u0002¢\u0006\u0004\b\u0012\u0010\u0013J\u0019\u0010\u0015\u001a\u00020\u00112\b\u0010\u0014\u001a\u0004\u0018\u00010\u0005H\u0014¢\u0006\u0004\b\u0015\u0010\u0016J\u0015\u0010\u001a\u001a\u00020\u00192\u0006\u0010\u0018\u001a\u00020\u0017¢\u0006\u0004\b\u001a\u0010\u001bJ\u0015\u0010\u001e\u001a\u0004\u0018\u00010\u0005H\u0080@ø\u0001��¢\u0006\u0004\b\u001c\u0010\u001dJ\u0015\u0010\u001f\u001a\u0004\u0018\u00010\u0005H\u0082@ø\u0001��¢\u0006\u0004\b\u001f\u0010\u001dJ\u0019\u0010!\u001a\u00020\u00012\b\u0010 \u001a\u0004\u0018\u00010\rH\u0017¢\u0006\u0004\b!\u0010\"J\u001f\u0010!\u001a\u00020\u00112\u000e\u0010 \u001a\n\u0018\u00010#j\u0004\u0018\u0001`$H\u0016¢\u0006\u0004\b!\u0010%J\u0017\u0010&\u001a\u00020\u00012\b\u0010 \u001a\u0004\u0018\u00010\r¢\u0006\u0004\b&\u0010\"J\u0019\u0010)\u001a\u00020\u00012\b\u0010 \u001a\u0004\u0018\u00010\u0005H��¢\u0006\u0004\b'\u0010(J\u0017\u0010*\u001a\u00020\u00112\u0006\u0010 \u001a\u00020\rH\u0016¢\u0006\u0004\b*\u0010+J\u001b\u0010,\u001a\u0004\u0018\u00010\u00052\b\u0010 \u001a\u0004\u0018\u00010\u0005H\u0002¢\u0006\u0004\b,\u0010-J\u0017\u0010.\u001a\u00020\u00012\u0006\u0010 \u001a\u00020\rH\u0002¢\u0006\u0004\b.\u0010\"J\u000f\u00100\u001a\u00020/H\u0014¢\u0006\u0004\b0\u00101J\u0017\u00102\u001a\u00020\u00012\u0006\u0010 \u001a\u00020\rH\u0016¢\u0006\u0004\b2\u0010\"J!\u00105\u001a\u00020\u00112\u0006\u0010\u0014\u001a\u0002032\b\u00104\u001a\u0004\u0018\u00010\u0005H\u0002¢\u0006\u0004\b5\u00106J)\u0010;\u001a\u00020\u00112\u0006\u0010\u0014\u001a\u0002072\u0006\u00109\u001a\u0002082\b\u0010:\u001a\u0004\u0018\u00010\u0005H\u0002¢\u0006\u0004\b;\u0010<J\u0019\u0010=\u001a\u00020\r2\b\u0010 \u001a\u0004\u0018\u00010\u0005H\u0002¢\u0006\u0004\b=\u0010>J(\u0010C\u001a\u00020@2\n\b\u0002\u0010?\u001a\u0004\u0018\u00010/2\n\b\u0002\u0010 \u001a\u0004\u0018\u00010\rH\u0080\b¢\u0006\u0004\bA\u0010BJ#\u0010D\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0014\u001a\u0002072\b\u0010:\u001a\u0004\u0018\u00010\u0005H\u0002¢\u0006\u0004\bD\u0010EJ\u0019\u0010F\u001a\u0004\u0018\u0001082\u0006\u0010\u0014\u001a\u000203H\u0002¢\u0006\u0004\bF\u0010GJ\u0011\u0010H\u001a\u00060#j\u0002`$¢\u0006\u0004\bH\u0010IJ\u0013\u0010J\u001a\u00060#j\u0002`$H\u0016¢\u0006\u0004\bJ\u0010IJ\u0011\u0010M\u001a\u0004\u0018\u00010\u0005H��¢\u0006\u0004\bK\u0010LJ\u000f\u0010N\u001a\u0004\u0018\u00010\r¢\u0006\u0004\bN\u0010OJ'\u0010P\u001a\u0004\u0018\u00010\r2\u0006\u0010\u0014\u001a\u0002072\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\r0\u000fH\u0002¢\u0006\u0004\bP\u0010QJ\u0019\u0010R\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u0014\u001a\u000203H\u0002¢\u0006\u0004\bR\u0010SJ\u0017\u0010U\u001a\u00020\u00012\u0006\u0010T\u001a\u00020\rH\u0014¢\u0006\u0004\bU\u0010\"J\u0017\u0010W\u001a\u00020\u00112\u0006\u0010T\u001a\u00020\rH\u0010¢\u0006\u0004\bV\u0010+J\u0019\u0010\\\u001a\u00020\u00112\b\u0010Y\u001a\u0004\u0018\u00010XH��¢\u0006\u0004\bZ\u0010[JF\u0010e\u001a\u00020d2\u0006\u0010]\u001a\u00020\u00012\u0006\u0010^\u001a\u00020\u00012'\u0010c\u001a#\u0012\u0015\u0012\u0013\u0018\u00010\r¢\u0006\f\b`\u0012\b\ba\u0012\u0004\b\b( \u0012\u0004\u0012\u00020\u00110_j\u0002`b¢\u0006\u0004\be\u0010fJ6\u0010e\u001a\u00020d2'\u0010c\u001a#\u0012\u0015\u0012\u0013\u0018\u00010\r¢\u0006\f\b`\u0012\b\ba\u0012\u0004\b\b( \u0012\u0004\u0012\u00020\u00110_j\u0002`b¢\u0006\u0004\be\u0010gJ\u0013\u0010h\u001a\u00020\u0011H\u0086@ø\u0001��¢\u0006\u0004\bh\u0010\u001dJ\u000f\u0010i\u001a\u00020\u0001H\u0002¢\u0006\u0004\bi\u0010jJ\u0013\u0010k\u001a\u00020\u0011H\u0082@ø\u0001��¢\u0006\u0004\bk\u0010\u001dJ&\u0010n\u001a\u00020m2\u0014\u0010l\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0005\u0012\u0004\u0012\u00020\u00110_H\u0082\b¢\u0006\u0004\bn\u0010oJ\u001b\u0010p\u001a\u0004\u0018\u00010\u00052\b\u0010 \u001a\u0004\u0018\u00010\u0005H\u0002¢\u0006\u0004\bp\u0010-J\u0019\u0010r\u001a\u00020\u00012\b\u0010:\u001a\u0004\u0018\u00010\u0005H��¢\u0006\u0004\bq\u0010(J\u001b\u0010t\u001a\u0004\u0018\u00010\u00052\b\u0010:\u001a\u0004\u0018\u00010\u0005H��¢\u0006\u0004\bs\u0010-J@\u0010u\u001a\u00020\t2'\u0010c\u001a#\u0012\u0015\u0012\u0013\u0018\u00010\r¢\u0006\f\b`\u0012\b\ba\u0012\u0004\b\b( \u0012\u0004\u0012\u00020\u00110_j\u0002`b2\u0006\u0010]\u001a\u00020\u0001H\u0002¢\u0006\u0004\bu\u0010vJ\u000f\u0010x\u001a\u00020/H\u0010¢\u0006\u0004\bw\u00101J\u001f\u0010y\u001a\u00020\u00112\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010 \u001a\u00020\rH\u0002¢\u0006\u0004\by\u0010zJ.\u0010|\u001a\u00020\u0011\"\n\b��\u0010{\u0018\u0001*\u00020\t2\u0006\u0010\b\u001a\u00020\u00072\b\u0010 \u001a\u0004\u0018\u00010\rH\u0082\b¢\u0006\u0004\b|\u0010zJ\u0019\u0010]\u001a\u00020\u00112\b\u0010 \u001a\u0004\u0018\u00010\rH\u0014¢\u0006\u0004\b]\u0010+J\u0019\u0010}\u001a\u00020\u00112\b\u0010\u0014\u001a\u0004\u0018\u00010\u0005H\u0014¢\u0006\u0004\b}\u0010\u0016J\u0010\u0010\u0080\u0001\u001a\u00020\u0011H\u0010¢\u0006\u0004\b~\u0010\u007fJ\u001a\u0010\u0083\u0001\u001a\u00020\u00112\b\u0010\u0082\u0001\u001a\u00030\u0081\u0001¢\u0006\u0006\b\u0083\u0001\u0010\u0084\u0001J\u001b\u0010\u0086\u0001\u001a\u00020\u00112\u0007\u0010\u0014\u001a\u00030\u0085\u0001H\u0002¢\u0006\u0006\b\u0086\u0001\u0010\u0087\u0001J\u001a\u0010\u0088\u0001\u001a\u00020\u00112\u0006\u0010\u0014\u001a\u00020\tH\u0002¢\u0006\u0006\b\u0088\u0001\u0010\u0089\u0001JI\u0010\u008e\u0001\u001a\u00020\u0011\"\u0005\b��\u0010\u008a\u00012\u000e\u0010\u008c\u0001\u001a\t\u0012\u0004\u0012\u00028��0\u008b\u00012\u001d\u0010l\u001a\u0019\b\u0001\u0012\u000b\u0012\t\u0012\u0004\u0012\u00028��0\u008d\u0001\u0012\u0006\u0012\u0004\u0018\u00010\u00050_ø\u0001��¢\u0006\u0006\b\u008e\u0001\u0010\u008f\u0001JX\u0010\u0093\u0001\u001a\u00020\u0011\"\u0004\b��\u0010{\"\u0005\b\u0001\u0010\u008a\u00012\u000e\u0010\u008c\u0001\u001a\t\u0012\u0004\u0012\u00028\u00010\u008b\u00012$\u0010l\u001a \b\u0001\u0012\u0004\u0012\u00028��\u0012\u000b\u0012\t\u0012\u0004\u0012\u00028\u00010\u008d\u0001\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u0090\u0001H��ø\u0001��¢\u0006\u0006\b\u0091\u0001\u0010\u0092\u0001J\u001a\u0010\u0095\u0001\u001a\u00020\u00112\u0006\u0010\n\u001a\u00020\tH��¢\u0006\u0006\b\u0094\u0001\u0010\u0089\u0001JX\u0010\u0097\u0001\u001a\u00020\u0011\"\u0004\b��\u0010{\"\u0005\b\u0001\u0010\u008a\u00012\u000e\u0010\u008c\u0001\u001a\t\u0012\u0004\u0012\u00028\u00010\u008b\u00012$\u0010l\u001a \b\u0001\u0012\u0004\u0012\u00028��\u0012\u000b\u0012\t\u0012\u0004\u0012\u00028\u00010\u008d\u0001\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u0090\u0001H��ø\u0001��¢\u0006\u0006\b\u0096\u0001\u0010\u0092\u0001J\u000f\u0010\u0098\u0001\u001a\u00020\u0001¢\u0006\u0005\b\u0098\u0001\u0010jJ\u001d\u0010\u009a\u0001\u001a\u00030\u0099\u00012\b\u0010\u0014\u001a\u0004\u0018\u00010\u0005H\u0002¢\u0006\u0006\b\u009a\u0001\u0010\u009b\u0001J\u001c\u0010\u009c\u0001\u001a\u00020/2\b\u0010\u0014\u001a\u0004\u0018\u00010\u0005H\u0002¢\u0006\u0006\b\u009c\u0001\u0010\u009d\u0001J\u0011\u0010\u009e\u0001\u001a\u00020/H\u0007¢\u0006\u0005\b\u009e\u0001\u00101J\u0011\u0010\u009f\u0001\u001a\u00020/H\u0016¢\u0006\u0005\b\u009f\u0001\u00101J$\u0010 \u0001\u001a\u00020\u00012\u0006\u0010\u0014\u001a\u0002032\b\u00104\u001a\u0004\u0018\u00010\u0005H\u0002¢\u0006\u0006\b \u0001\u0010¡\u0001J\"\u0010¢\u0001\u001a\u00020\u00012\u0006\u0010\u0014\u001a\u0002032\u0006\u0010\u000e\u001a\u00020\rH\u0002¢\u0006\u0006\b¢\u0001\u0010£\u0001J(\u0010¤\u0001\u001a\u0004\u0018\u00010\u00052\b\u0010\u0014\u001a\u0004\u0018\u00010\u00052\b\u0010:\u001a\u0004\u0018\u00010\u0005H\u0002¢\u0006\u0006\b¤\u0001\u0010¥\u0001J&\u0010¦\u0001\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0014\u001a\u0002032\b\u0010:\u001a\u0004\u0018\u00010\u0005H\u0002¢\u0006\u0006\b¦\u0001\u0010§\u0001J-\u0010¨\u0001\u001a\u00020\u00012\u0006\u0010\u0014\u001a\u0002072\u0006\u0010\u0018\u001a\u0002082\b\u0010:\u001a\u0004\u0018\u00010\u0005H\u0082\u0010¢\u0006\u0006\b¨\u0001\u0010©\u0001J\u0019\u0010«\u0001\u001a\u0004\u0018\u000108*\u00030ª\u0001H\u0002¢\u0006\u0006\b«\u0001\u0010¬\u0001J\u001f\u0010\u00ad\u0001\u001a\u00020\u0011*\u00020\u00072\b\u0010 \u001a\u0004\u0018\u00010\rH\u0002¢\u0006\u0005\b\u00ad\u0001\u0010zJ&\u0010®\u0001\u001a\u00060#j\u0002`$*\u00020\r2\n\b\u0002\u0010?\u001a\u0004\u0018\u00010/H\u0004¢\u0006\u0006\b®\u0001\u0010¯\u0001R\u001d\u0010³\u0001\u001a\t\u0012\u0004\u0012\u00020X0°\u00018F@\u0006¢\u0006\b\u001a\u0006\b±\u0001\u0010²\u0001R\u001a\u0010µ\u0001\u001a\u0004\u0018\u00010\r8D@\u0004X\u0084\u0004¢\u0006\u0007\u001a\u0005\b´\u0001\u0010OR\u0018\u0010·\u0001\u001a\u00020\u00018D@\u0004X\u0084\u0004¢\u0006\u0007\u001a\u0005\b¶\u0001\u0010jR\u0018\u0010¹\u0001\u001a\u00020\u00018P@\u0010X\u0090\u0004¢\u0006\u0007\u001a\u0005\b¸\u0001\u0010jR\u0018\u0010º\u0001\u001a\u00020\u00018V@\u0016X\u0096\u0004¢\u0006\u0007\u001a\u0005\bº\u0001\u0010jR\u0015\u0010»\u0001\u001a\u00020\u00018F@\u0006¢\u0006\u0007\u001a\u0005\b»\u0001\u0010jR\u0015\u0010¼\u0001\u001a\u00020\u00018F@\u0006¢\u0006\u0007\u001a\u0005\b¼\u0001\u0010jR\u0015\u0010½\u0001\u001a\u00020\u00018F@\u0006¢\u0006\u0007\u001a\u0005\b½\u0001\u0010jR\u0018\u0010¾\u0001\u001a\u00020\u00018T@\u0014X\u0094\u0004¢\u0006\u0007\u001a\u0005\b¾\u0001\u0010jR\u001b\u0010Â\u0001\u001a\u0007\u0012\u0002\b\u00030¿\u00018F@\u0006¢\u0006\b\u001a\u0006\bÀ\u0001\u0010Á\u0001R\u0018\u0010Ä\u0001\u001a\u00020\u00018P@\u0010X\u0090\u0004¢\u0006\u0007\u001a\u0005\bÃ\u0001\u0010jR\u0017\u0010È\u0001\u001a\u00030Å\u00018F@\u0006¢\u0006\b\u001a\u0006\bÆ\u0001\u0010Ç\u0001R.\u0010Î\u0001\u001a\u0004\u0018\u00010\u00192\t\u0010É\u0001\u001a\u0004\u0018\u00010\u00198@@@X\u0080\u000e¢\u0006\u0010\u001a\u0006\bÊ\u0001\u0010Ë\u0001\"\u0006\bÌ\u0001\u0010Í\u0001R\u0019\u0010\u0014\u001a\u0004\u0018\u00010\u00058@@��X\u0080\u0004¢\u0006\u0007\u001a\u0005\bÏ\u0001\u0010LR \u0010Ñ\u0001\u001a\u0004\u0018\u00010\r*\u0004\u0018\u00010\u00058B@\u0002X\u0082\u0004¢\u0006\u0007\u001a\u0005\bÐ\u0001\u0010>R\u001d\u0010Ò\u0001\u001a\u00020\u0001*\u0002038B@\u0002X\u0082\u0004¢\u0006\b\u001a\u0006\bÒ\u0001\u0010Ó\u0001\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006×\u0001"}, d2 = {"Lkotlinx/coroutines/JobSupport;", "", "active", "<init>", "(Z)V", "", "expect", "Lkotlinx/coroutines/NodeList;", "list", "Lkotlinx/coroutines/JobNode;", "node", "addLastAtomic", "(Ljava/lang/Object;Lkotlinx/coroutines/NodeList;Lkotlinx/coroutines/JobNode;)Z", "", "rootCause", "", "exceptions", "", "addSuppressedExceptions", "(Ljava/lang/Throwable;Ljava/util/List;)V", VerizonSSPWaterfallProvider.USER_DATA_STATE_KEY, "afterCompletion", "(Ljava/lang/Object;)V", "Lkotlinx/coroutines/ChildJob;", "child", "Lkotlinx/coroutines/ChildHandle;", "attachChild", "(Lkotlinx/coroutines/ChildJob;)Lkotlinx/coroutines/ChildHandle;", "awaitInternal$kotlinx_coroutines_core", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "awaitInternal", "awaitSuspend", "cause", "cancel", "(Ljava/lang/Throwable;)Z", "Ljava/util/concurrent/CancellationException;", "Lkotlinx/coroutines/CancellationException;", "(Ljava/util/concurrent/CancellationException;)V", "cancelCoroutine", "cancelImpl$kotlinx_coroutines_core", "(Ljava/lang/Object;)Z", "cancelImpl", "cancelInternal", "(Ljava/lang/Throwable;)V", "cancelMakeCompleting", "(Ljava/lang/Object;)Ljava/lang/Object;", "cancelParent", "", "cancellationExceptionMessage", "()Ljava/lang/String;", "childCancelled", "Lkotlinx/coroutines/Incomplete;", "update", "completeStateFinalization", "(Lkotlinx/coroutines/Incomplete;Ljava/lang/Object;)V", "Lkotlinx/coroutines/JobSupport$Finishing;", "Lkotlinx/coroutines/ChildHandleNode;", "lastChild", "proposedUpdate", "continueCompleting", "(Lkotlinx/coroutines/JobSupport$Finishing;Lkotlinx/coroutines/ChildHandleNode;Ljava/lang/Object;)V", "createCauseException", "(Ljava/lang/Object;)Ljava/lang/Throwable;", "message", "Lkotlinx/coroutines/JobCancellationException;", "defaultCancellationException$kotlinx_coroutines_core", "(Ljava/lang/String;Ljava/lang/Throwable;)Lkotlinx/coroutines/JobCancellationException;", "defaultCancellationException", "finalizeFinishingState", "(Lkotlinx/coroutines/JobSupport$Finishing;Ljava/lang/Object;)Ljava/lang/Object;", "firstChild", "(Lkotlinx/coroutines/Incomplete;)Lkotlinx/coroutines/ChildHandleNode;", "getCancellationException", "()Ljava/util/concurrent/CancellationException;", "getChildJobCancellationCause", "getCompletedInternal$kotlinx_coroutines_core", "()Ljava/lang/Object;", "getCompletedInternal", "getCompletionExceptionOrNull", "()Ljava/lang/Throwable;", "getFinalRootCause", "(Lkotlinx/coroutines/JobSupport$Finishing;Ljava/util/List;)Ljava/lang/Throwable;", "getOrPromoteCancellingList", "(Lkotlinx/coroutines/Incomplete;)Lkotlinx/coroutines/NodeList;", "exception", "handleJobException", "handleOnCompletionException$kotlinx_coroutines_core", "handleOnCompletionException", "Lkotlinx/coroutines/Job;", "parent", "initParentJobInternal$kotlinx_coroutines_core", "(Lkotlinx/coroutines/Job;)V", "initParentJobInternal", "onCancelling", "invokeImmediately", "Lkotlin/Function1;", "Lkotlin/ParameterName;", "name", "Lkotlinx/coroutines/CompletionHandler;", "handler", "Lkotlinx/coroutines/DisposableHandle;", "invokeOnCompletion", "(ZZLkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/DisposableHandle;", "(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/DisposableHandle;", "join", "joinInternal", "()Z", "joinSuspend", "block", "", "loopOnState", "(Lkotlin/jvm/functions/Function1;)Ljava/lang/Void;", "makeCancelling", "makeCompleting$kotlinx_coroutines_core", "makeCompleting", "makeCompletingOnce$kotlinx_coroutines_core", "makeCompletingOnce", "makeNode", "(Lkotlin/jvm/functions/Function1;Z)Lkotlinx/coroutines/JobNode;", "nameString$kotlinx_coroutines_core", "nameString", "notifyCancelling", "(Lkotlinx/coroutines/NodeList;Ljava/lang/Throwable;)V", "T", "notifyHandlers", "onCompletionInternal", "onStartInternal$kotlinx_coroutines_core", "()V", "onStartInternal", "Lkotlinx/coroutines/ParentJob;", "parentJob", "parentCancelled", "(Lkotlinx/coroutines/ParentJob;)V", "Lkotlinx/coroutines/Empty;", "promoteEmptyToNodeList", "(Lkotlinx/coroutines/Empty;)V", "promoteSingleToNodeList", "(Lkotlinx/coroutines/JobNode;)V", "R", "Lkotlinx/coroutines/selects/SelectInstance;", "select", "Lkotlin/coroutines/Continuation;", "registerSelectClause0", "(Lkotlinx/coroutines/selects/SelectInstance;Lkotlin/jvm/functions/Function1;)V", "Lkotlin/Function2;", "registerSelectClause1Internal$kotlinx_coroutines_core", "(Lkotlinx/coroutines/selects/SelectInstance;Lkotlin/jvm/functions/Function2;)V", "registerSelectClause1Internal", "removeNode$kotlinx_coroutines_core", "removeNode", "selectAwaitCompletion$kotlinx_coroutines_core", "selectAwaitCompletion", EventConstants.START, "", "startInternal", "(Ljava/lang/Object;)I", "stateString", "(Ljava/lang/Object;)Ljava/lang/String;", "toDebugString", "toString", "tryFinalizeSimpleState", "(Lkotlinx/coroutines/Incomplete;Ljava/lang/Object;)Z", "tryMakeCancelling", "(Lkotlinx/coroutines/Incomplete;Ljava/lang/Throwable;)Z", "tryMakeCompleting", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", "tryMakeCompletingSlowPath", "(Lkotlinx/coroutines/Incomplete;Ljava/lang/Object;)Ljava/lang/Object;", "tryWaitForChild", "(Lkotlinx/coroutines/JobSupport$Finishing;Lkotlinx/coroutines/ChildHandleNode;Ljava/lang/Object;)Z", "Lkotlinx/coroutines/internal/LockFreeLinkedListNode;", "nextChild", "(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;)Lkotlinx/coroutines/ChildHandleNode;", "notifyCompletion", "toCancellationException", "(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/util/concurrent/CancellationException;", "Lkotlin/sequences/Sequence;", "getChildren", "()Lkotlin/sequences/Sequence;", VerizonSSPWaterfallProvider.USER_DATA_CHILDREN_KEY, "getCompletionCause", "completionCause", "getCompletionCauseHandled", "completionCauseHandled", "getHandlesException$kotlinx_coroutines_core", "handlesException", "isActive", "isCancelled", "isCompleted", "isCompletedExceptionally", "isScopedCoroutine", "Lkotlin/coroutines/CoroutineContext$Key;", "getKey", "()Lkotlin/coroutines/CoroutineContext$Key;", "key", "getOnCancelComplete$kotlinx_coroutines_core", "onCancelComplete", "Lkotlinx/coroutines/selects/SelectClause0;", "getOnJoin", "()Lkotlinx/coroutines/selects/SelectClause0;", "onJoin", "value", "getParentHandle$kotlinx_coroutines_core", "()Lkotlinx/coroutines/ChildHandle;", "setParentHandle$kotlinx_coroutines_core", "(Lkotlinx/coroutines/ChildHandle;)V", "parentHandle", "getState$kotlinx_coroutines_core", "getExceptionOrNull", "exceptionOrNull", "isCancelling", "(Lkotlinx/coroutines/Incomplete;)Z", "AwaitContinuation", "ChildCompletion", "Finishing", "kotlinx-coroutines-core"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes5-dex2jar.jar:kotlinx/coroutines/ca.class */
public class ca implements bv, ci, v {

    /* renamed from: d  reason: collision with root package name */
    static final /* synthetic */ AtomicReferenceFieldUpdater f38768d = AtomicReferenceFieldUpdater.newUpdater(ca.class, Object.class, "_state");
    private volatile /* synthetic */ Object _parentHandle;
    private volatile /* synthetic */ Object _state;

    @Metadata(bv = {1, 0, 3}, d1 = {"��,\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0003\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n��\b\u0002\u0018��*\u0004\b��\u0010\u00012\b\u0012\u0004\u0012\u0002H\u00010\u0002B\u001b\u0012\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028��0\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007J\u0010\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0016J\b\u0010\f\u001a\u00020\rH\u0014R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n��¨\u0006\u000e"}, d2 = {"Lkotlinx/coroutines/JobSupport$AwaitContinuation;", "T", "Lkotlinx/coroutines/CancellableContinuationImpl;", "delegate", "Lkotlin/coroutines/Continuation;", "job", "Lkotlinx/coroutines/JobSupport;", "(Lkotlin/coroutines/Continuation;Lkotlinx/coroutines/JobSupport;)V", "getContinuationCancellationCause", "", "parent", "Lkotlinx/coroutines/Job;", "nameString", "", "kotlinx-coroutines-core"}, k = 1, mv = {1, 4, 2})
    /* loaded from: classes5-dex2jar.jar:kotlinx/coroutines/ca$a.class */
    static final class a<T> extends o<T> {

        /* renamed from: c  reason: collision with root package name */
        private final ca f38769c;

        public a(kotlin.c.d<? super T> dVar, ca caVar) {
            super(dVar, 1);
            this.f38769c = caVar;
        }

        @Override // kotlinx.coroutines.o
        public final Throwable a(bv bvVar) {
            Throwable th;
            Object p = this.f38769c.p();
            return (!(p instanceof c) || (th = (Throwable) ((c) p)._rootCause) == null) ? p instanceof z ? ((z) p).f38868b : bvVar.m() : th;
        }

        @Override // kotlinx.coroutines.o
        protected final String j() {
            return "AwaitContinuation";
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Metadata(bv = {1, 0, 3}, d1 = {"��0\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u0002\n��\n\u0002\u0010\u0003\n��\b\u0002\u0018��2\u00020\u0001B'\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\b\u0010\b\u001a\u0004\u0018\u00010\t¢\u0006\u0002\u0010\nJ\u0013\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0096\u0002R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n��R\u0010\u0010\b\u001a\u0004\u0018\u00010\tX\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n��¨\u0006\u000f"}, d2 = {"Lkotlinx/coroutines/JobSupport$ChildCompletion;", "Lkotlinx/coroutines/JobNode;", "parent", "Lkotlinx/coroutines/JobSupport;", VerizonSSPWaterfallProvider.USER_DATA_STATE_KEY, "Lkotlinx/coroutines/JobSupport$Finishing;", "child", "Lkotlinx/coroutines/ChildHandleNode;", "proposedUpdate", "", "(Lkotlinx/coroutines/JobSupport;Lkotlinx/coroutines/JobSupport$Finishing;Lkotlinx/coroutines/ChildHandleNode;Ljava/lang/Object;)V", "invoke", "", "cause", "", "kotlinx-coroutines-core"}, k = 1, mv = {1, 4, 2})
    /* loaded from: classes5-dex2jar.jar:kotlinx/coroutines/ca$b.class */
    public static final class b extends bz {

        /* renamed from: a  reason: collision with root package name */
        private final ca f38770a;

        /* renamed from: b  reason: collision with root package name */
        private final c f38771b;
        private final u f;
        private final Object g;

        public b(ca caVar, c cVar, u uVar, Object obj) {
            this.f38770a = caVar;
            this.f38771b = cVar;
            this.f = uVar;
            this.g = obj;
        }

        @Override // kotlinx.coroutines.ab
        public final void a(Throwable th) {
            ca.a(this.f38770a, this.f38771b, this.f, this.g);
        }

        @Override // kotlin.jvm.functions.Function1
        public final /* synthetic */ v invoke(Throwable th) {
            a(th);
            return v.f38654a;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Metadata(bv = {1, 0, 3}, d1 = {"��L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n��\n\u0002\u0010\u0003\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010��\n\u0002\b\u0013\n\u0002\u0018\u0002\n\u0002\u0018\u0002\b\u0002\u0018��2\u00060\u0018j\u0002`,2\u00020-B!\u0012\u0006\u0010\u0002\u001a\u00020\u0001\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b\u0007\u0010\bJ\u0015\u0010\u000b\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\u0005¢\u0006\u0004\b\u000b\u0010\fJ\u001f\u0010\u000f\u001a\u0012\u0012\u0004\u0012\u00020\u00050\rj\b\u0012\u0004\u0012\u00020\u0005`\u000eH\u0002¢\u0006\u0004\b\u000f\u0010\u0010J\u001d\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00050\u00122\b\u0010\u0011\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b\u0013\u0010\u0014J\u000f\u0010\u0016\u001a\u00020\u0015H\u0016¢\u0006\u0004\b\u0016\u0010\u0017R(\u0010\u001e\u001a\u0004\u0018\u00010\u00182\b\u0010\u0019\u001a\u0004\u0018\u00010\u00188B@BX\u0082\u000e¢\u0006\f\u001a\u0004\b\u001a\u0010\u001b\"\u0004\b\u001c\u0010\u001dR\u0016\u0010\u001f\u001a\u00020\u00038V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u001f\u0010 R\u0013\u0010!\u001a\u00020\u00038F@\u0006¢\u0006\u0006\u001a\u0004\b!\u0010 R$\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0019\u001a\u00020\u00038F@FX\u0086\u000e¢\u0006\f\u001a\u0004\b\u0004\u0010 \"\u0004\b\"\u0010#R\u0013\u0010$\u001a\u00020\u00038F@\u0006¢\u0006\u0006\u001a\u0004\b$\u0010 R\u001c\u0010\u0002\u001a\u00020\u00018\u0016@\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u0002\u0010%\u001a\u0004\b&\u0010'R(\u0010\u0006\u001a\u0004\u0018\u00010\u00052\b\u0010\u0019\u001a\u0004\u0018\u00010\u00058F@FX\u0086\u000e¢\u0006\f\u001a\u0004\b(\u0010)\"\u0004\b*\u0010\f¨\u0006+"}, d2 = {"Lkotlinx/coroutines/JobSupport$Finishing;", "Lkotlinx/coroutines/NodeList;", "list", "", "isCompleting", "", "rootCause", "<init>", "(Lkotlinx/coroutines/NodeList;ZLjava/lang/Throwable;)V", "exception", "", "addExceptionLocked", "(Ljava/lang/Throwable;)V", "Ljava/util/ArrayList;", "Lkotlin/collections/ArrayList;", "allocateList", "()Ljava/util/ArrayList;", "proposedException", "", "sealLocked", "(Ljava/lang/Throwable;)Ljava/util/List;", "", "toString", "()Ljava/lang/String;", "", "value", "getExceptionsHolder", "()Ljava/lang/Object;", "setExceptionsHolder", "(Ljava/lang/Object;)V", "exceptionsHolder", "isActive", "()Z", "isCancelling", "setCompleting", "(Z)V", "isSealed", "Lkotlinx/coroutines/NodeList;", "getList", "()Lkotlinx/coroutines/NodeList;", "getRootCause", "()Ljava/lang/Throwable;", "setRootCause", "kotlinx-coroutines-core", "Lkotlinx/coroutines/internal/SynchronizedObject;", "Lkotlinx/coroutines/Incomplete;"}, k = 1, mv = {1, 4, 2})
    /* loaded from: classes5-dex2jar.jar:kotlinx/coroutines/ca$c.class */
    public static final class c implements bq {
        volatile /* synthetic */ Object _exceptionsHolder = null;
        volatile /* synthetic */ int _isCompleting;
        volatile /* synthetic */ Object _rootCause;

        /* renamed from: a  reason: collision with root package name */
        final cf f38772a;

        public c(cf cfVar, boolean z, Throwable th) {
            this.f38772a = cfVar;
            this._isCompleting = z ? 1 : 0;
            this._rootCause = th;
        }

        static ArrayList<Throwable> e() {
            return new ArrayList<>(4);
        }

        /* JADX WARN: Multi-variable type inference failed */
        public final void a(Throwable th) {
            Throwable th2 = (Throwable) this._rootCause;
            if (th2 == null) {
                this._rootCause = th;
            } else if (th != th2) {
                Object obj = this._exceptionsHolder;
                if (obj == null) {
                    this._exceptionsHolder = th;
                } else if (obj instanceof Throwable) {
                    if (th != obj) {
                        ArrayList<Throwable> e = e();
                        e.add(obj);
                        e.add(th);
                        v vVar = v.f38654a;
                        this._exceptionsHolder = e;
                    }
                } else if (obj instanceof ArrayList) {
                    ((ArrayList) obj).add(th);
                } else {
                    throw new IllegalStateException("State is ".concat(String.valueOf(obj)).toString());
                }
            }
        }

        @Override // kotlinx.coroutines.bq
        public final cf ax_() {
            return this.f38772a;
        }

        @Override // kotlinx.coroutines.bq
        public final boolean b() {
            return ((Throwable) this._rootCause) == null;
        }

        public final boolean c() {
            kotlinx.coroutines.internal.v vVar;
            Object obj = this._exceptionsHolder;
            vVar = cb.e;
            return obj == vVar;
        }

        public final boolean d() {
            return ((Throwable) this._rootCause) != null;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r1v5, types: [int, boolean] */
        public final String toString() {
            return "Finishing[cancelling=" + d() + ", completing=" + ((boolean) this._isCompleting) + ", rootCause=" + ((Throwable) this._rootCause) + ", exceptions=" + this._exceptionsHolder + ", list=" + this.f38772a + ']';
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u001b\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��*\u0001��\b\n\u0018��2\u00020\u0001J\u0016\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\u0010\u0004\u001a\u00060\u0005j\u0002`\u0006H\u0016¨\u0006\u0007¸\u0006��"}, d2 = {"kotlinx/coroutines/internal/LockFreeLinkedListNode$makeCondAddOp$1", "Lkotlinx/coroutines/internal/LockFreeLinkedListNode$CondAddOp;", "prepare", "", "affected", "Lkotlinx/coroutines/internal/LockFreeLinkedListNode;", "Lkotlinx/coroutines/internal/Node;", "kotlinx-coroutines-core"}, k = 1, mv = {1, 4, 2})
    /* loaded from: classes5-dex2jar.jar:kotlinx/coroutines/ca$d.class */
    public static final class d extends l.a {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ l f38773a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ ca f38774b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ Object f38775c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public d(l lVar, l lVar2, ca caVar, Object obj) {
            super(lVar2);
            this.f38773a = lVar;
            this.f38774b = caVar;
            this.f38775c = obj;
        }

        @Override // kotlinx.coroutines.internal.c
        public final /* synthetic */ Object a() {
            if (this.f38774b.p() == this.f38775c) {
                return null;
            }
            return k.a();
        }
    }

    public ca(boolean z) {
        this._state = z ? cb.g : cb.f;
        this._parentHandle = null;
    }

    private final Object a(Object obj, Object obj2) {
        kotlinx.coroutines.internal.v vVar;
        kotlinx.coroutines.internal.v vVar2;
        if (!(obj instanceof bq)) {
            vVar2 = cb.f38777b;
            return vVar2;
        } else if ((!(obj instanceof be) && !(obj instanceof bz)) || (obj instanceof u) || (obj2 instanceof z)) {
            return c((bq) obj, obj2);
        } else {
            if (a((bq) obj, obj2)) {
                return obj2;
            }
            vVar = cb.f38778c;
            return vVar;
        }
    }

    private final Object a(c cVar, Object obj) {
        ArrayList arrayList;
        kotlinx.coroutines.internal.v vVar;
        Throwable a2;
        if (ao.a()) {
            if (!(p() == cVar)) {
                throw new AssertionError();
            }
        }
        if (ao.a() && !(!cVar.c())) {
            throw new AssertionError();
        } else if (!ao.a() || cVar._isCompleting != 0) {
            z zVar = (z) (!(obj instanceof z) ? null : obj);
            Throwable th = zVar != null ? zVar.f38868b : null;
            synchronized (cVar) {
                cVar.d();
                Object obj2 = cVar._exceptionsHolder;
                if (obj2 == null) {
                    arrayList = c.e();
                } else if (obj2 instanceof Throwable) {
                    arrayList = c.e();
                    arrayList.add(obj2);
                } else if (obj2 instanceof ArrayList) {
                    arrayList = (ArrayList) obj2;
                } else {
                    throw new IllegalStateException("State is ".concat(String.valueOf(obj2)).toString());
                }
                Throwable th2 = (Throwable) cVar._rootCause;
                if (th2 != null) {
                    arrayList.add(0, th2);
                }
                if (th != null && (!p.a(th, th2))) {
                    arrayList.add(th);
                }
                vVar = cb.e;
                cVar._exceptionsHolder = vVar;
                ArrayList arrayList2 = arrayList;
                a2 = a(cVar, (List<? extends Throwable>) arrayList2);
                if (a2 != null) {
                    a(a2, (List<? extends Throwable>) arrayList2);
                }
            }
            if (!(a2 == null || a2 == th)) {
                obj = new z(a2, false, 2, null);
            }
            if (a2 != null) {
                boolean z = true;
                if (!d(a2)) {
                    z = c(a2);
                }
                if (z) {
                    Objects.requireNonNull(obj, "null cannot be cast to non-null type kotlinx.coroutines.CompletedExceptionally");
                    ((z) obj).a();
                }
            }
            a(obj);
            boolean compareAndSet = f38768d.compareAndSet(this, cVar, cb.a(obj));
            if (!ao.a() || compareAndSet) {
                b(cVar, obj);
                return obj;
            }
            throw new AssertionError();
        } else {
            throw new AssertionError();
        }
    }

    private final Throwable a(c cVar, List<? extends Throwable> list) {
        Object obj;
        Object obj2 = null;
        if (!list.isEmpty()) {
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
            Throwable th = (Throwable) obj;
            if (th != null) {
                return th;
            }
            Throwable th2 = (Throwable) list.get(0);
            if (th2 instanceof TimeoutCancellationException) {
                Iterator<T> it3 = list2.iterator();
                while (it3.hasNext()) {
                    obj2 = it3.next();
                    Throwable th3 = (Throwable) obj2;
                    if (th3 != th2 && (th3 instanceof TimeoutCancellationException)) {
                        break;
                    }
                }
                Throwable th4 = (Throwable) obj2;
                if (th4 != null) {
                    return th4;
                }
            }
            return th2;
        } else if (cVar.d()) {
            return new JobCancellationException(i(), null, this);
        } else {
            return null;
        }
    }

    private CancellationException a(Throwable th, String str) {
        CancellationException cancellationException = (CancellationException) (!(th instanceof CancellationException) ? null : th);
        JobCancellationException jobCancellationException = cancellationException;
        if (cancellationException == null) {
            String str2 = str;
            if (str == null) {
                str2 = i();
            }
            jobCancellationException = new JobCancellationException(str2, th, this);
        }
        return jobCancellationException;
    }

    private final cf a(bq bqVar) {
        cf ax_ = bqVar.ax_();
        if (ax_ != null) {
            return ax_;
        }
        if (bqVar instanceof be) {
            return new cf();
        }
        if (bqVar instanceof bz) {
            a((bz) bqVar);
            return null;
        }
        throw new IllegalStateException("State should have list: ".concat(String.valueOf(bqVar)).toString());
    }

    private static u a(l lVar) {
        l lVar2;
        while (true) {
            lVar2 = lVar;
            if (lVar.d()) {
                lVar = lVar.g();
            }
        }
        while (true) {
            l a2 = k.a(lVar2.e());
            lVar2 = a2;
            if (!a2.d()) {
                if (a2 instanceof u) {
                    return (u) a2;
                }
                lVar2 = a2;
                if (a2 instanceof cf) {
                    return null;
                }
            }
        }
    }

    private static void a(Throwable th, List<? extends Throwable> list) {
        if (list.size() > 1) {
            Set newSetFromMap = Collections.newSetFromMap(new IdentityHashMap(list.size()));
            Throwable a2 = !ao.c() ? th : u.a(th);
            for (Throwable th2 : list) {
                if (ao.c()) {
                    th2 = u.a(th2);
                }
                if (th2 != th && th2 != a2 && !(th2 instanceof CancellationException) && newSetFromMap.add(th2)) {
                    kotlin.b.a(th, th2);
                }
            }
        }
    }

    private final void a(bz bzVar) {
        bzVar.a(new cf());
        f38768d.compareAndSet(this, bzVar, k.a(bzVar.e()));
    }

    public static final /* synthetic */ void a(ca caVar, c cVar, u uVar, Object obj) {
        if (ao.a()) {
            if (!(caVar.p() == cVar)) {
                throw new AssertionError();
            }
        }
        u a2 = a((l) uVar);
        if (a2 == null || !caVar.a(cVar, a2, obj)) {
            caVar.d(caVar.a(cVar, obj));
        }
    }

    private final void a(cf cfVar, Throwable th) {
        cf cfVar2 = cfVar;
        Object e = cfVar2.e();
        Objects.requireNonNull(e, "null cannot be cast to non-null type kotlinx.coroutines.internal.Node /* = kotlinx.coroutines.internal.LockFreeLinkedListNode */");
        CompletionHandlerException completionHandlerException = null;
        for (l lVar = (l) e; !p.a(lVar, cfVar2); lVar = lVar.f()) {
            completionHandlerException = completionHandlerException;
            if (lVar instanceof bw) {
                bz bzVar = (bz) lVar;
                try {
                    bzVar.a(th);
                    completionHandlerException = completionHandlerException;
                } catch (Throwable th2) {
                    if (completionHandlerException != null) {
                        kotlin.b.a(completionHandlerException, th2);
                        completionHandlerException = completionHandlerException;
                        if (completionHandlerException != null) {
                        }
                    }
                    completionHandlerException = new CompletionHandlerException("Exception in completion handler " + bzVar + " for " + this, th2);
                    v vVar = v.f38654a;
                }
            }
        }
        if (completionHandlerException != null) {
            a((Throwable) completionHandlerException);
        }
        d(th);
    }

    private final boolean a(Object obj, cf cfVar, bz bzVar) {
        char c2;
        cf cfVar2 = cfVar;
        bz bzVar2 = bzVar;
        d dVar = new d(bzVar2, bzVar2, this, obj);
        do {
            l g = cfVar2.g();
            l.e.lazySet(bzVar2, g);
            l.f38826d.lazySet(bzVar2, cfVar2);
            dVar.f38827d = cfVar2;
            c2 = !l.f38826d.compareAndSet(g, cfVar2, dVar) ? (char) 0 : dVar.a(g) == null ? (char) 1 : (char) 2;
            if (c2 == 1) {
                return true;
            }
        } while (c2 != 2);
        return false;
    }

    private final boolean a(bq bqVar, Object obj) {
        if (ao.a()) {
            if (!((bqVar instanceof be) || (bqVar instanceof bz))) {
                throw new AssertionError();
            }
        }
        if (ao.a() && !(!(obj instanceof z))) {
            throw new AssertionError();
        } else if (!f38768d.compareAndSet(this, bqVar, cb.a(obj))) {
            return false;
        } else {
            a(obj);
            b(bqVar, obj);
            return true;
        }
    }

    private final boolean a(c cVar, u uVar, Object obj) {
        while (bv.a.a(uVar.f38859a, false, false, new b(this, cVar, uVar, obj), 1) == cg.f38780a) {
            u a2 = a((l) uVar);
            uVar = a2;
            if (a2 == null) {
                return false;
            }
        }
        return true;
    }

    private final void b(bq bqVar, Object obj) {
        t tVar = (t) this._parentHandle;
        if (tVar != null) {
            tVar.a();
            this._parentHandle = cg.f38780a;
        }
        boolean z = obj instanceof z;
        Throwable th = null;
        if (!z) {
            obj = null;
        }
        z zVar = (z) obj;
        if (zVar != null) {
            th = zVar.f38868b;
        }
        if (bqVar instanceof bz) {
            try {
                ((bz) bqVar).a(th);
            } catch (Throwable th2) {
                a((Throwable) new CompletionHandlerException("Exception in completion handler " + bqVar + " for " + this, th2));
            }
        } else {
            cf ax_ = bqVar.ax_();
            if (ax_ != null) {
                b(ax_, th);
            }
        }
    }

    private final void b(cf cfVar, Throwable th) {
        cf cfVar2 = cfVar;
        Object e = cfVar2.e();
        Objects.requireNonNull(e, "null cannot be cast to non-null type kotlinx.coroutines.internal.Node /* = kotlinx.coroutines.internal.LockFreeLinkedListNode */");
        CompletionHandlerException completionHandlerException = null;
        for (l lVar = (l) e; !p.a(lVar, cfVar2); lVar = lVar.f()) {
            completionHandlerException = completionHandlerException;
            if (lVar instanceof bz) {
                bz bzVar = (bz) lVar;
                try {
                    bzVar.a(th);
                    completionHandlerException = completionHandlerException;
                } catch (Throwable th2) {
                    if (completionHandlerException != null) {
                        kotlin.b.a(completionHandlerException, th2);
                        completionHandlerException = completionHandlerException;
                        if (completionHandlerException != null) {
                        }
                    }
                    completionHandlerException = new CompletionHandlerException("Exception in completion handler " + bzVar + " for " + this, th2);
                    v vVar = v.f38654a;
                }
            }
        }
        if (completionHandlerException != null) {
            a((Throwable) completionHandlerException);
        }
    }

    private final int c(Object obj) {
        be beVar;
        if (obj instanceof be) {
            if (((be) obj).f38733a) {
                return 0;
            }
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f38768d;
            beVar = cb.g;
            if (!atomicReferenceFieldUpdater.compareAndSet(this, obj, beVar)) {
                return -1;
            }
            h();
            return 1;
        } else if (!(obj instanceof bp)) {
            return 0;
        } else {
            if (!f38768d.compareAndSet(this, obj, ((bp) obj).f38752a)) {
                return -1;
            }
            h();
            return 1;
        }
    }

    private final Object c(bq bqVar, Object obj) {
        kotlinx.coroutines.internal.v vVar;
        kotlinx.coroutines.internal.v vVar2;
        kotlinx.coroutines.internal.v vVar3;
        cf a2 = a(bqVar);
        if (a2 == null) {
            vVar3 = cb.f38778c;
            return vVar3;
        }
        boolean z = bqVar instanceof c;
        u uVar = null;
        c cVar = (c) (!z ? null : bqVar);
        c cVar2 = cVar;
        if (cVar == null) {
            cVar2 = new c(a2, false, null);
        }
        synchronized (cVar2) {
            if (cVar2._isCompleting != 0) {
                vVar2 = cb.f38777b;
                return vVar2;
            }
            cVar2._isCompleting = 1;
            if (cVar2 == bqVar || f38768d.compareAndSet(this, bqVar, cVar2)) {
                if (ao.a() && !(!cVar2.c())) {
                    throw new AssertionError();
                }
                boolean d2 = cVar2.d();
                z zVar = (z) (!(obj instanceof z) ? null : obj);
                if (zVar != null) {
                    cVar2.a(zVar.f38868b);
                }
                Throwable th = (Throwable) cVar2._rootCause;
                if (!(true ^ d2)) {
                    th = null;
                }
                v vVar4 = v.f38654a;
                if (th != null) {
                    a(a2, th);
                }
                u uVar2 = (u) (!(bqVar instanceof u) ? null : bqVar);
                if (uVar2 == null) {
                    cf ax_ = bqVar.ax_();
                    if (ax_ != null) {
                        uVar = a((l) ax_);
                    }
                } else {
                    uVar = uVar2;
                }
                return (uVar == null || !a(cVar2, uVar, obj)) ? a(cVar2, obj) : cb.f38776a;
            }
            vVar = cb.f38778c;
            return vVar;
        }
    }

    private final boolean d(Throwable th) {
        if (aA_()) {
            return true;
        }
        boolean z = th instanceof CancellationException;
        t tVar = (t) this._parentHandle;
        return (tVar == null || tVar == cg.f38780a) ? z : tVar.b(th) || z;
    }

    private final Object g(Object obj) {
        kotlinx.coroutines.internal.v vVar;
        Object a2;
        kotlinx.coroutines.internal.v vVar2;
        do {
            Object p = p();
            if (!(p instanceof bq) || ((p instanceof c) && ((c) p)._isCompleting != 0)) {
                vVar = cb.f38777b;
                return vVar;
            }
            a2 = a(p, new z(h(obj), false, 2, null));
            vVar2 = cb.f38778c;
        } while (a2 == vVar2);
        return a2;
    }

    private final Throwable h(Object obj) {
        if (obj != null ? obj instanceof Throwable : true) {
            return obj != null ? (Throwable) obj : new JobCancellationException(i(), null, this);
        }
        Objects.requireNonNull(obj, "null cannot be cast to non-null type kotlinx.coroutines.ParentJob");
        return ((ci) obj).q();
    }

    /* JADX WARN: Removed duplicated region for block: B:82:0x012f A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:88:0x0004 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final java.lang.Object i(java.lang.Object r10) {
        /*
            Method dump skipped, instructions count: 378
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.ca.i(java.lang.Object):java.lang.Object");
    }

    private static String j(Object obj) {
        if (!(obj instanceof c)) {
            return obj instanceof bq ? ((bq) obj).b() ? "Active" : "New" : obj instanceof z ? "Cancelled" : "Completed";
        }
        c cVar = (c) obj;
        return cVar.d() ? "Cancelling" : cVar._isCompleting != 0 ? "Completing" : "Active";
    }

    @Override // kotlinx.coroutines.bv
    public final bb a(Function1<? super Throwable, v> function1) {
        return a(false, true, function1);
    }

    /* JADX WARN: Code restructure failed: missing block: B:25:0x007e, code lost:
        if (r0 == null) goto L_0x0081;
     */
    @Override // kotlinx.coroutines.bv
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final kotlinx.coroutines.bb a(boolean r6, boolean r7, kotlin.jvm.functions.Function1<? super java.lang.Throwable, kotlin.v> r8) {
        /*
            Method dump skipped, instructions count: 537
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.ca.a(boolean, boolean, kotlin.jvm.functions.Function1):kotlinx.coroutines.bb");
    }

    @Override // kotlinx.coroutines.bv
    public final t a(v vVar) {
        bb a2 = bv.a.a(this, true, false, new u(vVar), 2);
        Objects.requireNonNull(a2, "null cannot be cast to non-null type kotlinx.coroutines.ChildHandle");
        return (t) a2;
    }

    protected void a(Object obj) {
    }

    public void a(Throwable th) {
        throw th;
    }

    @Override // kotlinx.coroutines.bv
    public final void a(CancellationException cancellationException) {
        JobCancellationException jobCancellationException = cancellationException;
        if (cancellationException == null) {
            jobCancellationException = new JobCancellationException(i(), null, this);
        }
        e(jobCancellationException);
    }

    public final void a(bv bvVar) {
        if (ao.a()) {
            if (!(((t) this._parentHandle) == null)) {
                throw new AssertionError();
            }
        }
        if (bvVar == null) {
            this._parentHandle = cg.f38780a;
            return;
        }
        bvVar.n();
        t a2 = bvVar.a(this);
        this._parentHandle = a2;
        if (k()) {
            a2.a();
            this._parentHandle = cg.f38780a;
        }
    }

    @Override // kotlinx.coroutines.v
    public final void a(ci ciVar) {
        e(ciVar);
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

    public final Object b(kotlin.c.d<Object> frame) {
        Object p;
        do {
            p = p();
            if (!(p instanceof bq)) {
                if (!(p instanceof z)) {
                    return cb.b(p);
                }
                Throwable th = ((z) p).f38868b;
                if (!ao.c()) {
                    throw th;
                } else if (!(frame instanceof kotlin.c.b.a.d)) {
                    throw th;
                } else {
                    throw u.a(th, (kotlin.c.b.a.d) frame);
                }
            }
        } while (c(p) < 0);
        a aVar = new a(kotlin.c.a.b.a(frame), this);
        q.a(aVar, a(false, true, (Function1<? super Throwable, v>) new cj(aVar)));
        Object g = aVar.g();
        if (g == kotlin.c.a.a.COROUTINE_SUSPENDED) {
            p.d(frame, "frame");
        }
        return g;
    }

    public final boolean b(Throwable th) {
        return e(th);
    }

    protected boolean c(Throwable th) {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void d(Object obj) {
    }

    @Override // kotlinx.coroutines.bv
    public boolean e() {
        Object p = p();
        return (p instanceof bq) && ((bq) p).b();
    }

    public final boolean e(Object obj) {
        kotlinx.coroutines.internal.v vVar;
        kotlinx.coroutines.internal.v vVar2;
        kotlinx.coroutines.internal.v vVar3;
        kotlinx.coroutines.internal.v vVar4;
        vVar = cb.f38777b;
        if (au_()) {
            Object g = g(obj);
            vVar = g;
            if (g == cb.f38776a) {
                return true;
            }
        }
        Object obj2 = vVar;
        vVar2 = cb.f38777b;
        if (vVar == vVar2) {
            obj2 = i(obj);
        }
        vVar3 = cb.f38777b;
        if (obj2 == vVar3 || obj2 == cb.f38776a) {
            return true;
        }
        vVar4 = cb.f38779d;
        if (obj2 == vVar4) {
            return false;
        }
        d(obj2);
        return true;
    }

    public final Object f(Object obj) {
        Object a2;
        kotlinx.coroutines.internal.v vVar;
        kotlinx.coroutines.internal.v vVar2;
        do {
            a2 = a(p(), obj);
            vVar = cb.f38777b;
            if (a2 == vVar) {
                String str = "Job " + this + " is already complete or completing, but is being completed with " + obj;
                boolean z = obj instanceof z;
                Throwable th = null;
                if (!z) {
                    obj = null;
                }
                z zVar = (z) obj;
                if (zVar != null) {
                    th = zVar.f38868b;
                }
                throw new IllegalStateException(str, th);
            }
            vVar2 = cb.f38778c;
        } while (a2 == vVar2);
        return a2;
    }

    @Override // kotlin.c.f
    public <R> R fold(R r, Function2<? super R, ? super f.b, ? extends R> function2) {
        return (R) f.b.a.a(this, r, function2);
    }

    @Override // kotlin.c.f.b, kotlin.c.f
    public <E extends f.b> E get(f.c<E> cVar) {
        return (E) f.b.a.a(this, cVar);
    }

    @Override // kotlin.c.f.b
    public final f.c<?> getKey() {
        return bv.f38758c;
    }

    public void h() {
    }

    protected String i() {
        return "Job was cancelled";
    }

    public String j() {
        return getClass().getSimpleName();
    }

    @Override // kotlinx.coroutines.bv
    public final boolean k() {
        return !(p() instanceof bq);
    }

    @Override // kotlinx.coroutines.bv
    public final boolean l() {
        Object p = p();
        if (!(p instanceof z)) {
            return (p instanceof c) && ((c) p).d();
        }
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x0042, code lost:
        if (r7 != null) goto L_0x00ab;
     */
    @Override // kotlinx.coroutines.bv
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.concurrent.CancellationException m() {
        /*
            r6 = this;
            r0 = r6
            java.lang.Object r0 = r0.p()
            r7 = r0
            r0 = r7
            boolean r0 = r0 instanceof kotlinx.coroutines.ca.c
            if (r0 == 0) goto L_0x0060
            r0 = r7
            kotlinx.coroutines.ca$c r0 = (kotlinx.coroutines.ca.c) r0
            java.lang.Object r0 = r0._rootCause
            java.lang.Throwable r0 = (java.lang.Throwable) r0
            r8 = r0
            r0 = r8
            if (r0 == 0) goto L_0x0048
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
            java.util.concurrent.CancellationException r0 = r0.a(r1, r2)
            r7 = r0
            r0 = r7
            if (r0 == 0) goto L_0x0048
            goto L_0x00ab
        L_0x0048:
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
        L_0x0060:
            r0 = r7
            boolean r0 = r0 instanceof kotlinx.coroutines.bq
            if (r0 != 0) goto L_0x00ad
            r0 = r7
            boolean r0 = r0 instanceof kotlinx.coroutines.z
            if (r0 == 0) goto L_0x007b
            r0 = r6
            r1 = r7
            kotlinx.coroutines.z r1 = (kotlinx.coroutines.z) r1
            java.lang.Throwable r1 = r1.f38868b
            r2 = 0
            java.util.concurrent.CancellationException r0 = r0.a(r1, r2)
            return r0
        L_0x007b:
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
            kotlinx.coroutines.bv r4 = (kotlinx.coroutines.bv) r4
            r1.<init>(r2, r3, r4)
            java.util.concurrent.CancellationException r0 = (java.util.concurrent.CancellationException) r0
            r7 = r0
        L_0x00ab:
            r0 = r7
            return r0
        L_0x00ad:
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
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.ca.m():java.util.concurrent.CancellationException");
    }

    @Override // kotlin.c.f
    public f minusKey(f.c<?> cVar) {
        return f.b.a.b(this, cVar);
    }

    @Override // kotlinx.coroutines.bv
    public final boolean n() {
        int c2;
        do {
            c2 = c(p());
            if (c2 == 0) {
                return false;
            }
        } while (c2 != 1);
        return true;
    }

    public final t o() {
        return (t) this._parentHandle;
    }

    public final Object p() {
        while (true) {
            Object obj = this._state;
            if (!(obj instanceof r)) {
                return obj;
            }
            ((r) obj).a(this);
        }
    }

    @Override // kotlin.c.f
    public f plus(f fVar) {
        return f.b.a.a(this, fVar);
    }

    @Override // kotlinx.coroutines.ci
    public final CancellationException q() {
        Throwable th;
        Object p = p();
        CancellationException cancellationException = null;
        if (p instanceof c) {
            th = (Throwable) ((c) p)._rootCause;
        } else if (p instanceof z) {
            th = ((z) p).f38868b;
        } else if (!(p instanceof bq)) {
            th = null;
        } else {
            throw new IllegalStateException("Cannot be cancelling child in this state: ".concat(String.valueOf(p)).toString());
        }
        if (th instanceof CancellationException) {
            cancellationException = th;
        }
        CancellationException cancellationException2 = cancellationException;
        JobCancellationException jobCancellationException = cancellationException2;
        if (cancellationException2 == null) {
            jobCancellationException = new JobCancellationException("Parent job is " + j(p), th, this);
        }
        return jobCancellationException;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(j() + '{' + j(p()) + '}');
        sb.append('@');
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        return sb.toString();
    }
}
