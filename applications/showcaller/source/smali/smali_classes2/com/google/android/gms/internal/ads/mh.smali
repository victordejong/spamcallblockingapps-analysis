.class public final Lcom/google/android/gms/internal/ads/mh;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# instance fields
.field public final a:Lcom/google/android/gms/internal/ads/yg;

.field public final b:Lcom/google/android/gms/internal/ads/jh;

.field public final c:Ljava/lang/Object;

.field public final d:[Lcom/google/android/gms/internal/ads/wb;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/yg;Lcom/google/android/gms/internal/ads/jh;Ljava/lang/Object;[Lcom/google/android/gms/internal/ads/wb;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/mh;->a:Lcom/google/android/gms/internal/ads/yg;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/mh;->b:Lcom/google/android/gms/internal/ads/jh;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/mh;->c:Ljava/lang/Object;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/mh;->d:[Lcom/google/android/gms/internal/ads/wb;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/mh;I)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/mh;->b:Lcom/google/android/gms/internal/ads/jh;

    invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/ads/jh;->a(I)Lcom/google/android/gms/internal/ads/bh;

    move-result-object v1

    iget-object v2, p1, Lcom/google/android/gms/internal/ads/mh;->b:Lcom/google/android/gms/internal/ads/jh;

    invoke-virtual {v2, p2}, Lcom/google/android/gms/internal/ads/jh;->a(I)Lcom/google/android/gms/internal/ads/bh;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/si;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/mh;->d:[Lcom/google/android/gms/internal/ads/wb;

    aget-object v1, v1, p2

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/mh;->d:[Lcom/google/android/gms/internal/ads/wb;

    aget-object p1, p1, p2

    .line 2
    invoke-static {v1, p1}, Lcom/google/android/gms/internal/ads/si;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v0
.end method
