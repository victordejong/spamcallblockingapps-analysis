package com.bumptech.glide.provider;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import com.bumptech.glide.load.ResourceEncoder;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/provider/ResourceEncoderRegistry.class */
public class ResourceEncoderRegistry {
    private final List<Entry<?>> encoders = new ArrayList();

    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/provider/ResourceEncoderRegistry$Entry.class */
    private static final class Entry<T> {
        final ResourceEncoder<T> encoder;
        private final Class<T> resourceClass;

        Entry(@NonNull Class<T> cls, @NonNull ResourceEncoder<T> resourceEncoder) {
            this.resourceClass = cls;
            this.encoder = resourceEncoder;
        }

        boolean handles(@NonNull Class<?> cls) {
            return this.resourceClass.isAssignableFrom(cls);
        }
    }

    public <Z> void append(@NonNull Class<Z> cls, @NonNull ResourceEncoder<Z> resourceEncoder) {
        synchronized (this) {
            this.encoders.add(new Entry<>(cls, resourceEncoder));
        }
    }

    @Nullable
    public <Z> ResourceEncoder<Z> get(@NonNull Class<Z> cls) {
        synchronized (this) {
            int size = this.encoders.size();
            for (int i = 0; i < size; i++) {
                Entry<?> entry = this.encoders.get(i);
                if (entry.handles(cls)) {
                    return (ResourceEncoder<Z>) entry.encoder;
                }
            }
            return null;
        }
    }

    public <Z> void prepend(@NonNull Class<Z> cls, @NonNull ResourceEncoder<Z> resourceEncoder) {
        synchronized (this) {
            this.encoders.add(0, new Entry<>(cls, resourceEncoder));
        }
    }
}
