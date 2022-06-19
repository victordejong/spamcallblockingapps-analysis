.class final Landroidx/media2/player/c$26;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media2/player/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/player/c;->a(Landroidx/media2/common/MediaItem;Landroidx/media2/player/i;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/media2/common/MediaItem;

.field final synthetic b:Landroidx/media2/player/i;

.field final synthetic c:Landroidx/media2/player/c;


# direct methods
.method constructor <init>(Landroidx/media2/player/c;Landroidx/media2/common/MediaItem;Landroidx/media2/player/i;)V
    .locals 0

    .line 763
    iput-object p1, p0, Landroidx/media2/player/c$26;->c:Landroidx/media2/player/c;

    iput-object p2, p0, Landroidx/media2/player/c$26;->a:Landroidx/media2/common/MediaItem;

    iput-object p3, p0, Landroidx/media2/player/c$26;->b:Landroidx/media2/player/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final notify(Landroidx/media2/player/MediaPlayer2$c;)V
    .locals 2

    .line 766
    iget-object v0, p0, Landroidx/media2/player/c$26;->a:Landroidx/media2/common/MediaItem;

    iget-object v1, p0, Landroidx/media2/player/c$26;->b:Landroidx/media2/player/i;

    invoke-virtual {p1, v0, v1}, Landroidx/media2/player/MediaPlayer2$c;->a(Landroidx/media2/common/MediaItem;Landroidx/media2/player/i;)V

    return-void
.end method
