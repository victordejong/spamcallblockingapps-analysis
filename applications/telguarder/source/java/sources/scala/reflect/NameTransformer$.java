package scala.reflect;

import scala.Predef$;
import scala.collection.immutable.StringOps;
import scala.collection.mutable.StringBuilder;
import scala.reflect.NameTransformer;
import scala.runtime.BoxedUnit;
import scala.runtime.BoxesRunTime;
import scala.sys.package$;
/* loaded from: classes3-dex2jar.jar:scala/reflect/NameTransformer$.class */
public final class NameTransformer$ {
    public static final NameTransformer$ MODULE$ = null;
    private final String MODULE_SUFFIX_STRING = (String) package$.MODULE$.props().getOrElse("SCALA_MODULE_SUFFIX_STRING", new NameTransformer$$anonfun$1());
    private final String NAME_JOIN_STRING = (String) package$.MODULE$.props().getOrElse("SCALA_NAME_JOIN_STRING", new NameTransformer$$anonfun$2());
    private final String MODULE_INSTANCE_NAME = "MODULE$";
    private final String LOCAL_SUFFIX_STRING = " ";
    private final String SETTER_SUFFIX_STRING = "_$eq";
    private final String TRAIT_SETTER_SEPARATOR_STRING = "$_setter_$";
    private final int nops = 128;
    private final int ncodes = 676;
    private final String[] op2code = new String[nops()];
    private final NameTransformer.OpCodes[] code2op = new NameTransformer.OpCodes[ncodes()];

    static {
        new NameTransformer$();
    }

    private NameTransformer$() {
        MODULE$ = this;
        enterOp('~', "$tilde");
        enterOp('=', "$eq");
        enterOp('<', "$less");
        enterOp('>', "$greater");
        enterOp('!', "$bang");
        enterOp('#', "$hash");
        enterOp('%', "$percent");
        enterOp('^', "$up");
        enterOp('&', "$amp");
        enterOp('|', "$bar");
        enterOp('*', "$times");
        enterOp('/', "$div");
        enterOp('+', "$plus");
        enterOp('-', "$minus");
        enterOp(':', "$colon");
        enterOp('\\', "$bslash");
        enterOp('?', "$qmark");
        enterOp('@', "$at");
    }

    private NameTransformer.OpCodes[] code2op() {
        return this.code2op;
    }

    private void enterOp(char c, String str) {
        op2code()[c] = str;
        int charAt = (((str.charAt(1) - 'a') * 26) + str.charAt(2)) - 97;
        code2op()[charAt] = new NameTransformer.OpCodes(c, str, code2op()[charAt]);
    }

    private int ncodes() {
        return this.ncodes;
    }

    private int nops() {
        return this.nops;
    }

    private String[] op2code() {
        return this.op2code;
    }

    public String LOCAL_SUFFIX_STRING() {
        return this.LOCAL_SUFFIX_STRING;
    }

    public String MODULE_INSTANCE_NAME() {
        return this.MODULE_INSTANCE_NAME;
    }

    public String MODULE_SUFFIX_STRING() {
        return this.MODULE_SUFFIX_STRING;
    }

    public String NAME_JOIN_STRING() {
        return this.NAME_JOIN_STRING;
    }

    public String SETTER_SUFFIX_STRING() {
        return this.SETTER_SUFFIX_STRING;
    }

    public String TRAIT_SETTER_SEPARATOR_STRING() {
        return this.TRAIT_SETTER_SEPARATOR_STRING;
    }

    /* JADX WARN: Code restructure failed: missing block: B:42:0x0141, code lost:
        if (r0 <= 'F') goto L43;
     */
    /* JADX WARN: Removed duplicated region for block: B:69:0x01c8  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x01d2  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x01bf A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:86:0x003c A[ADDED_TO_REGION, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String decode(java.lang.String r6) {
        /*
            Method dump skipped, instructions count: 497
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: scala.reflect.NameTransformer$.decode(java.lang.String):java.lang.String");
    }

    public String encode(String str) {
        int length = str.length();
        StringBuilder stringBuilder = null;
        for (int i = 0; i < length; i++) {
            char charAt = str.charAt(i);
            if (charAt < nops() && op2code()[charAt] != null) {
                if (stringBuilder == null) {
                    stringBuilder = new StringBuilder();
                    stringBuilder.append(str.substring(0, i));
                } else {
                    BoxedUnit boxedUnit = BoxedUnit.UNIT;
                }
                stringBuilder.append(op2code()[charAt]);
            } else if (!Character.isJavaIdentifierPart(charAt)) {
                if (stringBuilder == null) {
                    stringBuilder = new StringBuilder();
                    stringBuilder.append(str.substring(0, i));
                } else {
                    BoxedUnit boxedUnit2 = BoxedUnit.UNIT;
                }
                Predef$ predef$ = Predef$.MODULE$;
                stringBuilder.append(new StringOps("$u%04X").format(Predef$.MODULE$.genericWrapArray(new Object[]{BoxesRunTime.boxToInteger(charAt)})));
            } else if (stringBuilder != null) {
                stringBuilder.append(charAt);
            } else {
                BoxedUnit boxedUnit3 = BoxedUnit.UNIT;
            }
        }
        if (stringBuilder != null) {
            str = stringBuilder.toString();
        }
        return str;
    }
}
