.class Lcom/google/protobuf/i1;
.super Lcom/google/protobuf/g1;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/g1<",
        "Lcom/google/protobuf/h1;",
        "Lcom/google/protobuf/h1;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/protobuf/g1;-><init>()V

    return-void
.end method


# virtual methods
.method A(Ljava/lang/Object;)Lcom/google/protobuf/h1;
    .locals 0

    check-cast p1, Lcom/google/protobuf/GeneratedMessageLite;

    iget-object p1, p1, Lcom/google/protobuf/GeneratedMessageLite;->unknownFields:Lcom/google/protobuf/h1;

    return-object p1
.end method

.method B(Lcom/google/protobuf/h1;)I
    .locals 0

    invoke-virtual {p1}, Lcom/google/protobuf/h1;->d()I

    move-result p1

    return p1
.end method

.method C(Lcom/google/protobuf/h1;)I
    .locals 0

    invoke-virtual {p1}, Lcom/google/protobuf/h1;->e()I

    move-result p1

    return p1
.end method

.method D(Lcom/google/protobuf/h1;Lcom/google/protobuf/h1;)Lcom/google/protobuf/h1;
    .locals 1

    invoke-static {}, Lcom/google/protobuf/h1;->c()Lcom/google/protobuf/h1;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/protobuf/h1;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1, p2}, Lcom/google/protobuf/h1;->i(Lcom/google/protobuf/h1;Lcom/google/protobuf/h1;)Lcom/google/protobuf/h1;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method E()Lcom/google/protobuf/h1;
    .locals 1

    invoke-static {}, Lcom/google/protobuf/h1;->j()Lcom/google/protobuf/h1;

    move-result-object v0

    return-object v0
.end method

