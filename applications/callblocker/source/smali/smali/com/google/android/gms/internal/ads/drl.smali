.class public final Lcom/google/android/gms/internal/ads/drl;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# instance fields
.field public final a:Lcom/google/android/gms/internal/ads/dqv;

.field public final b:Lcom/google/android/gms/internal/ads/drg;

.field public final c:Ljava/lang/Object;

.field public final d:[Lcom/google/android/gms/internal/ads/dlk;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/dqv;Lcom/google/android/gms/internal/ads/drg;Ljava/lang/Object;[Lcom/google/android/gms/internal/ads/dlk;)V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/drl;->a:Lcom/google/android/gms/internal/ads/dqv;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/drl;->b:Lcom/google/android/gms/internal/ads/drg;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/drl;->c:Ljava/lang/Object;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/drl;->d:[Lcom/google/android/gms/internal/ads/dlk;

    .line 6
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/drl;I)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 7
    if-nez p1, :cond_1

    .line 11
    :cond_0
    :goto_0
    return v0

    .line 9
    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/drl;->b:Lcom/google/android/gms/internal/ads/drg;

    invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/ads/drg;->a(I)Lcom/google/android/gms/internal/ads/dre;

    move-result-object v1

    iget-object v2, p1, Lcom/google/android/gms/internal/ads/drl;->b:Lcom/google/android/gms/internal/ads/drg;

    invoke-virtual {v2, p2}, Lcom/google/android/gms/internal/ads/drg;->a(I)Lcom/google/android/gms/internal/ads/dre;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/dsn;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/drl;->d:[Lcom/google/android/gms/internal/ads/dlk;

    aget-object v1, v1, p2

    iget-object v2, p1, Lcom/google/android/gms/internal/ads/drl;->d:[Lcom/google/android/gms/internal/ads/dlk;

    aget-object v2, v2, p2

    .line 10
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/dsn;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method
