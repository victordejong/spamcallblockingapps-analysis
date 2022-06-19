.class public final Lcom/google/android/gms/internal/ads/bkr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/cto;


# instance fields
.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/android/gms/internal/ads/ctj;",
            "Lcom/google/android/gms/internal/ads/bkt;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/google/android/gms/internal/ads/ehk;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/ehk;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/ehk;",
            "Ljava/util/Map<",
            "Lcom/google/android/gms/internal/ads/ctj;",
            "Lcom/google/android/gms/internal/ads/bkt;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/bkr;->a:Ljava/util/Map;

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bkr;->b:Lcom/google/android/gms/internal/ads/ehk;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/ctj;Ljava/lang/String;)V
    .locals 1

    .line 6
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/bkr;->a:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 7
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/bkr;->b:Lcom/google/android/gms/internal/ads/ehk;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bkr;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/bkt;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/bkt;->a:Lcom/google/android/gms/internal/ads/ehn$a$b;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/ehk;->a(Lcom/google/android/gms/internal/ads/ehn$a$b;)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/ctj;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 9
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/bkr;->a:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 10
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/bkr;->b:Lcom/google/android/gms/internal/ads/ehk;

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/bkr;->a:Ljava/util/Map;

    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/bkt;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/bkt;->c:Lcom/google/android/gms/internal/ads/ehn$a$b;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/ehk;->a(Lcom/google/android/gms/internal/ads/ehn$a$b;)V

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final b(Lcom/google/android/gms/internal/ads/ctj;Ljava/lang/String;)V
    .locals 1

    .line 12
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/bkr;->a:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 13
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/bkr;->b:Lcom/google/android/gms/internal/ads/ehk;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bkr;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/bkt;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/bkt;->b:Lcom/google/android/gms/internal/ads/ehn$a$b;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/ehk;->a(Lcom/google/android/gms/internal/ads/ehn$a$b;)V

    :cond_0
    return-void
.end method
