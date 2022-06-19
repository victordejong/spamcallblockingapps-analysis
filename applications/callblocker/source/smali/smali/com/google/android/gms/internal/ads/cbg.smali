.class public final Lcom/google/android/gms/internal/ads/cbg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/cah;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/cah",
        "<",
        "Lcom/google/android/gms/internal/ads/cbd;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/qd;

.field private final b:Landroid/content/Context;

.field private final c:Ljava/lang/String;

.field private final d:Lcom/google/android/gms/internal/ads/crs;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/qd;Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/crs;)V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/cbg;->a:Lcom/google/android/gms/internal/ads/qd;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/cbg;->b:Landroid/content/Context;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/cbg;->c:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/cbg;->d:Lcom/google/android/gms/internal/ads/crs;

    .line 6
    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/ads/crt;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/crt",
            "<",
            "Lcom/google/android/gms/internal/ads/cbd;",
            ">;"
        }
    .end annotation

    .prologue
    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cbg;->d:Lcom/google/android/gms/internal/ads/crs;

    new-instance v1, Lcom/google/android/gms/internal/ads/cbf;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/cbf;-><init>(Lcom/google/android/gms/internal/ads/cbg;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/crs;->a(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v0

    return-object v0
.end method

.method final synthetic b()Lcom/google/android/gms/internal/ads/cbd;
    .locals 4

    .prologue
    .line 8
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 9
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/cbg;->a:Lcom/google/android/gms/internal/ads/qd;

    if-eqz v1, :cond_0

    .line 10
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/cbg;->a:Lcom/google/android/gms/internal/ads/qd;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/cbg;->b:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/cbg;->c:Ljava/lang/String;

    invoke-interface {v1, v2, v3, v0}, Lcom/google/android/gms/internal/ads/qd;->a(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 11
    :cond_0
    new-instance v1, Lcom/google/android/gms/internal/ads/cbd;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/cbd;-><init>(Lorg/json/JSONObject;)V

    return-object v1
.end method
