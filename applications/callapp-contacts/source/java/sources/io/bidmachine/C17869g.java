package io.bidmachine;

import android.content.Context;
import android.location.Location;
import android.net.NetworkInfo;
import android.os.Build;
import android.text.TextUtils;
import com.explorestack.protobuf.Any;
import com.explorestack.protobuf.ByteString;
import com.explorestack.protobuf.Descriptors;
import com.explorestack.protobuf.Message;
import com.explorestack.protobuf.MessageOrBuilder;
import com.explorestack.protobuf.TextFormat;
import com.explorestack.protobuf.UnknownFieldSet;
import com.explorestack.protobuf.WireFormat;
import com.explorestack.protobuf.adcom.C9813Ad;
import com.explorestack.protobuf.adcom.ConnectionType;
import com.explorestack.protobuf.adcom.Context;
import com.explorestack.protobuf.adcom.DeviceType;
import com.explorestack.protobuf.adcom.EnumC9867OS;
import com.explorestack.protobuf.adcom.LocationType;
import io.bidmachine.core.Logger;
import io.bidmachine.core.Utils;
import io.bidmachine.models.DataRestrictions;
import io.bidmachine.protobuf.InitRequest;
import java.io.IOException;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import org.apache.commons.lang3.StringUtils;
/* renamed from: io.bidmachine.g */
/* loaded from: classes5-dex2jar.jar:io/bidmachine/g.class */
public final class C17869g {
    private static String protoRootPackage = "bidmachine";
    private static String[] protoKnownPackages = {BuildConfig.APPLICATION_ID, "com.explorestack"};
    private static C17871a DEFAULT_PRINTER = new C17871a(null);

