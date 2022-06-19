.class public final Lscala/runtime/ScalaRunTime$$anonfun$toArray$1;
.super Lscala/runtime/AbstractFunction1;
.source "ScalaRunTime.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/runtime/ScalaRunTime$;->toArray(Lscala/collection/Seq;)[Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction1<",
        "TT;",
        "Lscala/runtime/BoxedUnit;",
        ">;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field private final arr$1:[Ljava/lang/Object;

.field private final i$1:Lscala/runtime/IntRef;


# direct methods
.method public constructor <init>([Ljava/lang/Object;Lscala/runtime/IntRef;)V
    .locals 0

    .line 151
    iput-object p1, p0, Lscala/runtime/ScalaRunTime$$anonfun$toArray$1;->arr$1:[Ljava/lang/Object;

    iput-object p2, p0, Lscala/runtime/ScalaRunTime$$anonfun$toArray$1;->i$1:Lscala/runtime/IntRef;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 151
    invoke-virtual {p0, p1}, Lscala/runtime/ScalaRunTime$$anonfun$toArray$1;->apply(Ljava/lang/Object;)V

    sget-object p1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    return-object p1
.end method

.method public final apply(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 152
    iget-object v0, p0, Lscala/runtime/ScalaRunTime$$anonfun$toArray$1;->arr$1:[Ljava/lang/Object;

    iget-object v1, p0, Lscala/runtime/ScalaRunTime$$anonfun$toArray$1;->i$1:Lscala/runtime/IntRef;

    iget v1, v1, Lscala/runtime/IntRef;->elem:I

    aput-object p1, v0, v1

    .line 153
    iget-object p1, p0, Lscala/runtime/ScalaRunTime$$anonfun$toArray$1;->i$1:Lscala/runtime/IntRef;

    iget v0, p1, Lscala/runtime/IntRef;->elem:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lscala/runtime/IntRef;->elem:I

    return-void
.end method
