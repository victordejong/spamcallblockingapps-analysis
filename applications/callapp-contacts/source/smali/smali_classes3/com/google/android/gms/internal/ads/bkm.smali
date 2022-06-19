.class public final Lcom/google/android/gms/internal/ads/bkm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/dsi;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/dsi<",
        "Lcom/google/android/gms/internal/ads/bkt;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 4

    .line 3
    new-instance v0, Lcom/google/android/gms/internal/ads/bkt;

    sget-object v1, Lcom/google/android/gms/internal/ads/ehn$a$b;->zzbxj:Lcom/google/android/gms/internal/ads/ehn$a$b;

    sget-object v2, Lcom/google/android/gms/internal/ads/ehn$a$b;->zzbxk:Lcom/google/android/gms/internal/ads/ehn$a$b;

    sget-object v3, Lcom/google/android/gms/internal/ads/ehn$a$b;->zzbya:Lcom/google/android/gms/internal/ads/ehn$a$b;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/bkt;-><init>(Lcom/google/android/gms/internal/ads/ehn$a$b;Lcom/google/android/gms/internal/ads/ehn$a$b;Lcom/google/android/gms/internal/ads/ehn$a$b;)V

    .line 4
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/dso;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/bkt;

    return-object v0
.end method