    /* renamed from: io.bidmachine.g$1 */
    /* loaded from: classes5-dex2jar.jar:io/bidmachine/g$1.class */
    public static final /* synthetic */ class C178701 {

        /* renamed from: $SwitchMap$com$explorestack$protobuf$Descriptors$FieldDescriptor$Type */
        static final /* synthetic */ int[] f62634xc54bf262;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:39:0x00dd -> B:91:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:40:0x00e1 -> B:85:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:41:0x00e5 -> B:63:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:42:0x00e9 -> B:59:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:43:0x00ed -> B:71:0x0040). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:44:0x00f1 -> B:67:0x004c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:45:0x00f5 -> B:81:0x0058). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:46:0x00f9 -> B:75:0x0064). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:47:0x00fd -> B:89:0x0070). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:48:0x0101 -> B:83:0x007c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:49:0x0105 -> B:61:0x0088). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:50:0x0109 -> B:57:0x0094). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:51:0x010d -> B:69:0x00a0). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:52:0x0111 -> B:65:0x00ac). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:53:0x0115 -> B:79:0x00b8). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:54:0x0119 -> B:73:0x00c4). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:55:0x011d -> B:87:0x00d0). Please submit an issue!!! */
        static {
            int[] iArr = new int[Descriptors.FieldDescriptor.Type.values().length];
            f62634xc54bf262 = iArr;
            try {
                iArr[Descriptors.FieldDescriptor.Type.INT32.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f62634xc54bf262[Descriptors.FieldDescriptor.Type.SINT32.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f62634xc54bf262[Descriptors.FieldDescriptor.Type.SFIXED32.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f62634xc54bf262[Descriptors.FieldDescriptor.Type.INT64.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f62634xc54bf262[Descriptors.FieldDescriptor.Type.SINT64.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f62634xc54bf262[Descriptors.FieldDescriptor.Type.SFIXED64.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f62634xc54bf262[Descriptors.FieldDescriptor.Type.BOOL.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
            try {
                f62634xc54bf262[Descriptors.FieldDescriptor.Type.FLOAT.ordinal()] = 8;
            } catch (NoSuchFieldError e8) {
            }
            try {
                f62634xc54bf262[Descriptors.FieldDescriptor.Type.DOUBLE.ordinal()] = 9;
            } catch (NoSuchFieldError e9) {
            }
            try {
                f62634xc54bf262[Descriptors.FieldDescriptor.Type.UINT32.ordinal()] = 10;
            } catch (NoSuchFieldError e10) {
            }
            try {
                f62634xc54bf262[Descriptors.FieldDescriptor.Type.FIXED32.ordinal()] = 11;
            } catch (NoSuchFieldError e11) {
            }
            try {
                f62634xc54bf262[Descriptors.FieldDescriptor.Type.UINT64.ordinal()] = 12;
            } catch (NoSuchFieldError e12) {
            }
            try {
                f62634xc54bf262[Descriptors.FieldDescriptor.Type.FIXED64.ordinal()] = 13;
            } catch (NoSuchFieldError e13) {
            }
            try {
                f62634xc54bf262[Descriptors.FieldDescriptor.Type.STRING.ordinal()] = 14;
            } catch (NoSuchFieldError e14) {
            }
            try {
                f62634xc54bf262[Descriptors.FieldDescriptor.Type.BYTES.ordinal()] = 15;
            } catch (NoSuchFieldError e15) {
            }
            try {
                f62634xc54bf262[Descriptors.FieldDescriptor.Type.ENUM.ordinal()] = 16;
            } catch (NoSuchFieldError e16) {
            }
            try {
                f62634xc54bf262[Descriptors.FieldDescriptor.Type.MESSAGE.ordinal()] = 17;
            } catch (NoSuchFieldError e17) {
            }
            try {
                f62634xc54bf262[Descriptors.FieldDescriptor.Type.GROUP.ordinal()] = 18;
            } catch (NoSuchFieldError e18) {
            }
        }
    }

    /* renamed from: io.bidmachine.g$a */
    /* loaded from: classes5-dex2jar.jar:io/bidmachine/g$a.class */
    public static final class C17871a {
        boolean escapeNonAscii;
        boolean singleLineMode;

        private C17871a() {
            this.singleLineMode = false;
            this.escapeNonAscii = true;
        }

        /* synthetic */ C17871a(C178701 c178701) {
            this();
        }

        public void print(MessageOrBuilder messageOrBuilder, C17872b c17872b) throws IOException {
            for (Map.Entry<Descriptors.FieldDescriptor, Object> entry : messageOrBuilder.getAllFields().entrySet()) {
                printField(entry.getKey(), entry.getValue(), c17872b);
            }
            printUnknownFields(messageOrBuilder.getUnknownFields(), c17872b);
        }

        private void printField(Descriptors.FieldDescriptor fieldDescriptor, Object obj, C17872b c17872b) throws IOException {
            if (!fieldDescriptor.isRepeated()) {
                printSingleField(fieldDescriptor, obj, c17872b);
                return;
            }
            for (Object obj2 : (List) obj) {
                printSingleField(fieldDescriptor, obj2, c17872b);
            }
        }

        private void printFieldValue(Descriptors.FieldDescriptor fieldDescriptor, Object obj, C17872b c17872b) throws IOException {
            switch (C178701.f62634xc54bf262[fieldDescriptor.getType().ordinal()]) {
                case 1:
                case 2:
                case 3:
                    c17872b.print(obj.toString());
                    return;
                case 4:
                case 5:
                case 6:
                    c17872b.print(obj.toString());
                    return;
                case 7:
                    c17872b.print(obj.toString());
                    return;
                case 8:
                    c17872b.print(obj.toString());
                    return;
                case 9:
                    c17872b.print(obj.toString());
                    return;
                case 10:
                case 11:
                    c17872b.print(TextFormat.unsignedToString(((Integer) obj).intValue()));
                    return;
                case 12:
                case 13:
                    c17872b.print(TextFormat.unsignedToString(((Long) obj).longValue()));
                    return;
                case 14:
                    c17872b.print("\"");
                    c17872b.print(this.escapeNonAscii ? TextFormat.escapeBytes(ByteString.copyFromUtf8((String) obj)) : TextFormat.escapeDoubleQuotesAndBackslashes((String) obj).replace(StringUtils.f67179LF, "\\n"));
                    c17872b.print("\"");
                    return;
                case 15:
                    c17872b.print("\"");
                    if (obj instanceof ByteString) {
                        c17872b.print(TextFormat.escapeBytes((ByteString) obj));
                    } else {
                        c17872b.print(TextFormat.escapeBytes((byte[]) obj));
                    }
                    c17872b.print("\"");
                    return;
                case 16:
                    c17872b.print(((Descriptors.EnumValueDescriptor) obj).getName());
                    return;
                case 17:
                case 18:
                    print((Message) obj, c17872b);
                    return;
                default:
                    return;
            }
        }

        private void printSingleField(Descriptors.FieldDescriptor fieldDescriptor, Object obj, C17872b c17872b) throws IOException {
            if (fieldDescriptor.isExtension()) {
                c17872b.print("[");
                if (!fieldDescriptor.getContainingType().getOptions().getMessageSetWireFormat() || fieldDescriptor.getType() != Descriptors.FieldDescriptor.Type.MESSAGE || !fieldDescriptor.isOptional() || fieldDescriptor.getExtensionScope() != fieldDescriptor.getMessageType()) {
                    c17872b.print(fieldDescriptor.getFullName());
                } else {
                    c17872b.print(fieldDescriptor.getMessageType().getFullName());
                }
                c17872b.print("]");
            } else if (fieldDescriptor.getType() == Descriptors.FieldDescriptor.Type.GROUP) {
                c17872b.print(fieldDescriptor.getMessageType().getName());
            } else {
                c17872b.print(fieldDescriptor.getName());
            }
            if (fieldDescriptor.getJavaType() != Descriptors.FieldDescriptor.JavaType.MESSAGE) {
                c17872b.print(": ");
            } else if (this.singleLineMode) {
                c17872b.print(" { ");
            } else {
                c17872b.print(" {\n");
                c17872b.indent();
            }
            if (fieldDescriptor.getJavaType() != Descriptors.FieldDescriptor.JavaType.MESSAGE) {
                printFieldValue(fieldDescriptor, obj, c17872b);
                if (this.singleLineMode) {
                    c17872b.print(StringUtils.SPACE);
                    return;
                } else {
                    c17872b.print(StringUtils.f67179LF);
                    return;
                }
            }
            StringBuilder sb = new StringBuilder();
            if (!(obj instanceof Any)) {
                C17869g.print((MessageOrBuilder) obj, sb);
                if (sb.length() <= 0) {
                    return;
                }
                c17872b.print(sb);
                c17872b.outdent();
                c17872b.print("}");
                c17872b.print(StringUtils.f67179LF);
                return;
            }
            Any any = (Any) obj;
            String[] split = any.getTypeUrl().split("/");
            String str = split[split.length - 1];
            for (String str2 : C17869g.protoKnownPackages) {
                try {
                    C17869g.print(any.unpack(Class.forName(str.replace(C17869g.protoRootPackage, str2))), sb);
                    break;
                } catch (ClassNotFoundException e) {
                }
            }
            if (sb.length() <= 0) {
                return;
            }
            c17872b.indent();
            c17872b.print(sb);
            c17872b.outdent();
            c17872b.print("}");
            c17872b.print(StringUtils.f67179LF);
        }

        private void printUnknownField(int i, int i2, List<?> list, C17872b c17872b) throws IOException {
            for (Object obj : list) {
                c17872b.print(String.valueOf(i));
                c17872b.print(": ");
                C17869g.printUnknownFieldValue(i2, obj, c17872b);
                c17872b.print(this.singleLineMode ? StringUtils.SPACE : StringUtils.f67179LF);
            }
        }

        public void printUnknownFields(UnknownFieldSet unknownFieldSet, C17872b c17872b) throws IOException {
            for (Map.Entry<Integer, UnknownFieldSet.Field> entry : unknownFieldSet.asMap().entrySet()) {
                int intValue = entry.getKey().intValue();
                UnknownFieldSet.Field value = entry.getValue();
                printUnknownField(intValue, 0, value.getVarintList(), c17872b);
                printUnknownField(intValue, 5, value.getFixed32List(), c17872b);
                printUnknownField(intValue, 1, value.getFixed64List(), c17872b);
                printUnknownField(intValue, 2, value.getLengthDelimitedList(), c17872b);
                for (UnknownFieldSet unknownFieldSet2 : value.getGroupList()) {
                    c17872b.print(entry.getKey().toString());
                    if (this.singleLineMode) {
                        c17872b.print(" { ");
                    } else {
                        c17872b.print(" {\n");
                        c17872b.indent();
                    }
                    printUnknownFields(unknownFieldSet2, c17872b);
                    if (this.singleLineMode) {
                        c17872b.print("} ");
                    } else {
                        c17872b.outdent();
                        c17872b.print("}\n");
                    }
                }
            }
        }

        private C17871a setEscapeNonAscii(boolean z) {
            this.escapeNonAscii = z;
            return this;
        }

        private C17871a setSingleLineMode(boolean z) {
            this.singleLineMode = z;
            return this;
        }
    }

    /* renamed from: io.bidmachine.g$b */
    /* loaded from: classes5-dex2jar.jar:io/bidmachine/g$b.class */
    public static final class C17872b {
        private boolean atStartOfLine;
        private final StringBuilder indent;
        private final Appendable output;

        private C17872b(Appendable appendable) {
            this.indent = new StringBuilder();
            this.atStartOfLine = true;
            this.output = appendable;
        }

        /* synthetic */ C17872b(Appendable appendable, C178701 c178701) {
            this(appendable);
        }

        private void write(CharSequence charSequence) throws IOException {
            if (charSequence.length() != 0) {
                if (this.atStartOfLine) {
                    this.atStartOfLine = false;
                    this.output.append(this.indent);
                }
                this.output.append(charSequence);
            }
        }

        final void indent() {
            this.indent.append("  ");
        }

        final void outdent() {
            int length = this.indent.length();
            if (length != 0) {
                this.indent.delete(length - 2, length);
                return;
            }
            throw new IllegalArgumentException(" Outdent() without matching Indent().");
        }

        final void print(CharSequence charSequence) throws IOException {
            int length = charSequence.length();
            int i = 0;
            int i2 = 0;
            while (true) {
                int i3 = i2;
                if (i >= length) {
                    write(charSequence.subSequence(i3, length));
                    return;
                }
                int i4 = i3;
                if (charSequence.charAt(i) == '\n') {
                    i4 = i + 1;
                    write(charSequence.subSequence(i3, i4));
                    this.atStartOfLine = true;
                }
                i++;
                i2 = i4;
            }
        }
    }

    C17869g() {
    }

    public static void addEvent(Map<TrackEventType, List<String>> map, TrackEventType trackEventType, String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        List<String> list = map.get(trackEventType);
        ArrayList arrayList = list;
        if (list == null) {
            arrayList = new ArrayList(1);
            map.put(trackEventType, arrayList);
        }
        arrayList.add(str);
    }

    public static void dump(String str, MessageOrBuilder messageOrBuilder) {
        if (Logger.isLoggingEnabled()) {
            Logger.log(str + " dump:\n" + printToString(messageOrBuilder));
        }
    }

    public static ConnectionType getConnectionType(Context context) {
        ConnectionType connectionType;
        NetworkInfo activeNetworkInfo = Utils.getActiveNetworkInfo(context);
        if (activeNetworkInfo != null) {
            int type = activeNetworkInfo.getType();
            if (type == 0) {
                int subtype = activeNetworkInfo.getSubtype();
                connectionType = subtype != 0 ? subtype != 4 ? subtype != 13 ? subtype != 16 ? ConnectionType.CONNECTION_TYPE_CELLULAR_NETWORK_4G : ConnectionType.CONNECTION_TYPE_CELLULAR_NETWORK_2G : ConnectionType.CONNECTION_TYPE_CELLULAR_NETWORK_5G : ConnectionType.CONNECTION_TYPE_CELLULAR_NETWORK_3G : ConnectionType.CONNECTION_TYPE_CELLULAR_NETWORK_UNKNOWN;
            } else if (type == 1) {
                connectionType = ConnectionType.CONNECTION_TYPE_WIFI;
            } else if (type == 9) {
                connectionType = ConnectionType.CONNECTION_TYPE_ETHERNET;
            }
            return connectionType;
        }
        connectionType = ConnectionType.CONNECTION_TYPE_INVALID;
        return connectionType;
    }

    private static LocationType getLocationType(Location location) {
        if (location != null) {
            if ("gps".equals(location.getProvider())) {
                return LocationType.LOCATION_TYPE_GPS;
            }
            if ("network".equals(location.getProvider()) || "passive".equals(location.getProvider())) {
                return LocationType.LOCATION_TYPE_IP;
            }
        }
        return LocationType.LOCATION_TYPE_INVALID;
    }

    public static Context.Geo.Builder locationToGeo(Location location, boolean z) {
        Context.Geo.Builder newBuilder = Context.Geo.newBuilder();
        locationToGeo(newBuilder, location, z);
        return newBuilder;
    }

    public static void locationToGeo(Context.Geo.Builder builder, Location location, boolean z) {
        if (z) {
            builder.setUtcoffset(Utils.getUtcOffsetMinutes());
        }
        if (location != null) {
            builder.setType(getLocationType(location));
            builder.setLat((float) location.getLatitude());
            builder.setLon((float) location.getLongitude());
            builder.setAccur((int) location.getAccuracy());
            builder.setLastfix(location.getTime());
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x0023, code lost:
        if (r0.getTime() >= r0.getTime()) goto L8;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.location.Location obtainBestLocation(android.content.Context r5, android.location.Location r6, android.location.Location r7) {
        /*
            r0 = r6
            r1 = r7
            java.lang.Object r0 = io.bidmachine.core.Utils.oneOf(r0, r1)
            android.location.Location r0 = (android.location.Location) r0
            r6 = r0
            r0 = r5
            android.location.Location r0 = io.bidmachine.core.Utils.getLocation(r0)
            r7 = r0
            r0 = r6
            r5 = r0
            r0 = r7
            if (r0 == 0) goto L28
            r0 = r6
            if (r0 == 0) goto L26
            r0 = r6
            r5 = r0
            r0 = r7
            long r0 = r0.getTime()
            r1 = r6
            long r1 = r1.getTime()
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 < 0) goto L28
        L26:
            r0 = r7
            r5 = r0
        L28:
            r0 = r5
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: io.bidmachine.C17869g.obtainBestLocation(android.content.Context, android.location.Location, android.location.Location):android.location.Location");
    }

    public static InitRequest obtainInitRequest(android.content.Context context, String str, TargetingParams targetingParams, DataRestrictions dataRestrictions) {
        InitRequest.Builder newBuilder = InitRequest.newBuilder();
        String packageName = context.getPackageName();
        if (packageName != null) {
            newBuilder.setBundle(packageName);
        }
        newBuilder.setSellerId(str);
        newBuilder.setOs(EnumC9867OS.OS_ANDROID);
        newBuilder.setOsv(Build.VERSION.RELEASE);
        String appVersion = Utils.getAppVersion(context);
        if (appVersion != null) {
            newBuilder.setAppVer(appVersion);
        }
        newBuilder.setSdk(BidMachine.NAME);
        newBuilder.setSdkver("1.7.1");
        newBuilder.setIfa(C17824c.getAdvertisingId(context, !dataRestrictions.canSendIfa()));
        newBuilder.setBmIfv(C17842d.get().obtainIFV(context));
        newBuilder.setSessionId(SessionManager.get().getSessionId());
        newBuilder.setDeviceType(DeviceInfo.obtain(context).isTablet ? DeviceType.DEVICE_TYPE_TABLET : DeviceType.DEVICE_TYPE_PHONE_DEVICE);
        if (dataRestrictions.canSendDeviceInfo()) {
            newBuilder.setContype(getConnectionType(context));
        }
        if (dataRestrictions.canSendGeoPosition()) {
            Context.Geo.Builder newBuilder2 = Context.Geo.newBuilder();
            if (targetingParams != null) {
                targetingParams.build(newBuilder2);
            }
            locationToGeo(newBuilder2, obtainBestLocation(context, targetingParams != null ? targetingParams.getDeviceLocation() : null, null), true);
            newBuilder.setGeo(newBuilder2);
        }
        return newBuilder.build();
    }

    public static void prepareEvents(Map<TrackEventType, List<String>> map, List<C9813Ad.Event> list) {
        if (list == null || list.size() == 0) {
            return;
        }
        for (C9813Ad.Event event : list) {
            TrackEventType fromNumber = TrackEventType.fromNumber(event.getTypeValue());
            if (fromNumber != null) {
                addEvent(map, fromNumber, event.getUrl());
            }
        }
    }

    public static void print(MessageOrBuilder messageOrBuilder, Appendable appendable) throws IOException {
        DEFAULT_PRINTER.print(messageOrBuilder, new C17872b(appendable, null));
    }

    private static String printToString(MessageOrBuilder messageOrBuilder) {
        try {
            StringBuilder sb = new StringBuilder();
            print(messageOrBuilder, sb);
            return sb.toString();
        } catch (IOException e) {
            throw new IllegalStateException(e);
        }
    }

    public static void printUnknownFieldValue(int i, Object obj, C17872b c17872b) throws IOException {
        int tagWireType = WireFormat.getTagWireType(i);
        if (tagWireType == 0) {
            c17872b.print(unsignedToString(((Long) obj).longValue()));
        } else if (tagWireType == 1) {
            c17872b.print(String.format(null, "0x%016x", (Long) obj));
        } else if (tagWireType == 2) {
            c17872b.print("\"");
            c17872b.print(TextFormat.escapeBytes((ByteString) obj));
            c17872b.print("\"");
        } else if (tagWireType == 3) {
            DEFAULT_PRINTER.printUnknownFields((UnknownFieldSet) obj, c17872b);
        } else if (tagWireType != 5) {
            throw new IllegalArgumentException("Bad tag: ".concat(String.valueOf(i)));
        } else {
            c17872b.print(String.format(null, "0x%08x", (Integer) obj));
        }
    }

    private static String unsignedToString(long j) {
        return j >= 0 ? Long.toString(j) : BigInteger.valueOf(j & Long.MAX_VALUE).setBit(63).toString();
    }
}
