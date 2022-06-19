.class final Lcom/google/android/gms/internal/ads/byk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/ads/internal/zzg;


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/ads/azk;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/byf;Lcom/google/android/gms/internal/ads/azk;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/byk;->a:Lcom/google/android/gms/internal/ads/azk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzh(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public final zzkg()V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/byk;->a:Lcom/google/android/gms/internal/ads/azk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/anr;->c()Lcom/google/android/gms/internal/ads/arj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/arj;->onAdClicked()V

    return-void
.end method

.method public final zzkh()V
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/byk;->a:Lcom/google/android/gms/internal/ads/azk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/anr;->d()Lcom/google/android/gms/internal/ads/asc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/asc;->a()V

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/byk;->a:Lcom/google/android/gms/internal/ads/azk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/anr;->e()Lcom/google/android/gms/internal/ads/aym;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/aym;->a()V

    return-void
.end method
