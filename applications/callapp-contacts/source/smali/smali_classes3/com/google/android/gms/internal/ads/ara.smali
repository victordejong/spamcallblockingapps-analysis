.class public final Lcom/google/android/gms/internal/ads/ara;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/dsi;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/dsi<",
        "Landroid/content/Context;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/aqz;

.field private final b:Lcom/google/android/gms/internal/ads/dsv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/dsv<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/aqz;Lcom/google/android/gms/internal/ads/dsv;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/aqz;",
            "Lcom/google/android/gms/internal/ads/dsv<",
            "Landroid/content/Context;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ara;->a:Lcom/google/android/gms/internal/ads/aqz;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/ara;->b:Lcom/google/android/gms/internal/ads/dsv;

    return-void
.end method

.method public static a(Lcom/google/android/gms/internal/ads/aqz;Lcom/google/android/gms/internal/ads/dsv;)Lcom/google/android/gms/internal/ads/ara;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/aqz;",
            "Lcom/google/android/gms/internal/ads/dsv<",
            "Landroid/content/Context;",
            ">;)",
            "Lcom/google/android/gms/internal/ads/ara;"
        }
    .end annotation

    .line 5
    new-instance v0, Lcom/google/android/gms/internal/ads/ara;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/ara;-><init>(Lcom/google/android/gms/internal/ads/aqz;Lcom/google/android/gms/internal/ads/dsv;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 3

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ara;->a:Lcom/google/android/gms/internal/ads/aqz;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ara;->b:Lcom/google/android/gms/internal/ads/dsv;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/dsv;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    .line 1017
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/aqz;->d:Ljava/lang/String;

    if-eqz v2, :cond_0

    goto :goto_0

    .line 1019
    :cond_0
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/aqz;->a:Landroid/content/Context;

    .line 8
    :goto_0
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/dso;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    return-object v0
.end method
