package com.bumptech.glide.load.resource.transcode;

import android.support.annotation.NonNull;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/transcode/TranscoderRegistry.class */
public class TranscoderRegistry {
    private final List<Entry<?, ?>> transcoders = new ArrayList();

    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/transcode/TranscoderRegistry$Entry.class */
    private static final class Entry<Z, R> {
        private final Class<Z> fromClass;
        private final Class<R> toClass;
        final ResourceTranscoder<Z, R> transcoder;

        Entry(@NonNull Class<Z> cls, @NonNull Class<R> cls2, @NonNull ResourceTranscoder<Z, R> resourceTranscoder) {
            this.fromClass = cls;
            this.toClass = cls2;
            this.transcoder = resourceTranscoder;
        }

        public boolean handles(@NonNull Class<?> cls, @NonNull Class<?> cls2) {
            return this.fromClass.isAssignableFrom(cls) && cls2.isAssignableFrom(this.toClass);
        }
    }

    @NonNull
    public <Z, R> ResourceTranscoder<Z, R> get(@NonNull Class<Z> cls, @NonNull Class<R> cls2) {
        Entry<?, ?> next;
        synchronized (this) {
            if (cls2.isAssignableFrom(cls)) {
                return UnitTranscoder.get();
            }
            Iterator<Entry<?, ?>> it = this.transcoders.iterator();
            do {
                if (it.hasNext()) {
                    next = it.next();
                } else {
                    throw new IllegalArgumentException("No transcoder registered to transcode from " + cls + " to " + cls2);
                }
            } while (!next.handles(cls, cls2));
            return (ResourceTranscoder<Z, R>) next.transcoder;
        }
    }

    @NonNull
    public <Z, R> List<Class<R>> getTranscodeClasses(@NonNull Class<Z> cls, @NonNull Class<R> cls2) {
        synchronized (this) {
            ArrayList arrayList = new ArrayList();
            if (cls2.isAssignableFrom(cls)) {
                arrayList.add(cls2);
                return arrayList;
            }
            for (Entry<?, ?> entry : this.transcoders) {
                if (entry.handles(cls, cls2)) {
                    arrayList.add(cls2);
                }
            }
            return arrayList;
        }
    }

    public <Z, R> void register(@NonNull Class<Z> cls, @NonNull Class<R> cls2, @NonNull ResourceTranscoder<Z, R> resourceTranscoder) {
        synchronized (this) {
            this.transcoders.add(new Entry<>(cls, cls2, resourceTranscoder));
        }
    }
}
