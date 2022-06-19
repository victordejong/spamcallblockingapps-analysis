.class final Landroidx/media2/player/c$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/player/c;->j()Landroidx/media/AudioAttributesCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Landroidx/media/AudioAttributesCompat;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroidx/media2/player/c;


# direct methods
.method constructor <init>(Landroidx/media2/player/c;)V
    .locals 0

    .line 369
    iput-object p1, p0, Landroidx/media2/player/c$7;->a:Landroidx/media2/player/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1372
    iget-object v0, p0, Landroidx/media2/player/c$7;->a:Landroidx/media2/player/c;

    iget-object v0, v0, Landroidx/media2/player/c;->a:Landroidx/media2/player/e;

    .line 2308
    iget-boolean v1, v0, Landroidx/media2/player/e;->k:Z

    if-eqz v1, :cond_0

    .line 2309
    iget-object v0, v0, Landroidx/media2/player/e;->f:Landroidx/media2/exoplayer/external/ak;

    .line 2655
    iget-object v0, v0, Landroidx/media2/exoplayer/external/ak;->s:Landroidx/media2/exoplayer/external/audio/c;

    .line 2309
    invoke-static {v0}, Landroidx/media2/player/d;->a(Landroidx/media2/exoplayer/external/audio/c;)Landroidx/media/AudioAttributesCompat;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
