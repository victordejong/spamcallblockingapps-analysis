.class public final Lcom/google/android/gms/internal/ads/bx;
.super Lcom/google/android/gms/internal/ads/cx;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# instance fields
.field private final d:Lcom/google/android/gms/ads/internal/f;

.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/internal/f;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/cx;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bx;->d:Lcom/google/android/gms/ads/internal/f;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/bx;->e:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/bx;->f:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final Y(Lcom/google/android/gms/dynamic/a;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bx;->d:Lcom/google/android/gms/ads/internal/f;

    invoke-static {p1}, Lcom/google/android/gms/dynamic/b;->J0(Lcom/google/android/gms/dynamic/a;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    .line 2
    invoke-interface {v0, p1}, Lcom/google/android/gms/ads/internal/f;->d(Landroid/view/View;)V

    return-void
.end method

.method public final a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bx;->d:Lcom/google/android/gms/ads/internal/f;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/f;->b()V

    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bx;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bx;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final d()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bx;->d:Lcom/google/android/gms/ads/internal/f;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/f;->c()V

    return-void
.end method
