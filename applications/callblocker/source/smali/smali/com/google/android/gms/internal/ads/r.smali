.class public final Lcom/google/android/gms/internal/ads/r;
.super Lcom/google/android/gms/internal/ads/s;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# annotations
.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/ads/internal/e;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/internal/e;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/s;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/r;->a:Lcom/google/android/gms/ads/internal/e;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/r;->b:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/r;->c:Ljava/lang/String;

    .line 5
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/r;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final a(Lcom/google/android/gms/dynamic/a;)V
    .locals 2

    .prologue
    .line 8
    if-nez p1, :cond_0

    .line 13
    :goto_0
    return-void

    .line 10
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/r;->a:Lcom/google/android/gms/ads/internal/e;

    .line 11
    invoke-static {p1}, Lcom/google/android/gms/dynamic/b;->a(Lcom/google/android/gms/dynamic/a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 12
    invoke-interface {v1, v0}, Lcom/google/android/gms/ads/internal/e;->a(Landroid/view/View;)V

    goto :goto_0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/r;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/r;->a:Lcom/google/android/gms/ads/internal/e;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/e;->a()V

    .line 15
    return-void
.end method

.method public final d()V
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/r;->a:Lcom/google/android/gms/ads/internal/e;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/e;->b()V

    .line 17
    return-void
.end method
