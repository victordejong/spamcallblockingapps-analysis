package kotlin.ranges;

import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.NoSuchElementException;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.SinceKotlin;
import kotlin.internal.InlineOnly;
import kotlin.jvm.JvmName;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.ShortCompanionObject;
import kotlin.random.Random;
import kotlin.random.RandomKt;
import kotlin.ranges.CharProgression;
import kotlin.ranges.IntProgression;
import kotlin.ranges.LongProgression;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��n\n\u0002\b\u0002\n\u0002\u0010\u000f\n\u0002\b\u0002\n\u0002\u0010\u0005\n\u0002\u0010\u0006\n\u0002\u0010\u0007\n\u0002\u0010\b\n\u0002\u0010\t\n\u0002\u0010\n\n\u0002\b\u0005\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n��\n\u0002\u0010\f\n\u0002\b\b\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0016\u001a'\u0010��\u001a\u0002H\u0001\"\u000e\b��\u0010\u0001*\b\u0012\u0004\u0012\u0002H\u00010\u0002*\u0002H\u00012\u0006\u0010\u0003\u001a\u0002H\u0001¢\u0006\u0002\u0010\u0004\u001a\u0012\u0010��\u001a\u00020\u0005*\u00020\u00052\u0006\u0010\u0003\u001a\u00020\u0005\u001a\u0012\u0010��\u001a\u00020\u0006*\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u0006\u001a\u0012\u0010��\u001a\u00020\u0007*\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u0007\u001a\u0012\u0010��\u001a\u00020\b*\u00020\b2\u0006\u0010\u0003\u001a\u00020\b\u001a\u0012\u0010��\u001a\u00020\t*\u00020\t2\u0006\u0010\u0003\u001a\u00020\t\u001a\u0012\u0010��\u001a\u00020\n*\u00020\n2\u0006\u0010\u0003\u001a\u00020\n\u001a'\u0010\u000b\u001a\u0002H\u0001\"\u000e\b��\u0010\u0001*\b\u0012\u0004\u0012\u0002H\u00010\u0002*\u0002H\u00012\u0006\u0010\f\u001a\u0002H\u0001¢\u0006\u0002\u0010\u0004\u001a\u0012\u0010\u000b\u001a\u00020\u0005*\u00020\u00052\u0006\u0010\f\u001a\u00020\u0005\u001a\u0012\u0010\u000b\u001a\u00020\u0006*\u00020\u00062\u0006\u0010\f\u001a\u00020\u0006\u001a\u0012\u0010\u000b\u001a\u00020\u0007*\u00020\u00072\u0006\u0010\f\u001a\u00020\u0007\u001a\u0012\u0010\u000b\u001a\u00020\b*\u00020\b2\u0006\u0010\f\u001a\u00020\b\u001a\u0012\u0010\u000b\u001a\u00020\t*\u00020\t2\u0006\u0010\f\u001a\u00020\t\u001a\u0012\u0010\u000b\u001a\u00020\n*\u00020\n2\u0006\u0010\f\u001a\u00020\n\u001a3\u0010\r\u001a\u0002H\u0001\"\u000e\b��\u0010\u0001*\b\u0012\u0004\u0012\u0002H\u00010\u0002*\u0002H\u00012\b\u0010\u0003\u001a\u0004\u0018\u0001H\u00012\b\u0010\f\u001a\u0004\u0018\u0001H\u0001¢\u0006\u0002\u0010\u000e\u001a/\u0010\r\u001a\u0002H\u0001\"\u000e\b��\u0010\u0001*\b\u0012\u0004\u0012\u0002H\u00010\u0002*\u0002H\u00012\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u0002H\u00010\u0010H\u0007¢\u0006\u0002\u0010\u0011\u001a-\u0010\r\u001a\u0002H\u0001\"\u000e\b��\u0010\u0001*\b\u0012\u0004\u0012\u0002H\u00010\u0002*\u0002H\u00012\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u0002H\u00010\u0012¢\u0006\u0002\u0010\u0013\u001a\u001a\u0010\r\u001a\u00020\u0005*\u00020\u00052\u0006\u0010\u0003\u001a\u00020\u00052\u0006\u0010\f\u001a\u00020\u0005\u001a\u001a\u0010\r\u001a\u00020\u0006*\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00062\u0006\u0010\f\u001a\u00020\u0006\u001a\u001a\u0010\r\u001a\u00020\u0007*\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u00072\u0006\u0010\f\u001a\u00020\u0007\u001a\u001a\u0010\r\u001a\u00020\b*\u00020\b2\u0006\u0010\u0003\u001a\u00020\b2\u0006\u0010\f\u001a\u00020\b\u001a\u0018\u0010\r\u001a\u00020\b*\u00020\b2\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\b0\u0012\u001a\u001a\u0010\r\u001a\u00020\t*\u00020\t2\u0006\u0010\u0003\u001a\u00020\t2\u0006\u0010\f\u001a\u00020\t\u001a\u0018\u0010\r\u001a\u00020\t*\u00020\t2\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\t0\u0012\u001a\u001a\u0010\r\u001a\u00020\n*\u00020\n2\u0006\u0010\u0003\u001a\u00020\n2\u0006\u0010\f\u001a\u00020\n\u001a\u001c\u0010\u0014\u001a\u00020\u0015*\u00020\u00162\b\u0010\u0017\u001a\u0004\u0018\u00010\u0018H\u0087\n¢\u0006\u0002\u0010\u0019\u001a \u0010\u0014\u001a\u00020\u0015*\b\u0012\u0004\u0012\u00020\u00050\u00122\u0006\u0010\u001a\u001a\u00020\u0006H\u0087\u0002¢\u0006\u0002\b\u001b\u001a \u0010\u0014\u001a\u00020\u0015*\b\u0012\u0004\u0012\u00020\u00050\u00122\u0006\u0010\u001a\u001a\u00020\u0007H\u0087\u0002¢\u0006\u0002\b\u001b\u001a \u0010\u0014\u001a\u00020\u0015*\b\u0012\u0004\u0012\u00020\u00050\u00122\u0006\u0010\u001a\u001a\u00020\bH\u0087\u0002¢\u0006\u0002\b\u001b\u001a \u0010\u0014\u001a\u00020\u0015*\b\u0012\u0004\u0012\u00020\u00050\u00122\u0006\u0010\u001a\u001a\u00020\tH\u0087\u0002¢\u0006\u0002\b\u001b\u001a \u0010\u0014\u001a\u00020\u0015*\b\u0012\u0004\u0012\u00020\u00050\u00122\u0006\u0010\u001a\u001a\u00020\nH\u0087\u0002¢\u0006\u0002\b\u001b\u001a \u0010\u0014\u001a\u00020\u0015*\b\u0012\u0004\u0012\u00020\u00060\u00122\u0006\u0010\u001a\u001a\u00020\u0005H\u0087\u0002¢\u0006\u0002\b\u001c\u001a \u0010\u0014\u001a\u00020\u0015*\b\u0012\u0004\u0012\u00020\u00060\u00122\u0006\u0010\u001a\u001a\u00020\u0007H\u0087\u0002¢\u0006\u0002\b\u001c\u001a \u0010\u0014\u001a\u00020\u0015*\b\u0012\u0004\u0012\u00020\u00060\u00122\u0006\u0010\u001a\u001a\u00020\bH\u0087\u0002¢\u0006\u0002\b\u001c\u001a \u0010\u0014\u001a\u00020\u0015*\b\u0012\u0004\u0012\u00020\u00060\u00122\u0006\u0010\u001a\u001a\u00020\tH\u0087\u0002¢\u0006\u0002\b\u001c\u001a \u0010\u0014\u001a\u00020\u0015*\b\u0012\u0004\u0012\u00020\u00060\u00122\u0006\u0010\u001a\u001a\u00020\nH\u0087\u0002¢\u0006\u0002\b\u001c\u001a \u0010\u0014\u001a\u00020\u0015*\b\u0012\u0004\u0012\u00020\u00070\u00122\u0006\u0010\u001a\u001a\u00020\u0005H\u0087\u0002¢\u0006\u0002\b\u001d\u001a \u0010\u0014\u001a\u00020\u0015*\b\u0012\u0004\u0012\u00020\u00070\u00122\u0006\u0010\u001a\u001a\u00020\u0006H\u0087\u0002¢\u0006\u0002\b\u001d\u001a \u0010\u0014\u001a\u00020\u0015*\b\u0012\u0004\u0012\u00020\u00070\u00122\u0006\u0010\u001a\u001a\u00020\bH\u0087\u0002¢\u0006\u0002\b\u001d\u001a \u0010\u0014\u001a\u00020\u0015*\b\u0012\u0004\u0012\u00020\u00070\u00122\u0006\u0010\u001a\u001a\u00020\tH\u0087\u0002¢\u0006\u0002\b\u001d\u001a \u0010\u0014\u001a\u00020\u0015*\b\u0012\u0004\u0012\u00020\u00070\u00122\u0006\u0010\u001a\u001a\u00020\nH\u0087\u0002¢\u0006\u0002\b\u001d\u001a \u0010\u0014\u001a\u00020\u0015*\b\u0012\u0004\u0012\u00020\b0\u00122\u0006\u0010\u001a\u001a\u00020\u0005H\u0087\u0002¢\u0006\u0002\b\u001e\u001a \u0010\u0014\u001a\u00020\u0015*\b\u0012\u0004\u0012\u00020\b0\u00122\u0006\u0010\u001a\u001a\u00020\u0006H\u0087\u0002¢\u0006\u0002\b\u001e\u001a \u0010\u0014\u001a\u00020\u0015*\b\u0012\u0004\u0012\u00020\b0\u00122\u0006\u0010\u001a\u001a\u00020\u0007H\u0087\u0002¢\u0006\u0002\b\u001e\u001a \u0010\u0014\u001a\u00020\u0015*\b\u0012\u0004\u0012\u00020\b0\u00122\u0006\u0010\u001a\u001a\u00020\tH\u0087\u0002¢\u0006\u0002\b\u001e\u001a \u0010\u0014\u001a\u00020\u0015*\b\u0012\u0004\u0012\u00020\b0\u00122\u0006\u0010\u001a\u001a\u00020\nH\u0087\u0002¢\u0006\u0002\b\u001e\u001a \u0010\u0014\u001a\u00020\u0015*\b\u0012\u0004\u0012\u00020\t0\u00122\u0006\u0010\u001a\u001a\u00020\u0005H\u0087\u0002¢\u0006\u0002\b\u001f\u001a \u0010\u0014\u001a\u00020\u0015*\b\u0012\u0004\u0012\u00020\t0\u00122\u0006\u0010\u001a\u001a\u00020\u0006H\u0087\u0002¢\u0006\u0002\b\u001f\u001a \u0010\u0014\u001a\u00020\u0015*\b\u0012\u0004\u0012\u00020\t0\u00122\u0006\u0010\u001a\u001a\u00020\u0007H\u0087\u0002¢\u0006\u0002\b\u001f\u001a \u0010\u0014\u001a\u00020\u0015*\b\u0012\u0004\u0012\u00020\t0\u00122\u0006\u0010\u001a\u001a\u00020\bH\u0087\u0002¢\u0006\u0002\b\u001f\u001a \u0010\u0014\u001a\u00020\u0015*\b\u0012\u0004\u0012\u00020\t0\u00122\u0006\u0010\u001a\u001a\u00020\nH\u0087\u0002¢\u0006\u0002\b\u001f\u001a \u0010\u0014\u001a\u00020\u0015*\b\u0012\u0004\u0012\u00020\n0\u00122\u0006\u0010\u001a\u001a\u00020\u0005H\u0087\u0002¢\u0006\u0002\b \u001a \u0010\u0014\u001a\u00020\u0015*\b\u0012\u0004\u0012\u00020\n0\u00122\u0006\u0010\u001a\u001a\u00020\u0006H\u0087\u0002¢\u0006\u0002\b \u001a \u0010\u0014\u001a\u00020\u0015*\b\u0012\u0004\u0012\u00020\n0\u00122\u0006\u0010\u001a\u001a\u00020\u0007H\u0087\u0002¢\u0006\u0002\b \u001a \u0010\u0014\u001a\u00020\u0015*\b\u0012\u0004\u0012\u00020\n0\u00122\u0006\u0010\u001a\u001a\u00020\bH\u0087\u0002¢\u0006\u0002\b \u001a \u0010\u0014\u001a\u00020\u0015*\b\u0012\u0004\u0012\u00020\n0\u00122\u0006\u0010\u001a\u001a\u00020\tH\u0087\u0002¢\u0006\u0002\b \u001a\u001c\u0010\u0014\u001a\u00020\u0015*\u00020!2\b\u0010\u0017\u001a\u0004\u0018\u00010\bH\u0087\n¢\u0006\u0002\u0010\"\u001a\u001c\u0010\u0014\u001a\u00020\u0015*\u00020#2\b\u0010\u0017\u001a\u0004\u0018\u00010\tH\u0087\n¢\u0006\u0002\u0010$\u001a\u0015\u0010%\u001a\u00020&*\u00020\u00052\u0006\u0010'\u001a\u00020\u0005H\u0086\u0004\u001a\u0015\u0010%\u001a\u00020&*\u00020\u00052\u0006\u0010'\u001a\u00020\bH\u0086\u0004\u001a\u0015\u0010%\u001a\u00020(*\u00020\u00052\u0006\u0010'\u001a\u00020\tH\u0086\u0004\u001a\u0015\u0010%\u001a\u00020&*\u00020\u00052\u0006\u0010'\u001a\u00020\nH\u0086\u0004\u001a\u0015\u0010%\u001a\u00020)*\u00020\u00182\u0006\u0010'\u001a\u00020\u0018H\u0086\u0004\u001a\u0015\u0010%\u001a\u00020&*\u00020\b2\u0006\u0010'\u001a\u00020\u0005H\u0086\u0004\u001a\u0015\u0010%\u001a\u00020&*\u00020\b2\u0006\u0010'\u001a\u00020\bH\u0086\u0004\u001a\u0015\u0010%\u001a\u00020(*\u00020\b2\u0006\u0010'\u001a\u00020\tH\u0086\u0004\u001a\u0015\u0010%\u001a\u00020&*\u00020\b2\u0006\u0010'\u001a\u00020\nH\u0086\u0004\u001a\u0015\u0010%\u001a\u00020(*\u00020\t2\u0006\u0010'\u001a\u00020\u0005H\u0086\u0004\u001a\u0015\u0010%\u001a\u00020(*\u00020\t2\u0006\u0010'\u001a\u00020\bH\u0086\u0004\u001a\u0015\u0010%\u001a\u00020(*\u00020\t2\u0006\u0010'\u001a\u00020\tH\u0086\u0004\u001a\u0015\u0010%\u001a\u00020(*\u00020\t2\u0006\u0010'\u001a\u00020\nH\u0086\u0004\u001a\u0015\u0010%\u001a\u00020&*\u00020\n2\u0006\u0010'\u001a\u00020\u0005H\u0086\u0004\u001a\u0015\u0010%\u001a\u00020&*\u00020\n2\u0006\u0010'\u001a\u00020\bH\u0086\u0004\u001a\u0015\u0010%\u001a\u00020(*\u00020\n2\u0006\u0010'\u001a\u00020\tH\u0086\u0004\u001a\u0015\u0010%\u001a\u00020&*\u00020\n2\u0006\u0010'\u001a\u00020\nH\u0086\u0004\u001a\r\u0010*\u001a\u00020\u0018*\u00020\u0016H\u0087\b\u001a\u0014\u0010*\u001a\u00020\u0018*\u00020\u00162\u0006\u0010*\u001a\u00020+H\u0007\u001a\r\u0010*\u001a\u00020\b*\u00020!H\u0087\b\u001a\u0014\u0010*\u001a\u00020\b*\u00020!2\u0006\u0010*\u001a\u00020+H\u0007\u001a\r\u0010*\u001a\u00020\t*\u00020#H\u0087\b\u001a\u0014\u0010*\u001a\u00020\t*\u00020#2\u0006\u0010*\u001a\u00020+H\u0007\u001a\n\u0010,\u001a\u00020)*\u00020)\u001a\n\u0010,\u001a\u00020&*\u00020&\u001a\n\u0010,\u001a\u00020(*\u00020(\u001a\u0015\u0010-\u001a\u00020)*\u00020)2\u0006\u0010-\u001a\u00020\bH\u0086\u0004\u001a\u0015\u0010-\u001a\u00020&*\u00020&2\u0006\u0010-\u001a\u00020\bH\u0086\u0004\u001a\u0015\u0010-\u001a\u00020(*\u00020(2\u0006\u0010-\u001a\u00020\tH\u0086\u0004\u001a\u0013\u0010.\u001a\u0004\u0018\u00010\u0005*\u00020\u0006H��¢\u0006\u0002\u0010/\u001a\u0013\u0010.\u001a\u0004\u0018\u00010\u0005*\u00020\u0007H��¢\u0006\u0002\u00100\u001a\u0013\u0010.\u001a\u0004\u0018\u00010\u0005*\u00020\bH��¢\u0006\u0002\u00101\u001a\u0013\u0010.\u001a\u0004\u0018\u00010\u0005*\u00020\tH��¢\u0006\u0002\u00102\u001a\u0013\u0010.\u001a\u0004\u0018\u00010\u0005*\u00020\nH��¢\u0006\u0002\u00103\u001a\u0013\u00104\u001a\u0004\u0018\u00010\b*\u00020\u0006H��¢\u0006\u0002\u00105\u001a\u0013\u00104\u001a\u0004\u0018\u00010\b*\u00020\u0007H��¢\u0006\u0002\u00106\u001a\u0013\u00104\u001a\u0004\u0018\u00010\b*\u00020\tH��¢\u0006\u0002\u00107\u001a\u0013\u00108\u001a\u0004\u0018\u00010\t*\u00020\u0006H��¢\u0006\u0002\u00109\u001a\u0013\u00108\u001a\u0004\u0018\u00010\t*\u00020\u0007H��¢\u0006\u0002\u0010:\u001a\u0013\u0010;\u001a\u0004\u0018\u00010\n*\u00020\u0006H��¢\u0006\u0002\u0010<\u001a\u0013\u0010;\u001a\u0004\u0018\u00010\n*\u00020\u0007H��¢\u0006\u0002\u0010=\u001a\u0013\u0010;\u001a\u0004\u0018\u00010\n*\u00020\bH��¢\u0006\u0002\u0010>\u001a\u0013\u0010;\u001a\u0004\u0018\u00010\n*\u00020\tH��¢\u0006\u0002\u0010?\u001a\u0015\u0010@\u001a\u00020!*\u00020\u00052\u0006\u0010'\u001a\u00020\u0005H\u0086\u0004\u001a\u0015\u0010@\u001a\u00020!*\u00020\u00052\u0006\u0010'\u001a\u00020\bH\u0086\u0004\u001a\u0015\u0010@\u001a\u00020#*\u00020\u00052\u0006\u0010'\u001a\u00020\tH\u0086\u0004\u001a\u0015\u0010@\u001a\u00020!*\u00020\u00052\u0006\u0010'\u001a\u00020\nH\u0086\u0004\u001a\u0015\u0010@\u001a\u00020\u0016*\u00020\u00182\u0006\u0010'\u001a\u00020\u0018H\u0086\u0004\u001a\u0015\u0010@\u001a\u00020!*\u00020\b2\u0006\u0010'\u001a\u00020\u0005H\u0086\u0004\u001a\u0015\u0010@\u001a\u00020!*\u00020\b2\u0006\u0010'\u001a\u00020\bH\u0086\u0004\u001a\u0015\u0010@\u001a\u00020#*\u00020\b2\u0006\u0010'\u001a\u00020\tH\u0086\u0004\u001a\u0015\u0010@\u001a\u00020!*\u00020\b2\u0006\u0010'\u001a\u00020\nH\u0086\u0004\u001a\u0015\u0010@\u001a\u00020#*\u00020\t2\u0006\u0010'\u001a\u00020\u0005H\u0086\u0004\u001a\u0015\u0010@\u001a\u00020#*\u00020\t2\u0006\u0010'\u001a\u00020\bH\u0086\u0004\u001a\u0015\u0010@\u001a\u00020#*\u00020\t2\u0006\u0010'\u001a\u00020\tH\u0086\u0004\u001a\u0015\u0010@\u001a\u00020#*\u00020\t2\u0006\u0010'\u001a\u00020\nH\u0086\u0004\u001a\u0015\u0010@\u001a\u00020!*\u00020\n2\u0006\u0010'\u001a\u00020\u0005H\u0086\u0004\u001a\u0015\u0010@\u001a\u00020!*\u00020\n2\u0006\u0010'\u001a\u00020\bH\u0086\u0004\u001a\u0015\u0010@\u001a\u00020#*\u00020\n2\u0006\u0010'\u001a\u00020\tH\u0086\u0004\u001a\u0015\u0010@\u001a\u00020!*\u00020\n2\u0006\u0010'\u001a\u00020\nH\u0086\u0004¨\u0006A"}, m254d2 = {"coerceAtLeast", "T", "", "minimumValue", "(Ljava/lang/Comparable;Ljava/lang/Comparable;)Ljava/lang/Comparable;", "", "", "", "", "", "", "coerceAtMost", "maximumValue", "coerceIn", "(Ljava/lang/Comparable;Ljava/lang/Comparable;Ljava/lang/Comparable;)Ljava/lang/Comparable;", "range", "Lkotlin/ranges/ClosedFloatingPointRange;", "(Ljava/lang/Comparable;Lkotlin/ranges/ClosedFloatingPointRange;)Ljava/lang/Comparable;", "Lkotlin/ranges/ClosedRange;", "(Ljava/lang/Comparable;Lkotlin/ranges/ClosedRange;)Ljava/lang/Comparable;", "contains", "", "Lkotlin/ranges/CharRange;", "element", "", "(Lkotlin/ranges/CharRange;Ljava/lang/Character;)Z", FirebaseAnalytics.Param.VALUE, "byteRangeContains", "doubleRangeContains", "floatRangeContains", "intRangeContains", "longRangeContains", "shortRangeContains", "Lkotlin/ranges/IntRange;", "(Lkotlin/ranges/IntRange;Ljava/lang/Integer;)Z", "Lkotlin/ranges/LongRange;", "(Lkotlin/ranges/LongRange;Ljava/lang/Long;)Z", "downTo", "Lkotlin/ranges/IntProgression;", "to", "Lkotlin/ranges/LongProgression;", "Lkotlin/ranges/CharProgression;", "random", "Lkotlin/random/Random;", "reversed", "step", "toByteExactOrNull", "(D)Ljava/lang/Byte;", "(F)Ljava/lang/Byte;", "(I)Ljava/lang/Byte;", "(J)Ljava/lang/Byte;", "(S)Ljava/lang/Byte;", "toIntExactOrNull", "(D)Ljava/lang/Integer;", "(F)Ljava/lang/Integer;", "(J)Ljava/lang/Integer;", "toLongExactOrNull", "(D)Ljava/lang/Long;", "(F)Ljava/lang/Long;", "toShortExactOrNull", "(D)Ljava/lang/Short;", "(F)Ljava/lang/Short;", "(I)Ljava/lang/Short;", "(J)Ljava/lang/Short;", "until", "kotlin-stdlib"}, m253k = 5, m252mv = {1, 1, 13}, m250xi = 1, m249xs = "kotlin/ranges/RangesKt")
/* loaded from: classes2-dex2jar.jar:kotlin/ranges/RangesKt___RangesKt.class */
public class RangesKt___RangesKt extends RangesKt__RangesKt {
    @Deprecated(message = "This `contains` operation mixing integer and floating point arguments has ambiguous semantics and is going to be removed.")
    @JvmName(name = "byteRangeContains")
    public static final boolean byteRangeContains(@NotNull ClosedRange<Byte> receiver$0, double d) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        Byte byteExactOrNull = RangesKt.toByteExactOrNull(d);
        return byteExactOrNull != null ? receiver$0.contains(byteExactOrNull) : false;
    }

    @Deprecated(message = "This `contains` operation mixing integer and floating point arguments has ambiguous semantics and is going to be removed.")
    @JvmName(name = "byteRangeContains")
    public static final boolean byteRangeContains(@NotNull ClosedRange<Byte> receiver$0, float f) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        Byte byteExactOrNull = RangesKt.toByteExactOrNull(f);
        return byteExactOrNull != null ? receiver$0.contains(byteExactOrNull) : false;
    }

    @JvmName(name = "byteRangeContains")
    public static final boolean byteRangeContains(@NotNull ClosedRange<Byte> receiver$0, int i) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        Byte byteExactOrNull = RangesKt.toByteExactOrNull(i);
        return byteExactOrNull != null ? receiver$0.contains(byteExactOrNull) : false;
    }

    @JvmName(name = "byteRangeContains")
    public static final boolean byteRangeContains(@NotNull ClosedRange<Byte> receiver$0, long j) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        Byte byteExactOrNull = RangesKt.toByteExactOrNull(j);
        return byteExactOrNull != null ? receiver$0.contains(byteExactOrNull) : false;
    }

    @JvmName(name = "byteRangeContains")
    public static final boolean byteRangeContains(@NotNull ClosedRange<Byte> receiver$0, short s) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        Byte byteExactOrNull = RangesKt.toByteExactOrNull(s);
        return byteExactOrNull != null ? receiver$0.contains(byteExactOrNull) : false;
    }

    public static final byte coerceAtLeast(byte b, byte b2) {
        byte b3 = b;
        if (b < b2) {
            b3 = b2;
        }
        return b3;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final double coerceAtLeast(double d, double d2) {
        char c = d;
        if (d < d2) {
            c = d2;
        }
        return c;
    }

    public static final float coerceAtLeast(float f, float f2) {
        float f3 = f;
        if (f < f2) {
            f3 = f2;
        }
        return f3;
    }

    public static final int coerceAtLeast(int i, int i2) {
        int i3 = i;
        if (i < i2) {
            i3 = i2;
        }
        return i3;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final long coerceAtLeast(long j, long j2) {
        char c = j;
        if (j < j2) {
            c = j2;
        }
        return c;
    }

    @NotNull
    public static final <T extends Comparable<? super T>> T coerceAtLeast(@NotNull T receiver$0, @NotNull T minimumValue) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        Intrinsics.checkParameterIsNotNull(minimumValue, "minimumValue");
        T t = receiver$0;
        if (receiver$0.compareTo(minimumValue) < 0) {
            t = minimumValue;
        }
        return t;
    }

    public static final short coerceAtLeast(short s, short s2) {
        short s3 = s;
        if (s < s2) {
            s3 = s2;
        }
        return s3;
    }

    public static final byte coerceAtMost(byte b, byte b2) {
        byte b3 = b;
        if (b > b2) {
            b3 = b2;
        }
        return b3;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final double coerceAtMost(double d, double d2) {
        char c = d;
        if (d > d2) {
            c = d2;
        }
        return c;
    }

    public static final float coerceAtMost(float f, float f2) {
        float f3 = f;
        if (f > f2) {
            f3 = f2;
        }
        return f3;
    }

    public static final int coerceAtMost(int i, int i2) {
        int i3 = i;
        if (i > i2) {
            i3 = i2;
        }
        return i3;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final long coerceAtMost(long j, long j2) {
        char c = j;
        if (j > j2) {
            c = j2;
        }
        return c;
    }

    @NotNull
    public static final <T extends Comparable<? super T>> T coerceAtMost(@NotNull T receiver$0, @NotNull T maximumValue) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        Intrinsics.checkParameterIsNotNull(maximumValue, "maximumValue");
        T t = receiver$0;
        if (receiver$0.compareTo(maximumValue) > 0) {
            t = maximumValue;
        }
        return t;
    }

    public static final short coerceAtMost(short s, short s2) {
        short s3 = s;
        if (s > s2) {
            s3 = s2;
        }
        return s3;
    }

    public static final byte coerceIn(byte b, byte b2, byte b3) {
        if (b2 <= b3) {
            return b < b2 ? b2 : b > b3 ? b3 : b;
        }
        throw new IllegalArgumentException("Cannot coerce value to an empty range: maximum " + ((int) b3) + " is less than minimum " + ((int) b2) + '.');
    }

    public static final double coerceIn(double d, double d2, double d3) {
        if (d2 <= d3) {
            return d < d2 ? d2 : d > d3 ? d3 : d;
        }
        throw new IllegalArgumentException("Cannot coerce value to an empty range: maximum " + d3 + " is less than minimum " + d2 + '.');
    }

    public static final float coerceIn(float f, float f2, float f3) {
        if (f2 <= f3) {
            return f < f2 ? f2 : f > f3 ? f3 : f;
        }
        throw new IllegalArgumentException("Cannot coerce value to an empty range: maximum " + f3 + " is less than minimum " + f2 + '.');
    }

    public static final int coerceIn(int i, int i2, int i3) {
        if (i2 <= i3) {
            return i < i2 ? i2 : i > i3 ? i3 : i;
        }
        throw new IllegalArgumentException("Cannot coerce value to an empty range: maximum " + i3 + " is less than minimum " + i2 + '.');
    }

    public static final int coerceIn(int i, @NotNull ClosedRange<Integer> range) {
        int i2;
        Intrinsics.checkParameterIsNotNull(range, "range");
        if (range instanceof ClosedFloatingPointRange) {
            return ((Number) RangesKt.coerceIn(Integer.valueOf(i), (ClosedFloatingPointRange<Integer>) range)).intValue();
        }
        if (range.isEmpty()) {
            throw new IllegalArgumentException("Cannot coerce value to an empty range: " + range + '.');
        }
        if (i < range.getStart().intValue()) {
            i2 = range.getStart().intValue();
        } else {
            i2 = i;
            if (i > range.getEndInclusive().intValue()) {
                i2 = range.getEndInclusive().intValue();
            }
        }
        return i2;
    }

    public static final long coerceIn(long j, long j2, long j3) {
        if (j2 <= j3) {
            return j < j2 ? j2 : j > j3 ? j3 : j;
        }
        throw new IllegalArgumentException("Cannot coerce value to an empty range: maximum " + j3 + " is less than minimum " + j2 + '.');
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v0, types: [long] */
    /* JADX WARN: Type inference failed for: r9v0, types: [long] */
    /* JADX WARN: Type inference failed for: r9v1 */
    /* JADX WARN: Type inference failed for: r9v4 */
    /* JADX WARN: Type inference failed for: r9v5 */
    /* JADX WARN: Unknown variable types count: 1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final long coerceIn(long r5, @org.jetbrains.annotations.NotNull kotlin.ranges.ClosedRange<java.lang.Long> r7) {
        /*
            r0 = r7
            java.lang.String r1 = "range"
            kotlin.jvm.internal.Intrinsics.checkParameterIsNotNull(r0, r1)
            r0 = r7
            boolean r0 = r0 instanceof kotlin.ranges.ClosedFloatingPointRange
            if (r0 == 0) goto L_0x0022
            r0 = r5
            java.lang.Long r0 = java.lang.Long.valueOf(r0)
            java.lang.Comparable r0 = (java.lang.Comparable) r0
            r1 = r7
            kotlin.ranges.ClosedFloatingPointRange r1 = (kotlin.ranges.ClosedFloatingPointRange) r1
            java.lang.Comparable r0 = kotlin.ranges.RangesKt.coerceIn(r0, r1)
            java.lang.Number r0 = (java.lang.Number) r0
            long r0 = r0.longValue()
            return r0
        L_0x0022:
            r0 = r7
            boolean r0 = r0.isEmpty()
            if (r0 == 0) goto L_0x0056
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r1 = r0
            r1.<init>()
            r8 = r0
            r0 = r8
            java.lang.String r1 = "Cannot coerce value to an empty range: "
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r8
            r1 = r7
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r8
            r1 = 46
            java.lang.StringBuilder r0 = r0.append(r1)
            java.lang.IllegalArgumentException r0 = new java.lang.IllegalArgumentException
            r1 = r0
            r2 = r8
            java.lang.String r2 = r2.toString()
            r1.<init>(r2)
            java.lang.Throwable r0 = (java.lang.Throwable) r0
            throw r0
        L_0x0056:
            r0 = r5
            r1 = r7
            java.lang.Comparable r1 = r1.getStart()
            java.lang.Number r1 = (java.lang.Number) r1
            long r1 = r1.longValue()
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 >= 0) goto L_0x0078
            r0 = r7
            java.lang.Comparable r0 = r0.getStart()
            java.lang.Number r0 = (java.lang.Number) r0
            long r0 = r0.longValue()
            r9 = r0
            goto L_0x009a
        L_0x0078:
            r0 = r5
            r9 = r0
            r0 = r5
            r1 = r7
            java.lang.Comparable r1 = r1.getEndInclusive()
            java.lang.Number r1 = (java.lang.Number) r1
            long r1 = r1.longValue()
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 <= 0) goto L_0x009a
            r0 = r7
            java.lang.Comparable r0 = r0.getEndInclusive()
            java.lang.Number r0 = (java.lang.Number) r0
            long r0 = r0.longValue()
            r9 = r0
        L_0x009a:
            r0 = r9
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.ranges.RangesKt___RangesKt.coerceIn(long, kotlin.ranges.ClosedRange):long");
    }

    @NotNull
    public static final <T extends Comparable<? super T>> T coerceIn(@NotNull T receiver$0, @Nullable T t, @Nullable T t2) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        if (t == null || t2 == null) {
            if (t != null && receiver$0.compareTo(t) < 0) {
                return t;
            }
            if (t2 != null && receiver$0.compareTo(t2) > 0) {
                return t2;
            }
        } else if (t.compareTo(t2) > 0) {
            throw new IllegalArgumentException("Cannot coerce value to an empty range: maximum " + t2 + " is less than minimum " + t + '.');
        } else if (receiver$0.compareTo(t) < 0) {
            return t;
        } else {
            if (receiver$0.compareTo(t2) > 0) {
                return t2;
            }
        }
        return receiver$0;
    }

    @SinceKotlin(version = "1.1")
    @NotNull
    public static final <T extends Comparable<? super T>> T coerceIn(@NotNull T receiver$0, @NotNull ClosedFloatingPointRange<T> range) {
        T t;
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        Intrinsics.checkParameterIsNotNull(range, "range");
        if (range.isEmpty()) {
            throw new IllegalArgumentException("Cannot coerce value to an empty range: " + range + '.');
        }
        if (!range.lessThanOrEquals(receiver$0, range.getStart()) || range.lessThanOrEquals(range.getStart(), receiver$0)) {
            t = receiver$0;
            if (range.lessThanOrEquals(range.getEndInclusive(), receiver$0)) {
                t = receiver$0;
                if (!range.lessThanOrEquals(receiver$0, range.getEndInclusive())) {
                    t = range.getEndInclusive();
                }
            }
        } else {
            t = range.getStart();
        }
        return t;
    }

    @NotNull
    public static final <T extends Comparable<? super T>> T coerceIn(@NotNull T receiver$0, @NotNull ClosedRange<T> range) {
        T t;
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        Intrinsics.checkParameterIsNotNull(range, "range");
        if (range instanceof ClosedFloatingPointRange) {
            return (T) RangesKt.coerceIn((Comparable) receiver$0, (ClosedFloatingPointRange) range);
        }
        if (range.isEmpty()) {
            throw new IllegalArgumentException("Cannot coerce value to an empty range: " + range + '.');
        }
        if (receiver$0.compareTo(range.getStart()) < 0) {
            t = range.getStart();
        } else {
            t = receiver$0;
            if (receiver$0.compareTo(range.getEndInclusive()) > 0) {
                t = range.getEndInclusive();
            }
        }
        return t;
    }

    public static final short coerceIn(short s, short s2, short s3) {
        if (s2 <= s3) {
            return s < s2 ? s2 : s > s3 ? s3 : s;
        }
        throw new IllegalArgumentException("Cannot coerce value to an empty range: maximum " + ((int) s3) + " is less than minimum " + ((int) s2) + '.');
    }

    @SinceKotlin(version = "1.3")
    @InlineOnly
    private static final boolean contains(@NotNull CharRange receiver$0, Character ch) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        return ch != null && receiver$0.contains(ch.charValue());
    }

    @SinceKotlin(version = "1.3")
    @InlineOnly
    private static final boolean contains(@NotNull IntRange receiver$0, Integer num) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        return num != null && receiver$0.contains(num.intValue());
    }

    @SinceKotlin(version = "1.3")
    @InlineOnly
    private static final boolean contains(@NotNull LongRange receiver$0, Long l) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        return l != null && receiver$0.contains(l.longValue());
    }

    @Deprecated(message = "This `contains` operation mixing integer and floating point arguments has ambiguous semantics and is going to be removed.")
    @JvmName(name = "doubleRangeContains")
    public static final boolean doubleRangeContains(@NotNull ClosedRange<Double> receiver$0, byte b) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        return receiver$0.contains(Double.valueOf(b));
    }

    @JvmName(name = "doubleRangeContains")
    public static final boolean doubleRangeContains(@NotNull ClosedRange<Double> receiver$0, float f) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        return receiver$0.contains(Double.valueOf(f));
    }

    @Deprecated(message = "This `contains` operation mixing integer and floating point arguments has ambiguous semantics and is going to be removed.")
    @JvmName(name = "doubleRangeContains")
    public static final boolean doubleRangeContains(@NotNull ClosedRange<Double> receiver$0, int i) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        return receiver$0.contains(Double.valueOf(i));
    }

    @Deprecated(message = "This `contains` operation mixing integer and floating point arguments has ambiguous semantics and is going to be removed.")
    @JvmName(name = "doubleRangeContains")
    public static final boolean doubleRangeContains(@NotNull ClosedRange<Double> receiver$0, long j) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        return receiver$0.contains(Double.valueOf(j));
    }

    @Deprecated(message = "This `contains` operation mixing integer and floating point arguments has ambiguous semantics and is going to be removed.")
    @JvmName(name = "doubleRangeContains")
    public static final boolean doubleRangeContains(@NotNull ClosedRange<Double> receiver$0, short s) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        return receiver$0.contains(Double.valueOf(s));
    }

    @NotNull
    public static final CharProgression downTo(char c, char c2) {
        return CharProgression.Companion.fromClosedRange(c, c2, -1);
    }

    @NotNull
    public static final IntProgression downTo(byte b, byte b2) {
        return IntProgression.Companion.fromClosedRange(b, b2, -1);
    }

    @NotNull
    public static final IntProgression downTo(byte b, int i) {
        return IntProgression.Companion.fromClosedRange(b, i, -1);
    }

    @NotNull
    public static final IntProgression downTo(byte b, short s) {
        return IntProgression.Companion.fromClosedRange(b, s, -1);
    }

    @NotNull
    public static final IntProgression downTo(int i, byte b) {
        return IntProgression.Companion.fromClosedRange(i, b, -1);
    }

    @NotNull
    public static final IntProgression downTo(int i, int i2) {
        return IntProgression.Companion.fromClosedRange(i, i2, -1);
    }

    @NotNull
    public static final IntProgression downTo(int i, short s) {
        return IntProgression.Companion.fromClosedRange(i, s, -1);
    }

    @NotNull
    public static final IntProgression downTo(short s, byte b) {
        return IntProgression.Companion.fromClosedRange(s, b, -1);
    }

    @NotNull
    public static final IntProgression downTo(short s, int i) {
        return IntProgression.Companion.fromClosedRange(s, i, -1);
    }

    @NotNull
    public static final IntProgression downTo(short s, short s2) {
        return IntProgression.Companion.fromClosedRange(s, s2, -1);
    }

    @NotNull
    public static final LongProgression downTo(byte b, long j) {
        return LongProgression.Companion.fromClosedRange(b, j, -1L);
    }

    @NotNull
    public static final LongProgression downTo(int i, long j) {
        return LongProgression.Companion.fromClosedRange(i, j, -1L);
    }

    @NotNull
    public static final LongProgression downTo(long j, byte b) {
        return LongProgression.Companion.fromClosedRange(j, b, -1L);
    }

    @NotNull
    public static final LongProgression downTo(long j, int i) {
        return LongProgression.Companion.fromClosedRange(j, i, -1L);
    }

    @NotNull
    public static final LongProgression downTo(long j, long j2) {
        return LongProgression.Companion.fromClosedRange(j, j2, -1L);
    }

    @NotNull
    public static final LongProgression downTo(long j, short s) {
        return LongProgression.Companion.fromClosedRange(j, s, -1L);
    }

    @NotNull
    public static final LongProgression downTo(short s, long j) {
        return LongProgression.Companion.fromClosedRange(s, j, -1L);
    }

    @Deprecated(message = "This `contains` operation mixing integer and floating point arguments has ambiguous semantics and is going to be removed.")
    @JvmName(name = "floatRangeContains")
    public static final boolean floatRangeContains(@NotNull ClosedRange<Float> receiver$0, byte b) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        return receiver$0.contains(Float.valueOf(b));
    }

    @JvmName(name = "floatRangeContains")
    public static final boolean floatRangeContains(@NotNull ClosedRange<Float> receiver$0, double d) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        return receiver$0.contains(Float.valueOf((float) d));
    }

    @Deprecated(message = "This `contains` operation mixing integer and floating point arguments has ambiguous semantics and is going to be removed.")
    @JvmName(name = "floatRangeContains")
    public static final boolean floatRangeContains(@NotNull ClosedRange<Float> receiver$0, int i) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        return receiver$0.contains(Float.valueOf(i));
    }

    @Deprecated(message = "This `contains` operation mixing integer and floating point arguments has ambiguous semantics and is going to be removed.")
    @JvmName(name = "floatRangeContains")
    public static final boolean floatRangeContains(@NotNull ClosedRange<Float> receiver$0, long j) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        return receiver$0.contains(Float.valueOf((float) j));
    }

    @Deprecated(message = "This `contains` operation mixing integer and floating point arguments has ambiguous semantics and is going to be removed.")
    @JvmName(name = "floatRangeContains")
    public static final boolean floatRangeContains(@NotNull ClosedRange<Float> receiver$0, short s) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        return receiver$0.contains(Float.valueOf(s));
    }

    @JvmName(name = "intRangeContains")
    public static final boolean intRangeContains(@NotNull ClosedRange<Integer> receiver$0, byte b) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        return receiver$0.contains(Integer.valueOf(b));
    }

    @Deprecated(message = "This `contains` operation mixing integer and floating point arguments has ambiguous semantics and is going to be removed.")
    @JvmName(name = "intRangeContains")
    public static final boolean intRangeContains(@NotNull ClosedRange<Integer> receiver$0, double d) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        Integer intExactOrNull = RangesKt.toIntExactOrNull(d);
        return intExactOrNull != null ? receiver$0.contains(intExactOrNull) : false;
    }

    @Deprecated(message = "This `contains` operation mixing integer and floating point arguments has ambiguous semantics and is going to be removed.")
    @JvmName(name = "intRangeContains")
    public static final boolean intRangeContains(@NotNull ClosedRange<Integer> receiver$0, float f) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        Integer intExactOrNull = RangesKt.toIntExactOrNull(f);
        return intExactOrNull != null ? receiver$0.contains(intExactOrNull) : false;
    }

    @JvmName(name = "intRangeContains")
    public static final boolean intRangeContains(@NotNull ClosedRange<Integer> receiver$0, long j) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        Integer intExactOrNull = RangesKt.toIntExactOrNull(j);
        return intExactOrNull != null ? receiver$0.contains(intExactOrNull) : false;
    }

    @JvmName(name = "intRangeContains")
    public static final boolean intRangeContains(@NotNull ClosedRange<Integer> receiver$0, short s) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        return receiver$0.contains(Integer.valueOf(s));
    }

    @JvmName(name = "longRangeContains")
    public static final boolean longRangeContains(@NotNull ClosedRange<Long> receiver$0, byte b) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        return receiver$0.contains(Long.valueOf(b));
    }

    @Deprecated(message = "This `contains` operation mixing integer and floating point arguments has ambiguous semantics and is going to be removed.")
    @JvmName(name = "longRangeContains")
    public static final boolean longRangeContains(@NotNull ClosedRange<Long> receiver$0, double d) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        Long longExactOrNull = RangesKt.toLongExactOrNull(d);
        return longExactOrNull != null ? receiver$0.contains(longExactOrNull) : false;
    }

    @Deprecated(message = "This `contains` operation mixing integer and floating point arguments has ambiguous semantics and is going to be removed.")
    @JvmName(name = "longRangeContains")
    public static final boolean longRangeContains(@NotNull ClosedRange<Long> receiver$0, float f) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        Long longExactOrNull = RangesKt.toLongExactOrNull(f);
        return longExactOrNull != null ? receiver$0.contains(longExactOrNull) : false;
    }

    @JvmName(name = "longRangeContains")
    public static final boolean longRangeContains(@NotNull ClosedRange<Long> receiver$0, int i) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        return receiver$0.contains(Long.valueOf(i));
    }

    @JvmName(name = "longRangeContains")
    public static final boolean longRangeContains(@NotNull ClosedRange<Long> receiver$0, short s) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        return receiver$0.contains(Long.valueOf(s));
    }

    @SinceKotlin(version = "1.3")
    @InlineOnly
    private static final char random(@NotNull CharRange charRange) {
        return RangesKt.random(charRange, Random.Default);
    }

    @SinceKotlin(version = "1.3")
    public static final char random(@NotNull CharRange receiver$0, @NotNull Random random) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        Intrinsics.checkParameterIsNotNull(random, "random");
        try {
            return (char) random.nextInt(receiver$0.getFirst(), receiver$0.getLast() + 1);
        } catch (IllegalArgumentException e) {
            throw new NoSuchElementException(e.getMessage());
        }
    }

    @SinceKotlin(version = "1.3")
    @InlineOnly
    private static final int random(@NotNull IntRange intRange) {
        return RangesKt.random(intRange, Random.Default);
    }

    @SinceKotlin(version = "1.3")
    public static final int random(@NotNull IntRange receiver$0, @NotNull Random random) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        Intrinsics.checkParameterIsNotNull(random, "random");
        try {
            return RandomKt.nextInt(random, receiver$0);
        } catch (IllegalArgumentException e) {
            throw new NoSuchElementException(e.getMessage());
        }
    }

    @SinceKotlin(version = "1.3")
    @InlineOnly
    private static final long random(@NotNull LongRange longRange) {
        return RangesKt.random(longRange, Random.Default);
    }

    @SinceKotlin(version = "1.3")
    public static final long random(@NotNull LongRange receiver$0, @NotNull Random random) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        Intrinsics.checkParameterIsNotNull(random, "random");
        try {
            return RandomKt.nextLong(random, receiver$0);
        } catch (IllegalArgumentException e) {
            throw new NoSuchElementException(e.getMessage());
        }
    }

    @NotNull
    public static final CharProgression reversed(@NotNull CharProgression receiver$0) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        return CharProgression.Companion.fromClosedRange(receiver$0.getLast(), receiver$0.getFirst(), -receiver$0.getStep());
    }

    @NotNull
    public static final IntProgression reversed(@NotNull IntProgression receiver$0) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        return IntProgression.Companion.fromClosedRange(receiver$0.getLast(), receiver$0.getFirst(), -receiver$0.getStep());
    }

    @NotNull
    public static final LongProgression reversed(@NotNull LongProgression receiver$0) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        return LongProgression.Companion.fromClosedRange(receiver$0.getLast(), receiver$0.getFirst(), -receiver$0.getStep());
    }

    @JvmName(name = "shortRangeContains")
    public static final boolean shortRangeContains(@NotNull ClosedRange<Short> receiver$0, byte b) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        return receiver$0.contains(Short.valueOf(b));
    }

    @Deprecated(message = "This `contains` operation mixing integer and floating point arguments has ambiguous semantics and is going to be removed.")
    @JvmName(name = "shortRangeContains")
    public static final boolean shortRangeContains(@NotNull ClosedRange<Short> receiver$0, double d) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        Short shortExactOrNull = RangesKt.toShortExactOrNull(d);
        return shortExactOrNull != null ? receiver$0.contains(shortExactOrNull) : false;
    }

    @Deprecated(message = "This `contains` operation mixing integer and floating point arguments has ambiguous semantics and is going to be removed.")
    @JvmName(name = "shortRangeContains")
    public static final boolean shortRangeContains(@NotNull ClosedRange<Short> receiver$0, float f) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        Short shortExactOrNull = RangesKt.toShortExactOrNull(f);
        return shortExactOrNull != null ? receiver$0.contains(shortExactOrNull) : false;
    }

    @JvmName(name = "shortRangeContains")
    public static final boolean shortRangeContains(@NotNull ClosedRange<Short> receiver$0, int i) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        Short shortExactOrNull = RangesKt.toShortExactOrNull(i);
        return shortExactOrNull != null ? receiver$0.contains(shortExactOrNull) : false;
    }

    @JvmName(name = "shortRangeContains")
    public static final boolean shortRangeContains(@NotNull ClosedRange<Short> receiver$0, long j) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        Short shortExactOrNull = RangesKt.toShortExactOrNull(j);
        return shortExactOrNull != null ? receiver$0.contains(shortExactOrNull) : false;
    }

    @NotNull
    public static final CharProgression step(@NotNull CharProgression receiver$0, int i) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        RangesKt.checkStepIsPositive(i > 0, Integer.valueOf(i));
        CharProgression.Companion companion = CharProgression.Companion;
        char first = receiver$0.getFirst();
        char last = receiver$0.getLast();
        if (receiver$0.getStep() <= 0) {
            i = -i;
        }
        return companion.fromClosedRange(first, last, i);
    }

    @NotNull
    public static final IntProgression step(@NotNull IntProgression receiver$0, int i) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        RangesKt.checkStepIsPositive(i > 0, Integer.valueOf(i));
        IntProgression.Companion companion = IntProgression.Companion;
        int first = receiver$0.getFirst();
        int last = receiver$0.getLast();
        if (receiver$0.getStep() <= 0) {
            i = -i;
        }
        return companion.fromClosedRange(first, last, i);
    }

    @NotNull
    public static final LongProgression step(@NotNull LongProgression receiver$0, long j) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        RangesKt.checkStepIsPositive(j > 0, Long.valueOf(j));
        LongProgression.Companion companion = LongProgression.Companion;
        long first = receiver$0.getFirst();
        long last = receiver$0.getLast();
        if (receiver$0.getStep() <= 0) {
            j = -j;
        }
        return companion.fromClosedRange(first, last, j);
    }

    @Nullable
    public static final Byte toByteExactOrNull(double d) {
        return (d < ((double) (-128)) || d > ((double) 127)) ? null : Byte.valueOf((byte) d);
    }

    @Nullable
    public static final Byte toByteExactOrNull(float f) {
        return (f < ((float) (-128)) || f > ((float) 127)) ? null : Byte.valueOf((byte) f);
    }

    @Nullable
    public static final Byte toByteExactOrNull(int i) {
        return (-128 <= i && 127 >= i) ? Byte.valueOf((byte) i) : null;
    }

    @Nullable
    public static final Byte toByteExactOrNull(long j) {
        return (((long) (-128)) <= j && ((long) 127) >= j) ? Byte.valueOf((byte) j) : null;
    }

    @Nullable
    public static final Byte toByteExactOrNull(short s) {
        return (((short) (-128)) <= s && ((short) 127) >= s) ? Byte.valueOf((byte) s) : null;
    }

    @Nullable
    public static final Integer toIntExactOrNull(double d) {
        return (d < ((double) Integer.MIN_VALUE) || d > ((double) Integer.MAX_VALUE)) ? null : Integer.valueOf((int) d);
    }

    @Nullable
    public static final Integer toIntExactOrNull(float f) {
        return (f < ((float) Integer.MIN_VALUE) || f > ((float) Integer.MAX_VALUE)) ? null : Integer.valueOf((int) f);
    }

    @Nullable
    public static final Integer toIntExactOrNull(long j) {
        return (((long) Integer.MIN_VALUE) <= j && ((long) Integer.MAX_VALUE) >= j) ? Integer.valueOf((int) j) : null;
    }

    @Nullable
    public static final Long toLongExactOrNull(double d) {
        return (d < ((double) Long.MIN_VALUE) || d > ((double) Long.MAX_VALUE)) ? null : Long.valueOf((long) d);
    }

    @Nullable
    public static final Long toLongExactOrNull(float f) {
        return (f < ((float) Long.MIN_VALUE) || f > ((float) Long.MAX_VALUE)) ? null : Long.valueOf(f);
    }

    @Nullable
    public static final Short toShortExactOrNull(double d) {
        return (d < ((double) ShortCompanionObject.MIN_VALUE) || d > ((double) ShortCompanionObject.MAX_VALUE)) ? null : Short.valueOf((short) d);
    }

    @Nullable
    public static final Short toShortExactOrNull(float f) {
        return (f < ((float) ShortCompanionObject.MIN_VALUE) || f > ((float) ShortCompanionObject.MAX_VALUE)) ? null : Short.valueOf((short) f);
    }

    @Nullable
    public static final Short toShortExactOrNull(int i) {
        return (-32768 <= i && 32767 >= i) ? Short.valueOf((short) i) : null;
    }

    @Nullable
    public static final Short toShortExactOrNull(long j) {
        return (((long) ShortCompanionObject.MIN_VALUE) <= j && ((long) ShortCompanionObject.MAX_VALUE) >= j) ? Short.valueOf((short) j) : null;
    }

    @NotNull
    public static final CharRange until(char c, char c2) {
        return c2 <= 0 ? CharRange.Companion.getEMPTY() : new CharRange(c, (char) (c2 - 1));
    }

    @NotNull
    public static final IntRange until(byte b, byte b2) {
        return new IntRange(b, b2 - 1);
    }

    @NotNull
    public static final IntRange until(byte b, int i) {
        return i <= Integer.MIN_VALUE ? IntRange.Companion.getEMPTY() : new IntRange(b, i - 1);
    }

    @NotNull
    public static final IntRange until(byte b, short s) {
        return new IntRange(b, s - 1);
    }

    @NotNull
    public static final IntRange until(int i, byte b) {
        return new IntRange(i, b - 1);
    }

    @NotNull
    public static final IntRange until(int i, int i2) {
        return i2 <= Integer.MIN_VALUE ? IntRange.Companion.getEMPTY() : new IntRange(i, i2 - 1);
    }

    @NotNull
    public static final IntRange until(int i, short s) {
        return new IntRange(i, s - 1);
    }

    @NotNull
    public static final IntRange until(short s, byte b) {
        return new IntRange(s, b - 1);
    }

    @NotNull
    public static final IntRange until(short s, int i) {
        return i <= Integer.MIN_VALUE ? IntRange.Companion.getEMPTY() : new IntRange(s, i - 1);
    }

    @NotNull
    public static final IntRange until(short s, short s2) {
        return new IntRange(s, s2 - 1);
    }

    @NotNull
    public static final LongRange until(byte b, long j) {
        return j <= Long.MIN_VALUE ? LongRange.Companion.getEMPTY() : new LongRange(b, j - 1);
    }

    @NotNull
    public static final LongRange until(int i, long j) {
        return j <= Long.MIN_VALUE ? LongRange.Companion.getEMPTY() : new LongRange(i, j - 1);
    }

    @NotNull
    public static final LongRange until(long j, byte b) {
        return new LongRange(j, b - 1);
    }

    @NotNull
    public static final LongRange until(long j, int i) {
        return new LongRange(j, i - 1);
    }

    @NotNull
    public static final LongRange until(long j, long j2) {
        return j2 <= Long.MIN_VALUE ? LongRange.Companion.getEMPTY() : new LongRange(j, j2 - 1);
    }

    @NotNull
    public static final LongRange until(long j, short s) {
        return new LongRange(j, s - 1);
    }

    @NotNull
    public static final LongRange until(short s, long j) {
        return j <= Long.MIN_VALUE ? LongRange.Companion.getEMPTY() : new LongRange(s, j - 1);
    }
}
