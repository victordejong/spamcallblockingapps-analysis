.class public final Lph$b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lph;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public a:Ljava/lang/Object;

.field public b:Ljava/lang/Object;

.field public c:I

.field public d:J

.field public e:J

.field public f:Lcq;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcq;->f:Lcq;

    iput-object v0, p0, Lph$b;->f:Lcq;

    return-void
.end method


# virtual methods
.method public a(I)I
    .locals 1

    iget-object v0, p0, Lph$b;->f:Lcq;

    iget-object v0, v0, Lcq;->c:[Lcq$a;

    aget-object p1, v0, p1

    iget p1, p1, Lcq$a;->a:I

    return p1
.end method

.method public b(II)J
    .locals 2

    iget-object v0, p0, Lph$b;->f:Lcq;

    iget-object v0, v0, Lcq;->c:[Lcq$a;

    aget-object p1, v0, p1

    iget v0, p1, Lcq$a;->a:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object p1, p1, Lcq$a;->d:[J

    aget-wide v0, p1, p2

    goto :goto_0

    :cond_0
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    :goto_0
    return-wide v0
.end method

.method public c()I
    .locals 1

    iget-object v0, p0, Lph$b;->f:Lcq;

    iget v0, v0, Lcq;->a:I

    return v0
.end method

.method public d(J)I
    .locals 3

    iget-object v0, p0, Lph$b;->f:Lcq;

    iget-wide v1, p0, Lph$b;->d:J

    invoke-virtual {v0, p1, p2, v1, v2}, Lcq;->a(JJ)I

    move-result p1

    return p1
.end method

.method public e(J)I
    .locals 1

    iget-object v0, p0, Lph$b;->f:Lcq;

    invoke-virtual {v0, p1, p2}, Lcq;->b(J)I

    move-result p1

    return p1
.end method

.method public f(I)J
    .locals 3

    iget-object v0, p0, Lph$b;->f:Lcq;

    iget-object v0, v0, Lcq;->b:[J

    aget-wide v1, v0, p1

    return-wide v1
.end method

.method public g()J
    .locals 2

    iget-object v0, p0, Lph$b;->f:Lcq;

    iget-wide v0, v0, Lcq;->d:J

    return-wide v0
.end method

.method public h()J
    .locals 2

    iget-wide v0, p0, Lph$b;->d:J

    return-wide v0
.end method

.method public i(I)I
    .locals 1

    iget-object v0, p0, Lph$b;->f:Lcq;

    iget-object v0, v0, Lcq;->c:[Lcq$a;

    aget-object p1, v0, p1

    invoke-virtual {p1}, Lcq$a;->a()I

    move-result p1

    return p1
.end method

.method public j(II)I
    .locals 1

    iget-object v0, p0, Lph$b;->f:Lcq;

    iget-object v0, v0, Lcq;->c:[Lcq$a;

    aget-object p1, v0, p1

    invoke-virtual {p1, p2}, Lcq$a;->b(I)I

    move-result p1

    return p1
.end method

.method public k()J
    .locals 2

    iget-wide v0, p0, Lph$b;->e:J

    invoke-static {v0, v1}, Lcg;->b(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public l()J
    .locals 2

    iget-wide v0, p0, Lph$b;->e:J

    return-wide v0
.end method

.method public m(II)Z
    .locals 2

    iget-object v0, p0, Lph$b;->f:Lcq;

    iget-object v0, v0, Lcq;->c:[Lcq$a;

    aget-object p1, v0, p1

    iget v0, p1, Lcq$a;->a:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object p1, p1, Lcq$a;->c:[I

    aget p1, p1, p2

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public n(Ljava/lang/Object;Ljava/lang/Object;IJJ)Lph$b;
    .locals 9

    sget-object v8, Lcq;->f:Lcq;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    move-wide v6, p6

    invoke-virtual/range {v0 .. v8}, Lph$b;->o(Ljava/lang/Object;Ljava/lang/Object;IJJLcq;)Lph$b;

    return-object p0
.end method

.method public o(Ljava/lang/Object;Ljava/lang/Object;IJJLcq;)Lph$b;
    .locals 0

    iput-object p1, p0, Lph$b;->a:Ljava/lang/Object;

    iput-object p2, p0, Lph$b;->b:Ljava/lang/Object;

    iput p3, p0, Lph$b;->c:I

    iput-wide p4, p0, Lph$b;->d:J

    iput-wide p6, p0, Lph$b;->e:J

    iput-object p8, p0, Lph$b;->f:Lcq;

    return-object p0
.end method
