package com.google.gson;

import p131c.p161d.p354f.AbstractC6123k;
import p131c.p161d.p354f.C6126n;
/* loaded from: classes2-dex2jar.jar:com/google/gson/LongSerializationPolicy.class */
public enum LongSerializationPolicy {
    DEFAULT { // from class: com.google.gson.LongSerializationPolicy.1
        @Override // com.google.gson.LongSerializationPolicy
        public AbstractC6123k serialize(Long l) {
            return new C6126n(l);
        }
    },
    STRING { // from class: com.google.gson.LongSerializationPolicy.2
        @Override // com.google.gson.LongSerializationPolicy
        public AbstractC6123k serialize(Long l) {
            return new C6126n(String.valueOf(l));
        }
    };

    public abstract AbstractC6123k serialize(Long l);
}
