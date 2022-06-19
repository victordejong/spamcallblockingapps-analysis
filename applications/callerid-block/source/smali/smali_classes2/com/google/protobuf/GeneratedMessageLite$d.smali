.class final Lcom/google/protobuf/GeneratedMessageLite$d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/protobuf/t$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/GeneratedMessageLite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/protobuf/t$b<",
        "Lcom/google/protobuf/GeneratedMessageLite$d;",
        ">;"
    }
.end annotation


# instance fields
.field final b:Lcom/google/protobuf/x$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/x$d<",
            "*>;"
        }
    .end annotation
.end field

.field final c:I

.field final d:Lcom/google/protobuf/WireFormat$FieldType;

.field final e:Z

.field final f:Z


# virtual methods
.method public a(Lcom/google/protobuf/GeneratedMessageLite$d;)I
    .locals 1

    iget v0, p0, Lcom/google/protobuf/GeneratedMessageLite$d;->c:I

    iget p1, p1, Lcom/google/protobuf/GeneratedMessageLite$d;->c:I

    sub-int/2addr v0, p1

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/google/protobuf/GeneratedMessageLite$d;

    invoke-virtual {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite$d;->a(Lcom/google/protobuf/GeneratedMessageLite$d;)I

    move-result p1

    return p1
.end method

.method public d()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/protobuf/GeneratedMessageLite$d;->e:Z

    return v0
.end method

.method public e()Lcom/google/protobuf/x$d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/x$d<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$d;->b:Lcom/google/protobuf/x$d;

    return-object v0
.end method

.method public f()Lcom/google/protobuf/WireFormat$FieldType;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$d;->d:Lcom/google/protobuf/WireFormat$FieldType;

    return-object v0
.end method

.method public g(Lcom/google/protobuf/m0$a;Lcom/google/protobuf/m0;)Lcom/google/protobuf/m0$a;
    .locals 0

    check-cast p1, Lcom/google/protobuf/GeneratedMessageLite$a;

    check-cast p2, Lcom/google/protobuf/GeneratedMessageLite;

    invoke-virtual {p1, p2}, Lcom/google/protobuf/GeneratedMessageLite$a;->G(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$a;

    return-object p1
.end method

.method public getNumber()I
    .locals 1

    iget v0, p0, Lcom/google/protobuf/GeneratedMessageLite$d;->c:I

    return v0
.end method

.method public i()Lcom/google/protobuf/WireFormat$JavaType;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$d;->d:Lcom/google/protobuf/WireFormat$FieldType;

    invoke-virtual {v0}, Lcom/google/protobuf/WireFormat$FieldType;->getJavaType()Lcom/google/protobuf/WireFormat$JavaType;

    move-result-object v0

    return-object v0
.end method

.method public isPacked()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/protobuf/GeneratedMessageLite$d;->f:Z

    return v0
.end method
