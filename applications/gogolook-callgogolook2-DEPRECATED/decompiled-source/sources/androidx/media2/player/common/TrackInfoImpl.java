package androidx.media2.player.common;

import android.media.MediaFormat;
import androidx.annotation.RestrictTo;
import androidx.media2.exoplayer.external.source.hls.playlist.HlsPlaylistParser;
import androidx.media2.exoplayer.external.text.webvtt.CssParser;
import androidx.media2.player.MediaPlayer2;
import gogolook.callgogolook2.gson.UserProfile;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
/* loaded from: classes-dex2jar.jar:androidx/media2/player/common/TrackInfoImpl.class */
public final class TrackInfoImpl extends MediaPlayer2.TrackInfo {
    public final MediaFormat mFormat;
    public final int mTrackType;

    public TrackInfoImpl(int i, MediaFormat mediaFormat) {
        this.mTrackType = i;
        this.mFormat = mediaFormat;
    }

    @Override // androidx.media2.player.MediaPlayer2.TrackInfo
    public MediaFormat getFormat() {
        if (this.mTrackType == 4) {
            return this.mFormat;
        }
        return null;
    }

    @Override // androidx.media2.player.MediaPlayer2.TrackInfo
    public String getLanguage() {
        String string = this.mFormat.getString("language");
        String str = string;
        if (string == null) {
            str = "und";
        }
        return str;
    }

    @Override // androidx.media2.player.MediaPlayer2.TrackInfo
    public int getTrackType() {
        return this.mTrackType;
    }

    @Override // androidx.media2.player.MediaPlayer2.TrackInfo
    public String toString() {
        StringBuilder sb = new StringBuilder(128);
        sb.append(TrackInfoImpl.class.getName());
        sb.append('{');
        int i = this.mTrackType;
        if (i == 1) {
            sb.append("VIDEO");
        } else if (i == 2) {
            sb.append(HlsPlaylistParser.TYPE_AUDIO);
        } else if (i == 4) {
            sb.append("SUBTITLE");
        } else if (i != 5) {
            sb.append("UNKNOWN");
        } else {
            sb.append("METADATA");
        }
        sb.append(UserProfile.CARD_CATE_SEPARATOR);
        sb.append(this.mFormat);
        sb.append(CssParser.BLOCK_END);
        return sb.toString();
    }
}
