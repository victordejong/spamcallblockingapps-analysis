.class public final Lcom/google/protobuf/i$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/h$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/protobuf/h$a<",
        "Lcom/google/protobuf/i$d;",
        ">;"
    }
.end annotation


# virtual methods
.method public A()Lx6/c0;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public C(Lcom/google/protobuf/u$a;Lcom/google/protobuf/u;)Lcom/google/protobuf/u$a;
    .locals 0

    .line 1
    check-cast p1, Lcom/google/protobuf/i$a;

    check-cast p2, Lcom/google/protobuf/i;

    invoke-virtual {p1, p2}, Lcom/google/protobuf/i$a;->o(Lcom/google/protobuf/i;)Lcom/google/protobuf/i$a;

    return-object p1
.end method

.method public E()Lx6/d0;
    .locals 1

    const/4 v0, 0x0

    .line 1
    throw v0
.end method

.method public F()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/google/protobuf/i$d;

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    return p1
.end method

.method public y()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public z()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
