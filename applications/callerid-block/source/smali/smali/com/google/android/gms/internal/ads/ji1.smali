.class final Lcom/google/android/gms/internal/ads/ji1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/fw1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/fw1<",
        "Lcom/google/android/gms/internal/ads/zzawc;",
        "Lcom/google/android/gms/internal/ads/li1;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/ads/mi1;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/mi1;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ji1;->a:Lcom/google/android/gms/internal/ads/mi1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/ads/zzawc;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ji1;->a:Lcom/google/android/gms/internal/ads/mi1;

    new-instance v1, Lcom/google/android/gms/internal/ads/li1;

    new-instance v2, Lcom/google/android/gms/internal/ads/on1;

    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzawc;->k:Ljava/lang/String;

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/on1;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-direct {v1, p1, v2, v3}, Lcom/google/android/gms/internal/ads/li1;-><init>(Lcom/google/android/gms/internal/ads/zzawc;Lcom/google/android/gms/internal/ads/mn1;Lcom/google/android/gms/internal/ads/ii1;)V

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/mi1;->b(Lcom/google/android/gms/internal/ads/mi1;Lcom/google/android/gms/internal/ads/li1;)Lcom/google/android/gms/internal/ads/li1;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/ji1;->a:Lcom/google/android/gms/internal/ads/mi1;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/mi1;->d(Lcom/google/android/gms/internal/ads/mi1;)Lcom/google/android/gms/internal/ads/li1;

    move-result-object p1

    return-object p1
.end method
