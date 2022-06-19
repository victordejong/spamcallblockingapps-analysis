.class public final Lscala/Enumeration$$anonfun$1;
.super Lscala/runtime/AbstractFunction1;
.source "Enumeration.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/Enumeration;->scala$Enumeration$$populateNameMap()V
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
.field private final synthetic $outer:Lscala/Enumeration;

.field private final fields$1:[Ljava/lang/reflect/Field;


# direct methods
.method public constructor <init>(Lscala/Enumeration;[Ljava/lang/reflect/Field;)V
    .locals 0

    .line 161
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/Enumeration$$anonfun$1;->$outer:Lscala/Enumeration;

    iput-object p2, p0, Lscala/Enumeration$$anonfun$1;->fields$1:[Ljava/lang/reflect/Field;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 161
    check-cast p1, Ljava/lang/reflect/Method;

    invoke-virtual {p0, p1}, Lscala/Enumeration$$anonfun$1;->apply(Ljava/lang/reflect/Method;)Z

    move-result p1

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->boxToBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public final apply(Ljava/lang/reflect/Method;)Z
    .locals 2

    .line 161
    sget-object v0, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lscala/Predef$;->refArrayOps([Ljava/lang/Object;)Lscala/collection/mutable/ArrayOps;

    move-result-object v0

    invoke-interface {v0}, Lscala/collection/mutable/ArrayOps;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 162
    const-class v0, Lscala/Enumeration$Value;

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 163
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-class v1, Lscala/Enumeration;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 164
    :goto_0
    iget-object v0, p0, Lscala/Enumeration$$anonfun$1;->$outer:Lscala/Enumeration;

    iget-object v1, p0, Lscala/Enumeration$$anonfun$1;->fields$1:[Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1, v1}, Lscala/Enumeration;->scala$Enumeration$$isValDef$1(Ljava/lang/reflect/Method;[Ljava/lang/reflect/Field;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return p1
.end method
