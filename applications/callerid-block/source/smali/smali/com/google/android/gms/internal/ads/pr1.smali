.class public final Lcom/google/android/gms/internal/ads/pr1;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/xs1;

.field private final b:Ljava/lang/String;

.field private final c:Lcom/google/android/gms/internal/ads/zzdwu;

.field private final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/google/android/gms/internal/ads/zzdwu;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/xs1;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/xs1;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/pr1;->a:Lcom/google/android/gms/internal/ads/xs1;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/pr1;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/pr1;->c:Lcom/google/android/gms/internal/ads/zzdwu;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/pr1;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/ads/xs1;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/pr1;->a:Lcom/google/android/gms/internal/ads/xs1;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/pr1;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Lcom/google/android/gms/internal/ads/zzdwu;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/pr1;->c:Lcom/google/android/gms/internal/ads/zzdwu;

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/pr1;->d:Ljava/lang/String;

    return-object v0
.end method
