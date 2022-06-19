.class public Landroidx/media2/common/CallbackMediaItem;
.super Landroidx/media2/common/MediaItem;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/common/CallbackMediaItem$a;
    }
.end annotation


# instance fields
.field public final a:Landroidx/media2/common/b;


# direct methods
.method constructor <init>(Landroidx/media2/common/CallbackMediaItem$a;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Landroidx/media2/common/MediaItem;-><init>(Landroidx/media2/common/MediaItem$a;)V

    .line 39
    iget-object p1, p1, Landroidx/media2/common/CallbackMediaItem$a;->a:Landroidx/media2/common/b;

    iput-object p1, p0, Landroidx/media2/common/CallbackMediaItem;->a:Landroidx/media2/common/b;

    return-void
.end method
