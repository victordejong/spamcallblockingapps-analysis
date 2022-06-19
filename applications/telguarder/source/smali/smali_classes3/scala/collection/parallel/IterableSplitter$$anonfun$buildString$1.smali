.class public final Lscala/collection/parallel/IterableSplitter$$anonfun$buildString$1;
.super Lscala/runtime/AbstractFunction1;
.source "RemainsIterator.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/parallel/IterableSplitter;->buildString(Lscala/Function1;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction1<",
        "Ljava/lang/String;",
        "Lscala/runtime/BoxedUnit;",
        ">;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field private final synthetic $outer:Lscala/collection/parallel/IterableSplitter;

.field private final output$1:Lscala/runtime/ObjectRef;


# direct methods
.method public constructor <init>(Lscala/collection/parallel/IterableSplitter;Lscala/runtime/ObjectRef;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/parallel/IterableSplitter<",
            "TT;>;)V"
        }
    .end annotation

    .line 423
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/collection/parallel/IterableSplitter$$anonfun$buildString$1;->$outer:Lscala/collection/parallel/IterableSplitter;

    iput-object p2, p0, Lscala/collection/parallel/IterableSplitter$$anonfun$buildString$1;->output$1:Lscala/runtime/ObjectRef;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 423
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lscala/collection/parallel/IterableSplitter$$anonfun$buildString$1;->apply(Ljava/lang/String;)V

    sget-object p1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    return-object p1
.end method

.method public final apply(Ljava/lang/String;)V
    .locals 2

    .line 423
    iget-object v0, p0, Lscala/collection/parallel/IterableSplitter$$anonfun$buildString$1;->$outer:Lscala/collection/parallel/IterableSplitter;

    iget-object v1, p0, Lscala/collection/parallel/IterableSplitter$$anonfun$buildString$1;->output$1:Lscala/runtime/ObjectRef;

    invoke-static {v0, p1, v1}, Lscala/collection/parallel/IterableSplitter$class;->appendln$1(Lscala/collection/parallel/IterableSplitter;Ljava/lang/String;Lscala/runtime/ObjectRef;)V

    return-void
.end method
