.class public abstract Lcom/google/android/gms/internal/measurement/ex;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/hn;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/google/android/gms/internal/measurement/ey<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lcom/google/android/gms/internal/measurement/ex<",
        "TMessageType;TBuilderType;>;>",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/measurement/hn;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract a(Lcom/google/android/gms/internal/measurement/ey;)Lcom/google/android/gms/internal/measurement/ex;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)TBuilderType;"
        }
    .end annotation
.end method

.method public a([BI)Lcom/google/android/gms/internal/measurement/ex;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI)TBuilderType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/measurement/zzib;
        }
    .end annotation

    const/4 p1, 0x0

    throw p1
.end method

.method public a([BILcom/google/android/gms/internal/measurement/fy;)Lcom/google/android/gms/internal/measurement/ex;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI",
            "Lcom/google/android/gms/internal/measurement/fy;",
            ")TBuilderType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/measurement/zzib;
        }
    .end annotation

    const/4 p1, 0x0

    throw p1
.end method

.method public final synthetic a(Lcom/google/android/gms/internal/measurement/ho;)Lcom/google/android/gms/internal/measurement/hn;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ex;->C()Lcom/google/android/gms/internal/measurement/ho;

    move-result-object v0

    .line 1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    check-cast p1, Lcom/google/android/gms/internal/measurement/ey;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/ex;->a(Lcom/google/android/gms/internal/measurement/ey;)Lcom/google/android/gms/internal/measurement/ex;

    move-result-object p1

    return-object p1

    .line 1
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "mergeFrom(MessageLite) can only merge messages of the same type."

    .line 2
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final bridge synthetic a([B)Lcom/google/android/gms/internal/measurement/hn;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/measurement/zzib;
        }
    .end annotation

    .line 1
    array-length v0, p1

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/ex;->a([BI)Lcom/google/android/gms/internal/measurement/ex;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic a([BLcom/google/android/gms/internal/measurement/fy;)Lcom/google/android/gms/internal/measurement/hn;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/measurement/zzib;
        }
    .end annotation

    .line 1
    array-length v0, p1

    invoke-virtual {p0, p1, v0, p2}, Lcom/google/android/gms/internal/measurement/ex;->a([BILcom/google/android/gms/internal/measurement/fy;)Lcom/google/android/gms/internal/measurement/ex;

    move-result-object p1

    return-object p1
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ex;->x()Lcom/google/android/gms/internal/measurement/ex;

    move-result-object v0

    return-object v0
.end method

.method public abstract x()Lcom/google/android/gms/internal/measurement/ex;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TBuilderType;"
        }
    .end annotation
.end method
