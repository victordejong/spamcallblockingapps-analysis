.class final Landroidx/media2/player/c$28;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media2/player/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/player/c;->b(Landroidx/media2/common/MediaItem;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/media2/common/MediaItem;

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:Landroidx/media2/player/c;


# direct methods
.method constructor <init>(Landroidx/media2/player/c;Landroidx/media2/common/MediaItem;II)V
    .locals 0

    .line 802
    iput-object p1, p0, Landroidx/media2/player/c$28;->d:Landroidx/media2/player/c;

    iput-object p2, p0, Landroidx/media2/player/c$28;->a:Landroidx/media2/common/MediaItem;

    iput p3, p0, Landroidx/media2/player/c$28;->b:I

    iput p4, p0, Landroidx/media2/player/c$28;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final notify(Landroidx/media2/player/MediaPlayer2$c;)V
    .locals 3

    .line 805
    iget-object v0, p0, Landroidx/media2/player/c$28;->a:Landroidx/media2/common/MediaItem;

    iget v1, p0, Landroidx/media2/player/c$28;->b:I

    iget v2, p0, Landroidx/media2/player/c$28;->c:I

    invoke-virtual {p1, v0, v1, v2}, Landroidx/media2/player/MediaPlayer2$c;->b(Landroidx/media2/common/MediaItem;II)V

    return-void
.end method
