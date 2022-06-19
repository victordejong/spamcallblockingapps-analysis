package kotlin.ranges;

import java.util.NoSuchElementException;
import kotlin.Deprecated;
import kotlin.DeprecatedSinceKotlin;
import kotlin.Metadata;
import kotlin.jvm.internal.ByteCompanionObject;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.LongCompanionObject;
import kotlin.jvm.internal.ShortCompanionObject;
import kotlin.random.Random;
import kotlin.random.RandomKt;
import kotlin.ranges.CharProgression;
import kotlin.ranges.IntProgression;
@Metadata(m402bv = {1, 0, 3}, m401d1 = {"��n\n\u0002\b\u0002\n\u0002\u0010\u000f\n\u0002\b\u0002\n\u0002\u0010\u0005\n\u0002\u0010\u0006\n\u0002\u0010\u0007\n\u0002\u0010\b\n\u0002\u0010\t\n\u0002\u0010\n\n\u0002\b\u0005\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n��\n\u0002\u0010\f\n\u0002\b\b\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u001d\u001a'\u0010��\u001a\u0002H\u0001\"\u000e\b��\u0010\u0001*\b\u0012\u0004\u0012\u0002H\u00010\u0002*\u0002H\u00012\u0006\u0010\u0003\u001a\u0002H\u0001¢\u0006\u0002\u0010\u0004\u001a\u0012\u0010��\u001a\u00020\u0005*\u00020\u00052\u0006\u0010\u0003\u001a\u00020\u0005\u001a\u0012\u0010��\u001a\u00020\u0006*\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u0006\u001a\u0012\u0010��\u001a\u00020\u0007*\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u0007\u001a\u0012\u0010��\u001a\u00020\b*\u00020\b2\u0006\u0010\u0003\u001a\u00020\b\u001a\u0012\u0010��\u001a\u00020\t*\u00020\t2\u0006\u0010\u0003\u001a\u00020\t\u001a\u0012\u0010��\u001a\u00020\n*\u00020\n2\u0006\u0010\u0003\u001a\u00020\n\u001a'\u0010\u000b\u001a\u0002H\u0001\"\u000e\b��\u0010\u0001*\b\u0012\u0004\u0012\u0002H\u00010\u0002*\u0002H\u00012\u0006\u0010\f\u001a\u0002H\u0001¢\u0006\u0002\u0010\u0004\u001a\u0012\u0010\u000b\u001a\u00020\u0005*\u00020\u00052\u0006\u0010\f\u001a\u00020\u0005\u001a\u0012\u0010\u000b\u001a\u00020\u0006*\u00020\u00062\u0006\u0010\f\u001a\u00020\u0006\u001a\u0012\u0010\u000b\u001a\u00020\u0007*\u00020\u00072\u0006\u0010\f\u001a\u00020\u0007\u001a\u0012\u0010\u000b\u001a\u00020\b*\u00020\b2\u0006\u0010\f\u001a\u00020\b\u001a\u0012\u0010\u000b\u001a\u00020\t*\u00020\t2\u0006\u0010\f\u001a\u00020\t\u001a\u0012\u0010\u000b\u001a\u00020\n*\u00020\n2\u0006\u0010\f\u001a\u00020\n\u001a3\u0010\r\u001a\u0002H\u0001\"\u000e\b��\u0010\u0001*\b\u0012\u0004\u0012\u0002H\u00010\u0002*\u0002H\u00012\b\u0010\u0003\u001a\u0004\u0018\u0001H\u00012\b\u0010\f\u001a\u0004\u0018\u0001H\u0001¢\u0006\u0002\u0010\u000e\u001a/\u0010\r\u001a\u0002H\u0001\"\u000e\b��\u0010\u0001*\b\u0012\u0004\u0012\u0002H\u00010\u0002*\u0002H\u00012\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u0002H\u00010\u0010H\u0007¢\u0006\u0002\u0010\u0011\u001a-\u0010\r\u001a\u0002H\u0001\"\u000e\b��\u0010\u0001*\b\u0012\u0004\u0012\u0002H\u00010\u0002*\u0002H\u00012\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u0002H\u00010\u0012¢\u0006\u0002\u0010\u0013\u001a\u001a\u0010\r\u001a\u00020\u0005*\u00020\u00052\u0006\u0010\u0003\u001a\u00020\u00052\u0006\u0010\f\u001a\u00020\u0005\u001a\u001a\u0010\r\u001a\u00020\u0006*\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00062\u0006\u0010\f\u001a\u00020\u0006\u001a\u001a\u0010\r\u001a\u00020\u0007*\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u00072\u0006\u0010\f\u001a\u00020\u0007\u001a\u001a\u0010\r\u001a\u00020\b*\u00020\b2\u0006\u0010\u0003\u001a\u00020\b2\u0006\u0010\f\u001a\u00020\b\u001a\u0018\u0010\r\u001a\u00020\b*\u00020\b2\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\b0\u0012\u001a\u001a\u0010\r\u001a\u00020\t*\u00020\t2\u0006\u0010\u0003\u001a\u00020\t2\u0006\u0010\f\u001a\u00020\t\u001a\u0018\u0010\r\u001a\u00020\t*\u00020\t2\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\t0\u0012\u001a\u001a\u0010\r\u001a\u00020\n*\u00020\n2\u0006\u0010\u0003\u001a\u00020\n2\u0006\u0010\f\u001a\u00020\n\u001a\u001c\u0010\u0014\u001a\u00020\u0015*\u00020\u00162\b\u0010\u0017\u001a\u0004\u0018\u00010\u0018H\u0087\n¢\u0006\u0002\u0010\u0019\u001a \u0010\u0014\u001a\u00020\u0015*\b\u0012\u0004\u0012\u00020\u00050\u00122\u0006\u0010\u001a\u001a\u00020\u0006H\u0087\u0002¢\u0006\u0002\b\u001b\u001a \u0010\u0014\u001a\u00020\u0015*\b\u0012\u0004\u0012\u00020\u00050\u00122\u0006\u0010\u001a\u001a\u00020\u0007H\u0087\u0002¢\u0006\u0002\b\u001b\u001a \u0010\u0014\u001a\u00020\u0015*\b\u0012\u0004\u0012\u00020\u00050\u00122\u0006\u0010\u001a\u001a\u00020\bH\u0087\u0002¢\u0006\u0002\b\u001b\u001a \u0010\u0014\u001a\u00020\u0015*\b\u0012\u0004\u0012\u00020\u00050\u00122\u0006\u0010\u001a\u001a\u00020\tH\u0087\u0002¢\u0006\u0002\b\u001b\u001a \u0010\u0014\u001a\u00020\u0015*\b\u0012\u0004\u0012\u00020\u00050\u00122\u0006\u0010\u001a\u001a\u00020\nH\u0087\u0002¢\u0006\u0002\b\u001b\u001a \u0010\u0014\u001a\u00020\u0015*\b\u0012\u0004\u0012\u00020\u00060\u00122\u0006\u0010\u001a\u001a\u00020\u0005H\u0087\u0002¢\u0006\u0002\b\u001c\u001a \u0010\u0014\u001a\u00020\u0015*\b\u0012\u0004\u0012\u00020\u00060\u00122\u0006\u0010\u001a\u001a\u00020\u0007H\u0087\u0002¢\u0006\u0002\b\u001c\u001a \u0010\u0014\u001a\u00020\u0015*\b\u0012\u0004\u0012\u00020\u00060\u00122\u0006\u0010\u001a\u001a\u00020\bH\u0087\u0002¢\u0006\u0002\b\u001c\u001a \u0010\u0014\u001a\u00020\u0015*\b\u0012\u0004\u0012\u00020\u00060\u00122\u0006\u0010\u001a\u001a\u00020\tH\u0087\u0002¢\u0006\u0002\b\u001c\u001a \u0010\u0014\u001a\u00020\u0015*\b\u0012\u0004\u0012\u00020\u00060\u00122\u0006\u0010\u001a\u001a\u00020\nH\u0087\u0002¢\u0006\u0002\b\u001c\u001a \u0010\u0014\u001a\u00020\u0015*\b\u0012\u0004\u0012\u00020\u00070\u00122\u0006\u0010\u001a\u001a\u00020\u0005H\u0087\u0002¢\u0006\u0002\b\u001d\u001a \u0010\u0014\u001a\u00020\u0015*\b\u0012\u0004\u0012\u00020\u00070\u00122\u0006\u0010\u001a\u001a\u00020\u0006H\u0087\u0002¢\u0006\u0002\b\u001d\u001a \u0010\u0014\u001a\u00020\u0015*\b\u0012\u0004\u0012\u00020\u00070\u00122\u0006\u0010\u001a\u001a\u00020\bH\u0087\u0002¢\u0006\u0002\b\u001d\u001a \u0010\u0014\u001a\u00020\u0015*\b\u0012\u0004\u0012\u00020\u00070\u00122\u0006\u0010\u001a\u001a\u00020\tH\u0087\u0002¢\u0006\u0002\b\u001d\u001a \u0010\u0014\u001a\u00020\u0015*\b\u0012\u0004\u0012\u00020\u00070\u00122\u0006\u0010\u001a\u001a\u00020\nH\u0087\u0002¢\u0006\u0002\b\u001d\u001a \u0010\u0014\u001a\u00020\u0015*\b\u0012\u0004\u0012\u00020\b0\u00122\u0006\u0010\u001a\u001a\u00020\u0005H\u0087\u0002¢\u0006\u0002\b\u001e\u001a \u0010\u0014\u001a\u00020\u0015*\b\u0012\u0004\u0012\u00020\b0\u00122\u0006\u0010\u001a\u001a\u00020\u0006H\u0087\u0002¢\u0006\u0002\b\u001e\u001a \u0010\u0014\u001a\u00020\u0015*\b\u0012\u0004\u0012\u00020\b0\u00122\u0006\u0010\u001a\u001a\u00020\u0007H\u0087\u0002¢\u0006\u0002\b\u001e\u001a \u0010\u0014\u001a\u00020\u0015*\b\u0012\u0004\u0012\u00020\b0\u00122\u0006\u0010\u001a\u001a\u00020\tH\u0087\u0002¢\u0006\u0002\b\u001e\u001a \u0010\u0014\u001a\u00020\u0015*\b\u0012\u0004\u0012\u00020\b0\u00122\u0006\u0010\u001a\u001a\u00020\nH\u0087\u0002¢\u0006\u0002\b\u001e\u001a \u0010\u0014\u001a\u00020\u0015*\b\u0012\u0004\u0012\u00020\t0\u00122\u0006\u0010\u001a\u001a\u00020\u0005H\u0087\u0002¢\u0006\u0002\b\u001f\u001a \u0010\u0014\u001a\u00020\u0015*\b\u0012\u0004\u0012\u00020\t0\u00122\u0006\u0010\u001a\u001a\u00020\u0006H\u0087\u0002¢\u0006\u0002\b\u001f\u001a \u0010\u0014\u001a\u00020\u0015*\b\u0012\u0004\u0012\u00020\t0\u00122\u0006\u0010\u001a\u001a\u00020\u0007H\u0087\u0002¢\u0006\u0002\b\u001f\u001a \u0010\u0014\u001a\u00020\u0015*\b\u0012\u0004\u0012\u00020\t0\u00122\u0006\u0010\u001a\u001a\u00020\bH\u0087\u0002¢\u0006\u0002\b\u001f\u001a \u0010\u0014\u001a\u00020\u0015*\b\u0012\u0004\u0012\u00020\t0\u00122\u0006\u0010\u001a\u001a\u00020\nH\u0087\u0002¢\u0006\u0002\b\u001f\u001a \u0010\u0014\u001a\u00020\u0015*\b\u0012\u0004\u0012\u00020\n0\u00122\u0006\u0010\u001a\u001a\u00020\u0005H\u0087\u0002¢\u0006\u0002\b \u001a \u0010\u0014\u001a\u00020\u0015*\b\u0012\u0004\u0012\u00020\n0\u00122\u0006\u0010\u001a\u001a\u00020\u0006H\u0087\u0002¢\u0006\u0002\b \u001a \u0010\u0014\u001a\u00020\u0015*\b\u0012\u0004\u0012\u00020\n0\u00122\u0006\u0010\u001a\u001a\u00020\u0007H\u0087\u0002¢\u0006\u0002\b \u001a \u0010\u0014\u001a\u00020\u0015*\b\u0012\u0004\u0012\u00020\n0\u00122\u0006\u0010\u001a\u001a\u00020\bH\u0087\u0002¢\u0006\u0002\b \u001a \u0010\u0014\u001a\u00020\u0015*\b\u0012\u0004\u0012\u00020\n0\u00122\u0006\u0010\u001a\u001a\u00020\tH\u0087\u0002¢\u0006\u0002\b \u001a\u001c\u0010\u0014\u001a\u00020\u0015*\u00020!2\b\u0010\u0017\u001a\u0004\u0018\u00010\bH\u0087\n¢\u0006\u0002\u0010\"\u001a\u001c\u0010\u0014\u001a\u00020\u0015*\u00020#2\b\u0010\u0017\u001a\u0004\u0018\u00010\tH\u0087\n¢\u0006\u0002\u0010$\u001a\u0015\u0010%\u001a\u00020&*\u00020\u00052\u0006\u0010'\u001a\u00020\u0005H\u0086\u0004\u001a\u0015\u0010%\u001a\u00020&*\u00020\u00052\u0006\u0010'\u001a\u00020\bH\u0086\u0004\u001a\u0015\u0010%\u001a\u00020(*\u00020\u00052\u0006\u0010'\u001a\u00020\tH\u0086\u0004\u001a\u0015\u0010%\u001a\u00020&*\u00020\u00052\u0006\u0010'\u001a\u00020\nH\u0086\u0004\u001a\u0015\u0010%\u001a\u00020)*\u00020\u00182\u0006\u0010'\u001a\u00020\u0018H\u0086\u0004\u001a\u0015\u0010%\u001a\u00020&*\u00020\b2\u0006\u0010'\u001a\u00020\u0005H\u0086\u0004\u001a\u0015\u0010%\u001a\u00020&*\u00020\b2\u0006\u0010'\u001a\u00020\bH\u0086\u0004\u001a\u0015\u0010%\u001a\u00020(*\u00020\b2\u0006\u0010'\u001a\u00020\tH\u0086\u0004\u001a\u0015\u0010%\u001a\u00020&*\u00020\b2\u0006\u0010'\u001a\u00020\nH\u0086\u0004\u001a\u0015\u0010%\u001a\u00020(*\u00020\t2\u0006\u0010'\u001a\u00020\u0005H\u0086\u0004\u001a\u0015\u0010%\u001a\u00020(*\u00020\t2\u0006\u0010'\u001a\u00020\bH\u0086\u0004\u001a\u0015\u0010%\u001a\u00020(*\u00020\t2\u0006\u0010'\u001a\u00020\tH\u0086\u0004\u001a\u0015\u0010%\u001a\u00020(*\u00020\t2\u0006\u0010'\u001a\u00020\nH\u0086\u0004\u001a\u0015\u0010%\u001a\u00020&*\u00020\n2\u0006\u0010'\u001a\u00020\u0005H\u0086\u0004\u001a\u0015\u0010%\u001a\u00020&*\u00020\n2\u0006\u0010'\u001a\u00020\bH\u0086\u0004\u001a\u0015\u0010%\u001a\u00020(*\u00020\n2\u0006\u0010'\u001a\u00020\tH\u0086\u0004\u001a\u0015\u0010%\u001a\u00020&*\u00020\n2\u0006\u0010'\u001a\u00020\nH\u0086\u0004\u001a\r\u0010*\u001a\u00020\u0018*\u00020\u0016H\u0087\b\u001a\u0014\u0010*\u001a\u00020\u0018*\u00020\u00162\u0006\u0010*\u001a\u00020+H\u0007\u001a\r\u0010*\u001a\u00020\b*\u00020!H\u0087\b\u001a\u0014\u0010*\u001a\u00020\b*\u00020!2\u0006\u0010*\u001a\u00020+H\u0007\u001a\r\u0010*\u001a\u00020\t*\u00020#H\u0087\b\u001a\u0014\u0010*\u001a\u00020\t*\u00020#2\u0006\u0010*\u001a\u00020+H\u0007\u001a\u0014\u0010,\u001a\u0004\u0018\u00010\u0018*\u00020\u0016H\u0087\b¢\u0006\u0002\u0010-\u001a\u001b\u0010,\u001a\u0004\u0018\u00010\u0018*\u00020\u00162\u0006\u0010*\u001a\u00020+H\u0007¢\u0006\u0002\u0010.\u001a\u0014\u0010,\u001a\u0004\u0018\u00010\b*\u00020!H\u0087\b¢\u0006\u0002\u0010/\u001a\u001b\u0010,\u001a\u0004\u0018\u00010\b*\u00020!2\u0006\u0010*\u001a\u00020+H\u0007¢\u0006\u0002\u00100\u001a\u0014\u0010,\u001a\u0004\u0018\u00010\t*\u00020#H\u0087\b¢\u0006\u0002\u00101\u001a\u001b\u0010,\u001a\u0004\u0018\u00010\t*\u00020#2\u0006\u0010*\u001a\u00020+H\u0007¢\u0006\u0002\u00102\u001a\n\u00103\u001a\u00020)*\u00020)\u001a\n\u00103\u001a\u00020&*\u00020&\u001a\n\u00103\u001a\u00020(*\u00020(\u001a\u0015\u00104\u001a\u00020)*\u00020)2\u0006\u00104\u001a\u00020\bH\u0086\u0004\u001a\u0015\u00104\u001a\u00020&*\u00020&2\u0006\u00104\u001a\u00020\bH\u0086\u0004\u001a\u0015\u00104\u001a\u00020(*\u00020(2\u0006\u00104\u001a\u00020\tH\u0086\u0004\u001a\u0013\u00105\u001a\u0004\u0018\u00010\u0005*\u00020\u0006H��¢\u0006\u0002\u00106\u001a\u0013\u00105\u001a\u0004\u0018\u00010\u0005*\u00020\u0007H��¢\u0006\u0002\u00107\u001a\u0013\u00105\u001a\u0004\u0018\u00010\u0005*\u00020\bH��¢\u0006\u0002\u00108\u001a\u0013\u00105\u001a\u0004\u0018\u00010\u0005*\u00020\tH��¢\u0006\u0002\u00109\u001a\u0013\u00105\u001a\u0004\u0018\u00010\u0005*\u00020\nH��¢\u0006\u0002\u0010:\u001a\u0013\u0010;\u001a\u0004\u0018\u00010\b*\u00020\u0006H��¢\u0006\u0002\u0010<\u001a\u0013\u0010;\u001a\u0004\u0018\u00010\b*\u00020\u0007H��¢\u0006\u0002\u0010=\u001a\u0013\u0010;\u001a\u0004\u0018\u00010\b*\u00020\tH��¢\u0006\u0002\u0010>\u001a\u0013\u0010?\u001a\u0004\u0018\u00010\t*\u00020\u0006H��¢\u0006\u0002\u0010@\u001a\u0013\u0010?\u001a\u0004\u0018\u00010\t*\u00020\u0007H��¢\u0006\u0002\u0010A\u001a\u0013\u0010B\u001a\u0004\u0018\u00010\n*\u00020\u0006H��¢\u0006\u0002\u0010C\u001a\u0013\u0010B\u001a\u0004\u0018\u00010\n*\u00020\u0007H��¢\u0006\u0002\u0010D\u001a\u0013\u0010B\u001a\u0004\u0018\u00010\n*\u00020\bH��¢\u0006\u0002\u0010E\u001a\u0013\u0010B\u001a\u0004\u0018\u00010\n*\u00020\tH��¢\u0006\u0002\u0010F\u001a\u0015\u0010G\u001a\u00020!*\u00020\u00052\u0006\u0010'\u001a\u00020\u0005H\u0086\u0004\u001a\u0015\u0010G\u001a\u00020!*\u00020\u00052\u0006\u0010'\u001a\u00020\bH\u0086\u0004\u001a\u0015\u0010G\u001a\u00020#*\u00020\u00052\u0006\u0010'\u001a\u00020\tH\u0086\u0004\u001a\u0015\u0010G\u001a\u00020!*\u00020\u00052\u0006\u0010'\u001a\u00020\nH\u0086\u0004\u001a\u0015\u0010G\u001a\u00020\u0016*\u00020\u00182\u0006\u0010'\u001a\u00020\u0018H\u0086\u0004\u001a\u0015\u0010G\u001a\u00020!*\u00020\b2\u0006\u0010'\u001a\u00020\u0005H\u0086\u0004\u001a\u0015\u0010G\u001a\u00020!*\u00020\b2\u0006\u0010'\u001a\u00020\bH\u0086\u0004\u001a\u0015\u0010G\u001a\u00020#*\u00020\b2\u0006\u0010'\u001a\u00020\tH\u0086\u0004\u001a\u0015\u0010G\u001a\u00020!*\u00020\b2\u0006\u0010'\u001a\u00020\nH\u0086\u0004\u001a\u0015\u0010G\u001a\u00020#*\u00020\t2\u0006\u0010'\u001a\u00020\u0005H\u0086\u0004\u001a\u0015\u0010G\u001a\u00020#*\u00020\t2\u0006\u0010'\u001a\u00020\bH\u0086\u0004\u001a\u0015\u0010G\u001a\u00020#*\u00020\t2\u0006\u0010'\u001a\u00020\tH\u0086\u0004\u001a\u0015\u0010G\u001a\u00020#*\u00020\t2\u0006\u0010'\u001a\u00020\nH\u0086\u0004\u001a\u0015\u0010G\u001a\u00020!*\u00020\n2\u0006\u0010'\u001a\u00020\u0005H\u0086\u0004\u001a\u0015\u0010G\u001a\u00020!*\u00020\n2\u0006\u0010'\u001a\u00020\bH\u0086\u0004\u001a\u0015\u0010G\u001a\u00020#*\u00020\n2\u0006\u0010'\u001a\u00020\tH\u0086\u0004\u001a\u0015\u0010G\u001a\u00020!*\u00020\n2\u0006\u0010'\u001a\u00020\nH\u0086\u0004¨\u0006H"}, m400d2 = {"coerceAtLeast", "T", "", "minimumValue", "(Ljava/lang/Comparable;Ljava/lang/Comparable;)Ljava/lang/Comparable;", "", "", "", "", "", "", "coerceAtMost", "maximumValue", "coerceIn", "(Ljava/lang/Comparable;Ljava/lang/Comparable;Ljava/lang/Comparable;)Ljava/lang/Comparable;", "range", "Lkotlin/ranges/ClosedFloatingPointRange;", "(Ljava/lang/Comparable;Lkotlin/ranges/ClosedFloatingPointRange;)Ljava/lang/Comparable;", "Lkotlin/ranges/ClosedRange;", "(Ljava/lang/Comparable;Lkotlin/ranges/ClosedRange;)Ljava/lang/Comparable;", "contains", "", "Lkotlin/ranges/CharRange;", "element", "", "(Lkotlin/ranges/CharRange;Ljava/lang/Character;)Z", "value", "byteRangeContains", "doubleRangeContains", "floatRangeContains", "intRangeContains", "longRangeContains", "shortRangeContains", "Lkotlin/ranges/IntRange;", "(Lkotlin/ranges/IntRange;Ljava/lang/Integer;)Z", "Lkotlin/ranges/LongRange;", "(Lkotlin/ranges/LongRange;Ljava/lang/Long;)Z", "downTo", "Lkotlin/ranges/IntProgression;", "to", "Lkotlin/ranges/LongProgression;", "Lkotlin/ranges/CharProgression;", "random", "Lkotlin/random/Random;", "randomOrNull", "(Lkotlin/ranges/CharRange;)Ljava/lang/Character;", "(Lkotlin/ranges/CharRange;Lkotlin/random/Random;)Ljava/lang/Character;", "(Lkotlin/ranges/IntRange;)Ljava/lang/Integer;", "(Lkotlin/ranges/IntRange;Lkotlin/random/Random;)Ljava/lang/Integer;", "(Lkotlin/ranges/LongRange;)Ljava/lang/Long;", "(Lkotlin/ranges/LongRange;Lkotlin/random/Random;)Ljava/lang/Long;", "reversed", "step", "toByteExactOrNull", "(D)Ljava/lang/Byte;", "(F)Ljava/lang/Byte;", "(I)Ljava/lang/Byte;", "(J)Ljava/lang/Byte;", "(S)Ljava/lang/Byte;", "toIntExactOrNull", "(D)Ljava/lang/Integer;", "(F)Ljava/lang/Integer;", "(J)Ljava/lang/Integer;", "toLongExactOrNull", "(D)Ljava/lang/Long;", "(F)Ljava/lang/Long;", "toShortExactOrNull", "(D)Ljava/lang/Short;", "(F)Ljava/lang/Short;", "(I)Ljava/lang/Short;", "(J)Ljava/lang/Short;", "until", "kotlin-stdlib"}, m399k = 5, m398mv = {1, 4, 0}, m396xi = 1, m395xs = "kotlin/ranges/RangesKt")
/* loaded from: classes-dex2jar.jar:kotlin/ranges/RangesKt___RangesKt.class */
public class RangesKt___RangesKt extends RangesKt__RangesKt {
    @Deprecated(message = "This `contains` operation mixing integer and floating point arguments has ambiguous semantics and is going to be removed.")
    @DeprecatedSinceKotlin(errorSince = "1.4", warningSince = "1.3")
    public static final boolean byteRangeContains(ClosedRange<Byte> contains, double d) {
        Intrinsics.checkNotNullParameter(contains, "$this$contains");
        Byte byteExactOrNull = RangesKt.toByteExactOrNull(d);
        return byteExactOrNull != null ? contains.contains(byteExactOrNull) : false;
    }

