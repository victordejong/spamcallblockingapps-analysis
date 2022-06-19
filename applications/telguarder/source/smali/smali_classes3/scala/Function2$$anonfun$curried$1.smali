.class public final Lscala/Function2$$anonfun$curried$1;
.super Lscala/runtime/AbstractFunction1;
.source "Function2.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/Function2;->curried()Lscala/Function1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction1<",
        "TT1;",
        "Lscala/Function1<",
        "TT2;TR;>;>;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field public final synthetic $outer:Lscala/Function2;


# direct methods
.method public constructor <init>(Lscala/Function2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function2<",
            "TT1;TT2;TR;>;)V"
        }
    .end annotation

    .line 39
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/Function2$$anonfun$curried$1;->$outer:Lscala/Function2;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 39
    invoke-virtual {p0, p1}, Lscala/Function2$$anonfun$curried$1;->apply(Ljava/lang/Object;)Lscala/Function1;

    move-result-object p1

    return-object p1
.end method

.method public final apply(Ljava/lang/Object;)Lscala/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT1;)",
            "Lscala/Function1<",
            "TT2;TR;>;"
        }
    .end annotation

    .line 39
    new-instance v0, Lscala/Function2$$anonfun$curried$1$$anonfun$apply$1;

    invoke-direct {v0, p0, p1}, Lscala/Function2$$anonfun$curried$1$$anonfun$apply$1;-><init>(Lscala/Function2$$anonfun$curried$1;Ljava/lang/Object;)V

    return-object v0
.end method

.method public synthetic scala$Function2$$anonfun$$$outer()Lscala/Function2;
    .locals 1

    .line 39
    iget-object v0, p0, Lscala/Function2$$anonfun$curried$1;->$outer:Lscala/Function2;

    return-object v0
.end method
