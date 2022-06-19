.class public final Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;
.super Ljava/lang/Object;
.source "DashMediaSource.java"


# instance fields
.field private final a:Lcom/google/android/exoplayer2/source/dash/a;

.field private final b:Lcom/google/android/exoplayer2/upstream/j$a;

.field private c:Lcom/google/android/exoplayer2/drm/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/drm/k<",
            "*>;"
        }
    .end annotation
.end field

.field private d:Lcom/google/android/exoplayer2/source/p;

.field private e:Lcom/google/android/exoplayer2/upstream/u;

.field private f:J


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/dash/a;Lcom/google/android/exoplayer2/upstream/j$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/e;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/source/dash/a;

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;->a:Lcom/google/android/exoplayer2/source/dash/a;

    .line 4
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;->b:Lcom/google/android/exoplayer2/upstream/j$a;

    .line 5
    invoke-static {}, Lcom/google/android/exoplayer2/drm/j;->d()Lcom/google/android/exoplayer2/drm/k;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;->c:Lcom/google/android/exoplayer2/drm/k;

    .line 6
    new-instance p1, Lcom/google/android/exoplayer2/upstream/s;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/upstream/s;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;->e:Lcom/google/android/exoplayer2/upstream/u;

    const-wide/16 p1, 0x7530

    .line 7
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;->f:J

    .line 8
    new-instance p1, Lcom/google/android/exoplayer2/source/q;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/source/q;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;->d:Lcom/google/android/exoplayer2/source/p;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/j$a;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/exoplayer2/source/dash/b;

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/source/dash/b;-><init>(Lcom/google/android/exoplayer2/upstream/j$a;)V

    invoke-direct {p0, v0, p1}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;-><init>(Lcom/google/android/exoplayer2/source/dash/a;Lcom/google/android/exoplayer2/upstream/j$a;)V

    return-void
.end method
