.class public final Lscala/collection/Iterator$$anonfun$copyToArray$1;
.super Lscala/runtime/AbstractFunction0;
.source "Iterator.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/Iterator;->copyToArray(Ljava/lang/Object;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction0<",
        "Ljava/lang/String;",
        ">;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field public final start$4:I

.field public final xs$2:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lscala/collection/Iterator;Ljava/lang/Object;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/Iterator<",
            "TA;>;)V"
        }
    .end annotation

    .line 1150
    iput-object p2, p0, Lscala/collection/Iterator$$anonfun$copyToArray$1;->xs$2:Ljava/lang/Object;

    iput p3, p0, Lscala/collection/Iterator$$anonfun$copyToArray$1;->start$4:I

    invoke-direct {p0}, Lscala/runtime/AbstractFunction0;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply()Ljava/lang/Object;
    .locals 1

    .line 1150
    invoke-virtual {p0}, Lscala/collection/Iterator$$anonfun$copyToArray$1;->apply()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final apply()Ljava/lang/String;
    .locals 5

    .line 1150
    new-instance v0, Lscala/StringContext;

    sget-object v1, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    const-string v2, "start "

    const-string v3, " out of range "

    const-string v4, ""

    filled-new-array {v2, v3, v4}, [Ljava/lang/String;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lscala/Predef$;->wrapRefArray([Ljava/lang/Object;)Lscala/collection/mutable/WrappedArray;

    move-result-object v1

    invoke-direct {v0, v1}, Lscala/StringContext;-><init>(Lscala/collection/Seq;)V

    sget-object v1, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lscala/collection/Iterator$$anonfun$copyToArray$1;->start$4:I

    invoke-static {v3}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    sget-object v3, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    iget-object v4, p0, Lscala/collection/Iterator$$anonfun$copyToArray$1;->xs$2:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Lscala/runtime/ScalaRunTime$;->array_length(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-virtual {v1, v2}, Lscala/Predef$;->genericWrapArray(Ljava/lang/Object;)Lscala/collection/mutable/WrappedArray;

    move-result-object v1

    invoke-virtual {v0, v1}, Lscala/StringContext;->s(Lscala/collection/Seq;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
