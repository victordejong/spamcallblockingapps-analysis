package androidx.media2.player.exoplayer;

import android.annotation.SuppressLint;
import android.media.MediaFormat;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.core.util.Preconditions;
import androidx.media2.exoplayer.external.Format;
import androidx.media2.exoplayer.external.Player;
import androidx.media2.exoplayer.external.source.TrackGroupArray;
import androidx.media2.exoplayer.external.trackselection.DefaultTrackSelector;
import androidx.media2.exoplayer.external.trackselection.MappingTrackSelector;
import androidx.media2.exoplayer.external.trackselection.TrackSelection;
import androidx.media2.exoplayer.external.trackselection.TrackSelectionArray;
import androidx.media2.exoplayer.external.util.MimeTypes;
import androidx.media2.player.MediaPlayer2;
import androidx.media2.player.common.TrackInfoImpl;
import java.util.ArrayList;
import java.util.List;
@SuppressLint({"RestrictedApi"})
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
/* loaded from: classes-dex2jar.jar:androidx/media2/player/exoplayer/TrackSelector.class */
public final class TrackSelector {
    public static final int TRACK_INDEX_UNSET = -1;
    public boolean mPendingMetadataUpdate;
    public final TextRenderer mTextRenderer;
    public final DefaultTrackSelector mDefaultTrackSelector = new DefaultTrackSelector();
    public final List<MediaPlayer2.TrackInfo> mAudioTrackInfos = new ArrayList();
    public final List<MediaPlayer2.TrackInfo> mVideoTrackInfos = new ArrayList();
    public final List<MediaPlayer2.TrackInfo> mMetadataTrackInfos = new ArrayList();
    public final List<MediaPlayer2.TrackInfo> mTextTrackInfos = new ArrayList();
    public final List<InternalTextTrackInfo> mInternalTextTrackInfos = new ArrayList();
    public int mSelectedAudioTrackIndex = -1;
    public int mSelectedVideoTrackIndex = -1;
    public int mSelectedMetadataTrackIndex = -1;
    public int mPlayerTextTrackIndex = -1;
    public int mSelectedTextTrackIndex = -1;

    /* loaded from: classes-dex2jar.jar:androidx/media2/player/exoplayer/TrackSelector$InternalTextTrackInfo.class */
    public static final class InternalTextTrackInfo {
        public static final String MIMETYPE_TEXT_CEA_608 = "text/cea-608";
        public static final String MIMETYPE_TEXT_CEA_708 = "text/cea-708";
        public static final int UNSET = -1;
        public final int mChannel;
        @Nullable
        public final Format mFormat;
        public final int mPlayerTrackIndex;
        public final TrackInfoImpl mTrackInfo;
        public final int mType;

        public InternalTextTrackInfo(int i, int i2, @Nullable Format format, int i3) {
            this.mPlayerTrackIndex = i;
            int i4 = 1;
            if (i2 == 0 && i3 == 0) {
                i4 = 5;
            } else if (!(i2 == 1 && i3 == 1)) {
                i4 = format == null ? 0 : format.selectionFlags;
            }
            this.mTrackInfo = getTrackInfo(i2, format == null ? "und" : format.language, i4);
            this.mType = i2;
            this.mChannel = i3;
            this.mFormat = format;
        }

        public static TrackInfoImpl getTrackInfo(int i, String str, int i2) {
            MediaFormat mediaFormat = new MediaFormat();
            int i3 = 1;
            if (i == 0) {
                mediaFormat.setString("mime", "text/cea-608");
            } else if (i == 1) {
                mediaFormat.setString("mime", "text/cea-708");
            } else if (i == 2) {
                mediaFormat.setString("mime", "text/vtt");
            } else {
                throw new IllegalStateException();
            }
            mediaFormat.setString("language", str);
            int i4 = 0;
            mediaFormat.setInteger("is-forced-subtitle", (i2 & 2) != 0 ? 1 : 0);
            mediaFormat.setInteger("is-autoselect", (i2 & 4) != 0 ? 1 : 0);
            if ((i2 & 1) == 0) {
                i3 = 0;
            }
            mediaFormat.setInteger("is-default", i3);
            if (i != 2) {
                i4 = 4;
            }
            return new TrackInfoImpl(i4, mediaFormat);
        }
    }

