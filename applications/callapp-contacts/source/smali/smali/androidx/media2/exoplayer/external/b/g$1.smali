.class final Landroidx/media2/exoplayer/external/b/g$1;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/exoplayer/external/b/g;-><init>([Landroidx/media2/exoplayer/external/b/e;[Landroidx/media2/exoplayer/external/b/f;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/media2/exoplayer/external/b/g;


# direct methods
.method constructor <init>(Landroidx/media2/exoplayer/external/b/g;)V
    .locals 0

    .line 73
    iput-object p1, p0, Landroidx/media2/exoplayer/external/b/g$1;->a:Landroidx/media2/exoplayer/external/b/g;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 76
    iget-object v0, p0, Landroidx/media2/exoplayer/external/b/g$1;->a:Landroidx/media2/exoplayer/external/b/g;

    .line 1202
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/b/g;->f()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_0

    return-void

    :catch_0
    move-exception v0

    .line 1207
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
