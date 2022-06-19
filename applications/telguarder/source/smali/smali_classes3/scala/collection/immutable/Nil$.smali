.class public final Lscala/collection/immutable/Nil$;
.super Lscala/collection/immutable/List;
.source "List.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/collection/immutable/List<",
        "Lscala/runtime/Nothing$;",
        ">;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final MODULE$:Lscala/collection/immutable/Nil$; = null

.field public static final serialVersionUID:J = -0x72961f0ac674b8fbL


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/collection/immutable/Nil$;

    invoke-direct {v0}, Lscala/collection/immutable/Nil$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 417
    invoke-direct {p0}, Lscala/collection/immutable/List;-><init>()V

    sput-object p0, Lscala/collection/immutable/Nil$;->MODULE$:Lscala/collection/immutable/Nil$;

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .line 417
    sget-object v0, Lscala/collection/immutable/Nil$;->MODULE$:Lscala/collection/immutable/Nil$;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 424
    instance-of v0, p1, Lscala/collection/GenSeq;

    if-eqz v0, :cond_0

    check-cast p1, Lscala/collection/GenSeq;

    invoke-interface {p1}, Lscala/collection/GenSeq;->isEmpty()Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public bridge synthetic head()Ljava/lang/Object;
    .locals 1

    .line 417
    invoke-virtual {p0}, Lscala/collection/immutable/Nil$;->head()Lscala/runtime/Nothing$;

    move-result-object v0

    throw v0
.end method

.method public head()Lscala/runtime/Nothing$;
    .locals 2

    .line 420
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "head of empty list"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isEmpty()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public productArity()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public productElement(I)Ljava/lang/Object;
    .locals 1

    .line 417
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public productIterator()Lscala/collection/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Iterator<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 417
    sget-object v0, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    invoke-virtual {v0, p0}, Lscala/runtime/ScalaRunTime$;->typedProductIterator(Lscala/Product;)Lscala/collection/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public productPrefix()Ljava/lang/String;
    .locals 1

    const-string v0, "Nil"

    return-object v0
.end method

.method public bridge synthetic tail()Ljava/lang/Object;
    .locals 1

    .line 417
    invoke-virtual {p0}, Lscala/collection/immutable/Nil$;->tail()Lscala/collection/immutable/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic tail()Lscala/collection/LinearSeqOptimized;
    .locals 1

    .line 417
    invoke-virtual {p0}, Lscala/collection/immutable/Nil$;->tail()Lscala/collection/immutable/List;

    move-result-object v0

    return-object v0
.end method

.method public tail()Lscala/collection/immutable/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/List<",
            "Lscala/runtime/Nothing$;",
            ">;"
        }
    .end annotation

    .line 422
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "tail of empty list"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
