package com.google.firebase.appindexing.builders;

import androidx.annotation.NonNull;
/* loaded from: classes-dex2jar.jar:com/google/firebase/appindexing/builders/MusicRecordingBuilder.class */
public final class MusicRecordingBuilder extends IndexableBuilder<MusicRecordingBuilder> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public MusicRecordingBuilder() {
        super("MusicRecording");
    }

    public final MusicRecordingBuilder setByArtist(@NonNull MusicGroupBuilder musicGroupBuilder) {
        return put("byArtist", musicGroupBuilder);
    }

    public final MusicRecordingBuilder setDuration(int i) {
        return put("duration", i);
    }

    public final MusicRecordingBuilder setInAlbum(@NonNull MusicAlbumBuilder musicAlbumBuilder) {
        return put("inAlbum", musicAlbumBuilder);
    }

    public final MusicRecordingBuilder setInPlaylist(@NonNull MusicPlaylistBuilder... musicPlaylistBuilderArr) {
        return put("inPlaylist", musicPlaylistBuilderArr);
    }
}
