.class public final Lscala/collection/TraversableOnce$$anonfun$addString$1;
.super Lscala/runtime/AbstractFunction1;
.source "TraversableOnce.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/TraversableOnce;->addString(Lscala/collection/mutable/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lscala/collection/mutable/StringBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction1<",
        "TA;",
        "Ljava/lang/Object;",
        ">;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field private final b$2:Lscala/collection/mutable/StringBuilder;

.field private final first$4:Lscala/runtime/BooleanRef;

.field private final sep$1:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lscala/collection/TraversableOnce;Lscala/runtime/BooleanRef;Lscala/collection/mutable/StringBuilder;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/TraversableOnce<",
            "TA;>;)V"
        }
    .end annotation

    .line 355
    iput-object p2, p0, Lscala/collection/TraversableOnce$$anonfun$addString$1;->first$4:Lscala/runtime/BooleanRef;

    iput-object p3, p0, Lscala/collection/TraversableOnce$$anonfun$addString$1;->b$2:Lscala/collection/mutable/StringBuilder;

    iput-object p4, p0, Lscala/collection/TraversableOnce$$anonfun$addString$1;->sep$1:Ljava/lang/String;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 356
    iget-object v0, p0, Lscala/collection/TraversableOnce$$anonfun$addString$1;->first$4:Lscala/runtime/BooleanRef;

    iget-boolean v0, v0, Lscala/runtime/BooleanRef;->elem:Z

    if-eqz v0, :cond_0

    .line 357
    iget-object v0, p0, Lscala/collection/TraversableOnce$$anonfun$addString$1;->b$2:Lscala/collection/mutable/StringBuilder;

    invoke-virtual {v0, p1}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    .line 358
    iget-object p1, p0, Lscala/collection/TraversableOnce$$anonfun$addString$1;->first$4:Lscala/runtime/BooleanRef;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lscala/runtime/BooleanRef;->elem:Z

    sget-object p1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    goto :goto_0

    .line 361
    :cond_0
    iget-object v0, p0, Lscala/collection/TraversableOnce$$anonfun$addString$1;->b$2:Lscala/collection/mutable/StringBuilder;

    iget-object v1, p0, Lscala/collection/TraversableOnce$$anonfun$addString$1;->sep$1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/String;)Lscala/collection/mutable/StringBuilder;

    .line 362
    iget-object v0, p0, Lscala/collection/TraversableOnce$$anonfun$addString$1;->b$2:Lscala/collection/mutable/StringBuilder;

    invoke-virtual {v0, p1}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object p1

    :goto_0
    return-object p1
.end method
