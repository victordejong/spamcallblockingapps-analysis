.class public abstract Ldp;
.super Lph;
.source ""


# instance fields
.field public final b:Lph;


# direct methods
.method public constructor <init>(Lph;)V
    .locals 0

    invoke-direct {p0}, Lph;-><init>()V

    iput-object p1, p0, Ldp;->b:Lph;

    return-void
.end method


# virtual methods
.method public a(Z)I
    .locals 1

    iget-object v0, p0, Ldp;->b:Lph;

    invoke-virtual {v0, p1}, Lph;->a(Z)I

    move-result p1

    return p1
.end method

.method public b(Ljava/lang/Object;)I
    .locals 1

    iget-object v0, p0, Ldp;->b:Lph;

    invoke-virtual {v0, p1}, Lph;->b(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public c(Z)I
    .locals 1

    iget-object v0, p0, Ldp;->b:Lph;

    invoke-virtual {v0, p1}, Lph;->c(Z)I

    move-result p1

    return p1
.end method

.method public e(IIZ)I
    .locals 1

    iget-object v0, p0, Ldp;->b:Lph;

    invoke-virtual {v0, p1, p2, p3}, Lph;->e(IIZ)I

    move-result p1

    return p1
.end method

.method public i()I
    .locals 1

    iget-object v0, p0, Ldp;->b:Lph;

    invoke-virtual {v0}, Lph;->i()I

    move-result v0

    return v0
.end method

.method public l(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Ldp;->b:Lph;

    invoke-virtual {v0, p1}, Lph;->l(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public o(ILph$c;ZJ)Lph$c;
    .locals 6

    iget-object v0, p0, Ldp;->b:Lph;

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lph;->o(ILph$c;ZJ)Lph$c;

    move-result-object p1

    return-object p1
.end method

.method public p()I
    .locals 1

    iget-object v0, p0, Ldp;->b:Lph;

    invoke-virtual {v0}, Lph;->p()I

    move-result v0

    return v0
.end method
