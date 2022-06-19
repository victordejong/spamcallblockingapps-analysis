.class final Lcom/google/android/exoplayer2/source/y$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field public final a:J

.field public final b:J

.field public c:Z

.field public d:Lcom/google/android/exoplayer2/upstream/a;

.field public e:Lcom/google/android/exoplayer2/source/y$a;


# direct methods
.method public constructor <init>(JI)V
    .locals 2

    .line 483
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 484
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/y$a;->a:J

    int-to-long v0, p3

    add-long/2addr p1, v0

    .line 485
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/y$a;->b:J

    return-void
.end method


# virtual methods
.method public final a(J)I
    .locals 2

    .line 508
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/y$a;->a:J

    sub-long/2addr p1, v0

    long-to-int p2, p1

    iget-object p1, p0, Lcom/google/android/exoplayer2/source/y$a;->d:Lcom/google/android/exoplayer2/upstream/a;

    iget p1, p1, Lcom/google/android/exoplayer2/upstream/a;->b:I

    add-int/2addr p2, p1

    return p2
.end method

.method public final a()Lcom/google/android/exoplayer2/source/y$a;
    .locals 2

    const/4 v0, 0x0

    .line 517
    iput-object v0, p0, Lcom/google/android/exoplayer2/source/y$a;->d:Lcom/google/android/exoplayer2/upstream/a;

    .line 518
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/y$a;->e:Lcom/google/android/exoplayer2/source/y$a;

    .line 519
    iput-object v0, p0, Lcom/google/android/exoplayer2/source/y$a;->e:Lcom/google/android/exoplayer2/source/y$a;

    return-object v1
.end method
