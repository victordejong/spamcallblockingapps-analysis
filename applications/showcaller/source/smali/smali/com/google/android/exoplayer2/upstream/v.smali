.class public final Lcom/google/android/exoplayer2/upstream/v;
.super Ljava/lang/Object;
.source "ParsingLoadable.java"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/Loader$e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/upstream/v$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/exoplayer2/upstream/Loader$e;"
    }
.end annotation


# instance fields
.field public final a:Lcom/google/android/exoplayer2/upstream/l;

.field public final b:I

.field private final c:Lcom/google/android/exoplayer2/upstream/w;

.field private final d:Lcom/google/android/exoplayer2/upstream/v$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/upstream/v$a<",
            "+TT;>;"
        }
    .end annotation
.end field

.field private volatile e:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/j;Landroid/net/Uri;ILcom/google/android/exoplayer2/upstream/v$a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/upstream/j;",
            "Landroid/net/Uri;",
            "I",
            "Lcom/google/android/exoplayer2/upstream/v$a<",
            "+TT;>;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/exoplayer2/upstream/l;

    const/4 v1, 0x1

    invoke-direct {v0, p2, v1}, Lcom/google/android/exoplayer2/upstream/l;-><init>(Landroid/net/Uri;I)V

    invoke-direct {p0, p1, v0, p3, p4}, Lcom/google/android/exoplayer2/upstream/v;-><init>(Lcom/google/android/exoplayer2/upstream/j;Lcom/google/android/exoplayer2/upstream/l;ILcom/google/android/exoplayer2/upstream/v$a;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/j;Lcom/google/android/exoplayer2/upstream/l;ILcom/google/android/exoplayer2/upstream/v$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/upstream/j;",
            "Lcom/google/android/exoplayer2/upstream/l;",
            "I",
            "Lcom/google/android/exoplayer2/upstream/v$a<",
            "+TT;>;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Lcom/google/android/exoplayer2/upstream/w;

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/upstream/w;-><init>(Lcom/google/android/exoplayer2/upstream/j;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/v;->c:Lcom/google/android/exoplayer2/upstream/w;

    .line 4
    iput-object p2, p0, Lcom/google/android/exoplayer2/upstream/v;->a:Lcom/google/android/exoplayer2/upstream/l;

    .line 5
    iput p3, p0, Lcom/google/android/exoplayer2/upstream/v;->b:I

    .line 6
    iput-object p4, p0, Lcom/google/android/exoplayer2/upstream/v;->d:Lcom/google/android/exoplayer2/upstream/v$a;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/v;->c:Lcom/google/android/exoplayer2/upstream/w;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/w;->g()V

    .line 2
    new-instance v0, Lcom/google/android/exoplayer2/upstream/k;

    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/v;->c:Lcom/google/android/exoplayer2/upstream/w;

    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/v;->a:Lcom/google/android/exoplayer2/upstream/l;

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer2/upstream/k;-><init>(Lcom/google/android/exoplayer2/upstream/j;Lcom/google/android/exoplayer2/upstream/l;)V

    .line 3
    :try_start_0
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/k;->e()V

    .line 4
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/v;->c:Lcom/google/android/exoplayer2/upstream/w;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/upstream/w;->c()Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/e;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 5
    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/v;->d:Lcom/google/android/exoplayer2/upstream/v$a;

    invoke-interface {v2, v1, v0}, Lcom/google/android/exoplayer2/upstream/v$a;->a(Landroid/net/Uri;Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/exoplayer2/upstream/v;->e:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/h0;->k(Ljava/io/Closeable;)V

    return-void

    :catchall_0
    move-exception v1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/h0;->k(Ljava/io/Closeable;)V

    .line 7
    throw v1
.end method

.method public b()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/v;->c:Lcom/google/android/exoplayer2/upstream/w;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/w;->d()J

    move-result-wide v0

    return-wide v0
.end method

.method public final c()V
    .locals 0

    return-void
.end method

.method public d()Ljava/util/Map;
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

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/v;->c:Lcom/google/android/exoplayer2/upstream/w;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/w;->f()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final e()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/v;->e:Ljava/lang/Object;

    return-object v0
.end method

.method public f()Landroid/net/Uri;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/v;->c:Lcom/google/android/exoplayer2/upstream/w;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/w;->e()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method
