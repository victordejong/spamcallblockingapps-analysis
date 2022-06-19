.class final Lcom/google/android/gms/internal/measurement/hj;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(Ljava/lang/Object;)I
    .locals 1

    .line 1
    check-cast p0, Lcom/google/android/gms/internal/measurement/hi;

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/hi;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/hi;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    const/4 p0, 0x0

    return p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map$Entry;

    .line 5
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    const/4 p0, 0x0

    throw p0
.end method

.method public static final a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p0, Lcom/google/android/gms/internal/measurement/hi;

    .line 2
    check-cast p1, Lcom/google/android/gms/internal/measurement/hi;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/hi;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1000
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/hi;->a:Z

    if-nez v0, :cond_0

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/hi;->b()Lcom/google/android/gms/internal/measurement/hi;

    move-result-object p0

    .line 1001
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/hi;->c()V

    .line 1002
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/hi;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1003
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/hi;->putAll(Ljava/util/Map;)V

    :cond_1
    return-object p0
.end method
