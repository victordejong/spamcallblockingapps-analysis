.class final Lcom/google/android/gms/internal/ads/cg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# instance fields
.field private final a:[Lcom/google/android/gms/internal/ads/nd;

.field private final b:Lcom/google/android/gms/internal/ads/od;

.field private c:Lcom/google/android/gms/internal/ads/nd;


# direct methods
.method public constructor <init>([Lcom/google/android/gms/internal/ads/nd;Lcom/google/android/gms/internal/ads/od;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/cg;->a:[Lcom/google/android/gms/internal/ads/nd;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/cg;->b:Lcom/google/android/gms/internal/ads/od;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cg;->c:Lcom/google/android/gms/internal/ads/nd;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/cg;->c:Lcom/google/android/gms/internal/ads/nd;

    :cond_0
    return-void
.end method

.method public final b(Lcom/google/android/gms/internal/ads/md;Landroid/net/Uri;)Lcom/google/android/gms/internal/ads/nd;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cg;->c:Lcom/google/android/gms/internal/ads/nd;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cg;->a:[Lcom/google/android/gms/internal/ads/nd;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 2
    :try_start_0
    invoke-interface {v3, p1}, Lcom/google/android/gms/internal/ads/nd;->f(Lcom/google/android/gms/internal/ads/md;)Z

    move-result v4

    if-eqz v4, :cond_1

    iput-object v3, p0, Lcom/google/android/gms/internal/ads/cg;->c:Lcom/google/android/gms/internal/ads/nd;
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/md;->g()V

    goto :goto_1

    :catchall_0
    move-exception p2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/md;->g()V

    .line 4
    throw p2

    .line 5
    :catch_0
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/md;->g()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/cg;->c:Lcom/google/android/gms/internal/ads/nd;

    if-eqz p1, :cond_3

    .line 6
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/cg;->b:Lcom/google/android/gms/internal/ads/od;

    .line 7
    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/nd;->g(Lcom/google/android/gms/internal/ads/od;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/cg;->c:Lcom/google/android/gms/internal/ads/nd;

    return-object p1

    .line 8
    :cond_3
    new-instance p1, Lcom/google/android/gms/internal/ads/zzath;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cg;->a:[Lcom/google/android/gms/internal/ads/nd;

    .line 9
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/si;->n([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x3a

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "None of the available extractors ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ") could read the stream."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p2}, Lcom/google/android/gms/internal/ads/zzath;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    throw p1
.end method
