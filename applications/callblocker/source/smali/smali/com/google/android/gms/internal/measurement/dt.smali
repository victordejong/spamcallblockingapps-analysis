.class final Lcom/google/android/gms/internal/measurement/dt;
.super Lcom/google/android/gms/internal/measurement/dr;
.source "com.google.android.gms:play-services-measurement-base@@17.4.2"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/dr",
        "<",
        "Lcom/google/android/gms/internal/measurement/ed$c;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/dr;-><init>()V

    return-void
.end method


# virtual methods
.method final a(Ljava/util/Map$Entry;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<**>;)I"
        }
    .end annotation

    .prologue
    .line 9
    .line 10
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/ed$c;

    .line 11
    new-instance v0, Ljava/lang/NoSuchMethodError;

    invoke-direct {v0}, Ljava/lang/NoSuchMethodError;-><init>()V

    throw v0
.end method

.method final a(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/dw;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/android/gms/internal/measurement/dw",
            "<",
            "Lcom/google/android/gms/internal/measurement/ed$c;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3
    check-cast p1, Lcom/google/android/gms/internal/measurement/ed$d;

    iget-object v0, p1, Lcom/google/android/gms/internal/measurement/ed$d;->zzc:Lcom/google/android/gms/internal/measurement/dw;

    return-object v0
.end method

.method final a(Lcom/google/android/gms/internal/measurement/dp;Lcom/google/android/gms/internal/measurement/fn;I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 15
    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/internal/measurement/dp;->a(Lcom/google/android/gms/internal/measurement/fn;I)Lcom/google/android/gms/internal/measurement/ed$f;

    move-result-object v0

    return-object v0
.end method

.method final a(Lcom/google/android/gms/internal/measurement/ge;Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/dp;Lcom/google/android/gms/internal/measurement/dw;Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/gv;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/measurement/ge;",
            "Ljava/lang/Object;",
            "Lcom/google/android/gms/internal/measurement/dp;",
            "Lcom/google/android/gms/internal/measurement/dw",
            "<",
            "Lcom/google/android/gms/internal/measurement/ed$c;",
            ">;TUB;",
            "Lcom/google/android/gms/internal/measurement/gv",
            "<TUT;TUB;>;)TUB;"
        }
    .end annotation

    .prologue
    .line 7
    check-cast p2, Lcom/google/android/gms/internal/measurement/ed$f;

    .line 8
    new-instance v0, Ljava/lang/NoSuchMethodError;

    invoke-direct {v0}, Ljava/lang/NoSuchMethodError;-><init>()V

    throw v0
.end method

.method final a(Lcom/google/android/gms/internal/measurement/ct;Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/dp;Lcom/google/android/gms/internal/measurement/dw;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/measurement/ct;",
            "Ljava/lang/Object;",
            "Lcom/google/android/gms/internal/measurement/dp;",
            "Lcom/google/android/gms/internal/measurement/dw",
            "<",
            "Lcom/google/android/gms/internal/measurement/ed$c;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 18
    check-cast p2, Lcom/google/android/gms/internal/measurement/ed$f;

    .line 19
    new-instance v0, Ljava/lang/NoSuchMethodError;

    invoke-direct {v0}, Ljava/lang/NoSuchMethodError;-><init>()V

    throw v0
.end method

.method final a(Lcom/google/android/gms/internal/measurement/ge;Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/dp;Lcom/google/android/gms/internal/measurement/dw;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/measurement/ge;",
            "Ljava/lang/Object;",
            "Lcom/google/android/gms/internal/measurement/dp;",
            "Lcom/google/android/gms/internal/measurement/dw",
            "<",
            "Lcom/google/android/gms/internal/measurement/ed$c;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 16
    check-cast p2, Lcom/google/android/gms/internal/measurement/ed$f;

    .line 17
    new-instance v0, Ljava/lang/NoSuchMethodError;

    invoke-direct {v0}, Ljava/lang/NoSuchMethodError;-><init>()V

    throw v0
.end method

.method final a(Lcom/google/android/gms/internal/measurement/hr;Ljava/util/Map$Entry;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/measurement/hr;",
            "Ljava/util/Map$Entry",
            "<**>;)V"
        }
    .end annotation

    .prologue
    .line 12
    .line 13
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/ed$c;

    .line 14
    new-instance v0, Ljava/lang/NoSuchMethodError;

    invoke-direct {v0}, Ljava/lang/NoSuchMethodError;-><init>()V

    throw v0
.end method

.method final a(Lcom/google/android/gms/internal/measurement/fn;)Z
    .locals 1

    .prologue
    .line 2
    instance-of v0, p1, Lcom/google/android/gms/internal/measurement/ed$d;

    return v0
.end method

.method final b(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/dw;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/android/gms/internal/measurement/dw",
            "<",
            "Lcom/google/android/gms/internal/measurement/ed$c;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4
    check-cast p1, Lcom/google/android/gms/internal/measurement/ed$d;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/ed$d;->a()Lcom/google/android/gms/internal/measurement/dw;

    move-result-object v0

    return-object v0
.end method

.method final c(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 5
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/dr;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/dw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/dw;->b()V

    .line 6
    return-void
.end method
