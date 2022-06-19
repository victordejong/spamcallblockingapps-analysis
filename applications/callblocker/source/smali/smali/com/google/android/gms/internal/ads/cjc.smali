.class public final Lcom/google/android/gms/internal/ads/cjc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# instance fields
.field private a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/google/android/gms/internal/ads/cix;",
            "Lcom/google/android/gms/internal/ads/cjg",
            "<+",
            "Lcom/google/android/gms/internal/ads/amh;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/cjc;->a:Ljava/util/HashMap;

    .line 3
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/cix;Landroid/content/Context;Lcom/google/android/gms/internal/ads/cik;Lcom/google/android/gms/internal/ads/cjo;)Lcom/google/android/gms/internal/ads/cjg;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<AdT:",
            "Lcom/google/android/gms/internal/ads/amh;",
            ">(",
            "Lcom/google/android/gms/internal/ads/cix;",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/internal/ads/cik;",
            "Lcom/google/android/gms/internal/ads/cjo",
            "<TAdT;>;)",
            "Lcom/google/android/gms/internal/ads/cjg",
            "<TAdT;>;"
        }
    .end annotation

    .prologue
    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cjc;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/cjg;

    .line 5
    if-nez v0, :cond_0

    .line 6
    new-instance v1, Lcom/google/android/gms/internal/ads/ciq;

    .line 7
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/ciu;->a(Lcom/google/android/gms/internal/ads/cix;Landroid/content/Context;)Lcom/google/android/gms/internal/ads/ciu;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/ciq;-><init>(Lcom/google/android/gms/internal/ads/ciu;)V

    .line 8
    new-instance v2, Lcom/google/android/gms/internal/ads/cjh;

    invoke-direct {v2, v1, p3, p4}, Lcom/google/android/gms/internal/ads/cjh;-><init>(Lcom/google/android/gms/internal/ads/cir;Lcom/google/android/gms/internal/ads/cik;Lcom/google/android/gms/internal/ads/cjo;)V

    .line 9
    new-instance v0, Lcom/google/android/gms/internal/ads/cjg;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/cjg;-><init>(Lcom/google/android/gms/internal/ads/cir;Lcom/google/android/gms/internal/ads/cjh;)V

    .line 10
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/cjc;->a:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    :cond_0
    return-object v0
.end method