    public TrackSelector(TextRenderer textRenderer) {
        this.mTextRenderer = textRenderer;
        this.mDefaultTrackSelector.setParameters(new DefaultTrackSelector.ParametersBuilder().setSelectUndeterminedTextLanguage(true).setRendererDisabled(3, true));
    }

    public static int getTextTrackType(String str) {
        char c;
        int hashCode = str.hashCode();
        if (hashCode == -1004728940) {
            if (str.equals("text/vtt")) {
                c = 2;
            }
            c = 65535;
        } else if (hashCode != 1566015601) {
            if (hashCode == 1566016562 && str.equals(MimeTypes.APPLICATION_CEA708)) {
                c = 1;
            }
            c = 65535;
        } else {
            if (str.equals(MimeTypes.APPLICATION_CEA608)) {
                c = 0;
            }
            c = 65535;
        }
        if (c == 0) {
            return 0;
        }
        if (c == 1) {
            return 1;
        }
        if (c == 2) {
            return 2;
        }
        throw new IllegalArgumentException("Unexpected text MIME type " + str);
    }

    public void deselectTrack(int i) {
        boolean z = false;
        Preconditions.checkArgument(i >= this.mVideoTrackInfos.size(), "Video track deselection is not supported");
        int size = i - this.mVideoTrackInfos.size();
        Preconditions.checkArgument(size >= this.mAudioTrackInfos.size(), "Audio track deselection is not supported");
        int size2 = size - this.mAudioTrackInfos.size();
        if (size2 < this.mMetadataTrackInfos.size()) {
            this.mSelectedMetadataTrackIndex = -1;
            DefaultTrackSelector defaultTrackSelector = this.mDefaultTrackSelector;
            defaultTrackSelector.setParameters(defaultTrackSelector.buildUponParameters().setRendererDisabled(3, true));
            return;
        }
        if (size2 - this.mMetadataTrackInfos.size() == this.mSelectedTextTrackIndex) {
            z = true;
        }
        Preconditions.checkArgument(z);
        this.mTextRenderer.clearSelection();
        this.mSelectedTextTrackIndex = -1;
    }

    public DefaultTrackSelector getPlayerTrackSelector() {
        return this.mDefaultTrackSelector;
    }

    public int getSelectedTrack(int i) {
        int size;
        int i2;
        if (i == 1) {
            size = this.mAudioTrackInfos.size();
            i2 = this.mSelectedVideoTrackIndex;
        } else if (i == 2) {
            return this.mSelectedAudioTrackIndex;
        } else {
            if (i == 4) {
                size = this.mAudioTrackInfos.size() + this.mVideoTrackInfos.size() + this.mMetadataTrackInfos.size();
                i2 = this.mSelectedTextTrackIndex;
            } else if (i != 5) {
                return -1;
            } else {
                size = this.mAudioTrackInfos.size() + this.mVideoTrackInfos.size();
                i2 = this.mSelectedMetadataTrackIndex;
            }
        }
        return size + i2;
    }

    public List<MediaPlayer2.TrackInfo> getTrackInfos() {
        ArrayList arrayList = new ArrayList(this.mVideoTrackInfos.size() + this.mAudioTrackInfos.size() + this.mMetadataTrackInfos.size() + this.mInternalTextTrackInfos.size());
        arrayList.addAll(this.mVideoTrackInfos);
        arrayList.addAll(this.mAudioTrackInfos);
        arrayList.addAll(this.mMetadataTrackInfos);
        arrayList.addAll(this.mTextTrackInfos);
        return arrayList;
    }

