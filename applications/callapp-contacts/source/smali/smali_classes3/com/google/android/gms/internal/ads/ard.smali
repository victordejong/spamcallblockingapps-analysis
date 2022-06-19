.class public final Lcom/google/android/gms/internal/ads/ard;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/dsi;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/dsi<",
        "Lcom/google/android/gms/internal/ads/cpo;",
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
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ard;->a:Lcom/google/android/gms/internal/ads/aqz;

    return-void
.end method

.method public static a(Lcom/google/android/gms/internal/ads/aqz;)Lcom/google/android/gms/internal/ads/ard;
    .locals 1

    .line 4
    new-instance v0, Lcom/google/android/gms/internal/ads/ard;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/ard;-><init>(Lcom/google/android/gms/internal/ads/aqz;)V

    return-object v0
.end method

.method public static b(Lcom/google/android/gms/internal/ads/aqz;)Lcom/google/android/gms/internal/ads/cpo;
    .locals 0

    .line 1014
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/aqz;->b:Lcom/google/android/gms/internal/ads/cpo;

    .line 5
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/dso;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/cpo;

    return-object p0
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ard;->a:Lcom/google/android/gms/internal/ads/aqz;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ard;->b(Lcom/google/android/gms/internal/ads/aqz;)Lcom/google/android/gms/internal/ads/cpo;

    move-result-object v0

    return-object v0
.end method
