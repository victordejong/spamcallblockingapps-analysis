.class public final Lscala/beans/ScalaBeanInfo$$anonfun$2;
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
        "Ljava/beans/MethodDescriptor;",
        ">;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# direct methods
.method public constructor <init>(Lscala/beans/ScalaBeanInfo;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/reflect/Method;)Ljava/beans/MethodDescriptor;
    .locals 1

    .line 28
    new-instance v0, Ljava/beans/MethodDescriptor;

    invoke-direct {v0, p1}, Ljava/beans/MethodDescriptor;-><init>(Ljava/lang/reflect/Method;)V

    return-object v0
.end method

.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 27
    check-cast p1, Ljava/lang/reflect/Method;

    invoke-virtual {p0, p1}, Lscala/beans/ScalaBeanInfo$$anonfun$2;->apply(Ljava/lang/reflect/Method;)Ljava/beans/MethodDescriptor;

    move-result-object p1

    return-object p1
.end method
