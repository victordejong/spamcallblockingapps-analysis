.class public Lscala/util/control/TailCalls$Done;
.super Lscala/util/control/TailCalls$TailRec;
.source "TailCalls.scala"

# interfaces
.implements Lscala/Product;
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/util/control/TailCalls;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Done"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        ">",
        "Lscala/util/control/TailCalls$TailRec<",
        "TA;>;",
        "Lscala/Product;",
        "Lscala/Serializable;"
    }
.end annotation


# instance fields
.field private final value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TA;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)V"
        }
    .end annotation

    .line 91
    iput-object p1, p0, Lscala/util/control/TailCalls$Done;->value:Ljava/lang/Object;

    invoke-direct {p0}, Lscala/util/control/TailCalls$TailRec;-><init>()V

    invoke-static {p0}, Lscala/Product$class;->$init$(Lscala/Product;)V

    return-void
.end method


# virtual methods
.method public canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 91
    instance-of p1, p1, Lscala/util/control/TailCalls$Done;

    return p1
.end method

.method public copy(Ljava/lang/Object;)Lscala/util/control/TailCalls$Done;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(TA;)",
            "Lscala/util/control/TailCalls$Done<",
            "TA;>;"
        }
    .end annotation

    .line 91
    new-instance v0, Lscala/util/control/TailCalls$Done;

    invoke-direct {v0, p1}, Lscala/util/control/TailCalls$Done;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public copy$default$1()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">()TA;"
        }
    .end annotation

    .line 91
    invoke-virtual {p0}, Lscala/util/control/TailCalls$Done;->value()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p0, p1, :cond_5

    .line 91
    instance-of v2, p1, Lscala/util/control/TailCalls$Done;

    if-eqz v2, :cond_6

    check-cast p1, Lscala/util/control/TailCalls$Done;

    invoke-virtual {p0}, Lscala/util/control/TailCalls$Done;->value()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1}, Lscala/util/control/TailCalls$Done;->value()Ljava/lang/Object;

    move-result-object v3

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    if-nez v2, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    instance-of v4, v2, Ljava/lang/Number;

    if-eqz v4, :cond_2

    check-cast v2, Ljava/lang/Number;

    invoke-static {v2, v3}, Lscala/runtime/BoxesRunTime;->equalsNumObject(Ljava/lang/Number;Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0

    :cond_2
    instance-of v4, v2, Ljava/lang/Character;

    if-eqz v4, :cond_3

    check-cast v2, Ljava/lang/Character;

    invoke-static {v2, v3}, Lscala/runtime/BoxesRunTime;->equalsCharObject(Ljava/lang/Character;Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0

    :cond_3
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    :goto_0
    if-eqz v2, :cond_4

    invoke-virtual {p1, p0}, Lscala/util/control/TailCalls$Done;->canEqual(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 p1, 0x1

    goto :goto_1

    :cond_4
    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_6

    :cond_5
    const/4 v0, 0x1

    :cond_6
    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 91
    sget-object v0, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    invoke-virtual {v0, p0}, Lscala/runtime/ScalaRunTime$;->_hashCode(Lscala/Product;)I

    move-result v0

    return v0
.end method

.method public productArity()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public productElement(I)Ljava/lang/Object;
    .locals 1

    if-nez p1, :cond_0

    .line 91
    invoke-virtual {p0}, Lscala/util/control/TailCalls$Done;->value()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public productIterator()Lscala/collection/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Iterator<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 91
    sget-object v0, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    invoke-virtual {v0, p0}, Lscala/runtime/ScalaRunTime$;->typedProductIterator(Lscala/Product;)Lscala/collection/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public productPrefix()Ljava/lang/String;
    .locals 1

    const-string v0, "Done"

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 91
    sget-object v0, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    invoke-virtual {v0, p0}, Lscala/runtime/ScalaRunTime$;->_toString(Lscala/Product;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public value()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TA;"
        }
    .end annotation

    .line 91
    iget-object v0, p0, Lscala/util/control/TailCalls$Done;->value:Ljava/lang/Object;

    return-object v0
.end method
