.class final Landroidx/media2/exoplayer/external/source/hls/playlist/h$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/source/hls/playlist/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/io/BufferedReader;

.field private final b:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/Queue;Ljava/io/BufferedReader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Queue<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/io/BufferedReader;",
            ")V"
        }
    .end annotation

    .line 942
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 943
    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/h$a;->b:Ljava/util/Queue;

    .line 944
    iput-object p2, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/h$a;->a:Ljava/io/BufferedReader;

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 948
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/h$a;->c:Ljava/lang/String;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 951
    :cond_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/h$a;->b:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 952
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/h$a;->b:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/h$a;->c:Ljava/lang/String;

    return v1

    .line 955
    :cond_1
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/h$a;->a:Ljava/io/BufferedReader;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/h$a;->c:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 956
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/h$a;->c:Ljava/lang/String;

    .line 957
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public final b()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 966
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/source/hls/playlist/h$a;->a()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 967
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/h$a;->c:Ljava/lang/String;

    .line 968
    iput-object v1, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/h$a;->c:Ljava/lang/String;

    move-object v1, v0

    :cond_0
    return-object v1
.end method
