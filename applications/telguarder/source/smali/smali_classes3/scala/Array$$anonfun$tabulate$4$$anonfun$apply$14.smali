.class public final Lscala/Array$$anonfun$tabulate$4$$anonfun$apply$14;
.super Lscala/runtime/AbstractFunction4;
.source "Array.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/Array$$anonfun$tabulate$4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction4<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "TT;>;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field private final synthetic $outer:Lscala/Array$$anonfun$tabulate$4;

.field private final i1$4:I


# direct methods
.method public constructor <init>(Lscala/Array$$anonfun$tabulate$4;I)V
    .locals 0

    .line 381
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/Array$$anonfun$tabulate$4$$anonfun$apply$14;->$outer:Lscala/Array$$anonfun$tabulate$4;

    iput p2, p0, Lscala/Array$$anonfun$tabulate$4$$anonfun$apply$14;->i1$4:I

    invoke-direct {p0}, Lscala/runtime/AbstractFunction4;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(IIII)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII)TT;"
        }
    .end annotation

    .line 381
    iget-object v0, p0, Lscala/Array$$anonfun$tabulate$4$$anonfun$apply$14;->$outer:Lscala/Array$$anonfun$tabulate$4;

    iget-object v1, v0, Lscala/Array$$anonfun$tabulate$4;->f$1:Lscala/Function5;

    iget v0, p0, Lscala/Array$$anonfun$tabulate$4$$anonfun$apply$14;->i1$4:I

    invoke-static {v0}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p2}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {p3}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {p4}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface/range {v1 .. v6}, Lscala/Function5;->apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 381
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToInt(Ljava/lang/Object;)I

    move-result p1

    invoke-static {p2}, Lscala/runtime/BoxesRunTime;->unboxToInt(Ljava/lang/Object;)I

    move-result p2

    invoke-static {p3}, Lscala/runtime/BoxesRunTime;->unboxToInt(Ljava/lang/Object;)I

    move-result p3

    invoke-static {p4}, Lscala/runtime/BoxesRunTime;->unboxToInt(Ljava/lang/Object;)I

    move-result p4

    invoke-virtual {p0, p1, p2, p3, p4}, Lscala/Array$$anonfun$tabulate$4$$anonfun$apply$14;->apply(IIII)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
