.class final Lcom/google/android/gms/internal/ads/dqa;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# instance fields
.field private final a:[Lcom/google/android/gms/internal/ads/dnh;

.field private final b:Lcom/google/android/gms/internal/ads/dnj;

.field private c:Lcom/google/android/gms/internal/ads/dnh;


# direct methods
.method public constructor <init>([Lcom/google/android/gms/internal/ads/dnh;Lcom/google/android/gms/internal/ads/dnj;)V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dqa;->a:[Lcom/google/android/gms/internal/ads/dnh;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/dqa;->b:Lcom/google/android/gms/internal/ads/dnj;

    .line 4
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/dng;Landroid/net/Uri;)Lcom/google/android/gms/internal/ads/dnh;
    .locals 5

    .prologue
    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dqa;->c:Lcom/google/android/gms/internal/ads/dnh;

    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dqa;->c:Lcom/google/android/gms/internal/ads/dnh;

    .line 24
    :goto_0
    return-object v0

    .line 7
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dqa;->a:[Lcom/google/android/gms/internal/ads/dnh;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    .line 8
    :try_start_0
    invoke-interface {v3, p1}, Lcom/google/android/gms/internal/ads/dnh;->a(Lcom/google/android/gms/internal/ads/dng;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 9
    iput-object v3, p0, Lcom/google/android/gms/internal/ads/dqa;->c:Lcom/google/android/gms/internal/ads/dnh;
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/dng;->a()V

    .line 20
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dqa;->c:Lcom/google/android/gms/internal/ads/dnh;

    if-nez v0, :cond_3

    .line 21
    new-instance v0, Lcom/google/android/gms/internal/ads/zzmz;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dqa;->a:[Lcom/google/android/gms/internal/ads/dnh;

    .line 22
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/dsn;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x3a

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v2, "None of the available extractors ("

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") could read the stream."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lcom/google/android/gms/internal/ads/zzmz;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    throw v0

    .line 12
    :cond_2
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/dng;->a()V

    .line 19
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 15
    :catch_0
    move-exception v3

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/dng;->a()V

    goto :goto_2

    .line 17
    :catchall_0
    move-exception v0

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/dng;->a()V

    .line 18
    throw v0

    .line 23
    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dqa;->c:Lcom/google/android/gms/internal/ads/dnh;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dqa;->b:Lcom/google/android/gms/internal/ads/dnj;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/dnh;->a(Lcom/google/android/gms/internal/ads/dnj;)V

    .line 24
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dqa;->c:Lcom/google/android/gms/internal/ads/dnh;

    goto :goto_0
.end method

.method public final a()V
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dqa;->c:Lcom/google/android/gms/internal/ads/dnh;

    if-eqz v0, :cond_0

    .line 26
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dqa;->c:Lcom/google/android/gms/internal/ads/dnh;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/dnh;->c()V

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dqa;->c:Lcom/google/android/gms/internal/ads/dnh;

    .line 28
    :cond_0
    return-void
.end method
