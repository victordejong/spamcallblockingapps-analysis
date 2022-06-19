.class final Landroidx/media2/player/c$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/player/c;->a(Landroidx/media2/player/c$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/media2/player/c$a;

.field final synthetic b:Landroidx/media2/player/MediaPlayer2$c;

.field final synthetic c:Landroidx/media2/player/c;


# direct methods
.method constructor <init>(Landroidx/media2/player/c;Landroidx/media2/player/c$a;Landroidx/media2/player/MediaPlayer2$c;)V
    .locals 0

    .line 192
    iput-object p1, p0, Landroidx/media2/player/c$8;->c:Landroidx/media2/player/c;

    iput-object p2, p0, Landroidx/media2/player/c$8;->a:Landroidx/media2/player/c$a;

    iput-object p3, p0, Landroidx/media2/player/c$8;->b:Landroidx/media2/player/MediaPlayer2$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 195
    iget-object v0, p0, Landroidx/media2/player/c$8;->a:Landroidx/media2/player/c$a;

    iget-object v1, p0, Landroidx/media2/player/c$8;->b:Landroidx/media2/player/MediaPlayer2$c;

    invoke-interface {v0, v1}, Landroidx/media2/player/c$a;->notify(Landroidx/media2/player/MediaPlayer2$c;)V

    return-void
.end method
