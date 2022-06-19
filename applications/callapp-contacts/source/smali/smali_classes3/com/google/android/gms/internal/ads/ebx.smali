.class public final Lcom/google/android/gms/internal/ads/ebx;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/android/gms/internal/ads/ebi;

.field public final b:Lcom/google/android/gms/internal/ads/ebw;

.field public final c:Ljava/lang/Object;

.field public final d:[Lcom/google/android/gms/internal/ads/dwb;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/ebi;Lcom/google/android/gms/internal/ads/ebw;Ljava/lang/Object;[Lcom/google/android/gms/internal/ads/dwb;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ebx;->a:Lcom/google/android/gms/internal/ads/ebi;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/ebx;->b:Lcom/google/android/gms/internal/ads/ebw;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/ebx;->c:Ljava/lang/Object;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/ebx;->d:[Lcom/google/android/gms/internal/ads/dwb;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/ebx;I)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 9
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ebx;->b:Lcom/google/android/gms/internal/ads/ebw;

    .line 1005
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/ebw;->b:[Lcom/google/android/gms/internal/ads/ebu;

    aget-object v1, v1, p2

    .line 9
    iget-object v2, p1, Lcom/google/android/gms/internal/ads/ebx;->b:Lcom/google/android/gms/internal/ads/ebw;

    .line 2005
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/ebw;->b:[Lcom/google/android/gms/internal/ads/ebu;

    aget-object v2, v2, p2

    .line 9
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/ede;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ebx;->d:[Lcom/google/android/gms/internal/ads/dwb;

    aget-object v1, v1, p2

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/ebx;->d:[Lcom/google/android/gms/internal/ads/dwb;

    aget-object p1, p1, p2

    .line 10
    invoke-static {v1, p1}, Lcom/google/android/gms/internal/ads/ede;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v0
.end method
