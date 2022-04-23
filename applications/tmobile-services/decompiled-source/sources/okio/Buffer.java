package okio;

import com.google.android.gms.common.api.Api;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.google.firebase.crashlytics.internal.proto.CodedOutputStream;
import java.io.Closeable;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.channels.ByteChannel;
import java.nio.charset.Charset;
import kotlin.Metadata;
import kotlin.collections.ArraysKt___ArraysJvmKt;
import kotlin.jvm.JvmField;
import kotlin.jvm.JvmName;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Charsets;
import okio.internal.BufferKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"��´\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010��\n��\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0010\u0005\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0015\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0012\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0019\n\u0002\u0010\n\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0010\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b'\u0018��2\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u0004:\u0002Î\u0001B\b¢\u0006\u0005\bÍ\u0001\u0010\tJ\u000f\u0010\u0005\u001a\u00020��H\u0016¢\u0006\u0004\b\u0005\u0010\u0006J\r\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\b\u0010\tJ\u000f\u0010\n\u001a\u00020��H\u0016¢\u0006\u0004\b\n\u0010\u0006J\u000f\u0010\u000b\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\u000b\u0010\tJ\r\u0010\r\u001a\u00020\f¢\u0006\u0004\b\r\u0010\u000eJ\r\u0010\u000f\u001a\u00020��¢\u0006\u0004\b\u000f\u0010\u0006J+\u0010\u0014\u001a\u00020��2\u0006\u0010\u0011\u001a\u00020\u00102\b\b\u0002\u0010\u0012\u001a\u00020\f2\b\b\u0002\u0010\u0013\u001a\u00020\fH\u0007¢\u0006\u0004\b\u0014\u0010\u0015J\u001f\u0010\u0014\u001a\u00020��2\u0006\u0010\u0011\u001a\u00020��2\b\b\u0002\u0010\u0012\u001a\u00020\f¢\u0006\u0004\b\u0014\u0010\u0016J'\u0010\u0014\u001a\u00020��2\u0006\u0010\u0011\u001a\u00020��2\b\b\u0002\u0010\u0012\u001a\u00020\f2\u0006\u0010\u0013\u001a\u00020\f¢\u0006\u0004\b\u0014\u0010\u0017J\u0017\u0010\u001b\u001a\u00020\u001a2\u0006\u0010\u0019\u001a\u00020\u0018H\u0002¢\u0006\u0004\b\u001b\u0010\u001cJ\u000f\u0010\u001d\u001a\u00020��H\u0016¢\u0006\u0004\b\u001d\u0010\u0006J\u000f\u0010\u001e\u001a\u00020��H\u0016¢\u0006\u0004\b\u001e\u0010\u0006J\u001a\u0010\"\u001a\u00020!2\b\u0010 \u001a\u0004\u0018\u00010\u001fH\u0096\u0002¢\u0006\u0004\b\"\u0010#J\u000f\u0010$\u001a\u00020!H\u0016¢\u0006\u0004\b$\u0010%J\u000f\u0010&\u001a\u00020\u0007H\u0016¢\u0006\u0004\b&\u0010\tJ\u0018\u0010+\u001a\u00020(2\u0006\u0010'\u001a\u00020\fH\u0087\u0002¢\u0006\u0004\b)\u0010*J\u0017\u0010)\u001a\u00020(2\u0006\u0010,\u001a\u00020\fH\u0007¢\u0006\u0004\b-\u0010*J\u000f\u0010/\u001a\u00020.H\u0016¢\u0006\u0004\b/\u00100J\u001f\u00102\u001a\u00020\u001a2\u0006\u0010\u0019\u001a\u00020\u00182\u0006\u00101\u001a\u00020\u001aH\u0002¢\u0006\u0004\b2\u00103J\u0015\u00104\u001a\u00020\u001a2\u0006\u00101\u001a\u00020\u001a¢\u0006\u0004\b4\u00105J\u0015\u00106\u001a\u00020\u001a2\u0006\u00101\u001a\u00020\u001a¢\u0006\u0004\b6\u00105J\u0015\u00107\u001a\u00020\u001a2\u0006\u00101\u001a\u00020\u001a¢\u0006\u0004\b7\u00105J\u0017\u00109\u001a\u00020\f2\u0006\u00108\u001a\u00020(H\u0016¢\u0006\u0004\b9\u0010:J\u001f\u00109\u001a\u00020\f2\u0006\u00108\u001a\u00020(2\u0006\u0010;\u001a\u00020\fH\u0016¢\u0006\u0004\b9\u0010<J'\u00109\u001a\u00020\f2\u0006\u00108\u001a\u00020(2\u0006\u0010;\u001a\u00020\f2\u0006\u0010=\u001a\u00020\fH\u0016¢\u0006\u0004\b9\u0010>J\u0017\u00109\u001a\u00020\f2\u0006\u0010?\u001a\u00020\u001aH\u0016¢\u0006\u0004\b9\u0010@J\u001f\u00109\u001a\u00020\f2\u0006\u0010?\u001a\u00020\u001a2\u0006\u0010;\u001a\u00020\fH\u0016¢\u0006\u0004\b9\u0010AJ\u0017\u0010C\u001a\u00020\f2\u0006\u0010B\u001a\u00020\u001aH\u0016¢\u0006\u0004\bC\u0010@J\u001f\u0010C\u001a\u00020\f2\u0006\u0010B\u001a\u00020\u001a2\u0006\u0010;\u001a\u00020\fH\u0016¢\u0006\u0004\bC\u0010AJ\u000f\u0010E\u001a\u00020DH\u0016¢\u0006\u0004\bE\u0010FJ\u000f\u0010G\u001a\u00020!H\u0016¢\u0006\u0004\bG\u0010%J\r\u0010H\u001a\u00020\u001a¢\u0006\u0004\bH\u0010IJ\u000f\u0010J\u001a\u00020\u0010H\u0016¢\u0006\u0004\bJ\u0010KJ\u000f\u0010L\u001a\u00020\u0001H\u0016¢\u0006\u0004\bL\u0010MJ\u001f\u0010N\u001a\u00020!2\u0006\u0010\u0012\u001a\u00020\f2\u0006\u0010?\u001a\u00020\u001aH\u0016¢\u0006\u0004\bN\u0010OJ/\u0010N\u001a\u00020!2\u0006\u0010\u0012\u001a\u00020\f2\u0006\u0010?\u001a\u00020\u001a2\u0006\u0010P\u001a\u00020.2\u0006\u0010\u0013\u001a\u00020.H\u0016¢\u0006\u0004\bN\u0010QJ\u0017\u0010T\u001a\u00020.2\u0006\u0010S\u001a\u00020RH\u0016¢\u0006\u0004\bT\u0010UJ\u0017\u0010T\u001a\u00020.2\u0006\u0010S\u001a\u00020VH\u0016¢\u0006\u0004\bT\u0010WJ'\u0010T\u001a\u00020.2\u0006\u0010S\u001a\u00020V2\u0006\u0010\u0012\u001a\u00020.2\u0006\u0010\u0013\u001a\u00020.H\u0016¢\u0006\u0004\bT\u0010XJ\u001f\u0010T\u001a\u00020\f2\u0006\u0010S\u001a\u00020��2\u0006\u0010\u0013\u001a\u00020\fH\u0016¢\u0006\u0004\bT\u0010YJ\u0017\u0010[\u001a\u00020\f2\u0006\u0010S\u001a\u00020ZH\u0016¢\u0006\u0004\b[\u0010\\J\u0019\u0010_\u001a\u00020]2\b\b\u0002\u0010^\u001a\u00020]H\u0007¢\u0006\u0004\b_\u0010`J\u000f\u0010a\u001a\u00020(H\u0016¢\u0006\u0004\ba\u0010bJ\u000f\u0010c\u001a\u00020VH\u0016¢\u0006\u0004\bc\u0010dJ\u0017\u0010c\u001a\u00020V2\u0006\u0010\u0013\u001a\u00020\fH\u0016¢\u0006\u0004\bc\u0010eJ\u000f\u0010f\u001a\u00020\u001aH\u0016¢\u0006\u0004\bf\u0010IJ\u0017\u0010f\u001a\u00020\u001a2\u0006\u0010\u0013\u001a\u00020\fH\u0016¢\u0006\u0004\bf\u0010gJ\u000f\u0010h\u001a\u00020\fH\u0016¢\u0006\u0004\bh\u0010\u000eJ\u0015\u0010j\u001a\u00020��2\u0006\u0010i\u001a\u00020D¢\u0006\u0004\bj\u0010kJ\u001d\u0010j\u001a\u00020��2\u0006\u0010i\u001a\u00020D2\u0006\u0010\u0013\u001a\u00020\f¢\u0006\u0004\bj\u0010lJ'\u0010j\u001a\u00020\u00072\u0006\u0010i\u001a\u00020D2\u0006\u0010\u0013\u001a\u00020\f2\u0006\u0010m\u001a\u00020!H\u0002¢\u0006\u0004\bj\u0010nJ\u0017\u0010o\u001a\u00020\u00072\u0006\u0010S\u001a\u00020VH\u0016¢\u0006\u0004\bo\u0010pJ\u001f\u0010o\u001a\u00020\u00072\u0006\u0010S\u001a\u00020��2\u0006\u0010\u0013\u001a\u00020\fH\u0016¢\u0006\u0004\bo\u0010qJ\u000f\u0010r\u001a\u00020\fH\u0016¢\u0006\u0004\br\u0010\u000eJ\u000f\u0010s\u001a\u00020.H\u0016¢\u0006\u0004\bs\u00100J\u000f\u0010t\u001a\u00020.H\u0016¢\u0006\u0004\bt\u00100J\u000f\u0010u\u001a\u00020\fH\u0016¢\u0006\u0004\bu\u0010\u000eJ\u000f\u0010v\u001a\u00020\fH\u0016¢\u0006\u0004\bv\u0010\u000eJ\u000f\u0010x\u001a\u00020wH\u0016¢\u0006\u0004\bx\u0010yJ\u000f\u0010z\u001a\u00020wH\u0016¢\u0006\u0004\bz\u0010yJ\u0017\u0010}\u001a\u00020\u00182\u0006\u0010|\u001a\u00020{H\u0016¢\u0006\u0004\b}\u0010~J\u001f\u0010}\u001a\u00020\u00182\u0006\u0010\u0013\u001a\u00020\f2\u0006\u0010|\u001a\u00020{H\u0016¢\u0006\u0004\b}\u0010\u007fJ\u001b\u0010\u0080\u0001\u001a\u00020]2\b\b\u0002\u0010^\u001a\u00020]H\u0007¢\u0006\u0005\b\u0080\u0001\u0010`J\u0012\u0010\u0081\u0001\u001a\u00020\u0018H\u0016¢\u0006\u0006\b\u0081\u0001\u0010\u0082\u0001J\u001a\u0010\u0081\u0001\u001a\u00020\u00182\u0006\u0010\u0013\u001a\u00020\fH\u0016¢\u0006\u0006\b\u0081\u0001\u0010\u0083\u0001J\u0011\u0010\u0084\u0001\u001a\u00020.H\u0016¢\u0006\u0005\b\u0084\u0001\u00100J\u0014\u0010\u0085\u0001\u001a\u0004\u0018\u00010\u0018H\u0016¢\u0006\u0006\b\u0085\u0001\u0010\u0082\u0001J\u0012\u0010\u0086\u0001\u001a\u00020\u0018H\u0016¢\u0006\u0006\b\u0086\u0001\u0010\u0082\u0001J\u001b\u0010\u0086\u0001\u001a\u00020\u00182\u0007\u0010\u0087\u0001\u001a\u00020\fH\u0016¢\u0006\u0006\b\u0086\u0001\u0010\u0083\u0001J\u001a\u0010\u0088\u0001\u001a\u00020!2\u0006\u0010\u0013\u001a\u00020\fH\u0016¢\u0006\u0006\b\u0088\u0001\u0010\u0089\u0001J\u001a\u0010\u008a\u0001\u001a\u00020\u00072\u0006\u0010\u0013\u001a\u00020\fH\u0016¢\u0006\u0006\b\u008a\u0001\u0010\u008b\u0001J\u001c\u0010\u008e\u0001\u001a\u00020.2\b\u0010\u008d\u0001\u001a\u00030\u008c\u0001H\u0016¢\u0006\u0006\b\u008e\u0001\u0010\u008f\u0001J\u000f\u0010\u0090\u0001\u001a\u00020\u001a¢\u0006\u0005\b\u0090\u0001\u0010IJ\u000f\u0010\u0091\u0001\u001a\u00020\u001a¢\u0006\u0005\b\u0091\u0001\u0010IJ\u000f\u0010\u0092\u0001\u001a\u00020\u001a¢\u0006\u0005\b\u0092\u0001\u0010IJ\u0011\u0010\u0094\u0001\u001a\u00020\fH\u0007¢\u0006\u0005\b\u0093\u0001\u0010\u000eJ\u001a\u0010\u0095\u0001\u001a\u00020\u00072\u0006\u0010\u0013\u001a\u00020\fH\u0016¢\u0006\u0006\b\u0095\u0001\u0010\u008b\u0001J\u000f\u0010\u0096\u0001\u001a\u00020\u001a¢\u0006\u0005\b\u0096\u0001\u0010IJ\u0018\u0010\u0096\u0001\u001a\u00020\u001a2\u0006\u0010\u0013\u001a\u00020.¢\u0006\u0006\b\u0096\u0001\u0010\u0097\u0001J\u0013\u0010\u0099\u0001\u001a\u00030\u0098\u0001H\u0016¢\u0006\u0006\b\u0099\u0001\u0010\u009a\u0001J\u0012\u0010\u009b\u0001\u001a\u00020\u0018H\u0016¢\u0006\u0006\b\u009b\u0001\u0010\u0082\u0001J\u001c\u0010 \u0001\u001a\u00030\u009d\u00012\u0007\u0010\u009c\u0001\u001a\u00020.H��¢\u0006\u0006\b\u009e\u0001\u0010\u009f\u0001J\u001a\u0010¢\u0001\u001a\u00020.2\u0007\u0010¡\u0001\u001a\u00020RH\u0016¢\u0006\u0005\b¢\u0001\u0010UJ\u001b\u0010¢\u0001\u001a\u00020��2\u0007\u0010¡\u0001\u001a\u00020VH\u0016¢\u0006\u0006\b¢\u0001\u0010£\u0001J+\u0010¢\u0001\u001a\u00020��2\u0007\u0010¡\u0001\u001a\u00020V2\u0006\u0010\u0012\u001a\u00020.2\u0006\u0010\u0013\u001a\u00020.H\u0016¢\u0006\u0006\b¢\u0001\u0010¤\u0001J\"\u0010¢\u0001\u001a\u00020\u00072\u0007\u0010¡\u0001\u001a\u00020��2\u0006\u0010\u0013\u001a\u00020\fH\u0016¢\u0006\u0005\b¢\u0001\u0010qJ\u001b\u0010¢\u0001\u001a\u00020��2\u0007\u0010¥\u0001\u001a\u00020\u001aH\u0016¢\u0006\u0006\b¢\u0001\u0010¦\u0001J+\u0010¢\u0001\u001a\u00020��2\u0007\u0010¥\u0001\u001a\u00020\u001a2\u0006\u0010\u0012\u001a\u00020.2\u0006\u0010\u0013\u001a\u00020.H\u0016¢\u0006\u0006\b¢\u0001\u0010§\u0001J$\u0010¢\u0001\u001a\u00020��2\b\u0010¡\u0001\u001a\u00030¨\u00012\u0006\u0010\u0013\u001a\u00020\fH\u0016¢\u0006\u0006\b¢\u0001\u0010©\u0001J\u001c\u0010ª\u0001\u001a\u00020\f2\b\u0010¡\u0001\u001a\u00030¨\u0001H\u0016¢\u0006\u0006\bª\u0001\u0010«\u0001J\u001a\u0010¬\u0001\u001a\u00020��2\u0006\u00108\u001a\u00020.H\u0016¢\u0006\u0006\b¬\u0001\u0010\u00ad\u0001J\u001b\u0010¯\u0001\u001a\u00020��2\u0007\u0010®\u0001\u001a\u00020\fH\u0016¢\u0006\u0006\b¯\u0001\u0010°\u0001J\u001b\u0010±\u0001\u001a\u00020��2\u0007\u0010®\u0001\u001a\u00020\fH\u0016¢\u0006\u0006\b±\u0001\u0010°\u0001J\u001b\u0010³\u0001\u001a\u00020��2\u0007\u0010²\u0001\u001a\u00020.H\u0016¢\u0006\u0006\b³\u0001\u0010\u00ad\u0001J\u001b\u0010´\u0001\u001a\u00020��2\u0007\u0010²\u0001\u001a\u00020.H\u0016¢\u0006\u0006\b´\u0001\u0010\u00ad\u0001J\u001b\u0010µ\u0001\u001a\u00020��2\u0007\u0010®\u0001\u001a\u00020\fH\u0016¢\u0006\u0006\bµ\u0001\u0010°\u0001J\u001b\u0010¶\u0001\u001a\u00020��2\u0007\u0010®\u0001\u001a\u00020\fH\u0016¢\u0006\u0006\b¶\u0001\u0010°\u0001J\u001b\u0010¸\u0001\u001a\u00020��2\u0007\u0010·\u0001\u001a\u00020.H\u0016¢\u0006\u0006\b¸\u0001\u0010\u00ad\u0001J\u001b\u0010¹\u0001\u001a\u00020��2\u0007\u0010·\u0001\u001a\u00020.H\u0016¢\u0006\u0006\b¹\u0001\u0010\u00ad\u0001J#\u0010»\u0001\u001a\u00020��2\u0007\u0010º\u0001\u001a\u00020\u00182\u0006\u0010|\u001a\u00020{H\u0016¢\u0006\u0006\b»\u0001\u0010¼\u0001J5\u0010»\u0001\u001a\u00020��2\u0007\u0010º\u0001\u001a\u00020\u00182\u0007\u0010½\u0001\u001a\u00020.2\u0007\u0010¾\u0001\u001a\u00020.2\u0006\u0010|\u001a\u00020{H\u0016¢\u0006\u0006\b»\u0001\u0010¿\u0001J$\u0010À\u0001\u001a\u00020��2\u0006\u0010\u0011\u001a\u00020\u00102\b\b\u0002\u0010\u0013\u001a\u00020\fH\u0007¢\u0006\u0006\bÀ\u0001\u0010Á\u0001J\u001b\u0010Â\u0001\u001a\u00020��2\u0007\u0010º\u0001\u001a\u00020\u0018H\u0016¢\u0006\u0006\bÂ\u0001\u0010Ã\u0001J-\u0010Â\u0001\u001a\u00020��2\u0007\u0010º\u0001\u001a\u00020\u00182\u0007\u0010½\u0001\u001a\u00020.2\u0007\u0010¾\u0001\u001a\u00020.H\u0016¢\u0006\u0006\bÂ\u0001\u0010Ä\u0001J\u001b\u0010Æ\u0001\u001a\u00020��2\u0007\u0010Å\u0001\u001a\u00020.H\u0016¢\u0006\u0006\bÆ\u0001\u0010\u00ad\u0001R\u0017\u0010\u0005\u001a\u00020��8V@\u0016X\u0096\u0004¢\u0006\u0007\u001a\u0005\bÇ\u0001\u0010\u0006R\u001c\u0010È\u0001\u001a\u0005\u0018\u00010\u009d\u00018��@��X\u0081\u000e¢\u0006\b\n\u0006\bÈ\u0001\u0010É\u0001R1\u0010\u0094\u0001\u001a\u00020\f2\u0007\u0010Ê\u0001\u001a\u00020\f8G@@X\u0086\u000e¢\u0006\u0017\n\u0006\b\u0094\u0001\u0010Ë\u0001\u001a\u0005\b\u0094\u0001\u0010\u000e\"\u0006\bÌ\u0001\u0010\u008b\u0001¨\u0006Ï\u0001"}, d2 = {"Lokio/Buffer;", "Lokio/BufferedSource;", "Lokio/BufferedSink;", "Ljava/lang/Cloneable;", "Ljava/nio/channels/ByteChannel;", "buffer", "()Lokio/Buffer;", "", "clear", "()V", "clone", "close", "", "completeSegmentByteCount", "()J", "copy", "Ljava/io/OutputStream;", "out", "offset", "byteCount", "copyTo", "(Ljava/io/OutputStream;JJ)Lokio/Buffer;", "(Lokio/Buffer;J)Lokio/Buffer;", "(Lokio/Buffer;JJ)Lokio/Buffer;", "", "algorithm", "Lokio/ByteString;", "digest", "(Ljava/lang/String;)Lokio/ByteString;", "emit", "emitCompleteSegments", "", "other", "", "equals", "(Ljava/lang/Object;)Z", "exhausted", "()Z", "flush", "pos", "", "getByte", "(J)B", "get", FirebaseAnalytics.Param.INDEX, "-deprecated_getByte", "", "hashCode", "()I", "key", "hmac", "(Ljava/lang/String;Lokio/ByteString;)Lokio/ByteString;", "hmacSha1", "(Lokio/ByteString;)Lokio/ByteString;", "hmacSha256", "hmacSha512", "b", "indexOf", "(B)J", "fromIndex", "(BJ)J", "toIndex", "(BJJ)J", "bytes", "(Lokio/ByteString;)J", "(Lokio/ByteString;J)J", "targetBytes", "indexOfElement", "Ljava/io/InputStream;", "inputStream", "()Ljava/io/InputStream;", "isOpen", "md5", "()Lokio/ByteString;", "outputStream", "()Ljava/io/OutputStream;", "peek", "()Lokio/BufferedSource;", "rangeEquals", "(JLokio/ByteString;)Z", "bytesOffset", "(JLokio/ByteString;II)Z", "Ljava/nio/ByteBuffer;", "sink", "read", "(Ljava/nio/ByteBuffer;)I", "", "([B)I", "([BII)I", "(Lokio/Buffer;J)J", "Lokio/Sink;", "readAll", "(Lokio/Sink;)J", "Lokio/Buffer$UnsafeCursor;", "unsafeCursor", "readAndWriteUnsafe", "(Lokio/Buffer$UnsafeCursor;)Lokio/Buffer$UnsafeCursor;", "readByte", "()B", "readByteArray", "()[B", "(J)[B", "readByteString", "(J)Lokio/ByteString;", "readDecimalLong", "input", "readFrom", "(Ljava/io/InputStream;)Lokio/Buffer;", "(Ljava/io/InputStream;J)Lokio/Buffer;", "forever", "(Ljava/io/InputStream;JZ)V", "readFully", "([B)V", "(Lokio/Buffer;J)V", "readHexadecimalUnsignedLong", "readInt", "readIntLe", "readLong", "readLongLe", "", "readShort", "()S", "readShortLe", "Ljava/nio/charset/Charset;", "charset", "readString", "(Ljava/nio/charset/Charset;)Ljava/lang/String;", "(JLjava/nio/charset/Charset;)Ljava/lang/String;", "readUnsafe", "readUtf8", "()Ljava/lang/String;", "(J)Ljava/lang/String;", "readUtf8CodePoint", "readUtf8Line", "readUtf8LineStrict", "limit", "request", "(J)Z", "require", "(J)V", "Lokio/Options;", "options", "select", "(Lokio/Options;)I", "sha1", "sha256", "sha512", "-deprecated_size", "size", "skip", "snapshot", "(I)Lokio/ByteString;", "Lokio/Timeout;", "timeout", "()Lokio/Timeout;", "toString", "minimumCapacity", "Lokio/Segment;", "writableSegment$okio", "(I)Lokio/Segment;", "writableSegment", "source", "write", "([B)Lokio/Buffer;", "([BII)Lokio/Buffer;", "byteString", "(Lokio/ByteString;)Lokio/Buffer;", "(Lokio/ByteString;II)Lokio/Buffer;", "Lokio/Source;", "(Lokio/Source;J)Lokio/Buffer;", "writeAll", "(Lokio/Source;)J", "writeByte", "(I)Lokio/Buffer;", "v", "writeDecimalLong", "(J)Lokio/Buffer;", "writeHexadecimalUnsignedLong", "i", "writeInt", "writeIntLe", "writeLong", "writeLongLe", "s", "writeShort", "writeShortLe", "string", "writeString", "(Ljava/lang/String;Ljava/nio/charset/Charset;)Lokio/Buffer;", "beginIndex", "endIndex", "(Ljava/lang/String;IILjava/nio/charset/Charset;)Lokio/Buffer;", "writeTo", "(Ljava/io/OutputStream;J)Lokio/Buffer;", "writeUtf8", "(Ljava/lang/String;)Lokio/Buffer;", "(Ljava/lang/String;II)Lokio/Buffer;", "codePoint", "writeUtf8CodePoint", "getBuffer", "head", "Lokio/Segment;", "<set-?>", "J", "setSize$okio", "<init>", "UnsafeCursor", "okio"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:okio/Buffer.class */
public final class Buffer implements BufferedSource, BufferedSink, Cloneable, ByteChannel {
    @JvmField
    @Nullable

    /* renamed from: f */
    public Segment f24125f;

    /* renamed from: g */
    private long f24126g;

    @Metadata(bv = {1, 0, 3}, d1 = {"��>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n��\n\u0002\u0010\t\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0012\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018��2\u00020\u0001B\u0007¢\u0006\u0004\b\"\u0010\u0004J\u000f\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0003\u0010\u0004J\u0015\u0010\b\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\b\u0010\tJ\r\u0010\n\u001a\u00020\u0005¢\u0006\u0004\b\n\u0010\u000bJ\u0015\u0010\r\u001a\u00020\u00072\u0006\u0010\f\u001a\u00020\u0007¢\u0006\u0004\b\r\u0010\u000eJ\u0015\u0010\u0010\u001a\u00020\u00052\u0006\u0010\u000f\u001a\u00020\u0007¢\u0006\u0004\b\u0010\u0010\u0011R\u0018\u0010\u0013\u001a\u0004\u0018\u00010\u00128\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b\u0013\u0010\u0014R\u0018\u0010\u0016\u001a\u0004\u0018\u00010\u00158\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b\u0016\u0010\u0017R\u0016\u0010\u0018\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b\u0018\u0010\u0019R\u0016\u0010\u000f\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b\u000f\u0010\u001aR\u0016\u0010\u001c\u001a\u00020\u001b8\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b\u001c\u0010\u001dR\u0018\u0010\u001f\u001a\u0004\u0018\u00010\u001e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001f\u0010 R\u0016\u0010!\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b!\u0010\u0019¨\u0006#"}, d2 = {"Lokio/Buffer$UnsafeCursor;", "Ljava/io/Closeable;", "", "close", "()V", "", "minByteCount", "", "expandBuffer", "(I)J", "next", "()I", "newSize", "resizeBuffer", "(J)J", "offset", "seek", "(J)I", "Lokio/Buffer;", "buffer", "Lokio/Buffer;", "", "data", "[B", "end", "I", "J", "", "readWrite", "Z", "Lokio/Segment;", "segment", "Lokio/Segment;", "start", "<init>", "okio"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
    /* loaded from: classes2-dex2jar.jar:okio/Buffer$UnsafeCursor.class */
    public static final class UnsafeCursor implements Closeable {
        @JvmField
        @Nullable

        /* renamed from: f */
        public Buffer f24127f;
        @JvmField

        /* renamed from: g */
        public boolean f24128g;

        /* renamed from: h */
        private Segment f24129h;
        @JvmField
        @Nullable

        /* renamed from: j */
        public byte[] f24131j;
        @JvmField

        /* renamed from: i */
        public long f24130i = -1;
        @JvmField

        /* renamed from: k */
        public int f24132k = -1;
        @JvmField

        /* renamed from: l */
        public int f24133l = -1;

        /* renamed from: a */
        public final int m183a() {
            long j = this.f24130i;
            Buffer buffer = this.f24127f;
            Intrinsics.m1832c(buffer);
            if (j != buffer.m188v0()) {
                long j2 = this.f24130i;
                return m181d(j2 == -1 ? 0L : j2 + (this.f24133l - this.f24132k));
            }
            throw new IllegalStateException("no more bytes".toString());
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v52, types: [long] */
        /* JADX WARN: Type inference failed for: r0v70, types: [long] */
        /* JADX WARN: Type inference failed for: r0v8, types: [long] */
        /* JADX WARN: Unknown variable types count: 3 */
        /* renamed from: b */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final long m182b(long r6) {
            /*
                Method dump skipped, instructions count: 374
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: okio.Buffer.UnsafeCursor.m182b(long):long");
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            if (this.f24127f != null) {
                this.f24127f = null;
                this.f24129h = null;
                this.f24130i = -1L;
                this.f24131j = null;
                this.f24132k = -1;
                this.f24133l = -1;
                return;
            }
            throw new IllegalStateException("not attached to a buffer".toString());
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r11v4 */
        /* JADX WARN: Type inference failed for: r13v1, types: [long] */
        /* JADX WARN: Type inference failed for: r13v5 */
        /* JADX WARN: Type inference failed for: r13v6 */
        /* JADX WARN: Type inference failed for: r13v7 */
        /* JADX WARN: Type inference failed for: r17v1, types: [long] */
        /* JADX WARN: Type inference failed for: r17v5, types: [long] */
        /* JADX WARN: Type inference failed for: r17v9 */
        /* JADX WARN: Unknown variable types count: 2 */
        /* renamed from: d */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final int m181d(long r8) {
            /*
                Method dump skipped, instructions count: 518
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: okio.Buffer.UnsafeCursor.m181d(long):int");
        }
    }

    /* renamed from: V */
    public static /* synthetic */ UnsafeCursor m206V(Buffer buffer, UnsafeCursor unsafeCursor, int i, Object obj) {
        if ((i & 1) != 0) {
            unsafeCursor = new UnsafeCursor();
        }
        buffer.m209N(unsafeCursor);
        return unsafeCursor;
    }

    @Override // okio.BufferedSink
    /* renamed from: A */
    public /* bridge */ /* synthetic */ BufferedSink mo100A(int i) {
        m222D0(i);
        return this;
    }

    @NotNull
    /* renamed from: A0 */
    public Buffer m225A0(@NotNull Source source, long j) throws IOException {
        Intrinsics.m1830e(source, "source");
        while (j > 0) {
            long read = source.read(this, j);
            if (read != -1) {
                j -= read;
            } else {
                throw new EOFException();
            }
        }
        return this;
    }

    @NotNull
    /* renamed from: B0 */
    public Buffer m224B0(@NotNull byte[] source) {
        Intrinsics.m1830e(source, "source");
        m223C0(source, 0, source.length);
        return this;
    }

    @NotNull
    /* renamed from: C0 */
    public Buffer m223C0(@NotNull byte[] source, int i, int i2) {
        Intrinsics.m1830e(source, "source");
        long j = i2;
        _Util.m23b(source.length, i, j);
        int i3 = i2 + i;
        while (i < i3) {
            Segment y0 = m185y0(1);
            int min = Math.min(i3 - i, 8192 - y0.f24198c);
            byte[] bArr = y0.f24196a;
            int i4 = y0.f24198c;
            int i5 = i + min;
            ArraysKt___ArraysJvmKt.m2303c(source, bArr, i4, i, i5);
            y0.f24198c += min;
            i = i5;
        }
        m189u0(m188v0() + j);
        return this;
    }

    @Override // okio.BufferedSource
    /* renamed from: D */
    public void mo86D(@NotNull Buffer sink, long j) throws EOFException {
        Intrinsics.m1830e(sink, "sink");
        if (m188v0() >= j) {
            sink.write(this, j);
        } else {
            sink.write(this, m188v0());
            throw new EOFException();
        }
    }

    @NotNull
    /* renamed from: D0 */
    public Buffer m222D0(int i) {
        Segment y0 = m185y0(1);
        byte[] bArr = y0.f24196a;
        int i2 = y0.f24198c;
        y0.f24198c = i2 + 1;
        bArr[i2] = (byte) i;
        m189u0(m188v0() + 1);
        return this;
    }

    @Override // okio.BufferedSource
    /* renamed from: E */
    public long mo85E(@NotNull ByteString targetBytes) {
        Intrinsics.m1830e(targetBytes, "targetBytes");
        return m216J(targetBytes, 0L);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r12v0 */
    /* JADX WARN: Type inference failed for: r12v1, types: [long] */
    /* JADX WARN: Type inference failed for: r12v5 */
    /* JADX WARN: Type inference failed for: r7v0, types: [long] */
    /* JADX WARN: Unknown variable types count: 1 */
    @org.jetbrains.annotations.NotNull
    /* renamed from: E0 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public okio.Buffer m221E0(long r7) {
        /*
            Method dump skipped, instructions count: 459
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: okio.Buffer.m221E0(long):okio.Buffer");
    }

    @Override // okio.BufferedSink
    /* renamed from: F */
    public /* bridge */ /* synthetic */ BufferedSink mo99F() {
        m194o();
        return this;
    }

    @NotNull
    /* renamed from: F0 */
    public Buffer m220F0(long j) {
        if (j == 0) {
            m222D0(48);
        } else {
            long j2 = (j >>> 1) | j;
            long j3 = j2 | (j2 >>> 2);
            long j4 = j3 | (j3 >>> 4);
            long j5 = j4 | (j4 >>> 8);
            long j6 = j5 | (j5 >>> 16);
            long j7 = j6 | (j6 >>> 32);
            long j8 = j7 - ((j7 >>> 1) & 6148914691236517205L);
            long j9 = ((j8 >>> 2) & 3689348814741910323L) + (j8 & 3689348814741910323L);
            long j10 = ((j9 >>> 4) + j9) & 1085102592571150095L;
            long j11 = j10 + (j10 >>> 8);
            long j12 = j11 + (j11 >>> 16);
            int i = (int) ((((j12 & 63) + ((j12 >>> 32) & 63)) + 3) / 4);
            Segment y0 = m185y0(i);
            byte[] bArr = y0.f24196a;
            int i2 = y0.f24198c;
            for (int i3 = (i2 + i) - 1; i3 >= i2; i3--) {
                bArr[i3] = BufferKt.m18a()[(int) (15 & j)];
                j >>>= 4;
            }
            y0.f24198c += i;
            m189u0(m188v0() + i);
        }
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0140  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0151  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x015d  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x0171 A[EDGE_INSN: B:52:0x0171->B:43:0x0171 ?: BREAK  , SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r11v0 */
    /* JADX WARN: Type inference failed for: r11v2 */
    /* JADX WARN: Type inference failed for: r7v1 */
    /* JADX WARN: Type inference failed for: r7v2, types: [long] */
    /* JADX WARN: Type inference failed for: r7v5 */
    /* JADX WARN: Type inference failed for: r7v6, types: [long] */
    /* JADX WARN: Type inference failed for: r7v7 */
    /* JADX WARN: Type inference failed for: r7v8 */
    /* JADX WARN: Type inference failed for: r9v0 */
    /* JADX WARN: Type inference failed for: r9v2 */
    /* JADX WARN: Type inference failed for: r9v3, types: [long] */
    /* JADX WARN: Type inference failed for: r9v4 */
    /* JADX WARN: Type inference failed for: r9v5 */
    /* JADX WARN: Type inference failed for: r9v6, types: [long] */
    /* JADX WARN: Type inference failed for: r9v7 */
    /* JADX WARN: Type inference failed for: r9v8 */
    /* JADX WARN: Unknown variable types count: 4 */
    @Override // okio.BufferedSource
    /* renamed from: G */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public long mo84G() throws java.io.EOFException {
        /*
            Method dump skipped, instructions count: 402
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: okio.Buffer.mo84G():long");
    }

    @NotNull
    /* renamed from: G0 */
    public Buffer m219G0(int i) {
        Segment y0 = m185y0(4);
        byte[] bArr = y0.f24196a;
        int i2 = y0.f24198c;
        int i3 = i2 + 1;
        bArr[i2] = (byte) ((i >>> 24) & 255);
        int i4 = i3 + 1;
        bArr[i3] = (byte) ((i >>> 16) & 255);
        int i5 = i4 + 1;
        bArr[i4] = (byte) ((i >>> 8) & 255);
        bArr[i5] = (byte) (i & 255);
        y0.f24198c = i5 + 1;
        m189u0(m188v0() + 4);
        return this;
    }

    @Override // okio.BufferedSource
    @NotNull
    /* renamed from: H */
    public String mo83H(long j) throws EOFException {
        String str;
        if (j >= 0) {
            long j2 = Long.MAX_VALUE;
            if (j != Long.MAX_VALUE) {
                j2 = j + 1;
            }
            byte b = (byte) 10;
            long q = m191q(b, 0L, j2);
            if (q != -1) {
                str = BufferKt.m16c(this, q);
            } else if (j2 < m188v0() && m192p(j2 - 1) == ((byte) 13) && m192p(j2) == b) {
                str = BufferKt.m16c(this, j2);
            } else {
                Buffer buffer = new Buffer();
                m196l(buffer, 0L, Math.min(32, m188v0()));
                throw new EOFException("\\n not found: limit=" + Math.min(m188v0(), j) + " content=" + buffer.mo80U().mo40o() + (char) 8230);
            }
            return str;
        }
        throw new IllegalArgumentException(("limit < 0: " + j).toString());
    }

    @NotNull
    /* renamed from: H0 */
    public Buffer m218H0(int i) {
        m219G0(_Util.m22c(i));
        return this;
    }

    @NotNull
    /* renamed from: I0 */
    public Buffer m217I0(long j) {
        Segment y0 = m185y0(8);
        byte[] bArr = y0.f24196a;
        int i = y0.f24198c;
        int i2 = i + 1;
        bArr[i] = (byte) ((j >>> 56) & 255);
        int i3 = i2 + 1;
        bArr[i2] = (byte) ((j >>> 48) & 255);
        int i4 = i3 + 1;
        bArr[i3] = (byte) ((j >>> 40) & 255);
        int i5 = i4 + 1;
        bArr[i4] = (byte) ((j >>> 32) & 255);
        int i6 = i5 + 1;
        bArr[i5] = (byte) ((j >>> 24) & 255);
        int i7 = i6 + 1;
        bArr[i6] = (byte) ((j >>> 16) & 255);
        int i8 = i7 + 1;
        bArr[i7] = (byte) ((j >>> 8) & 255);
        bArr[i8] = (byte) (j & 255);
        y0.f24198c = i8 + 1;
        m189u0(m188v0() + 8);
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v26, types: [long] */
    /* JADX WARN: Type inference failed for: r15v0 */
    /* JADX WARN: Type inference failed for: r15v1, types: [long] */
    /* JADX WARN: Type inference failed for: r15v3 */
    /* JADX WARN: Type inference failed for: r15v4 */
    /* JADX WARN: Type inference failed for: r15v5 */
    /* JADX WARN: Type inference failed for: r15v6, types: [long] */
    /* JADX WARN: Type inference failed for: r15v7 */
    /* JADX WARN: Type inference failed for: r15v8 */
    /* JADX WARN: Type inference failed for: r15v9 */
    /* JADX WARN: Type inference failed for: r7v1, types: [long] */
    /* JADX WARN: Type inference failed for: r7v10, types: [long] */
    /* JADX WARN: Type inference failed for: r7v11 */
    /* JADX WARN: Type inference failed for: r7v12, types: [long] */
    /* JADX WARN: Type inference failed for: r7v13 */
    /* JADX WARN: Type inference failed for: r7v18 */
    /* JADX WARN: Type inference failed for: r7v2 */
    /* JADX WARN: Type inference failed for: r7v21 */
    /* JADX WARN: Type inference failed for: r7v22 */
    /* JADX WARN: Type inference failed for: r7v23 */
    /* JADX WARN: Type inference failed for: r7v3, types: [long] */
    /* JADX WARN: Type inference failed for: r7v4 */
    /* JADX WARN: Type inference failed for: r9v0 */
    /* JADX WARN: Type inference failed for: r9v1, types: [long] */
    /* JADX WARN: Type inference failed for: r9v11, types: [long] */
    /* JADX WARN: Type inference failed for: r9v12, types: [long] */
    /* JADX WARN: Type inference failed for: r9v13, types: [long] */
    /* JADX WARN: Type inference failed for: r9v17 */
    /* JADX WARN: Type inference failed for: r9v18 */
    /* JADX WARN: Type inference failed for: r9v3, types: [long] */
    /* JADX WARN: Type inference failed for: r9v5, types: [long] */
    /* JADX WARN: Type inference failed for: r9v6 */
    /* JADX WARN: Unknown variable types count: 12 */
    /* renamed from: J */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public long m216J(@org.jetbrains.annotations.NotNull okio.ByteString r6, long r7) {
        /*
            Method dump skipped, instructions count: 824
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: okio.Buffer.m216J(okio.ByteString, long):long");
    }

    @NotNull
    /* renamed from: J0 */
    public Buffer m215J0(int i) {
        Segment y0 = m185y0(2);
        byte[] bArr = y0.f24196a;
        int i2 = y0.f24198c;
        int i3 = i2 + 1;
        bArr[i2] = (byte) ((i >>> 8) & 255);
        bArr[i3] = (byte) (i & 255);
        y0.f24198c = i3 + 1;
        m189u0(m188v0() + 2);
        return this;
    }

    @NotNull
    /* renamed from: K */
    public OutputStream m214K() {
        return new OutputStream() { // from class: okio.Buffer$outputStream$1
            @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
            public void close() {
            }

            @Override // java.io.OutputStream, java.io.Flushable
            public void flush() {
            }

            @NotNull
            public String toString() {
                return Buffer.this + ".outputStream()";
            }

            @Override // java.io.OutputStream
            public void write(int i) {
                Buffer.this.m222D0(i);
            }

            @Override // java.io.OutputStream
            public void write(@NotNull byte[] data, int i, int i2) {
                Intrinsics.m1830e(data, "data");
                Buffer.this.m223C0(data, i, i2);
            }
        };
    }

    @NotNull
    /* renamed from: K0 */
    public Buffer m213K0(@NotNull String string, int i, int i2, @NotNull Charset charset) {
        Intrinsics.m1830e(string, "string");
        Intrinsics.m1830e(charset, "charset");
        boolean z = true;
        if (i >= 0) {
            if (i2 >= i) {
                if (i2 > string.length()) {
                    z = false;
                }
                if (!z) {
                    throw new IllegalArgumentException(("endIndex > string.length: " + i2 + " > " + string.length()).toString());
                } else if (Intrinsics.m1834a(charset, Charsets.f21018a)) {
                    m208N0(string, i, i2);
                    return this;
                } else {
                    String substring = string.substring(i, i2);
                    Intrinsics.m1831d(substring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
                    if (substring != null) {
                        byte[] bytes = substring.getBytes(charset);
                        Intrinsics.m1831d(bytes, "(this as java.lang.String).getBytes(charset)");
                        m223C0(bytes, 0, bytes.length);
                        return this;
                    }
                    throw new NullPointerException("null cannot be cast to non-null type java.lang.String");
                }
            } else {
                throw new IllegalArgumentException(("endIndex < beginIndex: " + i2 + " < " + i).toString());
            }
        } else {
            throw new IllegalArgumentException(("beginIndex < 0: " + i).toString());
        }
    }

    /* renamed from: L */
    public boolean m212L(long j, @NotNull ByteString bytes, int i, int i2) {
        Intrinsics.m1830e(bytes, "bytes");
        boolean z = false;
        if (j >= 0) {
            z = false;
            if (i >= 0) {
                z = false;
                if (i2 >= 0) {
                    z = false;
                    if (m188v0() - j >= i2) {
                        if (bytes.m178C() - i >= i2) {
                            int i3 = 0;
                            while (true) {
                                if (i3 >= i2) {
                                    z = true;
                                    break;
                                } else if (m192p(i3 + j) != bytes.m173h(i + i3)) {
                                    z = false;
                                    break;
                                } else {
                                    i3++;
                                }
                            }
                        } else {
                            z = false;
                        }
                    }
                }
            }
        }
        return z;
    }

    @NotNull
    /* renamed from: L0 */
    public Buffer m211L0(@NotNull String string, @NotNull Charset charset) {
        Intrinsics.m1830e(string, "string");
        Intrinsics.m1830e(charset, "charset");
        m213K0(string, 0, string.length(), charset);
        return this;
    }

    @Override // okio.BufferedSink
    /* renamed from: M */
    public /* bridge */ /* synthetic */ BufferedSink mo98M(String str) {
        m210M0(str);
        return this;
    }

    @NotNull
    /* renamed from: M0 */
    public Buffer m210M0(@NotNull String string) {
        Intrinsics.m1830e(string, "string");
        m208N0(string, 0, string.length());
        return this;
    }

    @JvmOverloads
    @NotNull
    /* renamed from: N */
    public final UnsafeCursor m209N(@NotNull UnsafeCursor unsafeCursor) {
        Intrinsics.m1830e(unsafeCursor, "unsafeCursor");
        if (unsafeCursor.f24127f == null) {
            unsafeCursor.f24127f = this;
            unsafeCursor.f24128g = true;
            return unsafeCursor;
        }
        throw new IllegalStateException("already attached to a buffer".toString());
    }

    @NotNull
    /* renamed from: N0 */
    public Buffer m208N0(@NotNull String string, int i, int i2) {
        char charAt;
        Intrinsics.m1830e(string, "string");
        if (i >= 0) {
            if (i2 >= i) {
                if (i2 <= string.length()) {
                    while (i < i2) {
                        char charAt2 = string.charAt(i);
                        if (charAt2 < 128) {
                            Segment y0 = m185y0(1);
                            byte[] bArr = y0.f24196a;
                            int i3 = y0.f24198c - i;
                            int min = Math.min(i2, 8192 - i3);
                            i++;
                            bArr[i + i3] = (byte) charAt2;
                            while (i < min && (charAt = string.charAt(i)) < 128) {
                                bArr[i + i3] = (byte) charAt;
                                i++;
                            }
                            int i4 = y0.f24198c;
                            int i5 = (i3 + i) - i4;
                            y0.f24198c = i4 + i5;
                            m189u0(m188v0() + i5);
                        } else {
                            if (charAt2 < 2048) {
                                Segment y02 = m185y0(2);
                                byte[] bArr2 = y02.f24196a;
                                int i6 = y02.f24198c;
                                bArr2[i6] = (byte) ((charAt2 >> 6) | 192);
                                bArr2[i6 + 1] = (byte) ((charAt2 & '?') | 128);
                                y02.f24198c = i6 + 2;
                                m189u0(m188v0() + 2);
                            } else if (charAt2 < 55296 || charAt2 > 57343) {
                                Segment y03 = m185y0(3);
                                byte[] bArr3 = y03.f24196a;
                                int i7 = y03.f24198c;
                                bArr3[i7] = (byte) ((charAt2 >> '\f') | 224);
                                bArr3[i7 + 1] = (byte) ((63 & (charAt2 >> 6)) | 128);
                                bArr3[i7 + 2] = (byte) ((charAt2 & '?') | 128);
                                y03.f24198c = i7 + 3;
                                m189u0(m188v0() + 3);
                            } else {
                                int i8 = i + 1;
                                char charAt3 = i8 < i2 ? string.charAt(i8) : (char) 0;
                                if (charAt2 > 56319 || 56320 > charAt3 || 57343 < charAt3) {
                                    m222D0(63);
                                    i = i8;
                                } else {
                                    int i9 = (((charAt2 & 1023) << 10) | (charAt3 & 1023)) + 65536;
                                    Segment y04 = m185y0(4);
                                    byte[] bArr4 = y04.f24196a;
                                    int i10 = y04.f24198c;
                                    bArr4[i10] = (byte) ((i9 >> 18) | 240);
                                    bArr4[i10 + 1] = (byte) (((i9 >> 12) & 63) | 128);
                                    bArr4[i10 + 2] = (byte) (((i9 >> 6) & 63) | 128);
                                    bArr4[i10 + 3] = (byte) ((i9 & 63) | 128);
                                    y04.f24198c = i10 + 4;
                                    m189u0(m188v0() + 4);
                                    i += 2;
                                }
                            }
                            i++;
                        }
                    }
                    return this;
                }
                throw new IllegalArgumentException(("endIndex > string.length: " + i2 + " > " + string.length()).toString());
            }
            throw new IllegalArgumentException(("endIndex < beginIndex: " + i2 + " < " + i).toString());
        }
        throw new IllegalArgumentException(("beginIndex < 0: " + i).toString());
    }

    @Override // okio.BufferedSource
    /* renamed from: O */
    public boolean mo82O(long j, @NotNull ByteString bytes) {
        Intrinsics.m1830e(bytes, "bytes");
        return m212L(j, bytes, 0, bytes.m178C());
    }

    @NotNull
    /* renamed from: O0 */
    public Buffer m207O0(int i) {
        if (i < 128) {
            m222D0(i);
        } else if (i < 2048) {
            Segment y0 = m185y0(2);
            byte[] bArr = y0.f24196a;
            int i2 = y0.f24198c;
            bArr[i2] = (byte) ((i >> 6) | 192);
            bArr[i2 + 1] = (byte) ((i & 63) | 128);
            y0.f24198c = i2 + 2;
            m189u0(m188v0() + 2);
        } else if (55296 <= i && 57343 >= i) {
            m222D0(63);
        } else if (i < 65536) {
            Segment y02 = m185y0(3);
            byte[] bArr2 = y02.f24196a;
            int i3 = y02.f24198c;
            bArr2[i3] = (byte) ((i >> 12) | 224);
            bArr2[i3 + 1] = (byte) (((i >> 6) & 63) | 128);
            bArr2[i3 + 2] = (byte) ((i & 63) | 128);
            y02.f24198c = i3 + 3;
            m189u0(m188v0() + 3);
        } else if (i <= 1114111) {
            Segment y03 = m185y0(4);
            byte[] bArr3 = y03.f24196a;
            int i4 = y03.f24198c;
            bArr3[i4] = (byte) ((i >> 18) | 240);
            bArr3[i4 + 1] = (byte) (((i >> 12) & 63) | 128);
            bArr3[i4 + 2] = (byte) (((i >> 6) & 63) | 128);
            bArr3[i4 + 3] = (byte) ((i & 63) | 128);
            y03.f24198c = i4 + 4;
            m189u0(m188v0() + 4);
        } else {
            throw new IllegalArgumentException("Unexpected code point: 0x" + _Util.m19f(i));
        }
        return this;
    }

    @Override // okio.BufferedSource
    @NotNull
    /* renamed from: P */
    public String mo81P(@NotNull Charset charset) {
        Intrinsics.m1830e(charset, "charset");
        return m201b0(this.f24126g, charset);
    }

    @Override // okio.BufferedSink
    /* renamed from: Q */
    public /* bridge */ /* synthetic */ BufferedSink mo97Q(byte[] bArr, int i, int i2) {
        m223C0(bArr, i, i2);
        return this;
    }

    @Override // okio.BufferedSink
    /* renamed from: R */
    public /* bridge */ /* synthetic */ BufferedSink mo96R(String str, int i, int i2) {
        m208N0(str, i, i2);
        return this;
    }

    @Override // okio.BufferedSink
    /* renamed from: S */
    public long mo95S(@NotNull Source source) throws IOException {
        Intrinsics.m1830e(source, "source");
        long j = 0;
        while (true) {
            long read = source.read(this, 8192);
            if (read == -1) {
                return j;
            }
            j += read;
        }
    }

    @Override // okio.BufferedSink
    /* renamed from: T */
    public /* bridge */ /* synthetic */ BufferedSink mo94T(long j) {
        m220F0(j);
        return this;
    }

    @Override // okio.BufferedSource
    @NotNull
    /* renamed from: U */
    public ByteString mo80U() {
        return mo67n(m188v0());
    }

    /* renamed from: X */
    public int m205X() throws EOFException {
        return _Util.m22c(readInt());
    }

    /* renamed from: Z */
    public short m204Z() throws EOFException {
        return _Util.m21d(readShort());
    }

    /* renamed from: a */
    public final void m203a() {
        skip(m188v0());
    }

    @Override // okio.BufferedSource
    @NotNull
    /* renamed from: a0 */
    public String mo78a0() throws EOFException {
        return mo83H(Long.MAX_VALUE);
    }

    @NotNull
    /* renamed from: b */
    public Buffer clone() {
        return m198i();
    }

    @NotNull
    /* renamed from: b0 */
    public String m201b0(long j, @NotNull Charset charset) throws EOFException {
        Intrinsics.m1830e(charset, "charset");
        int i = (j > 0L ? 1 : (j == 0L ? 0 : -1));
        if (!(i >= 0 && j <= ((long) Api.BaseClientBuilder.API_PRIORITY_OTHER))) {
            throw new IllegalArgumentException(("byteCount: " + j).toString());
        } else if (this.f24126g < j) {
            throw new EOFException();
        } else if (i == 0) {
            return "";
        } else {
            Segment segment = this.f24125f;
            Intrinsics.m1832c(segment);
            int i2 = segment.f24197b;
            if (i2 + j > segment.f24198c) {
                return new String(mo75c0(j), charset);
            }
            byte[] bArr = segment.f24196a;
            int i3 = (int) j;
            String str = new String(bArr, i2, i3, charset);
            int i4 = segment.f24197b + i3;
            segment.f24197b = i4;
            this.f24126g -= j;
            if (i4 == segment.f24198c) {
                this.f24125f = segment.m58b();
                SegmentPool.m51b(segment);
            }
            return str;
        }
    }

    @Override // okio.BufferedSource, okio.BufferedSink
    @NotNull
    /* renamed from: c */
    public Buffer mo76c() {
        return this;
    }

    @Override // okio.BufferedSource
    @NotNull
    /* renamed from: c0 */
    public byte[] mo75c0(long j) throws EOFException {
        if (!(j >= 0 && j <= ((long) Api.BaseClientBuilder.API_PRIORITY_OTHER))) {
            throw new IllegalArgumentException(("byteCount: " + j).toString());
        } else if (m188v0() >= j) {
            byte[] bArr = new byte[(int) j];
            readFully(bArr);
            return bArr;
        } else {
            throw new EOFException();
        }
    }

    @Override // okio.Source, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [long] */
    /* JADX WARN: Type inference failed for: r8v0 */
    /* JADX WARN: Type inference failed for: r8v2 */
    /* JADX WARN: Type inference failed for: r8v3 */
    /* JADX WARN: Type inference failed for: r8v5 */
    /* JADX WARN: Unknown variable types count: 1 */
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long m200d() {
        /*
            r5 = this;
            r0 = r5
            long r0 = r0.m188v0()
            r6 = r0
            r0 = 0
            r8 = r0
            r0 = r6
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x0010
            goto L_0x004e
        L_0x0010:
            r0 = r5
            okio.Segment r0 = r0.f24125f
            r10 = r0
            r0 = r10
            kotlin.jvm.internal.Intrinsics.m1832c(r0)
            r0 = r10
            okio.Segment r0 = r0.f24202g
            r10 = r0
            r0 = r10
            kotlin.jvm.internal.Intrinsics.m1832c(r0)
            r0 = r10
            int r0 = r0.f24198c
            r11 = r0
            r0 = r6
            r8 = r0
            r0 = r11
            r1 = 8192(0x2000, float:1.14794E-41)
            if (r0 >= r1) goto L_0x004e
            r0 = r6
            r8 = r0
            r0 = r10
            boolean r0 = r0.f24200e
            if (r0 == 0) goto L_0x004e
            r0 = r6
            r1 = r11
            r2 = r10
            int r2 = r2.f24197b
            int r1 = r1 - r2
            long r1 = (long) r1
            long r0 = r0 - r1
            r8 = r0
        L_0x004e:
            r0 = r8
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: okio.Buffer.m200d():long");
    }

    @NotNull
    /* renamed from: e0 */
    public String m199e0() {
        return m201b0(this.f24126g, Charsets.f21018a);
    }

    public boolean equals(@Nullable Object obj) {
        boolean z = false;
        if (this != obj) {
            if (obj instanceof Buffer) {
                Buffer buffer = (Buffer) obj;
                if (m188v0() == buffer.m188v0()) {
                    if (m188v0() != 0) {
                        Segment segment = this.f24125f;
                        Intrinsics.m1832c(segment);
                        Segment segment2 = buffer.f24125f;
                        Intrinsics.m1832c(segment2);
                        int i = segment.f24197b;
                        int i2 = segment2.f24197b;
                        long j = 0;
                        loop0: while (j < m188v0()) {
                            long min = Math.min(segment.f24198c - i, segment2.f24198c - i2);
                            long j2 = 0;
                            int i3 = i;
                            while (j2 < min) {
                                if (segment.f24196a[i3] != segment2.f24196a[i2]) {
                                    break loop0;
                                }
                                j2++;
                                i3++;
                                i2++;
                            }
                            segment = segment;
                            i = i3;
                            if (i3 == segment.f24198c) {
                                segment = segment.f24201f;
                                Intrinsics.m1832c(segment);
                                i = segment.f24197b;
                            }
                            segment2 = segment2;
                            i2 = i2;
                            if (i2 == segment2.f24198c) {
                                segment2 = segment2.f24201f;
                                Intrinsics.m1832c(segment2);
                                i2 = segment2.f24197b;
                            }
                            j += min;
                        }
                    }
                }
            }
            return z;
        }
        z = true;
        return z;
    }

    @Override // okio.BufferedSink, okio.Sink, java.io.Flushable
    public void flush() {
    }

    @Override // okio.BufferedSink
    /* renamed from: g0 */
    public /* bridge */ /* synthetic */ BufferedSink mo92g0(byte[] bArr) {
        m224B0(bArr);
        return this;
    }

    @Override // okio.BufferedSink
    /* renamed from: h0 */
    public /* bridge */ /* synthetic */ BufferedSink mo91h0(ByteString byteString) {
        m184z0(byteString);
        return this;
    }

    public int hashCode() {
        int i;
        Segment segment;
        Segment segment2 = this.f24125f;
        if (segment2 != null) {
            i = 1;
            do {
                int i2 = segment2.f24198c;
                for (int i3 = segment2.f24197b; i3 < i2; i3++) {
                    i = (i * 31) + segment2.f24196a[i3];
                }
                segment = segment2.f24201f;
                Intrinsics.m1832c(segment);
                segment2 = segment;
                i = i;
            } while (segment != this.f24125f);
        } else {
            i = 0;
        }
        return i;
    }

    @NotNull
    /* renamed from: i */
    public final Buffer m198i() {
        Buffer buffer = new Buffer();
        if (m188v0() != 0) {
            Segment segment = this.f24125f;
            Intrinsics.m1832c(segment);
            Segment d = segment.m56d();
            buffer.f24125f = d;
            d.f24202g = d;
            d.f24201f = d;
            for (Segment segment2 = segment.f24201f; segment2 != segment; segment2 = segment2.f24201f) {
                Segment segment3 = d.f24202g;
                Intrinsics.m1832c(segment3);
                Intrinsics.m1832c(segment2);
                segment3.m57c(segment2.m56d());
            }
            buffer.m189u0(m188v0());
        }
        return buffer;
    }

    @NotNull
    /* renamed from: i0 */
    public String m197i0(long j) throws EOFException {
        return m201b0(j, Charsets.f21018a);
    }

    @Override // java.nio.channels.Channel
    public boolean isOpen() {
        return true;
    }

    @Override // okio.BufferedSource
    @NotNull
    /* renamed from: j */
    public Buffer mo70j() {
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r11v0, types: [long] */
    /* JADX WARN: Type inference failed for: r17v0 */
    /* JADX WARN: Type inference failed for: r17v1, types: [long] */
    /* JADX WARN: Type inference failed for: r17v2 */
    /* JADX WARN: Type inference failed for: r19v0 */
    /* JADX WARN: Type inference failed for: r19v1, types: [long] */
    /* JADX WARN: Type inference failed for: r19v2, types: [long] */
    /* JADX WARN: Type inference failed for: r9v1, types: [long] */
    /* JADX WARN: Type inference failed for: r9v3 */
    /* JADX WARN: Type inference failed for: r9v4 */
    /* JADX WARN: Unknown variable types count: 3 */
    @org.jetbrains.annotations.NotNull
    /* renamed from: l */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final okio.Buffer m196l(@org.jetbrains.annotations.NotNull okio.Buffer r8, long r9, long r11) {
        /*
            Method dump skipped, instructions count: 251
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: okio.Buffer.m196l(okio.Buffer, long, long):okio.Buffer");
    }

    @Override // okio.BufferedSource
    /* renamed from: l0 */
    public long mo68l0(@NotNull Sink sink) throws IOException {
        Intrinsics.m1830e(sink, "sink");
        long v0 = m188v0();
        if (v0 > 0) {
            sink.write(this, v0);
        }
        return v0;
    }

    @NotNull
    /* renamed from: m */
    public Buffer m195m() {
        return this;
    }

    @Override // okio.BufferedSource
    @NotNull
    /* renamed from: n */
    public ByteString mo67n(long j) throws EOFException {
        ByteString byteString;
        if (!(j >= 0 && j <= ((long) Api.BaseClientBuilder.API_PRIORITY_OTHER))) {
            throw new IllegalArgumentException(("byteCount: " + j).toString());
        } else if (m188v0() >= j) {
            if (j >= ((long) CodedOutputStream.DEFAULT_BUFFER_SIZE)) {
                byteString = m186x0((int) j);
                skip(j);
            } else {
                byteString = new ByteString(mo75c0(j));
            }
            return byteString;
        } else {
            throw new EOFException();
        }
    }

    @NotNull
    /* renamed from: o */
    public Buffer m194o() {
        return this;
    }

    /* renamed from: o0 */
    public int m193o0() throws EOFException {
        int i;
        int i2;
        int i3;
        if (m188v0() != 0) {
            byte p = m192p(0L);
            int i4 = 1;
            if ((p & 128) == 0) {
                i = p & Byte.MAX_VALUE;
                i3 = 1;
                i2 = 0;
            } else if ((p & 224) == 192) {
                i = p & 31;
                i3 = 2;
                i2 = 128;
            } else if ((p & 240) == 224) {
                i = p & 15;
                i3 = 3;
                i2 = 2048;
            } else if ((p & 248) == 240) {
                i = p & 7;
                i3 = 4;
                i2 = 65536;
            } else {
                skip(1L);
                i = 65533;
                return i;
            }
            long j = i3;
            if (m188v0() >= j) {
                while (true) {
                    if (i4 < i3) {
                        long j2 = i4;
                        byte p2 = m192p(j2);
                        if ((p2 & 192) != 128) {
                            skip(j2);
                            i = 65533;
                            break;
                        }
                        i = (i << 6) | (p2 & 63);
                        i4++;
                    } else {
                        skip(j);
                        if (i > 1114111) {
                            i = 65533;
                        } else if (55296 <= i && 57343 >= i) {
                            i = 65533;
                        } else if (i < i2) {
                            i = 65533;
                        }
                    }
                }
                return i;
            }
            throw new EOFException("size < " + i3 + ": " + m188v0() + " (to read code point prefixed 0x" + _Util.m20e(p) + ')');
        }
        throw new EOFException();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v12 */
    /* JADX WARN: Type inference failed for: r0v18, types: [long] */
    /* JADX WARN: Type inference failed for: r0v29 */
    /* JADX WARN: Unknown variable types count: 1 */
    @kotlin.jvm.JvmName
    /* renamed from: p */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final byte m192p(long r8) {
        /*
            Method dump skipped, instructions count: 183
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: okio.Buffer.m192p(long):byte");
    }

    @Override // okio.BufferedSource
    /* renamed from: p0 */
    public void mo66p0(long j) throws EOFException {
        if (this.f24126g < j) {
            throw new EOFException();
        }
    }

    @Override // okio.BufferedSource
    @NotNull
    public BufferedSource peek() {
        return Okio.m143d(new PeekSource(this));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v39, types: [long] */
    /* JADX WARN: Type inference failed for: r11v0, types: [long] */
    /* JADX WARN: Type inference failed for: r11v1 */
    /* JADX WARN: Type inference failed for: r11v10 */
    /* JADX WARN: Type inference failed for: r11v2, types: [long] */
    /* JADX WARN: Type inference failed for: r11v4, types: [long] */
    /* JADX WARN: Type inference failed for: r11v5 */
    /* JADX WARN: Type inference failed for: r11v7, types: [long] */
    /* JADX WARN: Type inference failed for: r11v9 */
    /* JADX WARN: Type inference failed for: r16v0 */
    /* JADX WARN: Type inference failed for: r16v1, types: [long] */
    /* JADX WARN: Type inference failed for: r16v3 */
    /* JADX WARN: Type inference failed for: r20v0, types: [long] */
    /* JADX WARN: Type inference failed for: r20v1 */
    /* JADX WARN: Type inference failed for: r20v3 */
    /* JADX WARN: Type inference failed for: r20v4 */
    /* JADX WARN: Type inference failed for: r20v5, types: [long] */
    /* JADX WARN: Type inference failed for: r20v6 */
    /* JADX WARN: Type inference failed for: r20v7 */
    /* JADX WARN: Type inference failed for: r20v8 */
    /* JADX WARN: Type inference failed for: r9v0, types: [long] */
    /* JADX WARN: Type inference failed for: r9v7, types: [long] */
    /* JADX WARN: Unknown variable types count: 7 */
    /* renamed from: q */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public long m191q(byte r8, long r9, long r11) {
        /*
            Method dump skipped, instructions count: 548
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: okio.Buffer.m191q(byte, long, long):long");
    }

    @Override // okio.BufferedSink
    /* renamed from: q0 */
    public /* bridge */ /* synthetic */ BufferedSink mo90q0(long j) {
        m221E0(j);
        return this;
    }

    @Override // okio.BufferedSink
    /* renamed from: r */
    public /* bridge */ /* synthetic */ BufferedSink mo89r() {
        m195m();
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0130  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0141  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x014d  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x015e A[EDGE_INSN: B:44:0x015e->B:40:0x015e ?: BREAK  , SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r0v40, types: [okio.Buffer] */
    /* JADX WARN: Type inference failed for: r15v0 */
    /* JADX WARN: Type inference failed for: r15v1, types: [long] */
    /* JADX WARN: Type inference failed for: r15v3 */
    /* JADX WARN: Type inference failed for: r15v4 */
    /* JADX WARN: Type inference failed for: r8v0 */
    /* JADX WARN: Type inference failed for: r8v2 */
    /* JADX WARN: Unknown variable types count: 3 */
    @Override // okio.BufferedSource
    /* renamed from: r0 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public long mo65r0() throws java.io.EOFException {
        /*
            Method dump skipped, instructions count: 373
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: okio.Buffer.mo65r0():long");
    }

    @Override // java.nio.channels.ReadableByteChannel
    public int read(@NotNull ByteBuffer sink) throws IOException {
        Intrinsics.m1830e(sink, "sink");
        Segment segment = this.f24125f;
        if (segment == null) {
            return -1;
        }
        int min = Math.min(sink.remaining(), segment.f24198c - segment.f24197b);
        sink.put(segment.f24196a, segment.f24197b, min);
        int i = segment.f24197b + min;
        segment.f24197b = i;
        this.f24126g -= min;
        if (i == segment.f24198c) {
            this.f24125f = segment.m58b();
            SegmentPool.m51b(segment);
        }
        return min;
    }

    public int read(@NotNull byte[] sink, int i, int i2) {
        int i3;
        Intrinsics.m1830e(sink, "sink");
        _Util.m23b(sink.length, i, i2);
        Segment segment = this.f24125f;
        if (segment != null) {
            int min = Math.min(i2, segment.f24198c - segment.f24197b);
            byte[] bArr = segment.f24196a;
            int i4 = segment.f24197b;
            ArraysKt___ArraysJvmKt.m2303c(bArr, sink, i, i4, i4 + min);
            segment.f24197b += min;
            m189u0(m188v0() - min);
            i3 = min;
            if (segment.f24197b == segment.f24198c) {
                this.f24125f = segment.m58b();
                SegmentPool.m51b(segment);
                i3 = min;
            }
        } else {
            i3 = -1;
        }
        return i3;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v0 */
    /* JADX WARN: Type inference failed for: r10v1, types: [long] */
    /* JADX WARN: Type inference failed for: r10v3 */
    /* JADX WARN: Type inference failed for: r6v0, types: [okio.Buffer, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r7v0, types: [long] */
    /* JADX WARN: Type inference failed for: r7v1, types: [long] */
    /* JADX WARN: Type inference failed for: r7v2 */
    /* JADX WARN: Type inference failed for: r7v3 */
    /* JADX WARN: Unknown variable types count: 2 */
    @Override // okio.Source
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public long read(@org.jetbrains.annotations.NotNull okio.Buffer r6, long r7) {
        /*
            r5 = this;
            r0 = r6
            java.lang.String r1 = "sink"
            kotlin.jvm.internal.Intrinsics.m1830e(r0, r1)
            r0 = r7
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 < 0) goto L_0x0013
            r0 = 1
            r9 = r0
            goto L_0x0016
        L_0x0013:
            r0 = 0
            r9 = r0
        L_0x0016:
            r0 = r9
            if (r0 == 0) goto L_0x0049
            r0 = r5
            long r0 = r0.m188v0()
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x002b
            r0 = -1
            r7 = r0
            goto L_0x0047
        L_0x002b:
            r0 = r7
            r10 = r0
            r0 = r7
            r1 = r5
            long r1 = r1.m188v0()
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 <= 0) goto L_0x003d
            r0 = r5
            long r0 = r0.m188v0()
            r10 = r0
        L_0x003d:
            r0 = r6
            r1 = r5
            r2 = r10
            r0.write(r1, r2)
            r0 = r10
            r7 = r0
        L_0x0047:
            r0 = r7
            return r0
        L_0x0049:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r1 = r0
            r1.<init>()
            r6 = r0
            r0 = r6
            java.lang.String r1 = "byteCount < 0: "
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r6
            r1 = r7
            java.lang.StringBuilder r0 = r0.append(r1)
            java.lang.IllegalArgumentException r0 = new java.lang.IllegalArgumentException
            r1 = r0
            r2 = r6
            java.lang.String r2 = r2.toString()
            java.lang.String r2 = r2.toString()
            r1.<init>(r2)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: okio.Buffer.read(okio.Buffer, long):long");
    }

    @Override // okio.BufferedSource
    public byte readByte() throws EOFException {
        if (m188v0() != 0) {
            Segment segment = this.f24125f;
            Intrinsics.m1832c(segment);
            int i = segment.f24197b;
            int i2 = segment.f24198c;
            byte[] bArr = segment.f24196a;
            int i3 = i + 1;
            byte b = bArr[i];
            m189u0(m188v0() - 1);
            if (i3 == i2) {
                this.f24125f = segment.m58b();
                SegmentPool.m51b(segment);
            } else {
                segment.f24197b = i3;
            }
            return b;
        }
        throw new EOFException();
    }

    @Override // okio.BufferedSource
    public void readFully(@NotNull byte[] sink) throws EOFException {
        Intrinsics.m1830e(sink, "sink");
        int i = 0;
        while (i < sink.length) {
            int read = read(sink, i, sink.length - i);
            if (read != -1) {
                i += read;
            } else {
                throw new EOFException();
            }
        }
    }

    @Override // okio.BufferedSource
    public int readInt() throws EOFException {
        int i;
        if (m188v0() >= 4) {
            Segment segment = this.f24125f;
            Intrinsics.m1832c(segment);
            int i2 = segment.f24197b;
            int i3 = segment.f24198c;
            if (i3 - i2 < 4) {
                i = ((readByte() & 255) << 24) | ((readByte() & 255) << 16) | ((readByte() & 255) << 8) | (readByte() & 255);
            } else {
                byte[] bArr = segment.f24196a;
                int i4 = i2 + 1;
                byte b = bArr[i2];
                int i5 = i4 + 1;
                byte b2 = bArr[i4];
                int i6 = i5 + 1;
                byte b3 = bArr[i5];
                int i7 = i6 + 1;
                byte b4 = bArr[i6];
                m189u0(m188v0() - 4);
                if (i7 == i3) {
                    this.f24125f = segment.m58b();
                    SegmentPool.m51b(segment);
                } else {
                    segment.f24197b = i7;
                }
                i = ((b & 255) << 24) | ((b2 & 255) << 16) | ((b3 & 255) << 8) | (b4 & 255);
            }
            return i;
        }
        throw new EOFException();
    }

    @Override // okio.BufferedSource
    public long readLong() throws EOFException {
        long j;
        if (m188v0() >= 8) {
            Segment segment = this.f24125f;
            Intrinsics.m1832c(segment);
            int i = segment.f24197b;
            int i2 = segment.f24198c;
            if (i2 - i < 8) {
                j = ((readInt() & 4294967295L) << 32) | (4294967295L & readInt());
            } else {
                byte[] bArr = segment.f24196a;
                int i3 = i + 1;
                long j2 = bArr[i];
                int i4 = i3 + 1;
                long j3 = bArr[i3];
                int i5 = i4 + 1;
                long j4 = bArr[i4];
                int i6 = i5 + 1;
                long j5 = bArr[i5];
                int i7 = i6 + 1;
                long j6 = bArr[i6];
                int i8 = i7 + 1;
                long j7 = bArr[i7];
                int i9 = i8 + 1;
                long j8 = bArr[i8];
                int i10 = i9 + 1;
                long j9 = bArr[i9];
                m189u0(m188v0() - 8);
                if (i10 == i2) {
                    this.f24125f = segment.m58b();
                    SegmentPool.m51b(segment);
                } else {
                    segment.f24197b = i10;
                }
                j = ((j5 & 255) << 32) | ((j2 & 255) << 56) | ((j3 & 255) << 48) | ((j4 & 255) << 40) | ((j6 & 255) << 24) | ((j7 & 255) << 16) | ((j8 & 255) << 8) | (j9 & 255);
            }
            return j;
        }
        throw new EOFException();
    }

    @Override // okio.BufferedSource
    public short readShort() throws EOFException {
        short s;
        if (m188v0() >= 2) {
            Segment segment = this.f24125f;
            Intrinsics.m1832c(segment);
            int i = segment.f24197b;
            int i2 = segment.f24198c;
            if (i2 - i < 2) {
                s = (short) (((readByte() & 255) << 8) | (readByte() & 255));
            } else {
                byte[] bArr = segment.f24196a;
                int i3 = i + 1;
                byte b = bArr[i];
                int i4 = i3 + 1;
                byte b2 = bArr[i3];
                m189u0(m188v0() - 2);
                if (i4 == i2) {
                    this.f24125f = segment.m58b();
                    SegmentPool.m51b(segment);
                } else {
                    segment.f24197b = i4;
                }
                s = (short) (((b & 255) << 8) | (b2 & 255));
            }
            return s;
        }
        throw new EOFException();
    }

    @Override // okio.BufferedSource
    public boolean request(long j) {
        return this.f24126g >= j;
    }

    @Override // okio.BufferedSink
    /* renamed from: s */
    public /* bridge */ /* synthetic */ BufferedSink mo88s(int i) {
        m215J0(i);
        return this;
    }

    @Override // okio.BufferedSource
    @NotNull
    /* renamed from: s0 */
    public InputStream mo64s0() {
        return new InputStream() { // from class: okio.Buffer$inputStream$1
            @Override // java.io.InputStream
            public int available() {
                return (int) Math.min(Buffer.this.m188v0(), (long) Api.BaseClientBuilder.API_PRIORITY_OTHER);
            }

            @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
            public void close() {
            }

            @Override // java.io.InputStream
            public int read() {
                return Buffer.this.m188v0() > 0 ? Buffer.this.readByte() & 255 : -1;
            }

            @Override // java.io.InputStream
            public int read(@NotNull byte[] sink, int i, int i2) {
                Intrinsics.m1830e(sink, "sink");
                return Buffer.this.read(sink, i, i2);
            }

            @NotNull
            public String toString() {
                return Buffer.this + ".inputStream()";
            }
        };
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v15, types: [long] */
    /* JADX WARN: Type inference failed for: r7v2 */
    /* JADX WARN: Type inference failed for: r7v3 */
    /* JADX WARN: Type inference failed for: r7v4 */
    /* JADX WARN: Unknown variable types count: 1 */
    @Override // okio.BufferedSource
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void skip(long r7) throws java.io.EOFException {
        /*
            r6 = this;
        L_0x0000:
            r0 = r7
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 <= 0) goto L_0x006f
            r0 = r6
            okio.Segment r0 = r0.f24125f
            r9 = r0
            r0 = r9
            if (r0 == 0) goto L_0x0067
            r0 = r7
            r1 = r9
            int r1 = r1.f24198c
            r2 = r9
            int r2 = r2.f24197b
            int r1 = r1 - r2
            long r1 = (long) r1
            long r0 = java.lang.Math.min(r0, r1)
            int r0 = (int) r0
            r10 = r0
            r0 = r6
            long r0 = r0.m188v0()
            r11 = r0
            r0 = r10
            long r0 = (long) r0
            r13 = r0
            r0 = r6
            r1 = r11
            r2 = r13
            long r1 = r1 - r2
            r0.m189u0(r1)
            r0 = r7
            r1 = r13
            long r0 = r0 - r1
            r13 = r0
            r0 = r9
            int r0 = r0.f24197b
            r1 = r10
            int r0 = r0 + r1
            r10 = r0
            r0 = r9
            r1 = r10
            r0.f24197b = r1
            r0 = r13
            r7 = r0
            r0 = r10
            r1 = r9
            int r1 = r1.f24198c
            if (r0 != r1) goto L_0x0000
            r0 = r6
            r1 = r9
            okio.Segment r1 = r1.m58b()
            r0.f24125f = r1
            r0 = r9
            okio.SegmentPool.m51b(r0)
            r0 = r13
            r7 = r0
            goto L_0x0000
        L_0x0067:
            java.io.EOFException r0 = new java.io.EOFException
            r1 = r0
            r1.<init>()
            throw r0
        L_0x006f:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: okio.Buffer.skip(long):void");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v29, types: [long] */
    /* JADX WARN: Type inference failed for: r12v0 */
    /* JADX WARN: Type inference failed for: r12v1, types: [long] */
    /* JADX WARN: Type inference failed for: r12v3, types: [long] */
    /* JADX WARN: Type inference failed for: r12v4 */
    /* JADX WARN: Type inference failed for: r12v8, types: [long] */
    /* JADX WARN: Type inference failed for: r9v10 */
    /* JADX WARN: Type inference failed for: r9v3, types: [long] */
    /* JADX WARN: Type inference failed for: r9v4 */
    /* JADX WARN: Type inference failed for: r9v6, types: [long] */
    /* JADX WARN: Type inference failed for: r9v7 */
    /* JADX WARN: Type inference failed for: r9v9 */
    /* JADX WARN: Unknown variable types count: 6 */
    /* renamed from: t */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public long m190t(@org.jetbrains.annotations.NotNull okio.ByteString r8, long r9) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 596
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: okio.Buffer.m190t(okio.ByteString, long):long");
    }

    @Override // okio.BufferedSource
    /* renamed from: t0 */
    public int mo63t0(@NotNull Options options) {
        Intrinsics.m1830e(options, "options");
        int e = BufferKt.m14e(this, options, false, 2, null);
        if (e == -1) {
            e = -1;
        } else {
            skip(options.m118g()[e].m178C());
        }
        return e;
    }

    @Override // okio.Source
    @NotNull
    public Timeout timeout() {
        return Timeout.NONE;
    }

    @NotNull
    public String toString() {
        return m187w0().toString();
    }

    @Override // okio.BufferedSink
    /* renamed from: u */
    public /* bridge */ /* synthetic */ BufferedSink mo87u(int i) {
        m219G0(i);
        return this;
    }

    /* renamed from: u0 */
    public final void m189u0(long j) {
        this.f24126g = j;
    }

    @JvmName
    /* renamed from: v0 */
    public final long m188v0() {
        return this.f24126g;
    }

    @Override // okio.BufferedSource
    @NotNull
    /* renamed from: w */
    public byte[] mo62w() {
        return mo75c0(m188v0());
    }

    @NotNull
    /* renamed from: w0 */
    public final ByteString m187w0() {
        if (m188v0() <= ((long) Api.BaseClientBuilder.API_PRIORITY_OTHER)) {
            return m186x0((int) m188v0());
        }
        throw new IllegalStateException(("size > Int.MAX_VALUE: " + m188v0()).toString());
    }

    @Override // java.nio.channels.WritableByteChannel
    public int write(@NotNull ByteBuffer source) throws IOException {
        Intrinsics.m1830e(source, "source");
        int remaining = source.remaining();
        int i = remaining;
        while (i > 0) {
            Segment y0 = m185y0(1);
            int min = Math.min(i, 8192 - y0.f24198c);
            source.get(y0.f24196a, y0.f24198c, min);
            i -= min;
            y0.f24198c += min;
        }
        this.f24126g += remaining;
        return remaining;
    }

    @Override // okio.Sink
    public void write(@NotNull Buffer source, long j) {
        Segment segment;
        Segment segment2;
        Intrinsics.m1830e(source, "source");
        if (source != this) {
            _Util.m23b(source.m188v0(), 0L, j);
            while (j > 0) {
                Segment segment3 = source.f24125f;
                Intrinsics.m1832c(segment3);
                int i = segment3.f24198c;
                Intrinsics.m1832c(source.f24125f);
                if (j < i - segment.f24197b) {
                    Segment segment4 = this.f24125f;
                    if (segment4 != null) {
                        Intrinsics.m1832c(segment4);
                        segment2 = segment4.f24202g;
                    } else {
                        segment2 = null;
                    }
                    if (segment2 != null && segment2.f24200e) {
                        if ((segment2.f24198c + j) - (segment2.f24199d ? 0 : segment2.f24197b) <= 8192) {
                            Segment segment5 = source.f24125f;
                            Intrinsics.m1832c(segment5);
                            segment5.m53g(segment2, (int) j);
                            source.m189u0(source.m188v0() - j);
                            m189u0(m188v0() + j);
                            return;
                        }
                    }
                    Segment segment6 = source.f24125f;
                    Intrinsics.m1832c(segment6);
                    source.f24125f = segment6.m55e((int) j);
                }
                Segment segment7 = source.f24125f;
                Intrinsics.m1832c(segment7);
                long j2 = segment7.f24198c - segment7.f24197b;
                source.f24125f = segment7.m58b();
                Segment segment8 = this.f24125f;
                if (segment8 == null) {
                    this.f24125f = segment7;
                    segment7.f24202g = segment7;
                    segment7.f24201f = segment7;
                } else {
                    Intrinsics.m1832c(segment8);
                    Segment segment9 = segment8.f24202g;
                    Intrinsics.m1832c(segment9);
                    segment9.m57c(segment7);
                    segment7.m59a();
                }
                source.m189u0(source.m188v0() - j2);
                m189u0(m188v0() + j2);
                j -= j2;
            }
            return;
        }
        throw new IllegalArgumentException("source == this".toString());
    }

    /* JADX WARN: Type inference failed for: r0v11, types: [byte[], byte[][]] */
    /* JADX WARN: Unknown variable types count: 1 */
    @org.jetbrains.annotations.NotNull
    /* renamed from: x0 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final okio.ByteString m186x0(int r8) {
        /*
            Method dump skipped, instructions count: 200
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: okio.Buffer.m186x0(int):okio.ByteString");
    }

    @Override // okio.BufferedSource
    /* renamed from: y */
    public long mo61y(@NotNull ByteString bytes) throws IOException {
        Intrinsics.m1830e(bytes, "bytes");
        return m190t(bytes, 0L);
    }

    @NotNull
    /* renamed from: y0 */
    public final Segment m185y0(int i) {
        Segment segment;
        boolean z = true;
        if (i < 1 || i > 8192) {
            z = false;
        }
        if (z) {
            Segment segment2 = this.f24125f;
            if (segment2 == null) {
                segment = SegmentPool.m50c();
                this.f24125f = segment;
                segment.f24202g = segment;
                segment.f24201f = segment;
            } else {
                Intrinsics.m1832c(segment2);
                Segment segment3 = segment2.f24202g;
                Intrinsics.m1832c(segment3);
                if (segment3.f24198c + i > 8192 || !segment3.f24200e) {
                    segment = SegmentPool.m50c();
                    segment3.m57c(segment);
                } else {
                    segment = segment3;
                }
            }
            return segment;
        }
        throw new IllegalArgumentException("unexpected capacity".toString());
    }

    @Override // okio.BufferedSource
    /* renamed from: z */
    public boolean mo60z() {
        return this.f24126g == 0;
    }

    @NotNull
    /* renamed from: z0 */
    public Buffer m184z0(@NotNull ByteString byteString) {
        Intrinsics.m1830e(byteString, "byteString");
        byteString.mo48G(this, 0, byteString.m178C());
        return this;
    }
}
