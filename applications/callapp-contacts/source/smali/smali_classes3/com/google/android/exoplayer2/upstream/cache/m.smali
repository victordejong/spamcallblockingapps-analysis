.class public final Lcom/google/android/exoplayer2/upstream/cache/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/cache/c;


# instance fields
.field private final a:J

.field private final b:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet<",
            "Lcom/google/android/exoplayer2/upstream/cache/g;",
            ">;"
        }
    .end annotation
.end field

.field private c:J


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-wide p1, p0, Lcom/google/android/exoplayer2/upstream/cache/m;->a:J

    .line 31
    new-instance p1, Ljava/util/TreeSet;

    sget-object p2, Lcom/google/android/exoplayer2/upstream/cache/-$$Lambda$m$t6DBXzl-XIsEf0A4m7uHpb9kbi4;->INSTANCE:Lcom/google/android/exoplayer2/upstream/cache/-$$Lambda$m$t6DBXzl-XIsEf0A4m7uHpb9kbi4;

    invoke-direct {p1, p2}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/cache/m;->b:Ljava/util/TreeSet;

    return-void
.end method

.method private static a(Lcom/google/android/exoplayer2/upstream/cache/g;Lcom/google/android/exoplayer2/upstream/cache/g;)I
    .locals 5

    .line 77
    iget-wide v0, p0, Lcom/google/android/exoplayer2/upstream/cache/g;->f:J

    iget-wide v2, p1, Lcom/google/android/exoplayer2/upstream/cache/g;->f:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 80
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/upstream/cache/g;->a(Lcom/google/android/exoplayer2/upstream/cache/g;)I

    move-result p0

    return p0

    .line 82
    :cond_0
    iget-wide v0, p0, Lcom/google/android/exoplayer2/upstream/cache/g;->f:J

    iget-wide p0, p1, Lcom/google/android/exoplayer2/upstream/cache/g;->f:J

    cmp-long v2, v0, p0

    if-gez v2, :cond_1

    const/4 p0, -0x1

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private b(Lcom/google/android/exoplayer2/upstream/cache/Cache;J)V
    .locals 5

    .line 71
    :goto_0
    iget-wide v0, p0, Lcom/google/android/exoplayer2/upstream/cache/m;->c:J

    add-long/2addr v0, p2

    iget-wide v2, p0, Lcom/google/android/exoplayer2/upstream/cache/m;->a:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/m;->b:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/m;->b:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/upstream/cache/g;

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/upstream/cache/Cache;->b(Lcom/google/android/exoplayer2/upstream/cache/g;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static synthetic lambda$t6DBXzl-XIsEf0A4m7uHpb9kbi4(Lcom/google/android/exoplayer2/upstream/cache/g;Lcom/google/android/exoplayer2/upstream/cache/g;)I
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/upstream/cache/m;->a(Lcom/google/android/exoplayer2/upstream/cache/g;Lcom/google/android/exoplayer2/upstream/cache/g;)I

    move-result p0

    return p0
.end method


# virtual methods
.method public final a(Lcom/google/android/exoplayer2/upstream/cache/Cache;J)V
    .locals 3

    const-wide/16 v0, -0x1

    cmp-long v2, p2, v0

    if-eqz v2, :cond_0

    .line 47
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/upstream/cache/m;->b(Lcom/google/android/exoplayer2/upstream/cache/Cache;J)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/cache/g;)V
    .locals 4

    .line 53
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/m;->b:Ljava/util/TreeSet;

    invoke-virtual {v0, p2}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 54
    iget-wide v0, p0, Lcom/google/android/exoplayer2/upstream/cache/m;->c:J

    iget-wide v2, p2, Lcom/google/android/exoplayer2/upstream/cache/g;->c:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/exoplayer2/upstream/cache/m;->c:J

    const-wide/16 v0, 0x0

    .line 55
    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/exoplayer2/upstream/cache/m;->b(Lcom/google/android/exoplayer2/upstream/cache/Cache;J)V

    return-void
.end method

.method public final a(Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/cache/g;Lcom/google/android/exoplayer2/upstream/cache/g;)V
    .locals 0

    .line 66
    invoke-virtual {p0, p2}, Lcom/google/android/exoplayer2/upstream/cache/m;->a(Lcom/google/android/exoplayer2/upstream/cache/g;)V

    .line 67
    invoke-virtual {p0, p1, p3}, Lcom/google/android/exoplayer2/upstream/cache/m;->a(Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/cache/g;)V

    return-void
.end method

.method public final a(Lcom/google/android/exoplayer2/upstream/cache/g;)V
    .locals 4

    .line 60
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/m;->b:Ljava/util/TreeSet;

    invoke-virtual {v0, p1}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    .line 61
    iget-wide v0, p0, Lcom/google/android/exoplayer2/upstream/cache/m;->c:J

    iget-wide v2, p1, Lcom/google/android/exoplayer2/upstream/cache/g;->c:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/exoplayer2/upstream/cache/m;->c:J

    return-void
.end method
