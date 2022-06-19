.class public final Lcom/google/android/gms/internal/ads/bgs;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/clg;


# instance fields
.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/internal/ads/ckw;",
            "Lcom/google/android/gms/internal/ads/bgu;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/google/android/gms/internal/ads/dwi;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/dwi;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/dwi;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/internal/ads/ckw;",
            "Lcom/google/android/gms/internal/ads/bgu;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/bgs;->a:Ljava/util/Map;

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bgs;->b:Lcom/google/android/gms/internal/ads/dwi;

    .line 4
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/ckw;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 5
    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/ckw;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bgs;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bgs;->b:Lcom/google/android/gms/internal/ads/dwi;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bgs;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/bgu;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/bgu;->c:Lcom/google/android/gms/internal/ads/dwk$a$a;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/dwi;->a(Lcom/google/android/gms/internal/ads/dwk$a$a;)V

    .line 11
    :cond_0
    return-void
.end method

.method public final b(Lcom/google/android/gms/internal/ads/ckw;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bgs;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bgs;->b:Lcom/google/android/gms/internal/ads/dwi;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bgs;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/bgu;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/bgu;->a:Lcom/google/android/gms/internal/ads/dwk$a$a;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/dwi;->a(Lcom/google/android/gms/internal/ads/dwk$a$a;)V

    .line 8
    :cond_0
    return-void
.end method

.method public final c(Lcom/google/android/gms/internal/ads/ckw;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 12
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bgs;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 13
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bgs;->b:Lcom/google/android/gms/internal/ads/dwi;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bgs;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/bgu;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/bgu;->b:Lcom/google/android/gms/internal/ads/dwk$a$a;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/dwi;->a(Lcom/google/android/gms/internal/ads/dwk$a$a;)V

    .line 14
    :cond_0
    return-void
.end method
