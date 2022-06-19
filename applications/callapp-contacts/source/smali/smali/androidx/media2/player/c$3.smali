.class final Landroidx/media2/player/c$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/player/c;->h()J
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroidx/media2/player/c;


# direct methods
.method constructor <init>(Landroidx/media2/player/c;)V
    .locals 0

    .line 299
    iput-object p1, p0, Landroidx/media2/player/c$3;->a:Landroidx/media2/player/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1302
    iget-object v0, p0, Landroidx/media2/player/c$3;->a:Landroidx/media2/player/c;

    iget-object v0, v0, Landroidx/media2/player/c;->a:Landroidx/media2/player/e;

    .line 2238
    invoke-virtual {v0}, Landroidx/media2/player/e;->b()I

    move-result v1

    const/16 v2, 0x3e9

    if-eq v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Landroidx/core/e/d;->b(Z)V

    .line 2239
    iget-object v0, v0, Landroidx/media2/player/e;->f:Landroidx/media2/exoplayer/external/ak;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/ak;->f()J

    move-result-wide v0

    .line 1302
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method
