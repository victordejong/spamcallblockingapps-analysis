.class public abstract Lcom/google/android/gms/internal/measurement/n4;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-base@@18.0.3"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/x6;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/google/android/gms/internal/measurement/o4<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lcom/google/android/gms/internal/measurement/n4<",
        "TMessageType;TBuilderType;>;>",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/measurement/x6;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic e([BLcom/google/android/gms/internal/measurement/l5;)Lcom/google/android/gms/internal/measurement/x6;
    .locals 2

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0, p2}, Lcom/google/android/gms/internal/measurement/n4;->j([BIILcom/google/android/gms/internal/measurement/l5;)Lcom/google/android/gms/internal/measurement/n4;

    move-result-object p1

    return-object p1
.end method

.method public abstract i([BII)Lcom/google/android/gms/internal/measurement/n4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII)TBuilderType;"
        }
    .end annotation
.end method

.method public abstract j([BIILcom/google/android/gms/internal/measurement/l5;)Lcom/google/android/gms/internal/measurement/n4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII",
            "Lcom/google/android/gms/internal/measurement/l5;",
            ")TBuilderType;"
        }
    .end annotation
.end method

.method protected abstract l(Lcom/google/android/gms/internal/measurement/o4;)Lcom/google/android/gms/internal/measurement/n4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)TBuilderType;"
        }
    .end annotation
.end method

.method public final bridge synthetic u(Lcom/google/android/gms/internal/measurement/y6;)Lcom/google/android/gms/internal/measurement/x6;
    .locals 1

    invoke-interface {p0}, Lcom/google/android/gms/internal/measurement/z6;->h()Lcom/google/android/gms/internal/measurement/y6;

    move-result-object v0

    .line 1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lcom/google/android/gms/internal/measurement/o4;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/n4;->l(Lcom/google/android/gms/internal/measurement/o4;)Lcom/google/android/gms/internal/measurement/n4;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "mergeFrom(MessageLite) can only merge messages of the same type."

    .line 4
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final bridge synthetic z([B)Lcom/google/android/gms/internal/measurement/x6;
    .locals 2

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/google/android/gms/internal/measurement/n4;->i([BII)Lcom/google/android/gms/internal/measurement/n4;

    move-result-object p1

    return-object p1
.end method
