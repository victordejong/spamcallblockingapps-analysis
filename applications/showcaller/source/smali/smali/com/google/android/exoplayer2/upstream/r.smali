.class public final Lcom/google/android/exoplayer2/upstream/r;
.super Lcom/google/android/exoplayer2/upstream/HttpDataSource$a;
.source "DefaultHttpDataSourceFactory.java"


# instance fields
.field private final b:Ljava/lang/String;

.field private final c:Lcom/google/android/exoplayer2/upstream/x;

.field private final d:I

.field private final e:I

.field private final f:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/android/exoplayer2/upstream/x;)V
    .locals 6

    const/16 v3, 0x1f40

    const/16 v4, 0x1f40

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 1
    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/upstream/r;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer2/upstream/x;IIZ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/google/android/exoplayer2/upstream/x;IIZ)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/HttpDataSource$a;-><init>()V

    .line 3
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/e;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/r;->b:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lcom/google/android/exoplayer2/upstream/r;->c:Lcom/google/android/exoplayer2/upstream/x;

    .line 5
    iput p3, p0, Lcom/google/android/exoplayer2/upstream/r;->d:I

    .line 6
    iput p4, p0, Lcom/google/android/exoplayer2/upstream/r;->e:I

    .line 7
    iput-boolean p5, p0, Lcom/google/android/exoplayer2/upstream/r;->f:Z

    return-void
.end method


# virtual methods
.method protected bridge synthetic c(Lcom/google/android/exoplayer2/upstream/HttpDataSource$b;)Lcom/google/android/exoplayer2/upstream/HttpDataSource;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/upstream/r;->d(Lcom/google/android/exoplayer2/upstream/HttpDataSource$b;)Lcom/google/android/exoplayer2/upstream/q;

    move-result-object p1

    return-object p1
.end method

.method protected d(Lcom/google/android/exoplayer2/upstream/HttpDataSource$b;)Lcom/google/android/exoplayer2/upstream/q;
    .locals 7

    .line 1
    new-instance v6, Lcom/google/android/exoplayer2/upstream/q;

    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/r;->b:Ljava/lang/String;

    iget v2, p0, Lcom/google/android/exoplayer2/upstream/r;->d:I

    iget v3, p0, Lcom/google/android/exoplayer2/upstream/r;->e:I

    iget-boolean v4, p0, Lcom/google/android/exoplayer2/upstream/r;->f:Z

    move-object v0, v6

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/upstream/q;-><init>(Ljava/lang/String;IIZLcom/google/android/exoplayer2/upstream/HttpDataSource$b;)V

    .line 2
    iget-object p1, p0, Lcom/google/android/exoplayer2/upstream/r;->c:Lcom/google/android/exoplayer2/upstream/x;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {v6, p1}, Lcom/google/android/exoplayer2/upstream/g;->a(Lcom/google/android/exoplayer2/upstream/x;)V

    :cond_0
    return-object v6
.end method
