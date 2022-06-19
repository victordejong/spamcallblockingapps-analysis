.class final Lcom/google/android/gms/internal/ads/bsj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/ads/internal/e;


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/ads/avs;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/bse;Lcom/google/android/gms/internal/ads/avs;)V
    .locals 0

    .prologue
    .line 1
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/bsj;->a:Lcom/google/android/gms/internal/ads/avs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bsj;->a:Lcom/google/android/gms/internal/ads/avs;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/amj;->c()Lcom/google/android/gms/internal/ads/apo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/apo;->e()V

    .line 4
    return-void
.end method

.method public final a(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 2
    return-void
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bsj;->a:Lcom/google/android/gms/internal/ads/avs;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/amj;->d()Lcom/google/android/gms/internal/ads/aqh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/aqh;->a()V

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bsj;->a:Lcom/google/android/gms/internal/ads/avs;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/amj;->e()Lcom/google/android/gms/internal/ads/auu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/auu;->a()V

    .line 7
    return-void
.end method
