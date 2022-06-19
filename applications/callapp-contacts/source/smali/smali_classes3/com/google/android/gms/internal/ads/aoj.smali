.class public final Lcom/google/android/gms/internal/ads/aoj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/dsi;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/dsi<",
        "Lcom/google/android/gms/internal/ads/cpk;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/aof;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/aof;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/aoj;->a:Lcom/google/android/gms/internal/ads/aof;

    return-void
.end method

.method public static a(Lcom/google/android/gms/internal/ads/aof;)Lcom/google/android/gms/internal/ads/aoj;
    .locals 1

    .line 4
    new-instance v0, Lcom/google/android/gms/internal/ads/aoj;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/aoj;-><init>(Lcom/google/android/gms/internal/ads/aof;)V

    return-object v0
.end method

.method public static b(Lcom/google/android/gms/internal/ads/aof;)Lcom/google/android/gms/internal/ads/cpk;
    .locals 0

    .line 1007
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/aof;->a:Lcom/google/android/gms/internal/ads/cpk;

    .line 5
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/dso;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/cpk;

    return-object p0
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aoj;->a:Lcom/google/android/gms/internal/ads/aof;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/aoj;->b(Lcom/google/android/gms/internal/ads/aof;)Lcom/google/android/gms/internal/ads/cpk;

    move-result-object v0

    return-object v0
.end method
