.class public final Lcom/google/android/gms/internal/ads/cng;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-gass@@19.1.0"


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/dki;

.field private final b:Ljava/io/File;

.field private final c:Ljava/io/File;

.field private final d:Ljava/io/File;

.field private e:[B


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/dki;Ljava/io/File;Ljava/io/File;Ljava/io/File;)V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/cng;->a:Lcom/google/android/gms/internal/ads/dki;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/cng;->b:Ljava/io/File;

    .line 4
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/cng;->c:Ljava/io/File;

    .line 5
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/cng;->d:Ljava/io/File;

    .line 6
    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/ads/dki;
    .locals 1

    .prologue
    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cng;->a:Lcom/google/android/gms/internal/ads/dki;

    return-object v0
.end method

.method public final a(J)Z
    .locals 6

    .prologue
    .line 16
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cng;->a:Lcom/google/android/gms/internal/ads/dki;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dki;->c()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xe10

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()Ljava/io/File;
    .locals 1

    .prologue
    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cng;->b:Ljava/io/File;

    return-object v0
.end method

.method public final c()Ljava/io/File;
    .locals 1

    .prologue
    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cng;->c:Ljava/io/File;

    return-object v0
.end method

.method public final d()[B
    .locals 2

    .prologue
    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cng;->e:[B

    if-nez v0, :cond_0

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cng;->d:Ljava/io/File;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/cnj;->b(Ljava/io/File;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/cng;->e:[B

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cng;->e:[B

    if-nez v0, :cond_1

    .line 13
    const/4 v0, 0x0

    .line 14
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cng;->e:[B

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/cng;->e:[B

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    goto :goto_0
.end method

.method public final e()Z
    .locals 4

    .prologue
    .line 15
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/cng;->a:Lcom/google/android/gms/internal/ads/dki;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/dki;->c()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
