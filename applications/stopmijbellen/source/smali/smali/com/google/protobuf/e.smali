.class public final Lcom/google/protobuf/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/g0;


# instance fields
.field public final a:Lcom/google/protobuf/CodedOutputStream;


# direct methods
.method public constructor <init>(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcom/google/protobuf/k;->a:Ljava/nio/charset/Charset;

    iput-object p1, p0, Lcom/google/protobuf/e;->a:Lcom/google/protobuf/CodedOutputStream;

    .line 3
    iput-object p0, p1, Lcom/google/protobuf/CodedOutputStream;->a:Lcom/google/protobuf/e;

    return-void
.end method


# virtual methods
.method public a(ID)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/e;->a:Lcom/google/protobuf/CodedOutputStream;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p2

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/protobuf/CodedOutputStream;->w0(IJ)V

    return-void
.end method

.method public b(IF)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/e;->a:Lcom/google/protobuf/CodedOutputStream;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p2

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/CodedOutputStream;->u0(II)V

    return-void
.end method

.method public c(ILjava/lang/Object;Lx6/w;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/e;->a:Lcom/google/protobuf/CodedOutputStream;

    check-cast p2, Lcom/google/protobuf/u;

    const/4 v1, 0x3

    .line 2
    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/CodedOutputStream;->G0(II)V

    .line 3
    iget-object v1, v0, Lcom/google/protobuf/CodedOutputStream;->a:Lcom/google/protobuf/e;

    invoke-interface {p3, p2, v1}, Lx6/w;->b(Ljava/lang/Object;Lcom/google/protobuf/g0;)V

    const/4 p2, 0x4

    .line 4
    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/CodedOutputStream;->G0(II)V

    return-void
.end method

.method public d(ILjava/lang/Object;Lx6/w;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/e;->a:Lcom/google/protobuf/CodedOutputStream;

    check-cast p2, Lcom/google/protobuf/u;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/protobuf/CodedOutputStream;->A0(ILcom/google/protobuf/u;Lx6/w;)V

    return-void
.end method

.method public final e(ILjava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    instance-of v0, p2, Lx6/c;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/e;->a:Lcom/google/protobuf/CodedOutputStream;

    check-cast p2, Lx6/c;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/CodedOutputStream;->D0(ILx6/c;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/e;->a:Lcom/google/protobuf/CodedOutputStream;

    check-cast p2, Lcom/google/protobuf/u;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/CodedOutputStream;->C0(ILcom/google/protobuf/u;)V

    :goto_0
    return-void
.end method

.method public f(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/e;->a:Lcom/google/protobuf/CodedOutputStream;

    .line 2
    invoke-static {p2}, Lcom/google/protobuf/CodedOutputStream;->n0(I)I

    move-result p2

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/CodedOutputStream;->H0(II)V

    return-void
.end method

.method public g(IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/e;->a:Lcom/google/protobuf/CodedOutputStream;

    .line 2
    invoke-static {p2, p3}, Lcom/google/protobuf/CodedOutputStream;->o0(J)J

    move-result-wide p2

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/protobuf/CodedOutputStream;->J0(IJ)V

    return-void
.end method