    public void handlePlayerTracksChanged(Player player) {
        this.mPendingMetadataUpdate = true;
        DefaultTrackSelector defaultTrackSelector = this.mDefaultTrackSelector;
        defaultTrackSelector.setParameters(defaultTrackSelector.buildUponParameters().clearSelectionOverrides());
        int i = -1;
        this.mSelectedAudioTrackIndex = -1;
        this.mSelectedVideoTrackIndex = -1;
        this.mSelectedMetadataTrackIndex = -1;
        this.mPlayerTextTrackIndex = -1;
        this.mSelectedTextTrackIndex = -1;
        this.mAudioTrackInfos.clear();
        this.mVideoTrackInfos.clear();
        this.mMetadataTrackInfos.clear();
        this.mInternalTextTrackInfos.clear();
        this.mTextRenderer.clearSelection();
        MappingTrackSelector.MappedTrackInfo currentMappedTrackInfo = this.mDefaultTrackSelector.getCurrentMappedTrackInfo();
        if (currentMappedTrackInfo != null) {
            TrackGroupArray trackGroups = currentMappedTrackInfo.getTrackGroups(1);
            for (int i2 = 0; i2 < trackGroups.length; i2++) {
                this.mAudioTrackInfos.add(new TrackInfoImpl(2, ExoPlayerUtils.getMediaFormat(trackGroups.get(i2).getFormat(0))));
            }
            TrackGroupArray trackGroups2 = currentMappedTrackInfo.getTrackGroups(0);
            for (int i3 = 0; i3 < trackGroups2.length; i3++) {
                this.mVideoTrackInfos.add(new TrackInfoImpl(1, ExoPlayerUtils.getMediaFormat(trackGroups2.get(i3).getFormat(0))));
            }
            TrackGroupArray trackGroups3 = currentMappedTrackInfo.getTrackGroups(3);
            for (int i4 = 0; i4 < trackGroups3.length; i4++) {
                this.mMetadataTrackInfos.add(new TrackInfoImpl(5, ExoPlayerUtils.getMediaFormat(trackGroups3.get(i4).getFormat(0))));
            }
            TrackSelectionArray currentTrackSelections = player.getCurrentTrackSelections();
            TrackSelection trackSelection = currentTrackSelections.get(1);
            this.mSelectedAudioTrackIndex = trackSelection == null ? -1 : trackGroups.indexOf(trackSelection.getTrackGroup());
            TrackSelection trackSelection2 = currentTrackSelections.get(0);
            this.mSelectedVideoTrackIndex = trackSelection2 == null ? -1 : trackGroups2.indexOf(trackSelection2.getTrackGroup());
            TrackSelection trackSelection3 = currentTrackSelections.get(3);
            this.mSelectedMetadataTrackIndex = trackSelection3 == null ? -1 : trackGroups3.indexOf(trackSelection3.getTrackGroup());
            TrackGroupArray trackGroups4 = currentMappedTrackInfo.getTrackGroups(2);
            for (int i5 = 0; i5 < trackGroups4.length; i5++) {
                Format format = (Format) Preconditions.checkNotNull(trackGroups4.get(i5).getFormat(0));
                InternalTextTrackInfo internalTextTrackInfo = new InternalTextTrackInfo(i5, getTextTrackType(format.sampleMimeType), format, -1);
                this.mInternalTextTrackInfos.add(internalTextTrackInfo);
                this.mTextTrackInfos.add(internalTextTrackInfo.mTrackInfo);
            }
            TrackSelection trackSelection4 = currentTrackSelections.get(2);
            if (trackSelection4 != null) {
                i = trackGroups4.indexOf(trackSelection4.getTrackGroup());
            }
            this.mPlayerTextTrackIndex = i;
        }
    }

    public void handleTextRendererChannelAvailable(int i, int i2) {
        boolean z = false;
        int i3 = 0;
        while (true) {
            if (i3 >= this.mInternalTextTrackInfos.size()) {
                break;
            }
            InternalTextTrackInfo internalTextTrackInfo = this.mInternalTextTrackInfos.get(i3);
            if (internalTextTrackInfo.mType == i && internalTextTrackInfo.mChannel == -1) {
                this.mInternalTextTrackInfos.set(i3, new InternalTextTrackInfo(internalTextTrackInfo.mPlayerTrackIndex, i, internalTextTrackInfo.mFormat, i2));
                if (this.mSelectedTextTrackIndex == i3) {
                    this.mTextRenderer.select(i, i2);
                }
                z = true;
            } else {
                i3++;
            }
        }
        if (!z) {
            InternalTextTrackInfo internalTextTrackInfo2 = new InternalTextTrackInfo(this.mPlayerTextTrackIndex, i, null, i2);
            this.mInternalTextTrackInfos.add(internalTextTrackInfo2);
            this.mTextTrackInfos.add(internalTextTrackInfo2.mTrackInfo);
            this.mPendingMetadataUpdate = true;
        }
    }

