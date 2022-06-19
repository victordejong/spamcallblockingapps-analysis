.class public final Lcom/google/android/gms/internal/ads/cwn;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Lcom/google/android/gms/internal/ads/dva;

.field final b:Ljava/io/File;

.field final c:Ljava/io/File;

.field final d:Ljava/io/File;

.field e:[B


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/dva;Ljava/io/File;Ljava/io/File;Ljava/io/File;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/cwn;->a:Lcom/google/android/gms/internal/ads/dva;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/cwn;->b:Ljava/io/File;

    .line 4
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/cwn;->c:Ljava/io/File;

    .line 5
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/cwn;->d:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 6

    .line 15
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cwn;->a:Lcom/google/android/gms/internal/ads/dva;

    .line 1015
    iget-wide v0, v0, Lcom/google/android/gms/internal/ads/dva;->zzack:J

    .line 15
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xe10

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
