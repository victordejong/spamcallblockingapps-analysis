.class public final Lcom/google/android/exoplayer2/upstream/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/h;


# instance fields
.field public a:J

.field public b:Landroid/net/Uri;

.field public c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final d:Lcom/google/android/exoplayer2/upstream/h;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/h;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/upstream/h;

    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/t;->d:Lcom/google/android/exoplayer2/upstream/h;

    .line 46
    sget-object p1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/t;->b:Landroid/net/Uri;

    .line 47
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/t;->c:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final a([BII)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 92
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/t;->d:Lcom/google/android/exoplayer2/upstream/h;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/upstream/h;->a([BII)I

    move-result p1

    const/4 p2, -0x1

    if-eq p1, p2, :cond_0

    .line 94
    iget-wide p2, p0, Lcom/google/android/exoplayer2/upstream/t;->a:J

    int-to-long v0, p1

    add-long/2addr p2, v0

    iput-wide p2, p0, Lcom/google/android/exoplayer2/upstream/t;->a:J

    :cond_0
    return p1
.end method

.method public final a(Lcom/google/android/exoplayer2/upstream/j;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 82
    iget-object v0, p1, Lcom/google/android/exoplayer2/upstream/j;->a:Landroid/net/Uri;

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/t;->b:Landroid/net/Uri;

    .line 83
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/t;->c:Ljava/util/Map;

    .line 84
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/t;->d:Lcom/google/android/exoplayer2/upstream/h;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/upstream/h;->a(Lcom/google/android/exoplayer2/upstream/j;)J

    move-result-wide v0

    .line 85
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/upstream/t;->a()Landroid/net/Uri;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/t;->b:Landroid/net/Uri;

    .line 86
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/upstream/t;->b()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/t;->c:Ljava/util/Map;

    return-wide v0
.end method

.method public final a()Landroid/net/Uri;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/t;->d:Lcom/google/android/exoplayer2/upstream/h;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/upstream/h;->a()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/google/android/exoplayer2/upstream/v;)V
    .locals 1

    .line 75
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/t;->d:Lcom/google/android/exoplayer2/upstream/h;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/upstream/h;->a(Lcom/google/android/exoplayer2/upstream/v;)V

    return-void
.end method

.method public final b()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 107
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/t;->d:Lcom/google/android/exoplayer2/upstream/h;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/upstream/h;->b()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final c()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 112
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/t;->d:Lcom/google/android/exoplayer2/upstream/h;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/upstream/h;->c()V

    return-void
.end method
