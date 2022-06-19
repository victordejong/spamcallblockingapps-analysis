.class public abstract Lcom/google/android/gms/internal/measurement/cm;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-base@@17.4.2"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/fm;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/google/android/gms/internal/measurement/ck",
        "<TMessageType;TBuilderType;>;BuilderType:",
        "Lcom/google/android/gms/internal/measurement/cm",
        "<TMessageType;TBuilderType;>;>",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/measurement/fm;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 21
    .line 22
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x3c

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v1, "Reading "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " from a "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " threw an IOException (should never happen)."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 23
    return-object v0
.end method


# virtual methods
.method protected abstract a(Lcom/google/android/gms/internal/measurement/ck;)Lcom/google/android/gms/internal/measurement/cm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)TBuilderType;"
        }
    .end annotation
.end method

.method public abstract a(Lcom/google/android/gms/internal/measurement/dg;Lcom/google/android/gms/internal/measurement/dp;)Lcom/google/android/gms/internal/measurement/cm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/measurement/dg;",
            "Lcom/google/android/gms/internal/measurement/dp;",
            ")TBuilderType;"
        }
    .end annotation
.end method

.method public a([BII)Lcom/google/android/gms/internal/measurement/cm;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII)TBuilderType;"
        }
    .end annotation

    .prologue
    .line 2
    .line 3
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p1, v0, p3, v1}, Lcom/google/android/gms/internal/measurement/dg;->a([BIIZ)Lcom/google/android/gms/internal/measurement/dg;

    move-result-object v0

    .line 6
    invoke-static {}, Lcom/google/android/gms/internal/measurement/dp;->a()Lcom/google/android/gms/internal/measurement/dp;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/measurement/cm;->a(Lcom/google/android/gms/internal/measurement/dg;Lcom/google/android/gms/internal/measurement/dp;)Lcom/google/android/gms/internal/measurement/cm;

    .line 7
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/dg;->a(I)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/measurement/zzft; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 8
    return-object p0

    .line 9
    :catch_0
    move-exception v0

    throw v0

    .line 10
    :catch_1
    move-exception v0

    .line 11
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "byte array"

    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/measurement/cm;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public a([BIILcom/google/android/gms/internal/measurement/dp;)Lcom/google/android/gms/internal/measurement/cm;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII",
            "Lcom/google/android/gms/internal/measurement/dp;",
            ")TBuilderType;"
        }
    .end annotation

    .prologue
    .line 12
    .line 13
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p1, v0, p3, v1}, Lcom/google/android/gms/internal/measurement/dg;->a([BIIZ)Lcom/google/android/gms/internal/measurement/dg;

    move-result-object v0

    .line 15
    invoke-virtual {p0, v0, p4}, Lcom/google/android/gms/internal/measurement/cm;->a(Lcom/google/android/gms/internal/measurement/dg;Lcom/google/android/gms/internal/measurement/dp;)Lcom/google/android/gms/internal/measurement/cm;

    .line 16
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/dg;->a(I)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/measurement/zzft; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 17
    return-object p0

    .line 18
    :catch_0
    move-exception v0

    throw v0

    .line 19
    :catch_1
    move-exception v0

    .line 20
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "byte array"

    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/measurement/cm;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final synthetic a(Lcom/google/android/gms/internal/measurement/fn;)Lcom/google/android/gms/internal/measurement/fm;
    .locals 2

    .prologue
    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/cm;->at()Lcom/google/android/gms/internal/measurement/fn;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 27
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "mergeFrom(MessageLite) can only merge messages of the same type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 28
    :cond_0
    check-cast p1, Lcom/google/android/gms/internal/measurement/ck;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/cm;->a(Lcom/google/android/gms/internal/measurement/ck;)Lcom/google/android/gms/internal/measurement/cm;

    move-result-object v0

    .line 29
    return-object v0
.end method

.method public final synthetic a([B)Lcom/google/android/gms/internal/measurement/fm;
    .locals 2

    .prologue
    .line 33
    .line 34
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/gms/internal/measurement/cm;->a([BII)Lcom/google/android/gms/internal/measurement/cm;

    move-result-object v0

    .line 35
    return-object v0
.end method

.method public final synthetic a([BLcom/google/android/gms/internal/measurement/dp;)Lcom/google/android/gms/internal/measurement/fm;
    .locals 2

    .prologue
    .line 30
    .line 31
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/google/android/gms/internal/measurement/cm;->a([BIILcom/google/android/gms/internal/measurement/dp;)Lcom/google/android/gms/internal/measurement/cm;

    move-result-object v0

    .line 32
    return-object v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 24
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/cm;->p()Lcom/google/android/gms/internal/measurement/cm;

    move-result-object v0

    return-object v0
.end method

.method public abstract p()Lcom/google/android/gms/internal/measurement/cm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TBuilderType;"
        }
    .end annotation
.end method
