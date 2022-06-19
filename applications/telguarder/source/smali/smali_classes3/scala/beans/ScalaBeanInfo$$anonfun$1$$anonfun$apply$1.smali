.class public final Lscala/beans/ScalaBeanInfo$$anonfun$1$$anonfun$apply$1;
.super Lscala/runtime/AbstractFunction1;
.source "ScalaBeanInfo.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/beans/ScalaBeanInfo$$anonfun$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction1<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field private final m$1:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>(Lscala/beans/ScalaBeanInfo$$anonfun$1;Ljava/lang/reflect/Method;)V
    .locals 0

    .line 27
    iput-object p2, p0, Lscala/beans/ScalaBeanInfo$$anonfun$1$$anonfun$apply$1;->m$1:Ljava/lang/reflect/Method;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 27
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lscala/beans/ScalaBeanInfo$$anonfun$1$$anonfun$apply$1;->apply(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->boxToBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public final apply(Ljava/lang/String;)Z
    .locals 1

    .line 27
    iget-object v0, p0, Lscala/beans/ScalaBeanInfo$$anonfun$1$$anonfun$apply$1;->m$1:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    if-nez p1, :cond_0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    :goto_1
    return p1
.end method
