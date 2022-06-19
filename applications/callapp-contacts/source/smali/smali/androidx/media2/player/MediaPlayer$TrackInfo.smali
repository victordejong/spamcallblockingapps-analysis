.class public final Landroidx/media2/player/MediaPlayer$TrackInfo;
.super Landroidx/media2/common/SessionPlayer$TrackInfo;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/player/MediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TrackInfo"
.end annotation


# direct methods
.method constructor <init>(Landroidx/media2/common/SessionPlayer$TrackInfo;)V
    .locals 4

    .line 4162
    iget v0, p1, Landroidx/media2/common/SessionPlayer$TrackInfo;->a:I

    .line 5126
    iget v1, p1, Landroidx/media2/common/SessionPlayer$TrackInfo;->b:I

    .line 3610
    invoke-virtual {p1}, Landroidx/media2/common/SessionPlayer$TrackInfo;->a()Landroid/media/MediaFormat;

    move-result-object v2

    .line 6126
    iget p1, p1, Landroidx/media2/common/SessionPlayer$TrackInfo;->b:I

    const/4 v3, 0x1

    if-eq p1, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 3610
    :goto_0
    invoke-direct {p0, v0, v1, v2, v3}, Landroidx/media2/common/SessionPlayer$TrackInfo;-><init>(IILandroid/media/MediaFormat;Z)V

    return-void
.end method


# virtual methods
.method public final a()Landroid/media/MediaFormat;
    .locals 2

    .line 7126
    iget v0, p0, Landroidx/media2/common/SessionPlayer$TrackInfo;->b:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 3618
    invoke-super {p0}, Landroidx/media2/common/SessionPlayer$TrackInfo;->a()Landroid/media/MediaFormat;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
