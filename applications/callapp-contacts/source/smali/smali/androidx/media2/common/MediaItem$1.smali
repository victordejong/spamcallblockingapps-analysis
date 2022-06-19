.class final Landroidx/media2/common/MediaItem$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/common/MediaItem;->a(Landroidx/media2/common/MediaMetadata;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/media2/common/MediaItem$b;

.field final synthetic b:Landroidx/media2/common/MediaMetadata;

.field final synthetic c:Landroidx/media2/common/MediaItem;


# direct methods
.method constructor <init>(Landroidx/media2/common/MediaItem;Landroidx/media2/common/MediaItem$b;Landroidx/media2/common/MediaMetadata;)V
    .locals 0

    .line 172
    iput-object p1, p0, Landroidx/media2/common/MediaItem$1;->c:Landroidx/media2/common/MediaItem;

    iput-object p2, p0, Landroidx/media2/common/MediaItem$1;->a:Landroidx/media2/common/MediaItem$b;

    iput-object p3, p0, Landroidx/media2/common/MediaItem$1;->b:Landroidx/media2/common/MediaMetadata;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 175
    iget-object v0, p0, Landroidx/media2/common/MediaItem$1;->a:Landroidx/media2/common/MediaItem$b;

    iget-object v1, p0, Landroidx/media2/common/MediaItem$1;->c:Landroidx/media2/common/MediaItem;

    iget-object v2, p0, Landroidx/media2/common/MediaItem$1;->b:Landroidx/media2/common/MediaMetadata;

    invoke-interface {v0, v1, v2}, Landroidx/media2/common/MediaItem$b;->a(Landroidx/media2/common/MediaItem;Landroidx/media2/common/MediaMetadata;)V

    return-void
.end method
