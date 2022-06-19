.class final synthetic Lcom/google/android/gms/internal/ads/acd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/ecd;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/abw;

.field private final b:Lcom/google/android/gms/internal/ads/ecd;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/abw;Lcom/google/android/gms/internal/ads/ecd;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/acd;->a:Lcom/google/android/gms/internal/ads/abw;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/acd;->b:Lcom/google/android/gms/internal/ads/ecd;

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/ads/ecb;
    .locals 8

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/acd;->a:Lcom/google/android/gms/internal/ads/abw;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/acd;->b:Lcom/google/android/gms/internal/ads/ecd;

    .line 1239
    new-instance v7, Lcom/google/android/gms/internal/ads/abs;

    iget-object v1, v5, Lcom/google/android/gms/internal/ads/abw;->c:Landroid/content/Context;

    .line 1240
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/ecd;->a()Lcom/google/android/gms/internal/ads/ecb;

    move-result-object v2

    iget-object v3, v5, Lcom/google/android/gms/internal/ads/abw;->k:Ljava/lang/String;

    iget v4, v5, Lcom/google/android/gms/internal/ads/abw;->l:I

    new-instance v6, Lcom/google/android/gms/internal/ads/ach;

    invoke-direct {v6, v5}, Lcom/google/android/gms/internal/ads/ach;-><init>(Lcom/google/android/gms/internal/ads/abw;)V

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/abs;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/ecb;Ljava/lang/String;ILcom/google/android/gms/internal/ads/ecp;Lcom/google/android/gms/internal/ads/abu;)V

    return-object v7
.end method
