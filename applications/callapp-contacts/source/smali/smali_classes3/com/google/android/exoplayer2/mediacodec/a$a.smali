.class public final Lcom/google/android/exoplayer2/mediacodec/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/mediacodec/f$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/mediacodec/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private final b:Lcom/google/common/base/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/q<",
            "Landroid/os/HandlerThread;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/google/common/base/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/q<",
            "Landroid/os/HandlerThread;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Z

.field private final e:Z


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    .line 55
    invoke-direct {p0, p1, v0, v0}, Lcom/google/android/exoplayer2/mediacodec/a$a;-><init>(IZZ)V

    return-void
.end method

.method public constructor <init>(IZZ)V
    .locals 2

    .line 77
    new-instance v0, Lcom/google/android/exoplayer2/mediacodec/-$$Lambda$a$a$CK5jCqFAIPbSoHemu-8OUH7SRj0;

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/mediacodec/-$$Lambda$a$a$CK5jCqFAIPbSoHemu-8OUH7SRj0;-><init>(I)V

    new-instance v1, Lcom/google/android/exoplayer2/mediacodec/-$$Lambda$a$a$Zj8MWOsHAx8lVZiCf9diQ3NwE-g;

    invoke-direct {v1, p1}, Lcom/google/android/exoplayer2/mediacodec/-$$Lambda$a$a$Zj8MWOsHAx8lVZiCf9diQ3NwE-g;-><init>(I)V

    invoke-direct {p0, v0, v1, p2, p3}, Lcom/google/android/exoplayer2/mediacodec/a$a;-><init>(Lcom/google/common/base/q;Lcom/google/common/base/q;ZZ)V

    return-void
.end method

.method constructor <init>(Lcom/google/common/base/q;Lcom/google/common/base/q;ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/base/q<",
            "Landroid/os/HandlerThread;",
            ">;",
            "Lcom/google/common/base/q<",
            "Landroid/os/HandlerThread;",
            ">;ZZ)V"
        }
    .end annotation

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/a$a;->b:Lcom/google/common/base/q;

    .line 93
    iput-object p2, p0, Lcom/google/android/exoplayer2/mediacodec/a$a;->c:Lcom/google/common/base/q;

    .line 94
    iput-boolean p3, p0, Lcom/google/android/exoplayer2/mediacodec/a$a;->d:Z

    .line 95
    iput-boolean p4, p0, Lcom/google/android/exoplayer2/mediacodec/a$a;->e:Z

    return-void
.end method

.method private static synthetic a(I)Landroid/os/HandlerThread;
    .locals 2

    .line 81
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ExoPlayer:MediaCodecQueueingThread:"

    .line 1294
    invoke-static {p0, v1}, Lcom/google/android/exoplayer2/mediacodec/a;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 81
    invoke-direct {v0, p0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private static synthetic b(I)Landroid/os/HandlerThread;
    .locals 2

    .line 79
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ExoPlayer:MediaCodecAsyncAdapter:"

    .line 2290
    invoke-static {p0, v1}, Lcom/google/android/exoplayer2/mediacodec/a;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 79
    invoke-direct {v0, p0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static synthetic lambda$CK5jCqFAIPbSoHemu-8OUH7SRj0(I)Landroid/os/HandlerThread;
    .locals 0

    invoke-static {p0}, Lcom/google/android/exoplayer2/mediacodec/a$a;->b(I)Landroid/os/HandlerThread;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$Zj8MWOsHAx8lVZiCf9diQ3NwE-g(I)Landroid/os/HandlerThread;
    .locals 0

    invoke-static {p0}, Lcom/google/android/exoplayer2/mediacodec/a$a;->a(I)Landroid/os/HandlerThread;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Landroid/media/MediaCodec;)Lcom/google/android/exoplayer2/mediacodec/a;
    .locals 8

    .line 100
    new-instance v7, Lcom/google/android/exoplayer2/mediacodec/a;

    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/a$a;->b:Lcom/google/common/base/q;

    .line 102
    invoke-interface {v0}, Lcom/google/common/base/q;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/a$a;->c:Lcom/google/common/base/q;

    .line 103
    invoke-interface {v0}, Lcom/google/common/base/q;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/os/HandlerThread;

    iget-boolean v4, p0, Lcom/google/android/exoplayer2/mediacodec/a$a;->d:Z

    iget-boolean v5, p0, Lcom/google/android/exoplayer2/mediacodec/a$a;->e:Z

    const/4 v6, 0x0

    move-object v0, v7

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer2/mediacodec/a;-><init>(Landroid/media/MediaCodec;Landroid/os/HandlerThread;Landroid/os/HandlerThread;ZZLcom/google/android/exoplayer2/mediacodec/a$1;)V

    return-object v7
.end method

.method public final synthetic b(Landroid/media/MediaCodec;)Lcom/google/android/exoplayer2/mediacodec/f;
    .locals 0

    .line 47
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/mediacodec/a$a;->a(Landroid/media/MediaCodec;)Lcom/google/android/exoplayer2/mediacodec/a;

    move-result-object p1

    return-object p1
.end method
