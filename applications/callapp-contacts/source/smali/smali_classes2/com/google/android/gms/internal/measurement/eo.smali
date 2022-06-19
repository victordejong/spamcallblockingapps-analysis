.class public final Lcom/google/android/gms/internal/measurement/eo;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/google/android/gms/internal/measurement/ek;)Lcom/google/android/gms/internal/measurement/ek;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/measurement/ek<",
            "TT;>;)",
            "Lcom/google/android/gms/internal/measurement/ek<",
            "TT;>;"
        }
    .end annotation

    .line 1
    instance-of v0, p0, Lcom/google/android/gms/internal/measurement/em;

    if-nez v0, :cond_2

    instance-of v0, p0, Lcom/google/android/gms/internal/measurement/el;

    if-eqz v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    instance-of v0, p0, Ljava/io/Serializable;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/measurement/el;

    .line 3
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/measurement/el;-><init>(Lcom/google/android/gms/internal/measurement/ek;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/measurement/em;

    .line 4
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/measurement/em;-><init>(Lcom/google/android/gms/internal/measurement/ek;)V

    :goto_0
    return-object v0

    :cond_2
    :goto_1
    return-object p0
.end method

.method public static a(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/ek;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcom/google/android/gms/internal/measurement/ek<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/measurement/en;

    .line 1
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/measurement/en;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method
