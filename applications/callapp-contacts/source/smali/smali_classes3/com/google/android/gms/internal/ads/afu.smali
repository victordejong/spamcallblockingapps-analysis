.class public final Lcom/google/android/gms/internal/ads/afu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/dsi;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/dsi<",
        "Lcom/google/android/gms/internal/ads/die;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/afp;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/afp;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/afu;->a:Lcom/google/android/gms/internal/ads/afp;

    return-void
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 4

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/afu;->a:Lcom/google/android/gms/internal/ads/afp;

    .line 1010
    new-instance v1, Lcom/google/android/gms/internal/ads/die;

    new-instance v2, Lcom/google/android/gms/ads/internal/zzf;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/afp;->b:Landroid/content/Context;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/afp;->a:Lcom/google/android/gms/internal/ads/zzbar;

    invoke-direct {v2, v3, v0}, Lcom/google/android/gms/ads/internal/zzf;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbar;)V

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/die;-><init>(Lcom/google/android/gms/internal/ads/cxx;)V

    .line 6
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/dso;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/die;

    return-object v0
.end method
