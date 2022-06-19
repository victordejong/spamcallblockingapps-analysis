.class public final Lcom/google/android/gms/internal/ads/bye;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/dsi;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/dsi<",
        "Lcom/google/android/gms/internal/ads/bn;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/byb;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/byb;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bye;->a:Lcom/google/android/gms/internal/ads/byb;

    return-void
.end method

.method public static a(Lcom/google/android/gms/internal/ads/byb;)Lcom/google/android/gms/internal/ads/bye;
    .locals 1

    .line 4
    new-instance v0, Lcom/google/android/gms/internal/ads/bye;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/bye;-><init>(Lcom/google/android/gms/internal/ads/byb;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bye;->a:Lcom/google/android/gms/internal/ads/byb;

    .line 1004
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/byb;->a:Lcom/google/android/gms/internal/ads/bn;

    return-object v0
.end method