    public boolean hasPendingMetadataUpdate() {
        boolean z = this.mPendingMetadataUpdate;
        this.mPendingMetadataUpdate = false;
        return z;
    }

    public void selectTrack(int i) {
        Preconditions.checkArgument(i >= this.mVideoTrackInfos.size(), "Video track selection is not supported");
        int size = i - this.mVideoTrackInfos.size();
        if (size < this.mAudioTrackInfos.size()) {
            this.mSelectedAudioTrackIndex = size;
            TrackGroupArray trackGroups = ((MappingTrackSelector.MappedTrackInfo) Preconditions.checkNotNull(this.mDefaultTrackSelector.getCurrentMappedTrackInfo())).getTrackGroups(1);
            int[] iArr = new int[trackGroups.get(size).length];
            for (int i2 = 0; i2 < iArr.length; i2++) {
                iArr[i2] = i2;
            }
            DefaultTrackSelector.SelectionOverride selectionOverride = new DefaultTrackSelector.SelectionOverride(size, iArr);
            DefaultTrackSelector defaultTrackSelector = this.mDefaultTrackSelector;
            defaultTrackSelector.setParameters(defaultTrackSelector.buildUponParameters().setSelectionOverride(1, trackGroups, selectionOverride).build());
            return;
        }
        int size2 = size - this.mAudioTrackInfos.size();
        if (size2 < this.mMetadataTrackInfos.size()) {
            this.mSelectedMetadataTrackIndex = size2;
            TrackGroupArray trackGroups2 = ((MappingTrackSelector.MappedTrackInfo) Preconditions.checkNotNull(this.mDefaultTrackSelector.getCurrentMappedTrackInfo())).getTrackGroups(3);
            DefaultTrackSelector.SelectionOverride selectionOverride2 = new DefaultTrackSelector.SelectionOverride(size2, 0);
            DefaultTrackSelector defaultTrackSelector2 = this.mDefaultTrackSelector;
            defaultTrackSelector2.setParameters(defaultTrackSelector2.buildUponParameters().setRendererDisabled(3, false).setSelectionOverride(3, trackGroups2, selectionOverride2).build());
            return;
        }
        int size3 = size2 - this.mMetadataTrackInfos.size();
        Preconditions.checkArgument(size3 < this.mInternalTextTrackInfos.size());
        InternalTextTrackInfo internalTextTrackInfo = this.mInternalTextTrackInfos.get(size3);
        if (this.mPlayerTextTrackIndex != internalTextTrackInfo.mPlayerTrackIndex) {
            this.mTextRenderer.clearSelection();
            this.mPlayerTextTrackIndex = internalTextTrackInfo.mPlayerTrackIndex;
            TrackGroupArray trackGroups3 = ((MappingTrackSelector.MappedTrackInfo) Preconditions.checkNotNull(this.mDefaultTrackSelector.getCurrentMappedTrackInfo())).getTrackGroups(2);
            DefaultTrackSelector.SelectionOverride selectionOverride3 = new DefaultTrackSelector.SelectionOverride(this.mPlayerTextTrackIndex, 0);
            DefaultTrackSelector defaultTrackSelector3 = this.mDefaultTrackSelector;
            defaultTrackSelector3.setParameters(defaultTrackSelector3.buildUponParameters().setSelectionOverride(2, trackGroups3, selectionOverride3).build());
        }
        int i3 = internalTextTrackInfo.mChannel;
        if (i3 != -1) {
            this.mTextRenderer.select(internalTextTrackInfo.mType, i3);
        }
        this.mSelectedTextTrackIndex = size3;
    }
}
