.class public final Lscala/Enumeration$$anonfun$scala$Enumeration$$isValDef$1$1;
.super Lscala/runtime/AbstractFunction1;
.source "Enumeration.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/Enumeration;->scala$Enumeration$$isValDef$1(Ljava/lang/reflect/Method;[Ljava/lang/reflect/Field;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction1<",
        "Ljava/lang/reflect/Field;",
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
.method public constructor <init>(Lscala/Enumeration;Ljava/lang/reflect/Method;)V
    .locals 0

    .line 158
    iput-object p2, p0, Lscala/Enumeration$$anonfun$scala$Enumeration$$isValDef$1$1;->m$1:Ljava/lang/reflect/Method;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 158
    check-cast p1, Ljava/lang/reflect/Field;

    invoke-virtual {p0, p1}, Lscala/Enumeration$$anonfun$scala$Enumeration$$isValDef$1$1;->apply(Ljava/lang/reflect/Field;)Z

    move-result p1

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->boxToBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public final apply(Ljava/lang/reflect/Field;)Z
    .locals 2

    .line 158
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lscala/Enumeration$$anonfun$scala$Enumeration$$isValDef$1$1;->m$1:Ljava/lang/reflect/Method;

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    if-nez v0, :cond_0

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_1
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object p1

    iget-object v0, p0, Lscala/Enumeration$$anonfun$scala$Enumeration$$isValDef$1$1;->m$1:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v0

    if-nez p1, :cond_2

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_2
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    :cond_3
    const/4 p1, 0x1

    goto :goto_1

    :cond_4
    :goto_0
    const/4 p1, 0x0

    :goto_1
    return p1
.end method
