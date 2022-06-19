package scala.sys;

import scala.Function0;
import scala.collection.immutable.Nil$;
import scala.collection.mutable.Map;
import scala.collection.mutable.Map$;
import scala.runtime.BoxedUnit;
/* loaded from: classes3-dex2jar.jar:scala/sys/SystemProperties$.class */
public final class SystemProperties$ {
    public static final SystemProperties$ MODULE$ = null;
    private volatile byte bitmap$0;
    private BooleanProp headless;
    private BooleanProp noTraceSupression;
    private BooleanProp preferIPv4Stack;
    private BooleanProp preferIPv6Addresses;
    private Map<String, String> propertyHelp;

    static {
        new SystemProperties$();
    }

    private SystemProperties$() {
        MODULE$ = this;
    }

    private <P extends Prop<?>> P addHelp(P p, String str) {
        propertyHelp().update(p.key(), str);
        return p;
    }

    private BooleanProp bool(String str, String str2) {
        return (BooleanProp) addHelp(str.startsWith("java.") ? BooleanProp$.MODULE$.valueIsTrue(str) : BooleanProp$.MODULE$.keyExists(str), str2);
    }

    private BooleanProp headless$lzycompute() {
        synchronized (this) {
            if (((byte) (this.bitmap$0 & 2)) == 0) {
                this.headless = bool("java.awt.headless", "system should not utilize a display device");
                this.bitmap$0 = (byte) (this.bitmap$0 | 2);
            }
            BoxedUnit boxedUnit = BoxedUnit.UNIT;
        }
        return this.headless;
    }

    private BooleanProp noTraceSupression$lzycompute() {
        synchronized (this) {
            if (((byte) (this.bitmap$0 & 16)) == 0) {
                this.noTraceSupression = bool("scala.control.noTraceSuppression", "scala should not suppress any stack trace creation");
                this.bitmap$0 = (byte) (this.bitmap$0 | 16);
            }
            BoxedUnit boxedUnit = BoxedUnit.UNIT;
        }
        return this.noTraceSupression;
    }

    private BooleanProp preferIPv4Stack$lzycompute() {
        synchronized (this) {
            if (((byte) (this.bitmap$0 & 4)) == 0) {
                this.preferIPv4Stack = bool("java.net.preferIPv4Stack", "system should prefer IPv4 sockets");
                this.bitmap$0 = (byte) (this.bitmap$0 | 4);
            }
            BoxedUnit boxedUnit = BoxedUnit.UNIT;
        }
        return this.preferIPv4Stack;
    }

    private BooleanProp preferIPv6Addresses$lzycompute() {
        synchronized (this) {
            if (((byte) (this.bitmap$0 & 8)) == 0) {
                this.preferIPv6Addresses = bool("java.net.preferIPv6Addresses", "system should prefer IPv6 addresses");
                this.bitmap$0 = (byte) (this.bitmap$0 | 8);
            }
            BoxedUnit boxedUnit = BoxedUnit.UNIT;
        }
        return this.preferIPv6Addresses;
    }

    private Map<String, String> propertyHelp() {
        return ((byte) (this.bitmap$0 & 1)) == 0 ? propertyHelp$lzycompute() : this.propertyHelp;
    }

    private Map propertyHelp$lzycompute() {
        synchronized (this) {
            if (((byte) (this.bitmap$0 & 1)) == 0) {
                this.propertyHelp = (Map) Map$.MODULE$.apply(Nil$.MODULE$);
                this.bitmap$0 = (byte) (this.bitmap$0 | 1);
            }
            BoxedUnit boxedUnit = BoxedUnit.UNIT;
        }
        return this.propertyHelp;
    }

    public <T> T exclusively(Function0<T> function0) {
        T apply;
        synchronized (this) {
            apply = function0.apply();
        }
        return apply;
    }

    public BooleanProp headless() {
        return ((byte) (this.bitmap$0 & 2)) == 0 ? headless$lzycompute() : this.headless;
    }

    public String help(String str) {
        return (String) propertyHelp().getOrElse(str, new SystemProperties$$anonfun$help$1());
    }

    public BooleanProp noTraceSupression() {
        return ((byte) (this.bitmap$0 & 16)) == 0 ? noTraceSupression$lzycompute() : this.noTraceSupression;
    }

    public BooleanProp preferIPv4Stack() {
        return ((byte) (this.bitmap$0 & 4)) == 0 ? preferIPv4Stack$lzycompute() : this.preferIPv4Stack;
    }

    public BooleanProp preferIPv6Addresses() {
        return ((byte) (this.bitmap$0 & 8)) == 0 ? preferIPv6Addresses$lzycompute() : this.preferIPv6Addresses;
    }

    public SystemProperties$ systemPropertiesToCompanion(SystemProperties systemProperties) {
        return this;
    }
}
