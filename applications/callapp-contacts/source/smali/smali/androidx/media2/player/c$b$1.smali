.class final Landroidx/media2/player/c$b$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media2/player/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/player/c$b;->a(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Landroidx/media2/player/c$b;


# direct methods
.method constructor <init>(Landroidx/media2/player/c$b;I)V
    .locals 0

    .line 948
    iput-object p1, p0, Landroidx/media2/player/c$b$1;->b:Landroidx/media2/player/c$b;

    iput p2, p0, Landroidx/media2/player/c$b$1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final notify(Landroidx/media2/player/MediaPlayer2$c;)V
    .locals 3

    .line 951
    iget-object v0, p0, Landroidx/media2/player/c$b$1;->b:Landroidx/media2/player/c$b;

    iget-object v0, v0, Landroidx/media2/player/c$b;->f:Landroidx/media2/common/MediaItem;

    iget-object v1, p0, Landroidx/media2/player/c$b$1;->b:Landroidx/media2/player/c$b;

    iget v1, v1, Landroidx/media2/player/c$b;->d:I

    iget v2, p0, Landroidx/media2/player/c$b$1;->a:I

    invoke-virtual {p1, v0, v1, v2}, Landroidx/media2/player/MediaPlayer2$c;->c(Landroidx/media2/common/MediaItem;II)V

    return-void
.end method
