package com.fasterxml.jackson.databind.util;

import gogolook.callgogolook2.gson.UserProfile;
import java.io.Serializable;
/* loaded from: classes-dex2jar.jar:com/fasterxml/jackson/databind/util/NameTransformer.class */
public abstract class NameTransformer {
    public static final NameTransformer NOP = new NopTransformer();

    /* loaded from: classes-dex2jar.jar:com/fasterxml/jackson/databind/util/NameTransformer$Chained.class */
    public static class Chained extends NameTransformer implements Serializable {
        public final NameTransformer _t1;
        public final NameTransformer _t2;

        public Chained(NameTransformer nameTransformer, NameTransformer nameTransformer2) {
            this._t1 = nameTransformer;
            this._t2 = nameTransformer2;
        }

        public String toString() {
            return "[ChainedTransformer(" + this._t1 + UserProfile.CARD_CATE_SEPARATOR + this._t2 + ")]";
        }

        @Override // com.fasterxml.jackson.databind.util.NameTransformer
        public String transform(String str) {
            return this._t1.transform(this._t2.transform(str));
        }
    }

    /* loaded from: classes-dex2jar.jar:com/fasterxml/jackson/databind/util/NameTransformer$NopTransformer.class */
    public static final class NopTransformer extends NameTransformer implements Serializable {
        @Override // com.fasterxml.jackson.databind.util.NameTransformer
        public String transform(String str) {
            return str;
        }
    }

    public static NameTransformer chainedTransformer(NameTransformer nameTransformer, NameTransformer nameTransformer2) {
        return new Chained(nameTransformer, nameTransformer2);
    }

    public static NameTransformer simpleTransformer(final String str, final String str2) {
        boolean z = true;
        boolean z2 = str != null && str.length() > 0;
        if (str2 == null || str2.length() <= 0) {
            z = false;
        }
        return z2 ? z ? new NameTransformer() { // from class: com.fasterxml.jackson.databind.util.NameTransformer.1
            public String toString() {
                return "[PreAndSuffixTransformer('" + str + "','" + str2 + "')]";
            }

            @Override // com.fasterxml.jackson.databind.util.NameTransformer
            public String transform(String str3) {
                return str + str3 + str2;
            }
        } : new NameTransformer() { // from class: com.fasterxml.jackson.databind.util.NameTransformer.2
            public String toString() {
                return "[PrefixTransformer('" + str + "')]";
            }

            @Override // com.fasterxml.jackson.databind.util.NameTransformer
            public String transform(String str3) {
                return str + str3;
            }
        } : z ? new NameTransformer() { // from class: com.fasterxml.jackson.databind.util.NameTransformer.3
            public String toString() {
                return "[SuffixTransformer('" + str2 + "')]";
            }

            @Override // com.fasterxml.jackson.databind.util.NameTransformer
            public String transform(String str3) {
                return str3 + str2;
            }
        } : NOP;
    }

    public abstract String transform(String str);
}
