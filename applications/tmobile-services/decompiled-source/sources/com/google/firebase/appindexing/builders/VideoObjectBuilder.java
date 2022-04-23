package com.google.firebase.appindexing.builders;

import androidx.annotation.NonNull;
import java.util.Date;
/* loaded from: classes-dex2jar.jar:com/google/firebase/appindexing/builders/VideoObjectBuilder.class */
public final class VideoObjectBuilder extends IndexableBuilder<VideoObjectBuilder> {
    VideoObjectBuilder() {
        super("VideoObject");
    }

    public final VideoObjectBuilder setAuthor(@NonNull PersonBuilder personBuilder) {
        return put("author", personBuilder);
    }

    public final VideoObjectBuilder setDuration(long j) {
        return put("duration", j);
    }

    public final VideoObjectBuilder setDurationWatched(long j) {
        return put("durationWatched", j);
    }

    public final VideoObjectBuilder setLocationCreated(@NonNull PlaceBuilder placeBuilder) {
        return put("locationCreated", placeBuilder);
    }

    public final VideoObjectBuilder setSeriesName(@NonNull String str) {
        return put("seriesName", str);
    }

    public final VideoObjectBuilder setUploadDate(@NonNull Date date) {
        return put("uploadDate", date.getTime());
    }
}
