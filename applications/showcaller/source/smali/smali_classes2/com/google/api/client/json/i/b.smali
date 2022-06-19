.class Lcom/google/api/client/json/i/b;
.super Lcom/google/api/client/json/d;
.source "GsonGenerator.java"


# instance fields
.field private final d:Lcom/google/gson/stream/b;

.field private final e:Lcom/google/api/client/json/i/a;


# direct methods
.method constructor <init>(Lcom/google/api/client/json/i/a;Lcom/google/gson/stream/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/api/client/json/d;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/api/client/json/i/b;->e:Lcom/google/api/client/json/i/a;

    .line 3
    iput-object p2, p0, Lcom/google/api/client/json/i/b;->d:Lcom/google/gson/stream/b;

    const/4 p1, 0x1

    .line 4
    invoke-virtual {p2, p1}, Lcom/google/gson/stream/b;->L(Z)V

    return-void
.end method


# virtual methods
.method public A(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/api/client/json/i/b;->d:Lcom/google/gson/stream/b;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/stream/b;->Q(J)Lcom/google/gson/stream/b;

    return-void
.end method

.method public C(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/api/client/json/i/b;->d:Lcom/google/gson/stream/b;

    invoke-virtual {v0, p1, p2}, Lcom/google/gson/stream/b;->Q(J)Lcom/google/gson/stream/b;

    return-void
.end method

.method public D(Ljava/math/BigDecimal;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/api/client/json/i/b;->d:Lcom/google/gson/stream/b;

    invoke-virtual {v0, p1}, Lcom/google/gson/stream/b;->R(Ljava/lang/Number;)Lcom/google/gson/stream/b;

    return-void
.end method

.method public E(Ljava/math/BigInteger;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/api/client/json/i/b;->d:Lcom/google/gson/stream/b;

    invoke-virtual {v0, p1}, Lcom/google/gson/stream/b;->R(Ljava/lang/Number;)Lcom/google/gson/stream/b;

    return-void
.end method

.method public I()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/api/client/json/i/b;->d:Lcom/google/gson/stream/b;

    invoke-virtual {v0}, Lcom/google/gson/stream/b;->f()Lcom/google/gson/stream/b;

    return-void
.end method

.method public L()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/api/client/json/i/b;->d:Lcom/google/gson/stream/b;

    invoke-virtual {v0}, Lcom/google/gson/stream/b;->g()Lcom/google/gson/stream/b;

    return-void
.end method

.method public N(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/api/client/json/i/b;->d:Lcom/google/gson/stream/b;

    invoke-virtual {v0, p1}, Lcom/google/gson/stream/b;->U(Ljava/lang/String;)Lcom/google/gson/stream/b;

    return-void
.end method

.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/api/client/json/i/b;->d:Lcom/google/gson/stream/b;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Lcom/google/gson/stream/b;->I(Ljava/lang/String;)V

    return-void
.end method

.method public close()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/api/client/json/i/b;->d:Lcom/google/gson/stream/b;

    invoke-virtual {v0}, Lcom/google/gson/stream/b;->close()V

    return-void
.end method

.method public flush()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/api/client/json/i/b;->d:Lcom/google/gson/stream/b;

    invoke-virtual {v0}, Lcom/google/gson/stream/b;->flush()V

    return-void
.end method

.method public g(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/api/client/json/i/b;->d:Lcom/google/gson/stream/b;

    invoke-virtual {v0, p1}, Lcom/google/gson/stream/b;->W(Z)Lcom/google/gson/stream/b;

    return-void
.end method

.method public k()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/api/client/json/i/b;->d:Lcom/google/gson/stream/b;

    invoke-virtual {v0}, Lcom/google/gson/stream/b;->p()Lcom/google/gson/stream/b;

    return-void
.end method

.method public p()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/api/client/json/i/b;->d:Lcom/google/gson/stream/b;

    invoke-virtual {v0}, Lcom/google/gson/stream/b;->q()Lcom/google/gson/stream/b;

    return-void
.end method

.method public q(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/api/client/json/i/b;->d:Lcom/google/gson/stream/b;

    invoke-virtual {v0, p1}, Lcom/google/gson/stream/b;->u(Ljava/lang/String;)Lcom/google/gson/stream/b;

    return-void
.end method

.method public u()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/api/client/json/i/b;->d:Lcom/google/gson/stream/b;

    invoke-virtual {v0}, Lcom/google/gson/stream/b;->z()Lcom/google/gson/stream/b;

    return-void
.end method

.method public y(D)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/api/client/json/i/b;->d:Lcom/google/gson/stream/b;

    invoke-virtual {v0, p1, p2}, Lcom/google/gson/stream/b;->P(D)Lcom/google/gson/stream/b;

    return-void
.end method

.method public z(F)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/api/client/json/i/b;->d:Lcom/google/gson/stream/b;

    float-to-double v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/stream/b;->P(D)Lcom/google/gson/stream/b;

    return-void
.end method
