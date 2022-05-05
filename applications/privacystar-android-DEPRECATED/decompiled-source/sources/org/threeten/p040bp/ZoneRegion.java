package org.threeten.p040bp;

import java.io.DataInput;
import java.io.DataOutput;
import java.io.IOException;
import java.io.InvalidObjectException;
import java.io.ObjectStreamException;
import java.io.Serializable;
import java.util.regex.Pattern;
import org.apache.commons.cli.HelpFormatter;
import org.threeten.p040bp.jdk8.Jdk8Methods;
import org.threeten.p040bp.zone.ZoneRules;
import org.threeten.p040bp.zone.ZoneRulesException;
import org.threeten.p040bp.zone.ZoneRulesProvider;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: org.threeten.bp.ZoneRegion */
/* loaded from: classes3-dex2jar.jar:org/threeten/bp/ZoneRegion.class */
public final class ZoneRegion extends ZoneId implements Serializable {
    private static final Pattern PATTERN = Pattern.compile("[A-Za-z][A-Za-z0-9~/._+-]+");
    private static final long serialVersionUID = 8386373296231747096L;

    /* renamed from: id */
    private final String f1819id;
    private final transient ZoneRules rules;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ZoneRegion(String str, ZoneRules zoneRules) {
        this.f1819id = str;
        this.rules = zoneRules;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static ZoneRegion ofId(String str, boolean z) {
        Jdk8Methods.requireNonNull(str, "zoneId");
        if (str.length() < 2 || !PATTERN.matcher(str).matches()) {
            throw new DateTimeException("Invalid ID for region-based ZoneId, invalid format: " + str);
        }
        ZoneRules zoneRules = null;
        try {
            zoneRules = ZoneRulesProvider.getRules(str, true);
        } catch (ZoneRulesException e) {
            if (str.equals("GMT0")) {
                zoneRules = ZoneOffset.UTC.getRules();
            } else if (z) {
                throw e;
            }
        }
        return new ZoneRegion(str, zoneRules);
    }

    private static ZoneRegion ofLenient(String str) {
        if (str.equals("Z") || str.startsWith("+") || str.startsWith(HelpFormatter.DEFAULT_OPT_PREFIX)) {
            throw new DateTimeException("Invalid ID for region-based ZoneId, invalid format: " + str);
        } else if (str.equals("UTC") || str.equals("GMT") || str.equals("UT")) {
            return new ZoneRegion(str, ZoneOffset.UTC.getRules());
        } else {
            if (str.startsWith("UTC+") || str.startsWith("GMT+") || str.startsWith("UTC-") || str.startsWith("GMT-")) {
                ZoneOffset of = ZoneOffset.m65of(str.substring(3));
                if (of.getTotalSeconds() == 0) {
                    return new ZoneRegion(str.substring(0, 3), of.getRules());
                }
                return new ZoneRegion(str.substring(0, 3) + of.getId(), of.getRules());
            } else if (!str.startsWith("UT+") && !str.startsWith("UT-")) {
                return ofId(str, false);
            } else {
                ZoneOffset of2 = ZoneOffset.m65of(str.substring(2));
                if (of2.getTotalSeconds() == 0) {
                    return new ZoneRegion("UT", of2.getRules());
                }
                return new ZoneRegion("UT" + of2.getId(), of2.getRules());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static ZoneId readExternal(DataInput dataInput) throws IOException {
        return ofLenient(dataInput.readUTF());
    }

    private Object readResolve() throws ObjectStreamException {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    private Object writeReplace() {
        return new Ser((byte) 7, this);
    }

    @Override // org.threeten.p040bp.ZoneId
    public String getId() {
        return this.f1819id;
    }

    @Override // org.threeten.p040bp.ZoneId
    public ZoneRules getRules() {
        return this.rules != null ? this.rules : ZoneRulesProvider.getRules(this.f1819id, false);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.threeten.p040bp.ZoneId
    public void write(DataOutput dataOutput) throws IOException {
        dataOutput.writeByte(7);
        writeExternal(dataOutput);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void writeExternal(DataOutput dataOutput) throws IOException {
        dataOutput.writeUTF(this.f1819id);
    }
}
