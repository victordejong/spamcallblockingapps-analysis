.class public final Lscala/Enumeration$$anonfun$scala$Enumeration$$populateNameMap$1;
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


# direct methods
.method public constructor <init>(Lscala/Enumeration;)V
    .locals 0

    .line 165
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/Enumeration$$anonfun$scala$Enumeration$$populateNameMap$1;->$outer:Lscala/Enumeration;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 165
    check-cast p1, Ljava/lang/reflect/Method;

    invoke-virtual {p0, p1}, Lscala/Enumeration$$anonfun$scala$Enumeration$$populateNameMap$1;->apply(Ljava/lang/reflect/Method;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final apply(Ljava/lang/reflect/Method;)Ljava/lang/Object;
    .locals 5

    .line 166
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    .line 168
    iget-object v1, p0, Lscala/Enumeration$$anonfun$scala$Enumeration$$populateNameMap$1;->$outer:Lscala/Enumeration;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {p1, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lscala/Enumeration$Value;

    .line 170
    invoke-virtual {p1}, Lscala/Enumeration$Value;->scala$Enumeration$$outerEnum()Lscala/Enumeration;

    move-result-object v1

    iget-object v3, p0, Lscala/Enumeration$$anonfun$scala$Enumeration$$populateNameMap$1;->$outer:Lscala/Enumeration;

    if-ne v1, v3, :cond_0

    .line 171
    const-class v1, Lscala/Enumeration$Val;

    new-array v3, v2, [Ljava/lang/Class;

    const-string v4, "id"

    invoke-virtual {v1, v4, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToInt(Ljava/lang/Object;)I

    move-result p1

    .line 172
    iget-object v1, p0, Lscala/Enumeration$$anonfun$scala$Enumeration$$populateNameMap$1;->$outer:Lscala/Enumeration;

    invoke-virtual {v1}, Lscala/Enumeration;->scala$Enumeration$$nmap()Lscala/collection/mutable/Map;

    move-result-object v1

    new-instance v2, Lscala/Tuple2;

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {v2, p1, v0}, Lscala/Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Lscala/collection/mutable/Map;->$plus$eq(Lscala/Tuple2;)Lscala/collection/mutable/MapLike;

    move-result-object p1

    goto :goto_0

    .line 170
    :cond_0
    sget-object p1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    :goto_0
    return-object p1
.end method
