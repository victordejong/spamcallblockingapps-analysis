.class final Landroidx/media2/exoplayer/external/audio/u$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media2/exoplayer/external/audio/AudioSink$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/audio/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Landroidx/media2/exoplayer/external/audio/u;


# direct methods
.method private constructor <init>(Landroidx/media2/exoplayer/external/audio/u;)V
    .locals 0

    .line 927
    iput-object p1, p0, Landroidx/media2/exoplayer/external/audio/u$a;->a:Landroidx/media2/exoplayer/external/audio/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroidx/media2/exoplayer/external/audio/u;Landroidx/media2/exoplayer/external/audio/u$1;)V
    .locals 0

    .line 927
    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/audio/u$a;-><init>(Landroidx/media2/exoplayer/external/audio/u;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 939
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/u$a;->a:Landroidx/media2/exoplayer/external/audio/u;

    invoke-static {v0}, Landroidx/media2/exoplayer/external/audio/u;->b(Landroidx/media2/exoplayer/external/audio/u;)Z

    return-void
.end method

.method public final a(I)V
    .locals 3

    .line 931
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/u$a;->a:Landroidx/media2/exoplayer/external/audio/u;

    invoke-static {v0}, Landroidx/media2/exoplayer/external/audio/u;->a(Landroidx/media2/exoplayer/external/audio/u;)Landroidx/media2/exoplayer/external/audio/g$a;

    move-result-object v0

    .line 1170
    iget-object v1, v0, Landroidx/media2/exoplayer/external/audio/g$a;->b:Landroidx/media2/exoplayer/external/audio/g;

    if-eqz v1, :cond_0

    .line 1171
    iget-object v1, v0, Landroidx/media2/exoplayer/external/audio/g$a;->a:Landroid/os/Handler;

    new-instance v2, Landroidx/media2/exoplayer/external/audio/m;

    invoke-direct {v2, v0, p1}, Landroidx/media2/exoplayer/external/audio/m;-><init>(Landroidx/media2/exoplayer/external/audio/g$a;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final a(IJJ)V
    .locals 9

    .line 944
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/u$a;->a:Landroidx/media2/exoplayer/external/audio/u;

    invoke-static {v0}, Landroidx/media2/exoplayer/external/audio/u;->a(Landroidx/media2/exoplayer/external/audio/u;)Landroidx/media2/exoplayer/external/audio/g$a;

    move-result-object v2

    .line 2146
    iget-object v0, v2, Landroidx/media2/exoplayer/external/audio/g$a;->b:Landroidx/media2/exoplayer/external/audio/g;

    if-eqz v0, :cond_0

    .line 2147
    iget-object v0, v2, Landroidx/media2/exoplayer/external/audio/g$a;->a:Landroid/os/Handler;

    new-instance v8, Landroidx/media2/exoplayer/external/audio/k;

    move-object v1, v8

    move v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Landroidx/media2/exoplayer/external/audio/k;-><init>(Landroidx/media2/exoplayer/external/audio/g$a;IJJ)V

    invoke-virtual {v0, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
