.class public final Lcom/google/android/gms/internal/ads/m40;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/eh2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/eh2<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/k40;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/k40;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/m40;->a:Lcom/google/android/gms/internal/ads/k40;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/m40;->a:Lcom/google/android/gms/internal/ads/k40;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/k40;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic b()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/m40;->a:Lcom/google/android/gms/internal/ads/k40;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/k40;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
