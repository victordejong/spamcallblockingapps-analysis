.class public final Lcom/google/android/gms/internal/ads/aif;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/cqt;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/cqt",
        "<",
        "Lcom/google/android/gms/internal/ads/chd;",
        "Lcom/google/android/gms/internal/ads/chd;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/aii;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/aii;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/aif;->a:Ljava/util/Map;

    .line 3
    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/crt;
    .locals 4

    .prologue
    .line 4
    check-cast p1, Lcom/google/android/gms/internal/ads/chd;

    .line 5
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/chd;->b:Lcom/google/android/gms/internal/ads/cha;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/cha;->c:Ljava/util/List;

    .line 6
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/cgz;

    .line 7
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/aif;->a:Ljava/util/Map;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/cgz;->a:Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/aif;->a:Ljava/util/Map;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/cgz;->a:Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/aii;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/cgz;->b:Ljava/util/Map;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/aii;->a(Ljava/util/Map;)V

    goto :goto_0

    .line 10
    :cond_1
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/crg;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v0

    .line 11
    return-object v0
.end method
