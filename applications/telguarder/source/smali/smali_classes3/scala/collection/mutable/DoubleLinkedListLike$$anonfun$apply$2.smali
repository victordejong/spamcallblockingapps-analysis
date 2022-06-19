.class public final Lscala/collection/mutable/DoubleLinkedListLike$$anonfun$apply$2;
.super Lscala/runtime/AbstractFunction0;
.source "DoubleLinkedListLike.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/mutable/DoubleLinkedListLike;->apply(I)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction0<",
        "Lscala/runtime/Nothing$;",
        ">;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field private final synthetic $outer:Lscala/collection/mutable/DoubleLinkedListLike;

.field private final n$1:I


# direct methods
.method public constructor <init>(Lscala/collection/mutable/DoubleLinkedListLike;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/mutable/DoubleLinkedListLike<",
            "TA;TThis;>;)V"
        }
    .end annotation

    .line 117
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/collection/mutable/DoubleLinkedListLike$$anonfun$apply$2;->$outer:Lscala/collection/mutable/DoubleLinkedListLike;

    iput p2, p0, Lscala/collection/mutable/DoubleLinkedListLike$$anonfun$apply$2;->n$1:I

    invoke-direct {p0}, Lscala/runtime/AbstractFunction0;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply()Ljava/lang/Object;
    .locals 1

    .line 117
    invoke-virtual {p0}, Lscala/collection/mutable/DoubleLinkedListLike$$anonfun$apply$2;->apply()Lscala/runtime/Nothing$;

    move-result-object v0

    throw v0
.end method

.method public final apply()Lscala/runtime/Nothing$;
    .locals 2

    .line 117
    iget-object v0, p0, Lscala/collection/mutable/DoubleLinkedListLike$$anonfun$apply$2;->$outer:Lscala/collection/mutable/DoubleLinkedListLike;

    iget v1, p0, Lscala/collection/mutable/DoubleLinkedListLike$$anonfun$apply$2;->n$1:I

    invoke-static {v0, v1}, Lscala/collection/mutable/DoubleLinkedListLike$class;->scala$collection$mutable$DoubleLinkedListLike$$outofbounds(Lscala/collection/mutable/DoubleLinkedListLike;I)Lscala/runtime/Nothing$;

    move-result-object v0

    return-object v0
.end method
