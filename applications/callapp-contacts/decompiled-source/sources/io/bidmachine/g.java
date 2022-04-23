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
import com.explorestack.protobuf.adcom.Ad;
import com.explorestack.protobuf.adcom.ConnectionType;
import com.explorestack.protobuf.adcom.Context;
import com.explorestack.protobuf.adcom.DeviceType;
import com.explorestack.protobuf.adcom.LocationType;
import com.explorestack.protobuf.adcom.OS;
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
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5-dex2jar.jar:io/bidmachine/g.class */
public final class g {
    private static String protoRootPackage = "bidmachine";
    private static String[] protoKnownPackages = {BuildConfig.APPLICATION_ID, "com.explorestack"};
    private static a DEFAULT_PRINTER = new a(null);

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: io.bidmachine.g$1  reason: invalid class name */
    /* loaded from: classes5-dex2jar.jar:io/bidmachine/g$1.class */
    public static final /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$explorestack$protobuf$Descriptors$FieldDescriptor$Type;

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
            $SwitchMap$com$explorestack$protobuf$Descriptors$FieldDescriptor$Type = iArr;
            try {
                iArr[Descriptors.FieldDescriptor.Type.INT32.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$com$explorestack$protobuf$Descriptors$FieldDescriptor$Type[Descriptors.FieldDescriptor.Type.SINT32.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                $SwitchMap$com$explorestack$protobuf$Descriptors$FieldDescriptor$Type[Descriptors.FieldDescriptor.Type.SFIXED32.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                $SwitchMap$com$explorestack$protobuf$Descriptors$FieldDescriptor$Type[Descriptors.FieldDescriptor.Type.INT64.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                $SwitchMap$com$explorestack$protobuf$Descriptors$FieldDescriptor$Type[Descriptors.FieldDescriptor.Type.SINT64.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                $SwitchMap$com$explorestack$protobuf$Descriptors$FieldDescriptor$Type[Descriptors.FieldDescriptor.Type.SFIXED64.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                $SwitchMap$com$explorestack$protobuf$Descriptors$FieldDescriptor$Type[Descriptors.FieldDescriptor.Type.BOOL.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
            try {
                $SwitchMap$com$explorestack$protobuf$Descriptors$FieldDescriptor$Type[Descriptors.FieldDescriptor.Type.FLOAT.ordinal()] = 8;
            } catch (NoSuchFieldError e8) {
            }
            try {
                $SwitchMap$com$explorestack$protobuf$Descriptors$FieldDescriptor$Type[Descriptors.FieldDescriptor.Type.DOUBLE.ordinal()] = 9;
            } catch (NoSuchFieldError e9) {
            }
            try {
                $SwitchMap$com$explorestack$protobuf$Descriptors$FieldDescriptor$Type[Descriptors.FieldDescriptor.Type.UINT32.ordinal()] = 10;
            } catch (NoSuchFieldError e10) {
            }
            try {
                $SwitchMap$com$explorestack$protobuf$Descriptors$FieldDescriptor$Type[Descriptors.FieldDescriptor.Type.FIXED32.ordinal()] = 11;
            } catch (NoSuchFieldError e11) {
            }
            try {
                $SwitchMap$com$explorestack$protobuf$Descriptors$FieldDescriptor$Type[Descriptors.FieldDescriptor.Type.UINT64.ordinal()] = 12;
            } catch (NoSuchFieldError e12) {
            }
            try {
                $SwitchMap$com$explorestack$protobuf$Descriptors$FieldDescriptor$Type[Descriptors.FieldDescriptor.Type.FIXED64.ordinal()] = 13;
            } catch (NoSuchFieldError e13) {
            }
            try {
                $SwitchMap$com$explorestack$protobuf$Descriptors$FieldDescriptor$Type[Descriptors.FieldDescriptor.Type.STRING.ordinal()] = 14;
            } catch (NoSuchFieldError e14) {
            }
            try {
                $SwitchMap$com$explorestack$protobuf$Descriptors$FieldDescriptor$Type[Descriptors.FieldDescriptor.Type.BYTES.ordinal()] = 15;
            } catch (NoSuchFieldError e15) {
            }
            try {
                $SwitchMap$com$explorestack$protobuf$Descriptors$FieldDescriptor$Type[Descriptors.FieldDescriptor.Type.ENUM.ordinal()] = 16;
            } catch (NoSuchFieldError e16) {
            }
            try {
                $SwitchMap$com$explorestack$protobuf$Descriptors$FieldDescriptor$Type[Descriptors.FieldDescriptor.Type.MESSAGE.ordinal()] = 17;
            } catch (NoSuchFieldError e17) {
            }
            try {
                $SwitchMap$com$explorestack$protobuf$Descriptors$FieldDescriptor$Type[Descriptors.FieldDescriptor.Type.GROUP.ordinal()] = 18;
            } catch (NoSuchFieldError e18) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5-dex2jar.jar:io/bidmachine/g$a.class */
    public static final class a {
        boolean escapeNonAscii;
        boolean singleLineMode;

        private a() {
            this.singleLineMode = false;
            this.escapeNonAscii = true;
        }

        /* synthetic */ a(AnonymousClass1 r3) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void print(MessageOrBuilder messageOrBuilder, b bVar) throws IOException {
            for (Map.Entry<Descriptors.FieldDescriptor, Object> entry : messageOrBuilder.getAllFields().entrySet()) {
                printField(entry.getKey(), entry.getValue(), bVar);
            }
            printUnknownFields(messageOrBuilder.getUnknownFields(), bVar);
        }

        private void printField(Descriptors.FieldDescriptor fieldDescriptor, Object obj, b bVar) throws IOException {
            if (fieldDescriptor.isRepeated()) {
                for (Object obj2 : (List) obj) {
                    printSingleField(fieldDescriptor, obj2, bVar);
                }
                return;
            }
            printSingleField(fieldDescriptor, obj, bVar);
        }

        private void printFieldValue(Descriptors.FieldDescriptor fieldDescriptor, Object obj, b bVar) throws IOException {
            switch (AnonymousClass1.$SwitchMap$com$explorestack$protobuf$Descriptors$FieldDescriptor$Type[fieldDescriptor.getType().ordinal()]) {
                case 1:
                case 2:
                case 3:
                    bVar.print(obj.toString());
                    return;
                case 4:
                case 5:
                case 6:
                    bVar.print(obj.toString());
                    return;
                case 7:
                    bVar.print(obj.toString());
                    return;
                case 8:
                    bVar.print(obj.toString());
                    return;
                case 9:
                    bVar.print(obj.toString());
                    return;
                case 10:
                case 11:
                    bVar.print(TextFormat.unsignedToString(((Integer) obj).intValue()));
                    return;
                case 12:
                case 13:
                    bVar.print(TextFormat.unsignedToString(((Long) obj).longValue()));
                    return;
                case 14:
                    bVar.print("\"");
                    bVar.print(this.escapeNonAscii ? TextFormat.escapeBytes(ByteString.copyFromUtf8((String) obj)) : TextFormat.escapeDoubleQuotesAndBackslashes((String) obj).replace(StringUtils.LF, "\\n"));
                    bVar.print("\"");
                    return;
                case 15:
                    bVar.print("\"");
                    if (obj instanceof ByteString) {
                        bVar.print(TextFormat.escapeBytes((ByteString) obj));
                    } else {
                        bVar.print(TextFormat.escapeBytes((byte[]) obj));
                    }
                    bVar.print("\"");
                    return;
                case 16:
                    bVar.print(((Descriptors.EnumValueDescriptor) obj).getName());
                    return;
                case 17:
                case 18:
                    print((Message) obj, bVar);
                    return;
                default:
                    return;
            }
        }

        private void printSingleField(Descriptors.FieldDescriptor fieldDescriptor, Object obj, b bVar) throws IOException {
            if (fieldDescriptor.isExtension()) {
                bVar.print("[");
                if (!fieldDescriptor.getContainingType().getOptions().getMessageSetWireFormat() || fieldDescriptor.getType() != Descriptors.FieldDescriptor.Type.MESSAGE || !fieldDescriptor.isOptional() || fieldDescriptor.getExtensionScope() != fieldDescriptor.getMessageType()) {
                    bVar.print(fieldDescriptor.getFullName());
                } else {
                    bVar.print(fieldDescriptor.getMessageType().getFullName());
                }
                bVar.print("]");
            } else if (fieldDescriptor.getType() == Descriptors.FieldDescriptor.Type.GROUP) {
                bVar.print(fieldDescriptor.getMessageType().getName());
            } else {
                bVar.print(fieldDescriptor.getName());
            }
            if (fieldDescriptor.getJavaType() != Descriptors.FieldDescriptor.JavaType.MESSAGE) {
                bVar.print(": ");
            } else if (this.singleLineMode) {
                bVar.print(" { ");
            } else {
                bVar.print(" {\n");
                bVar.indent();
            }
            if (fieldDescriptor.getJavaType() == Descriptors.FieldDescriptor.JavaType.MESSAGE) {
                StringBuilder sb = new StringBuilder();
                if (obj instanceof Any) {
                    Any any = (Any) obj;
                    String[] split = any.getTypeUrl().split("/");
                    String str = split[split.length - 1];
                    for (String str2 : g.protoKnownPackages) {
                        try {
                            g.print(any.unpack(Class.forName(str.replace(g.protoRootPackage, str2))), sb);
                            break;
                        } catch (ClassNotFoundException e) {
                        }
                    }
                    if (sb.length() > 0) {
                        bVar.indent();
                        bVar.print(sb);
                        bVar.outdent();
                        bVar.print("}");
                        bVar.print(StringUtils.LF);
                        return;
                    }
                    return;
                }
                g.print((MessageOrBuilder) obj, sb);
                if (sb.length() > 0) {
                    bVar.print(sb);
                    bVar.outdent();
                    bVar.print("}");
                    bVar.print(StringUtils.LF);
                    return;
                }
                return;
            }
            printFieldValue(fieldDescriptor, obj, bVar);
            if (this.singleLineMode) {
                bVar.print(StringUtils.SPACE);
            } else {
                bVar.print(StringUtils.LF);
            }
        }

        private void printUnknownField(int i, int i2, List<?> list, b bVar) throws IOException {
            for (Object obj : list) {
                bVar.print(String.valueOf(i));
                bVar.print(": ");
                g.printUnknownFieldValue(i2, obj, bVar);
                bVar.print(this.singleLineMode ? StringUtils.SPACE : StringUtils.LF);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void printUnknownFields(UnknownFieldSet unknownFieldSet, b bVar) throws IOException {
            for (Map.Entry<Integer, UnknownFieldSet.Field> entry : unknownFieldSet.asMap().entrySet()) {
                int intValue = entry.getKey().intValue();
                UnknownFieldSet.Field value = entry.getValue();
                printUnknownField(intValue, 0, value.getVarintList(), bVar);
                printUnknownField(intValue, 5, value.getFixed32List(), bVar);
                printUnknownField(intValue, 1, value.getFixed64List(), bVar);
                printUnknownField(intValue, 2, value.getLengthDelimitedList(), bVar);
                for (UnknownFieldSet unknownFieldSet2 : value.getGroupList()) {
                    bVar.print(entry.getKey().toString());
                    if (this.singleLineMode) {
                        bVar.print(" { ");
                    } else {
                        bVar.print(" {\n");
                        bVar.indent();
                    }
                    printUnknownFields(unknownFieldSet2, bVar);
                    if (this.singleLineMode) {
                        bVar.print("} ");
                    } else {
                        bVar.outdent();
                        bVar.print("}\n");
                    }
                }
            }
        }

        private a setEscapeNonAscii(boolean z) {
            this.escapeNonAscii = z;
            return this;
        }

        private a setSingleLineMode(boolean z) {
            this.singleLineMode = z;
            return this;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5-dex2jar.jar:io/bidmachine/g$b.class */
    public static final class b {
        private boolean atStartOfLine;
        private final StringBuilder indent;
        private final Appendable output;

        private b(Appendable appendable) {
            this.indent = new StringBuilder();
            this.atStartOfLine = true;
            this.output = appendable;
        }

        /* synthetic */ b(Appendable appendable, AnonymousClass1 r5) {
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
            for (int i2 = 0; i2 < length; i2++) {
                i = i;
                if (charSequence.charAt(i2) == '\n') {
                    i = i2 + 1;
                    write(charSequence.subSequence(i, i));
                    this.atStartOfLine = true;
                }
            }
            write(charSequence.subSequence(i, length));
        }
    }

    g() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void addEvent(Map<TrackEventType, List<String>> map, TrackEventType trackEventType, String str) {
        if (!TextUtils.isEmpty(str)) {
            List<String> list = map.get(trackEventType);
            List<String> list2 = list;
            if (list == null) {
                list2 = new ArrayList<>(1);
                map.put(trackEventType, list2);
            }
            list2.add(str);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void dump(String str, MessageOrBuilder messageOrBuilder) {
        if (Logger.isLoggingEnabled()) {
            Logger.log(str + " dump:\n" + printToString(messageOrBuilder));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
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

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Context.Geo.Builder locationToGeo(Location location, boolean z) {
        Context.Geo.Builder newBuilder = Context.Geo.newBuilder();
        locationToGeo(newBuilder, location, z);
        return newBuilder;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
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

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x0023, code lost:
        if (r0.getTime() >= r0.getTime()) goto L_0x0026;
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
            if (r0 == 0) goto L_0x0028
            r0 = r6
            if (r0 == 0) goto L_0x0026
            r0 = r6
            r5 = r0
            r0 = r7
            long r0 = r0.getTime()
            r1 = r6
            long r1 = r1.getTime()
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 < 0) goto L_0x0028
        L_0x0026:
            r0 = r7
            r5 = r0
        L_0x0028:
            r0 = r5
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: io.bidmachine.g.obtainBestLocation(android.content.Context, android.location.Location, android.location.Location):android.location.Location");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static InitRequest obtainInitRequest(android.content.Context context, String str, TargetingParams targetingParams, DataRestrictions dataRestrictions) {
        InitRequest.Builder newBuilder = InitRequest.newBuilder();
        String packageName = context.getPackageName();
        if (packageName != null) {
            newBuilder.setBundle(packageName);
        }
        newBuilder.setSellerId(str);
        newBuilder.setOs(OS.OS_ANDROID);
        newBuilder.setOsv(Build.VERSION.RELEASE);
        String appVersion = Utils.getAppVersion(context);
        if (appVersion != null) {
            newBuilder.setAppVer(appVersion);
        }
        newBuilder.setSdk(BidMachine.NAME);
        newBuilder.setSdkver("1.7.1");
        newBuilder.setIfa(c.getAdvertisingId(context, !dataRestrictions.canSendIfa()));
        newBuilder.setBmIfv(d.get().obtainIFV(context));
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

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void prepareEvents(Map<TrackEventType, List<String>> map, List<Ad.Event> list) {
        if (!(list == null || list.size() == 0)) {
            for (Ad.Event event : list) {
                TrackEventType fromNumber = TrackEventType.fromNumber(event.getTypeValue());
                if (fromNumber != null) {
                    addEvent(map, fromNumber, event.getUrl());
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void print(MessageOrBuilder messageOrBuilder, Appendable appendable) throws IOException {
        DEFAULT_PRINTER.print(messageOrBuilder, new b(appendable, null));
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

    /* JADX INFO: Access modifiers changed from: private */
    public static void printUnknownFieldValue(int i, Object obj, b bVar) throws IOException {
        int tagWireType = WireFormat.getTagWireType(i);
        if (tagWireType == 0) {
            bVar.print(unsignedToString(((Long) obj).longValue()));
        } else if (tagWireType == 1) {
            bVar.print(String.format(null, "0x%016x", (Long) obj));
        } else if (tagWireType == 2) {
            bVar.print("\"");
            bVar.print(TextFormat.escapeBytes((ByteString) obj));
            bVar.print("\"");
        } else if (tagWireType == 3) {
            DEFAULT_PRINTER.printUnknownFields((UnknownFieldSet) obj, bVar);
        } else if (tagWireType == 5) {
            bVar.print(String.format(null, "0x%08x", (Integer) obj));
        } else {
            throw new IllegalArgumentException("Bad tag: ".concat(String.valueOf(i)));
        }
    }

    private static String unsignedToString(long j) {
        return j >= 0 ? Long.toString(j) : BigInteger.valueOf(j & Long.MAX_VALUE).setBit(63).toString();
    }
}
