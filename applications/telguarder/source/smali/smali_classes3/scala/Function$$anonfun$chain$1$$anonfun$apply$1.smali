.class public final Lscala/Function$$anonfun$chain$1$$anonfun$apply$1;
.super Lscala/runtime/AbstractFunction2;
.source "Function.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/Function$$anonfun$chain$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction2<",
        "Ta;",
        "Lscala/Function1<",
        "Ta;Ta;>;Ta;>;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# direct methods
.method public constructor <init>(Lscala/Function$$anonfun$chain$1;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Lscala/runtime/AbstractFunction2;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 24
    check-cast p2, Lscala/Function1;

    invoke-virtual {p0, p1, p2}, Lscala/Function$$anonfun$chain$1$$anonfun$apply$1;->apply(Ljava/lang/Object;Lscala/Function1;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final apply(Ljava/lang/Object;Lscala/Function1;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Ta;",
            "Lscala/Function1<",
            "Ta;Ta;>;)Ta;"
        }
    .end annotation

    .line 24
    invoke-interface {p2, p1}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
