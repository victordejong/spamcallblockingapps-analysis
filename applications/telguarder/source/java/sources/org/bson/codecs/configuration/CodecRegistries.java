package org.bson.codecs.configuration;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.bson.codecs.Codec;
import org.bson.internal.ProvidersCodecRegistry;
/* loaded from: classes-dex2jar.jar:org/bson/codecs/configuration/CodecRegistries.class */
public final class CodecRegistries {
    private CodecRegistries() {
    }

    public static CodecRegistry fromCodecs(List<? extends Codec<?>> list) {
        return fromProviders(new MapOfCodecsProvider(list));
    }

    public static CodecRegistry fromCodecs(Codec<?>... codecArr) {
        return fromCodecs(Arrays.asList(codecArr));
    }

    public static CodecRegistry fromProviders(List<? extends CodecProvider> list) {
        return new ProvidersCodecRegistry(list);
    }

    public static CodecRegistry fromProviders(CodecProvider... codecProviderArr) {
        return fromProviders(Arrays.asList(codecProviderArr));
    }

    public static CodecRegistry fromRegistries(List<? extends CodecRegistry> list) {
        ArrayList arrayList = new ArrayList();
        for (CodecRegistry codecRegistry : list) {
            arrayList.add(providerFromRegistry(codecRegistry));
        }
        return new ProvidersCodecRegistry(arrayList);
    }

    public static CodecRegistry fromRegistries(CodecRegistry... codecRegistryArr) {
        return fromRegistries(Arrays.asList(codecRegistryArr));
    }

    private static CodecProvider providerFromRegistry(final CodecRegistry codecRegistry) {
        return codecRegistry instanceof CodecProvider ? (CodecProvider) codecRegistry : new CodecProvider() { // from class: org.bson.codecs.configuration.CodecRegistries.1
            @Override // org.bson.codecs.configuration.CodecProvider
            public <T> Codec<T> get(Class<T> cls, CodecRegistry codecRegistry2) {
                try {
                    return codecRegistry.get(cls);
                } catch (CodecConfigurationException e) {
                    return null;
                }
            }
        };
    }
}
