.class public final Landroidx/media2/common/CallbackMediaItem$a;
.super Landroidx/media2/common/MediaItem$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/common/CallbackMediaItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field a:Landroidx/media2/common/b;


# direct methods
.method public constructor <init>(Landroidx/media2/common/b;)V
    .locals 0

    .line 65
    invoke-direct {p0}, Landroidx/media2/common/MediaItem$a;-><init>()V

    .line 66
    invoke-static {p1}, Landroidx/core/e/d;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    iput-object p1, p0, Landroidx/media2/common/CallbackMediaItem$a;->a:Landroidx/media2/common/b;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(J)Landroidx/media2/common/MediaItem$a;
    .locals 0

    .line 2088
    invoke-super {p0, p1, p2}, Landroidx/media2/common/MediaItem$a;->a(J)Landroidx/media2/common/MediaItem$a;

    move-result-object p1

    check-cast p1, Landroidx/media2/common/CallbackMediaItem$a;

    return-object p1
.end method

.method public final bridge synthetic a(Landroidx/media2/common/MediaMetadata;)Landroidx/media2/common/MediaItem$a;
    .locals 0

    .line 4074
    invoke-super {p0, p1}, Landroidx/media2/common/MediaItem$a;->a(Landroidx/media2/common/MediaMetadata;)Landroidx/media2/common/MediaItem$a;

    move-result-object p1

    check-cast p1, Landroidx/media2/common/CallbackMediaItem$a;

    return-object p1
.end method

.method public final synthetic a()Landroidx/media2/common/MediaItem;
    .locals 1

    .line 1097
    new-instance v0, Landroidx/media2/common/CallbackMediaItem;

    invoke-direct {v0, p0}, Landroidx/media2/common/CallbackMediaItem;-><init>(Landroidx/media2/common/CallbackMediaItem$a;)V

    return-object v0
.end method

.method public final bridge synthetic b(J)Landroidx/media2/common/MediaItem$a;
    .locals 0

    .line 3081
    invoke-super {p0, p1, p2}, Landroidx/media2/common/MediaItem$a;->b(J)Landroidx/media2/common/MediaItem$a;

    move-result-object p1

    check-cast p1, Landroidx/media2/common/CallbackMediaItem$a;

    return-object p1
.end method
