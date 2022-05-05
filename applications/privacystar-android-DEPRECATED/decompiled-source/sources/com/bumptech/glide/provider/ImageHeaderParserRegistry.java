package com.bumptech.glide.provider;

import android.support.annotation.NonNull;
import com.bumptech.glide.load.ImageHeaderParser;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/provider/ImageHeaderParserRegistry.class */
public final class ImageHeaderParserRegistry {
    private final List<ImageHeaderParser> parsers = new ArrayList();

    public void add(@NonNull ImageHeaderParser imageHeaderParser) {
        synchronized (this) {
            this.parsers.add(imageHeaderParser);
        }
    }

    @NonNull
    public List<ImageHeaderParser> getParsers() {
        List<ImageHeaderParser> list;
        synchronized (this) {
            list = this.parsers;
        }
        return list;
    }
}
