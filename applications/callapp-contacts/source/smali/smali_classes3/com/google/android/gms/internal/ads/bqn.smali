.class public final Lcom/google/android/gms/internal/ads/bqn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/cto;


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/android/gms/internal/ads/ctj;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/android/gms/internal/ads/ctj;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/google/android/gms/internal/ads/ctz;


# direct methods
.method public constructor <init>(Ljava/util/Set;Lcom/google/android/gms/internal/ads/ctz;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/internal/ads/bqm;",
            ">;",
            "Lcom/google/android/gms/internal/ads/ctz;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/bqn;->c:Lcom/google/android/gms/internal/ads/ctz;

    .line 3
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/bqn;->a:Ljava/util/Map;

    .line 4
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/bqn;->b:Ljava/util/Map;

    .line 6
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/ads/bqm;

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bqn;->a:Ljava/util/Map;

    .line 1006
    iget-object v1, p2, Lcom/google/android/gms/internal/ads/bqm;->b:Lcom/google/android/gms/internal/ads/ctj;

    .line 1007
    iget-object v2, p2, Lcom/google/android/gms/internal/ads/bqm;->a:Ljava/lang/String;

    .line 7
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bqn;->b:Ljava/util/Map;

    .line 1008
    iget-object v1, p2, Lcom/google/android/gms/internal/ads/bqm;->c:Lcom/google/android/gms/internal/ads/ctj;

    .line 2007
    iget-object p2, p2, Lcom/google/android/gms/internal/ads/bqm;->a:Ljava/lang/String;

    .line 8
    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/ctj;Ljava/lang/String;)V
    .locals 3

    .line 12
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bqn;->c:Lcom/google/android/gms/internal/ads/ctz;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "task."

    if-eqz v1, :cond_0

    invoke-virtual {v2, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/ctz;->b(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/ctz;

    .line 13
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/bqn;->a:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 14
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/bqn;->c:Lcom/google/android/gms/internal/ads/ctz;

    const-string v0, "label."

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bqn;->a:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/ctz;->b(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/ctz;

    :cond_2
    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/ctj;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .line 16
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/bqn;->c:Lcom/google/android/gms/internal/ads/ctz;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const-string v1, "task."

    if-eqz v0, :cond_0

    invoke-virtual {v1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    const-string v0, "f."

    invoke-virtual {p3, p2, v0}, Lcom/google/android/gms/internal/ads/ctz;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/ctz;

    .line 17
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/bqn;->b:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 18
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/bqn;->c:Lcom/google/android/gms/internal/ads/ctz;

    const-string p3, "label."

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bqn;->b:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1
    invoke-virtual {p2, p1, v0}, Lcom/google/android/gms/internal/ads/ctz;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/ctz;

    :cond_2
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final b(Lcom/google/android/gms/internal/ads/ctj;Ljava/lang/String;)V
    .locals 3

    .line 20
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bqn;->c:Lcom/google/android/gms/internal/ads/ctz;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "task."

    if-eqz v1, :cond_0

    invoke-virtual {v2, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    const-string v1, "s."

    invoke-virtual {v0, p2, v1}, Lcom/google/android/gms/internal/ads/ctz;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/ctz;

    .line 21
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/bqn;->b:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 22
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/bqn;->c:Lcom/google/android/gms/internal/ads/ctz;

    const-string v0, "label."

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/bqn;->b:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1
    invoke-virtual {p2, p1, v1}, Lcom/google/android/gms/internal/ads/ctz;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/ctz;

    :cond_2
    return-void
.end method
