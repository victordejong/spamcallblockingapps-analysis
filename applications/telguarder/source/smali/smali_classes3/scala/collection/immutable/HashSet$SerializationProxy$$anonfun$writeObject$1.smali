.class public final Lscala/collection/immutable/HashSet$SerializationProxy$$anonfun$writeObject$1;
.super Lscala/runtime/AbstractFunction1;
.source "HashSet.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/immutable/HashSet$SerializationProxy;->writeObject(Ljava/io/ObjectOutputStream;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction1<",
        "TA;",
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
.method public constructor <init>(Lscala/collection/immutable/HashSet$SerializationProxy;Ljava/io/ObjectOutputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/immutable/HashSet$SerializationProxy<",
            "TA;TB;>;)V"
        }
    .end annotation

    .line 1036
    iput-object p2, p0, Lscala/collection/immutable/HashSet$SerializationProxy$$anonfun$writeObject$1;->out$1:Ljava/io/ObjectOutputStream;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1036
    invoke-virtual {p0, p1}, Lscala/collection/immutable/HashSet$SerializationProxy$$anonfun$writeObject$1;->apply(Ljava/lang/Object;)V

    sget-object p1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    return-object p1
.end method

.method public final apply(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)V"
        }
    .end annotation

    .line 1037
    iget-object v0, p0, Lscala/collection/immutable/HashSet$SerializationProxy$$anonfun$writeObject$1;->out$1:Ljava/io/ObjectOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    return-void
.end method
