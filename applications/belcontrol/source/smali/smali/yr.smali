.class public interface abstract Lyr;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lyr$b;,
        Lyr$a;
    }
.end annotation


# virtual methods
.method public abstract a(JJJLjava/util/List;[Lhq;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJJ",
            "Ljava/util/List<",
            "+",
            "Lgq;",
            ">;[",
            "Lhq;",
            ")V"
        }
    .end annotation
.end method

.method public abstract b()V
.end method

.method public abstract blacklist(IJ)Z
.end method

.method public abstract disable()V
.end method

.method public abstract enable()V
.end method

.method public abstract getFormat(I)Landroidx/media2/exoplayer/external/Format;
.end method

.method public abstract getIndexInTrackGroup(I)I
.end method

.method public abstract getSelectedFormat()Landroidx/media2/exoplayer/external/Format;
.end method

.method public abstract getSelectedIndex()I
.end method

.method public abstract getSelectedIndexInTrackGroup()I
.end method

.method public abstract getSelectionData()Ljava/lang/Object;
.end method

.method public abstract getSelectionReason()I
.end method

.method public abstract getTrackGroup()Landroidx/media2/exoplayer/external/source/TrackGroup;
.end method

.method public abstract indexOf(I)I
.end method

.method public abstract length()I
.end method

.method public abstract onPlaybackSpeed(F)V
.end method

.method public abstract updateSelectedTrack(JJJ)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method