.method F(Ljava/lang/Object;Lcom/google/protobuf/h1;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/i1;->G(Ljava/lang/Object;Lcom/google/protobuf/h1;)V

    return-void
.end method

.method G(Ljava/lang/Object;Lcom/google/protobuf/h1;)V
    .locals 0

    check-cast p1, Lcom/google/protobuf/GeneratedMessageLite;

    iput-object p2, p1, Lcom/google/protobuf/GeneratedMessageLite;->unknownFields:Lcom/google/protobuf/h1;

    return-void
.end method

.method H(Lcom/google/protobuf/h1;)Lcom/google/protobuf/h1;
    .locals 0

    invoke-virtual {p1}, Lcom/google/protobuf/h1;->h()V

    return-object p1
.end method

.method I(Lcom/google/protobuf/h1;Lcom/google/protobuf/Writer;)V
    .locals 0

    invoke-virtual {p1, p2}, Lcom/google/protobuf/h1;->o(Lcom/google/protobuf/Writer;)V

    return-void
.end method

.method J(Lcom/google/protobuf/h1;Lcom/google/protobuf/Writer;)V
    .locals 0

    invoke-virtual {p1, p2}, Lcom/google/protobuf/h1;->q(Lcom/google/protobuf/Writer;)V

    return-void
.end method

.method bridge synthetic a(Ljava/lang/Object;II)V
    .locals 0

    check-cast p1, Lcom/google/protobuf/h1;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/protobuf/i1;->u(Lcom/google/protobuf/h1;II)V

    return-void
.end method

.method bridge synthetic b(Ljava/lang/Object;IJ)V
    .locals 0

    check-cast p1, Lcom/google/protobuf/h1;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/protobuf/i1;->v(Lcom/google/protobuf/h1;IJ)V

    return-void
.end method

.method bridge synthetic c(Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/protobuf/h1;

    check-cast p3, Lcom/google/protobuf/h1;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/protobuf/i1;->w(Lcom/google/protobuf/h1;ILcom/google/protobuf/h1;)V

    return-void
.end method

.method bridge synthetic d(Ljava/lang/Object;ILcom/google/protobuf/ByteString;)V
    .locals 0

    check-cast p1, Lcom/google/protobuf/h1;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/protobuf/i1;->x(Lcom/google/protobuf/h1;ILcom/google/protobuf/ByteString;)V

    return-void
.end method

.method bridge synthetic e(Ljava/lang/Object;IJ)V
    .locals 0

    check-cast p1, Lcom/google/protobuf/h1;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/protobuf/i1;->y(Lcom/google/protobuf/h1;IJ)V

    return-void
.end method

.method bridge synthetic f(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/protobuf/i1;->z(Ljava/lang/Object;)Lcom/google/protobuf/h1;

    move-result-object p1

    return-object p1
.end method

.method bridge synthetic g(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/protobuf/i1;->A(Ljava/lang/Object;)Lcom/google/protobuf/h1;

    move-result-object p1

    return-object p1
.end method

.method bridge synthetic h(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/google/protobuf/h1;

    invoke-virtual {p0, p1}, Lcom/google/protobuf/i1;->B(Lcom/google/protobuf/h1;)I

    move-result p1

    return p1
.end method

.method bridge synthetic i(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/google/protobuf/h1;

    invoke-virtual {p0, p1}, Lcom/google/protobuf/i1;->C(Lcom/google/protobuf/h1;)I

    move-result p1

    return p1
.end method

.method j(Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/protobuf/i1;->A(Ljava/lang/Object;)Lcom/google/protobuf/h1;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/h1;->h()V

    return-void
.end method

.method bridge synthetic k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/google/protobuf/h1;

    check-cast p2, Lcom/google/protobuf/h1;

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/i1;->D(Lcom/google/protobuf/h1;Lcom/google/protobuf/h1;)Lcom/google/protobuf/h1;

    move-result-object p1

    return-object p1
.end method

.method bridge synthetic n()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/i1;->E()Lcom/google/protobuf/h1;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic o(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/google/protobuf/h1;

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/i1;->F(Ljava/lang/Object;Lcom/google/protobuf/h1;)V

    return-void
.end method

.method bridge synthetic p(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/google/protobuf/h1;

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/i1;->G(Ljava/lang/Object;Lcom/google/protobuf/h1;)V

    return-void
.end method

.method q(Lcom/google/protobuf/z0;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method bridge synthetic r(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/google/protobuf/h1;

    invoke-virtual {p0, p1}, Lcom/google/protobuf/i1;->H(Lcom/google/protobuf/h1;)Lcom/google/protobuf/h1;

    return-object p1
.end method

.method bridge synthetic s(Ljava/lang/Object;Lcom/google/protobuf/Writer;)V
    .locals 0

    check-cast p1, Lcom/google/protobuf/h1;

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/i1;->I(Lcom/google/protobuf/h1;Lcom/google/protobuf/Writer;)V

    return-void
.end method

.method bridge synthetic t(Ljava/lang/Object;Lcom/google/protobuf/Writer;)V
    .locals 0

    check-cast p1, Lcom/google/protobuf/h1;

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/i1;->J(Lcom/google/protobuf/h1;Lcom/google/protobuf/Writer;)V

    return-void
.end method

.method u(Lcom/google/protobuf/h1;II)V
    .locals 1

    const/4 v0, 0x5

    invoke-static {p2, v0}, Lcom/google/protobuf/WireFormat;->c(II)I

    move-result p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/google/protobuf/h1;->m(ILjava/lang/Object;)V

    return-void
.end method

.method v(Lcom/google/protobuf/h1;IJ)V
    .locals 1

    const/4 v0, 0x1

    invoke-static {p2, v0}, Lcom/google/protobuf/WireFormat;->c(II)I

    move-result p2

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/google/protobuf/h1;->m(ILjava/lang/Object;)V

    return-void
.end method

.method w(Lcom/google/protobuf/h1;ILcom/google/protobuf/h1;)V
    .locals 1

    const/4 v0, 0x3

    invoke-static {p2, v0}, Lcom/google/protobuf/WireFormat;->c(II)I

    move-result p2

    invoke-virtual {p1, p2, p3}, Lcom/google/protobuf/h1;->m(ILjava/lang/Object;)V

    return-void
.end method

.method x(Lcom/google/protobuf/h1;ILcom/google/protobuf/ByteString;)V
    .locals 1

    const/4 v0, 0x2

    invoke-static {p2, v0}, Lcom/google/protobuf/WireFormat;->c(II)I

    move-result p2

    invoke-virtual {p1, p2, p3}, Lcom/google/protobuf/h1;->m(ILjava/lang/Object;)V

    return-void
.end method

.method y(Lcom/google/protobuf/h1;IJ)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lcom/google/protobuf/WireFormat;->c(II)I

    move-result p2

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/google/protobuf/h1;->m(ILjava/lang/Object;)V

    return-void
.end method

.method z(Ljava/lang/Object;)Lcom/google/protobuf/h1;
    .locals 2

    invoke-virtual {p0, p1}, Lcom/google/protobuf/i1;->A(Ljava/lang/Object;)Lcom/google/protobuf/h1;

    move-result-object v0

    invoke-static {}, Lcom/google/protobuf/h1;->c()Lcom/google/protobuf/h1;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/google/protobuf/h1;->j()Lcom/google/protobuf/h1;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/i1;->G(Ljava/lang/Object;Lcom/google/protobuf/h1;)V

    :cond_0
    return-object v0
.end method
