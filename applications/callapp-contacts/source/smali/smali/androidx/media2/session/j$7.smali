.class final Landroidx/media2/session/j$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media2/session/j$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/session/j;->a(ILandroidx/versionedparcelable/ParcelImpl;Landroidx/versionedparcelable/ParcelImpl;Landroidx/versionedparcelable/ParcelImpl;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/versionedparcelable/ParcelImpl;

.field final synthetic b:Landroidx/versionedparcelable/ParcelImpl;

.field final synthetic c:Landroidx/versionedparcelable/ParcelImpl;

.field final synthetic d:Landroidx/media2/session/j;


# direct methods
.method constructor <init>(Landroidx/media2/session/j;Landroidx/versionedparcelable/ParcelImpl;Landroidx/versionedparcelable/ParcelImpl;Landroidx/versionedparcelable/ParcelImpl;)V
    .locals 0

    .line 267
    iput-object p1, p0, Landroidx/media2/session/j$7;->d:Landroidx/media2/session/j;

    iput-object p2, p0, Landroidx/media2/session/j$7;->a:Landroidx/versionedparcelable/ParcelImpl;

    iput-object p3, p0, Landroidx/media2/session/j$7;->b:Landroidx/versionedparcelable/ParcelImpl;

    iput-object p4, p0, Landroidx/media2/session/j$7;->c:Landroidx/versionedparcelable/ParcelImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/media2/session/h;)V
    .locals 5

    .line 270
    iget-object v0, p0, Landroidx/media2/session/j$7;->a:Landroidx/versionedparcelable/ParcelImpl;

    .line 2078
    invoke-static {v0}, Landroidx/versionedparcelable/a;->a(Landroid/os/Parcelable;)Landroidx/versionedparcelable/c;

    move-result-object v0

    .line 270
    check-cast v0, Landroidx/media2/common/MediaItem;

    const-string v1, "MediaControllerStub"

    if-nez v0, :cond_0

    const-string p1, "onSubtitleData(): Ignoring null MediaItem"

    .line 272
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 275
    :cond_0
    iget-object v2, p0, Landroidx/media2/session/j$7;->b:Landroidx/versionedparcelable/ParcelImpl;

    .line 3078
    invoke-static {v2}, Landroidx/versionedparcelable/a;->a(Landroid/os/Parcelable;)Landroidx/versionedparcelable/c;

    move-result-object v2

    .line 275
    check-cast v2, Landroidx/media2/common/SessionPlayer$TrackInfo;

    if-nez v2, :cond_1

    const-string p1, "onSubtitleData(): Ignoring null TrackInfo"

    .line 277
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 280
    :cond_1
    iget-object v3, p0, Landroidx/media2/session/j$7;->c:Landroidx/versionedparcelable/ParcelImpl;

    .line 4078
    invoke-static {v3}, Landroidx/versionedparcelable/a;->a(Landroid/os/Parcelable;)Landroidx/versionedparcelable/c;

    move-result-object v3

    .line 280
    check-cast v3, Landroidx/media2/common/SubtitleData;

    if-nez v3, :cond_2

    const-string p1, "onSubtitleData(): Ignoring null SubtitleData"

    .line 282
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 4163
    :cond_2
    iget-object v1, p1, Landroidx/media2/session/h;->b:Landroidx/media2/session/MediaController;

    new-instance v4, Landroidx/media2/session/h$27;

    invoke-direct {v4, p1, v0, v2, v3}, Landroidx/media2/session/h$27;-><init>(Landroidx/media2/session/h;Landroidx/media2/common/MediaItem;Landroidx/media2/common/SessionPlayer$TrackInfo;Landroidx/media2/common/SubtitleData;)V

    invoke-virtual {v1, v4}, Landroidx/media2/session/MediaController;->b(Landroidx/media2/session/MediaController$b;)V

    return-void
.end method
