.class public final Lscala/collection/mutable/FlatHashTable$$anonfun$serializeTo$1;
.super Lscala/runtime/AbstractFunction1;
.source "FlatHashTable.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/mutable/FlatHashTable;->serializeTo(Ljava/io/ObjectOutputStream;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction1<",
        "Ljava/lang/Object;",
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
.method public constructor <init>(Lscala/collection/mutable/FlatHashTable;Ljava/io/ObjectOutputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/mutable/FlatHashTable<",
            "TA;>;)V"
        }
    .end annotation

    .line 106
    iput-object p2, p0, Lscala/collection/mutable/FlatHashTable$$anonfun$serializeTo$1;->out$1:Ljava/io/ObjectOutputStream;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 106
    invoke-virtual {p0, p1}, Lscala/collection/mutable/FlatHashTable$$anonfun$serializeTo$1;->apply(Ljava/lang/Object;)V

    sget-object p1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    return-object p1
.end method

.method public final apply(Ljava/lang/Object;)V
    .locals 1

    .line 106
    iget-object v0, p0, Lscala/collection/mutable/FlatHashTable$$anonfun$serializeTo$1;->out$1:Ljava/io/ObjectOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    return-void
.end method
