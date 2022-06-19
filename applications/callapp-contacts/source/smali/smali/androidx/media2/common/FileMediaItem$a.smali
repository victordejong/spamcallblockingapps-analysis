.class public final Landroidx/media2/common/FileMediaItem$a;
.super Landroidx/media2/common/MediaItem$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/common/FileMediaItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field a:Landroid/os/ParcelFileDescriptor;

.field b:J

.field c:J


# direct methods
.method public constructor <init>(Landroid/os/ParcelFileDescriptor;)V
    .locals 4

    .line 186
    invoke-direct {p0}, Landroidx/media2/common/MediaItem$a;-><init>()V

    const-wide/16 v0, 0x0

    .line 171
    iput-wide v0, p0, Landroidx/media2/common/FileMediaItem$a;->b:J

    const-wide v2, 0x7ffffffffffffffL

    .line 173
    iput-wide v2, p0, Landroidx/media2/common/FileMediaItem$a;->c:J

    .line 187
    invoke-static {p1}, Landroidx/core/e/d;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    iput-object p1, p0, Landroidx/media2/common/FileMediaItem$a;->a:Landroid/os/ParcelFileDescriptor;

    .line 189
    iput-wide v0, p0, Landroidx/media2/common/FileMediaItem$a;->b:J

    .line 190
    iput-wide v2, p0, Landroidx/media2/common/FileMediaItem$a;->c:J

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(J)Landroidx/media2/common/MediaItem$a;
    .locals 0

    .line 2243
    invoke-super {p0, p1, p2}, Landroidx/media2/common/MediaItem$a;->a(J)Landroidx/media2/common/MediaItem$a;

    move-result-object p1

    check-cast p1, Landroidx/media2/common/FileMediaItem$a;

    return-object p1
.end method

.method public final bridge synthetic a(Landroidx/media2/common/MediaMetadata;)Landroidx/media2/common/MediaItem$a;
    .locals 0

    .line 4229
    invoke-super {p0, p1}, Landroidx/media2/common/MediaItem$a;->a(Landroidx/media2/common/MediaMetadata;)Landroidx/media2/common/MediaItem$a;

    move-result-object p1

    check-cast p1, Landroidx/media2/common/FileMediaItem$a;

    return-object p1
.end method

.method public final synthetic a()Landroidx/media2/common/MediaItem;
    .locals 1

    .line 1252
    new-instance v0, Landroidx/media2/common/FileMediaItem;

    invoke-direct {v0, p0}, Landroidx/media2/common/FileMediaItem;-><init>(Landroidx/media2/common/FileMediaItem$a;)V

    return-object v0
.end method

.method public final bridge synthetic b(J)Landroidx/media2/common/MediaItem$a;
    .locals 0

    .line 3236
    invoke-super {p0, p1, p2}, Landroidx/media2/common/MediaItem$a;->b(J)Landroidx/media2/common/MediaItem$a;

    move-result-object p1

    check-cast p1, Landroidx/media2/common/FileMediaItem$a;

    return-object p1
.end method
