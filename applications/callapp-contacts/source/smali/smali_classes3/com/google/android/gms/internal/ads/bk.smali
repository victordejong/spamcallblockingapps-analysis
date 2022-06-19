.class public final Lcom/google/android/gms/internal/ads/bk;
.super Lcom/google/android/gms/internal/ads/bl;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/android/gms/ads/internal/zzg;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/internal/zzg;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/bl;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bk;->a:Lcom/google/android/gms/ads/internal/zzg;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/bk;->b:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/bk;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bk;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final a(Lcom/google/android/gms/dynamic/b;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bk;->a:Lcom/google/android/gms/ads/internal/zzg;

    .line 11
    invoke-static {p1}, Lcom/google/android/gms/dynamic/d;->a(Lcom/google/android/gms/dynamic/b;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    .line 12
    invoke-interface {v0, p1}, Lcom/google/android/gms/ads/internal/zzg;->zzh(Landroid/view/View;)V

    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bk;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final c()V
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bk;->a:Lcom/google/android/gms/ads/internal/zzg;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/zzg;->zzkg()V

    return-void
.end method

.method public final d()V
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bk;->a:Lcom/google/android/gms/ads/internal/zzg;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/zzg;->zzkh()V

    return-void
.end method
