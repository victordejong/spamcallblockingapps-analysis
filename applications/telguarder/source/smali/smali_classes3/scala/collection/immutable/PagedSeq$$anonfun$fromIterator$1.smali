.class public final Lscala/collection/immutable/PagedSeq$$anonfun$fromIterator$1;
.super Lscala/runtime/AbstractFunction3;
.source "PagedSeq.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/immutable/PagedSeq$;->fromIterator(Lscala/collection/Iterator;Lscala/reflect/ClassTag;)Lscala/collection/immutable/PagedSeq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction3<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field private final source$1:Lscala/collection/Iterator;


# direct methods
.method public constructor <init>(Lscala/collection/Iterator;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lscala/collection/immutable/PagedSeq$$anonfun$fromIterator$1;->source$1:Lscala/collection/Iterator;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction3;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;II)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "II)I"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_0

    .line 33
    iget-object v1, p0, Lscala/collection/immutable/PagedSeq$$anonfun$fromIterator$1;->source$1:Lscala/collection/Iterator;

    invoke-interface {v1}, Lscala/collection/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 34
    sget-object v1, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    add-int v2, p2, v0

    iget-object v3, p0, Lscala/collection/immutable/PagedSeq$$anonfun$fromIterator$1;->source$1:Lscala/collection/Iterator;

    invoke-interface {v3}, Lscala/collection/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, p1, v2, v3}, Lscala/runtime/ScalaRunTime$;->array_update(Ljava/lang/Object;ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, -0x1

    :cond_1
    return v0
.end method

.method public final bridge synthetic apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 31
    invoke-static {p2}, Lscala/runtime/BoxesRunTime;->unboxToInt(Ljava/lang/Object;)I

    move-result p2

    invoke-static {p3}, Lscala/runtime/BoxesRunTime;->unboxToInt(Ljava/lang/Object;)I

    move-result p3

    invoke-virtual {p0, p1, p2, p3}, Lscala/collection/immutable/PagedSeq$$anonfun$fromIterator$1;->apply(Ljava/lang/Object;II)I

    move-result p1

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
