.class public final Lscala/collection/mutable/HashMap$$anonfun$writeObject$1;
.super Lscala/runtime/AbstractFunction1;
.source "HashMap.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/mutable/HashMap;->writeObject(Ljava/io/ObjectOutputStream;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction1<",
        "Lscala/collection/mutable/DefaultEntry<",
        "TA;TB;>;",
        "Lscala/runtime/BoxedUnit;",
        ">;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field private final out$1:Ljava/io/ObjectOutputStream;


# direct methods
.method public constructor <init>(Lscala/collection/mutable/HashMap;Ljava/io/ObjectOutputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/mutable/HashMap<",
            "TA;TB;>;)V"
        }
    .end annotation

    .line 136
    iput-object p2, p0, Lscala/collection/mutable/HashMap$$anonfun$writeObject$1;->out$1:Ljava/io/ObjectOutputStream;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 136
    check-cast p1, Lscala/collection/mutable/DefaultEntry;

    invoke-virtual {p0, p1}, Lscala/collection/mutable/HashMap$$anonfun$writeObject$1;->apply(Lscala/collection/mutable/DefaultEntry;)V

    sget-object p1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    return-object p1
.end method

.method public final apply(Lscala/collection/mutable/DefaultEntry;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/mutable/DefaultEntry<",
            "TA;TB;>;)V"
        }
    .end annotation

    .line 137
    iget-object v0, p0, Lscala/collection/mutable/HashMap$$anonfun$writeObject$1;->out$1:Ljava/io/ObjectOutputStream;

    invoke-virtual {p1}, Lscala/collection/mutable/DefaultEntry;->key()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 138
    iget-object v0, p0, Lscala/collection/mutable/HashMap$$anonfun$writeObject$1;->out$1:Ljava/io/ObjectOutputStream;

    invoke-virtual {p1}, Lscala/collection/mutable/DefaultEntry;->value()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    return-void
.end method
