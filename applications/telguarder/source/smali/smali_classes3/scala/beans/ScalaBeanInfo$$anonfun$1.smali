.class public final Lscala/beans/ScalaBeanInfo$$anonfun$1;
.super Lscala/runtime/AbstractFunction1;
.source "ScalaBeanInfo.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/beans/ScalaBeanInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction1<",
        "Ljava/lang/reflect/Method;",
        "Ljava/lang/Object;",
        ">;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field private final synthetic $outer:Lscala/beans/ScalaBeanInfo;


# direct methods
.method public constructor <init>(Lscala/beans/ScalaBeanInfo;)V
    .locals 0

    .line 27
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/beans/ScalaBeanInfo$$anonfun$1;->$outer:Lscala/beans/ScalaBeanInfo;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 27
    check-cast p1, Ljava/lang/reflect/Method;

    invoke-virtual {p0, p1}, Lscala/beans/ScalaBeanInfo$$anonfun$1;->apply(Ljava/lang/reflect/Method;)Z

    move-result p1

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->boxToBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public final apply(Ljava/lang/reflect/Method;)Z
    .locals 2

    .line 27
    sget-object v0, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    iget-object v1, p0, Lscala/beans/ScalaBeanInfo$$anonfun$1;->$outer:Lscala/beans/ScalaBeanInfo;

    iget-object v1, v1, Lscala/beans/ScalaBeanInfo;->scala$beans$ScalaBeanInfo$$methods:[Ljava/lang/String;

    check-cast v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lscala/Predef$;->refArrayOps([Ljava/lang/Object;)Lscala/collection/mutable/ArrayOps;

    move-result-object v0

    new-instance v1, Lscala/beans/ScalaBeanInfo$$anonfun$1$$anonfun$apply$1;

    invoke-direct {v1, p0, p1}, Lscala/beans/ScalaBeanInfo$$anonfun$1$$anonfun$apply$1;-><init>(Lscala/beans/ScalaBeanInfo$$anonfun$1;Ljava/lang/reflect/Method;)V

    invoke-interface {v0, v1}, Lscala/collection/mutable/ArrayOps;->exists(Lscala/Function1;)Z

    move-result p1

    return p1
.end method
