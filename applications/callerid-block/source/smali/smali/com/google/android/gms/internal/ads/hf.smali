.class public final Lcom/google/android/gms/internal/ads/hf;
.super Lcom/google/android/gms/internal/ads/pe;
.source ""


# instance fields
.field private final b:Lcom/google/android/gms/ads/mediation/k;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/mediation/k;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/pe;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/hf;->b:Lcom/google/android/gms/ads/mediation/k;

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/dynamic/a;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hf;->b:Lcom/google/android/gms/ads/mediation/k;

    invoke-interface {v0}, Lcom/google/android/gms/ads/mediation/g;->b()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/dynamic/b;->g3(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/a;

    move-result-object v0

    return-object v0
.end method

.method public final d()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hf;->b:Lcom/google/android/gms/ads/mediation/k;

    invoke-interface {v0}, Lcom/google/android/gms/ads/mediation/k;->a()Z

    move-result v0

    return v0
.end method
