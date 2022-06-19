.class public final Lcom/google/android/gms/internal/ads/arc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/dsi;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/dsi<",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/aqz;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/aqz;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/arc;->a:Lcom/google/android/gms/internal/ads/aqz;

    return-void
.end method

.method public static a(Lcom/google/android/gms/internal/ads/aqz;)Lcom/google/android/gms/internal/ads/arc;
    .locals 1

    .line 4
    new-instance v0, Lcom/google/android/gms/internal/ads/arc;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/arc;-><init>(Lcom/google/android/gms/internal/ads/aqz;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/arc;->a:Lcom/google/android/gms/internal/ads/aqz;

    .line 1016
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/aqz;->c:Landroid/os/Bundle;

    return-object v0
.end method
