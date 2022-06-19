.class public final Lscala/collection/convert/Wrappers$JDictionaryWrapper$$anonfun$iterator$1;
.super Lscala/runtime/AbstractFunction1;
.source "Wrappers.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/convert/Wrappers$JDictionaryWrapper;->iterator()Lscala/collection/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction1<",
        "TA;",
        "Lscala/Tuple2<",
        "TA;TB;>;>;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field private final synthetic $outer:Lscala/collection/convert/Wrappers$JDictionaryWrapper;


# direct methods
.method public constructor <init>(Lscala/collection/convert/Wrappers$JDictionaryWrapper;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/convert/Wrappers$JDictionaryWrapper<",
            "TA;TB;>;)V"
        }
    .end annotation

    .line 403
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/collection/convert/Wrappers$JDictionaryWrapper$$anonfun$iterator$1;->$outer:Lscala/collection/convert/Wrappers$JDictionaryWrapper;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 403
    invoke-virtual {p0, p1}, Lscala/collection/convert/Wrappers$JDictionaryWrapper$$anonfun$iterator$1;->apply(Ljava/lang/Object;)Lscala/Tuple2;

    move-result-object p1

    return-object p1
.end method

.method public final apply(Ljava/lang/Object;)Lscala/Tuple2;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)",
            "Lscala/Tuple2<",
            "TA;TB;>;"
        }
    .end annotation

    .line 403
    new-instance v0, Lscala/Tuple2;

    iget-object v1, p0, Lscala/collection/convert/Wrappers$JDictionaryWrapper$$anonfun$iterator$1;->$outer:Lscala/collection/convert/Wrappers$JDictionaryWrapper;

    invoke-virtual {v1}, Lscala/collection/convert/Wrappers$JDictionaryWrapper;->underlying()Ljava/util/Dictionary;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/Dictionary;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lscala/Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method