    @Deprecated(message = "This `contains` operation mixing integer and floating point arguments has ambiguous semantics and is going to be removed.")
    @DeprecatedSinceKotlin(errorSince = "1.4", warningSince = "1.3")
    public static final boolean byteRangeContains(ClosedRange<Byte> contains, float f) {
        Intrinsics.checkNotNullParameter(contains, "$this$contains");
        Byte byteExactOrNull = RangesKt.toByteExactOrNull(f);
        return byteExactOrNull != null ? contains.contains(byteExactOrNull) : false;
    }

    public static final boolean byteRangeContains(ClosedRange<Byte> contains, int i) {
        Intrinsics.checkNotNullParameter(contains, "$this$contains");
        Byte byteExactOrNull = RangesKt.toByteExactOrNull(i);
        return byteExactOrNull != null ? contains.contains(byteExactOrNull) : false;
    }

    public static final boolean byteRangeContains(ClosedRange<Byte> contains, long j) {
        Intrinsics.checkNotNullParameter(contains, "$this$contains");
        Byte byteExactOrNull = RangesKt.toByteExactOrNull(j);
        return byteExactOrNull != null ? contains.contains(byteExactOrNull) : false;
    }

    public static final boolean byteRangeContains(ClosedRange<Byte> contains, short s) {
        Intrinsics.checkNotNullParameter(contains, "$this$contains");
        Byte byteExactOrNull = RangesKt.toByteExactOrNull(s);
        return byteExactOrNull != null ? contains.contains(byteExactOrNull) : false;
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

    public static final <T extends Comparable<? super T>> T coerceAtLeast(T coerceAtLeast, T minimumValue) {
        Intrinsics.checkNotNullParameter(coerceAtLeast, "$this$coerceAtLeast");
        Intrinsics.checkNotNullParameter(minimumValue, "minimumValue");
        T t = coerceAtLeast;
        if (coerceAtLeast.compareTo(minimumValue) < 0) {
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

    public static final <T extends Comparable<? super T>> T coerceAtMost(T coerceAtMost, T maximumValue) {
        Intrinsics.checkNotNullParameter(coerceAtMost, "$this$coerceAtMost");
        Intrinsics.checkNotNullParameter(maximumValue, "maximumValue");
        T t = coerceAtMost;
        if (coerceAtMost.compareTo(maximumValue) > 0) {
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

    public static final int coerceIn(int i, ClosedRange<Integer> range) {
        int i2;
        Intrinsics.checkNotNullParameter(range, "range");
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
    /* JADX WARN: Type inference failed for: r0v23, types: [long] */
    /* JADX WARN: Type inference failed for: r0v27, types: [long] */
    public static final long coerceIn(long j, ClosedRange<Long> range) {
        char c;
        Intrinsics.checkNotNullParameter(range, "range");
        if (range instanceof ClosedFloatingPointRange) {
            return ((Number) RangesKt.coerceIn(Long.valueOf(j), (ClosedFloatingPointRange<Long>) range)).longValue();
        }
        if (range.isEmpty()) {
            throw new IllegalArgumentException("Cannot coerce value to an empty range: " + range + '.');
        }
        if (j < range.getStart().longValue()) {
            c = range.getStart().longValue();
        } else {
            c = j;
            if (j > range.getEndInclusive().longValue()) {
                c = range.getEndInclusive().longValue();
            }
        }
        return c;
    }

    public static final <T extends Comparable<? super T>> T coerceIn(T coerceIn, T t, T t2) {
        Intrinsics.checkNotNullParameter(coerceIn, "$this$coerceIn");
        if (t == null || t2 == null) {
            if (t != null && coerceIn.compareTo(t) < 0) {
                return t;
            }
            if (t2 != null && coerceIn.compareTo(t2) > 0) {
                return t2;
            }
        } else if (t.compareTo(t2) > 0) {
            throw new IllegalArgumentException("Cannot coerce value to an empty range: maximum " + t2 + " is less than minimum " + t + '.');
        } else if (coerceIn.compareTo(t) < 0) {
            return t;
        } else {
            if (coerceIn.compareTo(t2) > 0) {
                return t2;
            }
        }
        return coerceIn;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v23, types: [java.lang.Comparable] */
    /* JADX WARN: Type inference failed for: r0v27, types: [java.lang.Comparable] */
    /* JADX WARN: Type inference failed for: r5v0, types: [kotlin.ranges.ClosedFloatingPointRange<T extends java.lang.Comparable<? super T>>, java.lang.Object, kotlin.ranges.ClosedFloatingPointRange] */
    public static final <T extends Comparable<? super T>> T coerceIn(T coerceIn, ClosedFloatingPointRange<T> range) {
        T t;
        Intrinsics.checkNotNullParameter(coerceIn, "$this$coerceIn");
        Intrinsics.checkNotNullParameter(range, "range");
        if (range.isEmpty()) {
            throw new IllegalArgumentException("Cannot coerce value to an empty range: " + ((Object) range) + '.');
        }
        if (!range.lessThanOrEquals(coerceIn, range.getStart()) || range.lessThanOrEquals(range.getStart(), coerceIn)) {
            t = coerceIn;
            if (range.lessThanOrEquals(range.getEndInclusive(), coerceIn)) {
                t = coerceIn;
                if (!range.lessThanOrEquals(coerceIn, range.getEndInclusive())) {
                    t = range.getEndInclusive();
                }
            }
        } else {
            t = range.getStart();
        }
        return t;
    }

    public static final <T extends Comparable<? super T>> T coerceIn(T coerceIn, ClosedRange<T> range) {
        T t;
        Intrinsics.checkNotNullParameter(coerceIn, "$this$coerceIn");
        Intrinsics.checkNotNullParameter(range, "range");
        if (range instanceof ClosedFloatingPointRange) {
            return (T) RangesKt.coerceIn((Comparable) coerceIn, (ClosedFloatingPointRange) range);
        }
        if (range.isEmpty()) {
            throw new IllegalArgumentException("Cannot coerce value to an empty range: " + range + '.');
        }
        if (coerceIn.compareTo(range.getStart()) < 0) {
            t = range.getStart();
        } else {
            t = coerceIn;
            if (coerceIn.compareTo(range.getEndInclusive()) > 0) {
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

    private static final boolean contains(CharRange contains, Character ch) {
        Intrinsics.checkNotNullParameter(contains, "$this$contains");
        return ch != null && contains.contains(ch.charValue());
    }

    private static final boolean contains(IntRange contains, Integer num) {
        Intrinsics.checkNotNullParameter(contains, "$this$contains");
        return num != null && contains.contains(num.intValue());
    }

    private static final boolean contains(LongRange contains, Long l) {
        Intrinsics.checkNotNullParameter(contains, "$this$contains");
        return l != null && contains.contains(l.longValue());
    }

    @Deprecated(message = "This `contains` operation mixing integer and floating point arguments has ambiguous semantics and is going to be removed.")
    @DeprecatedSinceKotlin(errorSince = "1.4", warningSince = "1.3")
    public static final boolean doubleRangeContains(ClosedRange<Double> contains, byte b) {
        Intrinsics.checkNotNullParameter(contains, "$this$contains");
        return contains.contains(Double.valueOf(b));
    }

    public static final boolean doubleRangeContains(ClosedRange<Double> contains, float f) {
        Intrinsics.checkNotNullParameter(contains, "$this$contains");
        return contains.contains(Double.valueOf(f));
    }

    @Deprecated(message = "This `contains` operation mixing integer and floating point arguments has ambiguous semantics and is going to be removed.")
    @DeprecatedSinceKotlin(errorSince = "1.4", warningSince = "1.3")
    public static final boolean doubleRangeContains(ClosedRange<Double> contains, int i) {
        Intrinsics.checkNotNullParameter(contains, "$this$contains");
        return contains.contains(Double.valueOf(i));
    }

    @Deprecated(message = "This `contains` operation mixing integer and floating point arguments has ambiguous semantics and is going to be removed.")
    @DeprecatedSinceKotlin(errorSince = "1.4", warningSince = "1.3")
    public static final boolean doubleRangeContains(ClosedRange<Double> contains, long j) {
        Intrinsics.checkNotNullParameter(contains, "$this$contains");
        return contains.contains(Double.valueOf(j));
    }

    @Deprecated(message = "This `contains` operation mixing integer and floating point arguments has ambiguous semantics and is going to be removed.")
    @DeprecatedSinceKotlin(errorSince = "1.4", warningSince = "1.3")
    public static final boolean doubleRangeContains(ClosedRange<Double> contains, short s) {
        Intrinsics.checkNotNullParameter(contains, "$this$contains");
        return contains.contains(Double.valueOf(s));
    }

    public static final CharProgression downTo(char c, char c2) {
        return CharProgression.Companion.fromClosedRange(c, c2, -1);
    }

    public static final IntProgression downTo(byte b, byte b2) {
        return IntProgression.Companion.fromClosedRange(b, b2, -1);
    }

    public static final IntProgression downTo(byte b, int i) {
        return IntProgression.Companion.fromClosedRange(b, i, -1);
    }

    public static final IntProgression downTo(byte b, short s) {
        return IntProgression.Companion.fromClosedRange(b, s, -1);
    }

    public static final IntProgression downTo(int i, byte b) {
        return IntProgression.Companion.fromClosedRange(i, b, -1);
    }

    public static final IntProgression downTo(int i, int i2) {
        return IntProgression.Companion.fromClosedRange(i, i2, -1);
    }

    public static final IntProgression downTo(int i, short s) {
        return IntProgression.Companion.fromClosedRange(i, s, -1);
    }

    public static final IntProgression downTo(short s, byte b) {
        return IntProgression.Companion.fromClosedRange(s, b, -1);
    }

    public static final IntProgression downTo(short s, int i) {
        return IntProgression.Companion.fromClosedRange(s, i, -1);
    }

    public static final IntProgression downTo(short s, short s2) {
        return IntProgression.Companion.fromClosedRange(s, s2, -1);
    }

    public static final LongProgression downTo(byte b, long j) {
        return LongProgression.Companion.fromClosedRange(b, j, -1L);
    }

    public static final LongProgression downTo(int i, long j) {
        return LongProgression.Companion.fromClosedRange(i, j, -1L);
    }

    public static final LongProgression downTo(long j, byte b) {
        return LongProgression.Companion.fromClosedRange(j, b, -1L);
    }

    public static final LongProgression downTo(long j, int i) {
        return LongProgression.Companion.fromClosedRange(j, i, -1L);
    }

    public static final LongProgression downTo(long j, long j2) {
        return LongProgression.Companion.fromClosedRange(j, j2, -1L);
    }

    public static final LongProgression downTo(long j, short s) {
        return LongProgression.Companion.fromClosedRange(j, s, -1L);
    }

    public static final LongProgression downTo(short s, long j) {
        return LongProgression.Companion.fromClosedRange(s, j, -1L);
    }

    @Deprecated(message = "This `contains` operation mixing integer and floating point arguments has ambiguous semantics and is going to be removed.")
    @DeprecatedSinceKotlin(errorSince = "1.4", warningSince = "1.3")
    public static final boolean floatRangeContains(ClosedRange<Float> contains, byte b) {
        Intrinsics.checkNotNullParameter(contains, "$this$contains");
        return contains.contains(Float.valueOf(b));
    }

    public static final boolean floatRangeContains(ClosedRange<Float> contains, double d) {
        Intrinsics.checkNotNullParameter(contains, "$this$contains");
        return contains.contains(Float.valueOf((float) d));
    }

    @Deprecated(message = "This `contains` operation mixing integer and floating point arguments has ambiguous semantics and is going to be removed.")
    @DeprecatedSinceKotlin(errorSince = "1.4", warningSince = "1.3")
    public static final boolean floatRangeContains(ClosedRange<Float> contains, int i) {
        Intrinsics.checkNotNullParameter(contains, "$this$contains");
        return contains.contains(Float.valueOf(i));
    }

    @Deprecated(message = "This `contains` operation mixing integer and floating point arguments has ambiguous semantics and is going to be removed.")
    @DeprecatedSinceKotlin(errorSince = "1.4", warningSince = "1.3")
    public static final boolean floatRangeContains(ClosedRange<Float> contains, long j) {
        Intrinsics.checkNotNullParameter(contains, "$this$contains");
        return contains.contains(Float.valueOf((float) j));
    }

    @Deprecated(message = "This `contains` operation mixing integer and floating point arguments has ambiguous semantics and is going to be removed.")
    @DeprecatedSinceKotlin(errorSince = "1.4", warningSince = "1.3")
    public static final boolean floatRangeContains(ClosedRange<Float> contains, short s) {
        Intrinsics.checkNotNullParameter(contains, "$this$contains");
        return contains.contains(Float.valueOf(s));
    }

    public static final boolean intRangeContains(ClosedRange<Integer> contains, byte b) {
        Intrinsics.checkNotNullParameter(contains, "$this$contains");
        return contains.contains(Integer.valueOf(b));
    }

    @Deprecated(message = "This `contains` operation mixing integer and floating point arguments has ambiguous semantics and is going to be removed.")
    @DeprecatedSinceKotlin(errorSince = "1.4", warningSince = "1.3")
    public static final boolean intRangeContains(ClosedRange<Integer> contains, double d) {
        Intrinsics.checkNotNullParameter(contains, "$this$contains");
        Integer intExactOrNull = RangesKt.toIntExactOrNull(d);
        return intExactOrNull != null ? contains.contains(intExactOrNull) : false;
    }

    @Deprecated(message = "This `contains` operation mixing integer and floating point arguments has ambiguous semantics and is going to be removed.")
    @DeprecatedSinceKotlin(errorSince = "1.4", warningSince = "1.3")
    public static final boolean intRangeContains(ClosedRange<Integer> contains, float f) {
        Intrinsics.checkNotNullParameter(contains, "$this$contains");
        Integer intExactOrNull = RangesKt.toIntExactOrNull(f);
        return intExactOrNull != null ? contains.contains(intExactOrNull) : false;
    }

    public static final boolean intRangeContains(ClosedRange<Integer> contains, long j) {
        Intrinsics.checkNotNullParameter(contains, "$this$contains");
        Integer intExactOrNull = RangesKt.toIntExactOrNull(j);
        return intExactOrNull != null ? contains.contains(intExactOrNull) : false;
    }

    public static final boolean intRangeContains(ClosedRange<Integer> contains, short s) {
        Intrinsics.checkNotNullParameter(contains, "$this$contains");
        return contains.contains(Integer.valueOf(s));
    }

    public static final boolean longRangeContains(ClosedRange<Long> contains, byte b) {
        Intrinsics.checkNotNullParameter(contains, "$this$contains");
        return contains.contains(Long.valueOf(b));
    }

    @Deprecated(message = "This `contains` operation mixing integer and floating point arguments has ambiguous semantics and is going to be removed.")
    @DeprecatedSinceKotlin(errorSince = "1.4", warningSince = "1.3")
    public static final boolean longRangeContains(ClosedRange<Long> contains, double d) {
        Intrinsics.checkNotNullParameter(contains, "$this$contains");
        Long longExactOrNull = RangesKt.toLongExactOrNull(d);
        return longExactOrNull != null ? contains.contains(longExactOrNull) : false;
    }

    @Deprecated(message = "This `contains` operation mixing integer and floating point arguments has ambiguous semantics and is going to be removed.")
    @DeprecatedSinceKotlin(errorSince = "1.4", warningSince = "1.3")
    public static final boolean longRangeContains(ClosedRange<Long> contains, float f) {
        Intrinsics.checkNotNullParameter(contains, "$this$contains");
        Long longExactOrNull = RangesKt.toLongExactOrNull(f);
        return longExactOrNull != null ? contains.contains(longExactOrNull) : false;
    }

    public static final boolean longRangeContains(ClosedRange<Long> contains, int i) {
        Intrinsics.checkNotNullParameter(contains, "$this$contains");
        return contains.contains(Long.valueOf(i));
    }

    public static final boolean longRangeContains(ClosedRange<Long> contains, short s) {
        Intrinsics.checkNotNullParameter(contains, "$this$contains");
        return contains.contains(Long.valueOf(s));
    }

    private static final char random(CharRange charRange) {
        return RangesKt.random(charRange, Random.Default);
    }

    public static final char random(CharRange random, Random random2) {
        Intrinsics.checkNotNullParameter(random, "$this$random");
        Intrinsics.checkNotNullParameter(random2, "random");
        try {
            return (char) random2.nextInt(random.getFirst(), random.getLast() + 1);
        } catch (IllegalArgumentException e) {
            throw new NoSuchElementException(e.getMessage());
        }
    }

    private static final int random(IntRange intRange) {
        return RangesKt.random(intRange, Random.Default);
    }

    public static final int random(IntRange random, Random random2) {
        Intrinsics.checkNotNullParameter(random, "$this$random");
        Intrinsics.checkNotNullParameter(random2, "random");
        try {
            return RandomKt.nextInt(random2, random);
        } catch (IllegalArgumentException e) {
            throw new NoSuchElementException(e.getMessage());
        }
    }

    private static final long random(LongRange longRange) {
        return RangesKt.random(longRange, Random.Default);
    }

    public static final long random(LongRange random, Random random2) {
        Intrinsics.checkNotNullParameter(random, "$this$random");
        Intrinsics.checkNotNullParameter(random2, "random");
        try {
            return RandomKt.nextLong(random2, random);
        } catch (IllegalArgumentException e) {
            throw new NoSuchElementException(e.getMessage());
        }
    }

    private static final Character randomOrNull(CharRange charRange) {
        return RangesKt.randomOrNull(charRange, Random.Default);
    }

    public static final Character randomOrNull(CharRange randomOrNull, Random random) {
        Intrinsics.checkNotNullParameter(randomOrNull, "$this$randomOrNull");
        Intrinsics.checkNotNullParameter(random, "random");
        if (randomOrNull.isEmpty()) {
            return null;
        }
        return Character.valueOf((char) random.nextInt(randomOrNull.getFirst(), randomOrNull.getLast() + 1));
    }

    private static final Integer randomOrNull(IntRange intRange) {
        return RangesKt.randomOrNull(intRange, Random.Default);
    }

    public static final Integer randomOrNull(IntRange randomOrNull, Random random) {
        Intrinsics.checkNotNullParameter(randomOrNull, "$this$randomOrNull");
        Intrinsics.checkNotNullParameter(random, "random");
        if (randomOrNull.isEmpty()) {
            return null;
        }
        return Integer.valueOf(RandomKt.nextInt(random, randomOrNull));
    }

    private static final Long randomOrNull(LongRange longRange) {
        return RangesKt.randomOrNull(longRange, Random.Default);
    }

    public static final Long randomOrNull(LongRange randomOrNull, Random random) {
        Intrinsics.checkNotNullParameter(randomOrNull, "$this$randomOrNull");
        Intrinsics.checkNotNullParameter(random, "random");
        if (randomOrNull.isEmpty()) {
            return null;
        }
        return Long.valueOf(RandomKt.nextLong(random, randomOrNull));
    }

    public static final CharProgression reversed(CharProgression reversed) {
        Intrinsics.checkNotNullParameter(reversed, "$this$reversed");
        return CharProgression.Companion.fromClosedRange(reversed.getLast(), reversed.getFirst(), -reversed.getStep());
    }

    public static final IntProgression reversed(IntProgression reversed) {
        Intrinsics.checkNotNullParameter(reversed, "$this$reversed");
        return IntProgression.Companion.fromClosedRange(reversed.getLast(), reversed.getFirst(), -reversed.getStep());
    }

    public static final LongProgression reversed(LongProgression reversed) {
        Intrinsics.checkNotNullParameter(reversed, "$this$reversed");
        return LongProgression.Companion.fromClosedRange(reversed.getLast(), reversed.getFirst(), -reversed.getStep());
    }

    public static final boolean shortRangeContains(ClosedRange<Short> contains, byte b) {
        Intrinsics.checkNotNullParameter(contains, "$this$contains");
        return contains.contains(Short.valueOf(b));
    }

    @Deprecated(message = "This `contains` operation mixing integer and floating point arguments has ambiguous semantics and is going to be removed.")
    @DeprecatedSinceKotlin(errorSince = "1.4", warningSince = "1.3")
    public static final boolean shortRangeContains(ClosedRange<Short> contains, double d) {
        Intrinsics.checkNotNullParameter(contains, "$this$contains");
        Short shortExactOrNull = RangesKt.toShortExactOrNull(d);
        return shortExactOrNull != null ? contains.contains(shortExactOrNull) : false;
    }

    @Deprecated(message = "This `contains` operation mixing integer and floating point arguments has ambiguous semantics and is going to be removed.")
    @DeprecatedSinceKotlin(errorSince = "1.4", warningSince = "1.3")
    public static final boolean shortRangeContains(ClosedRange<Short> contains, float f) {
        Intrinsics.checkNotNullParameter(contains, "$this$contains");
        Short shortExactOrNull = RangesKt.toShortExactOrNull(f);
        return shortExactOrNull != null ? contains.contains(shortExactOrNull) : false;
    }

    public static final boolean shortRangeContains(ClosedRange<Short> contains, int i) {
        Intrinsics.checkNotNullParameter(contains, "$this$contains");
        Short shortExactOrNull = RangesKt.toShortExactOrNull(i);
        return shortExactOrNull != null ? contains.contains(shortExactOrNull) : false;
    }

    public static final boolean shortRangeContains(ClosedRange<Short> contains, long j) {
        Intrinsics.checkNotNullParameter(contains, "$this$contains");
        Short shortExactOrNull = RangesKt.toShortExactOrNull(j);
        return shortExactOrNull != null ? contains.contains(shortExactOrNull) : false;
    }

    public static final CharProgression step(CharProgression step, int i) {
        Intrinsics.checkNotNullParameter(step, "$this$step");
        RangesKt.checkStepIsPositive(i > 0, Integer.valueOf(i));
        CharProgression.Companion companion = CharProgression.Companion;
        char first = step.getFirst();
        char last = step.getLast();
        if (step.getStep() <= 0) {
            i = -i;
        }
        return companion.fromClosedRange(first, last, i);
    }

    public static final IntProgression step(IntProgression step, int i) {
        Intrinsics.checkNotNullParameter(step, "$this$step");
        RangesKt.checkStepIsPositive(i > 0, Integer.valueOf(i));
        IntProgression.Companion companion = IntProgression.Companion;
        int first = step.getFirst();
        int last = step.getLast();
        if (step.getStep() <= 0) {
            i = -i;
        }
        return companion.fromClosedRange(first, last, i);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v15, types: [long] */
    /* JADX WARN: Type inference failed for: r0v4, types: [kotlin.ranges.LongProgression$Companion] */
    /* JADX WARN: Type inference failed for: r9v1 */
    /* JADX WARN: Type inference failed for: r9v2 */
    /* JADX WARN: Type inference failed for: r9v3 */
    public static final LongProgression step(LongProgression step, long j) {
        Intrinsics.checkNotNullParameter(step, "$this$step");
        RangesKt.checkStepIsPositive(j > 0, Long.valueOf(j));
        ?? r0 = LongProgression.Companion;
        long first = step.getFirst();
        long last = step.getLast();
        ?? r9 = j;
        if (step.getStep() <= 0) {
            r9 = -j;
        }
        return r0.fromClosedRange(first, last, r9);
    }

    public static final Byte toByteExactOrNull(double d) {
        return (d < ((double) ByteCompanionObject.MIN_VALUE) || d > ((double) 127)) ? null : Byte.valueOf((byte) d);
    }

    public static final Byte toByteExactOrNull(float f) {
        return (f < ((float) ByteCompanionObject.MIN_VALUE) || f > ((float) 127)) ? null : Byte.valueOf((byte) f);
    }

    public static final Byte toByteExactOrNull(int i) {
        return (-128 <= i && 127 >= i) ? Byte.valueOf((byte) i) : null;
    }

    public static final Byte toByteExactOrNull(long j) {
        return (((long) ByteCompanionObject.MIN_VALUE) <= j && ((long) 127) >= j) ? Byte.valueOf((byte) j) : null;
    }

    public static final Byte toByteExactOrNull(short s) {
        return (((short) ByteCompanionObject.MIN_VALUE) <= s && ((short) 127) >= s) ? Byte.valueOf((byte) s) : null;
    }

    public static final Integer toIntExactOrNull(double d) {
        return (d < ((double) Integer.MIN_VALUE) || d > ((double) Integer.MAX_VALUE)) ? null : Integer.valueOf((int) d);
    }

    public static final Integer toIntExactOrNull(float f) {
        return (f < ((float) Integer.MIN_VALUE) || f > ((float) Integer.MAX_VALUE)) ? null : Integer.valueOf((int) f);
    }

    public static final Integer toIntExactOrNull(long j) {
        return (((long) Integer.MIN_VALUE) <= j && ((long) Integer.MAX_VALUE) >= j) ? Integer.valueOf((int) j) : null;
    }

    public static final Long toLongExactOrNull(double d) {
        return (d < ((double) Long.MIN_VALUE) || d > ((double) LongCompanionObject.MAX_VALUE)) ? null : Long.valueOf((long) d);
    }

    public static final Long toLongExactOrNull(float f) {
        return (f < ((float) Long.MIN_VALUE) || f > ((float) LongCompanionObject.MAX_VALUE)) ? null : Long.valueOf(f);
    }

    public static final Short toShortExactOrNull(double d) {
        return (d < ((double) ShortCompanionObject.MIN_VALUE) || d > ((double) ShortCompanionObject.MAX_VALUE)) ? null : Short.valueOf((short) d);
    }

    public static final Short toShortExactOrNull(float f) {
        return (f < ((float) ShortCompanionObject.MIN_VALUE) || f > ((float) ShortCompanionObject.MAX_VALUE)) ? null : Short.valueOf((short) f);
    }

    public static final Short toShortExactOrNull(int i) {
        return (-32768 <= i && 32767 >= i) ? Short.valueOf((short) i) : null;
    }

    public static final Short toShortExactOrNull(long j) {
        return (((long) ShortCompanionObject.MIN_VALUE) <= j && ((long) ShortCompanionObject.MAX_VALUE) >= j) ? Short.valueOf((short) j) : null;
    }

    public static final CharRange until(char c, char c2) {
        return Intrinsics.compare((int) c2, 0) <= 0 ? CharRange.Companion.getEMPTY() : new CharRange(c, (char) (c2 - 1));
    }

    public static final IntRange until(byte b, byte b2) {
        return new IntRange(b, b2 - 1);
    }

    public static final IntRange until(byte b, int i) {
        return i <= Integer.MIN_VALUE ? IntRange.Companion.getEMPTY() : new IntRange(b, i - 1);
    }

    public static final IntRange until(byte b, short s) {
        return new IntRange(b, s - 1);
    }

    public static final IntRange until(int i, byte b) {
        return new IntRange(i, b - 1);
    }

    public static final IntRange until(int i, int i2) {
        return i2 <= Integer.MIN_VALUE ? IntRange.Companion.getEMPTY() : new IntRange(i, i2 - 1);
    }

    public static final IntRange until(int i, short s) {
        return new IntRange(i, s - 1);
    }

    public static final IntRange until(short s, byte b) {
        return new IntRange(s, b - 1);
    }

    public static final IntRange until(short s, int i) {
        return i <= Integer.MIN_VALUE ? IntRange.Companion.getEMPTY() : new IntRange(s, i - 1);
    }

    public static final IntRange until(short s, short s2) {
        return new IntRange(s, s2 - 1);
    }

    public static final LongRange until(byte b, long j) {
        return j <= Long.MIN_VALUE ? LongRange.Companion.getEMPTY() : new LongRange(b, j - 1);
    }

    public static final LongRange until(int i, long j) {
        return j <= Long.MIN_VALUE ? LongRange.Companion.getEMPTY() : new LongRange(i, j - 1);
    }

    public static final LongRange until(long j, byte b) {
        return new LongRange(j, b - 1);
    }

    public static final LongRange until(long j, int i) {
        return new LongRange(j, i - 1);
    }

    public static final LongRange until(long j, long j2) {
        return j2 <= Long.MIN_VALUE ? LongRange.Companion.getEMPTY() : new LongRange(j, j2 - 1);
    }

    public static final LongRange until(long j, short s) {
        return new LongRange(j, s - 1);
    }

    public static final LongRange until(short s, long j) {
        return j <= Long.MIN_VALUE ? LongRange.Companion.getEMPTY() : new LongRange(s, j - 1);
    }
}
