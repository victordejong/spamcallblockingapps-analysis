.class public La/i;
.super La/t;
.source "ForwardingTimeout.java"


# instance fields
.field private a:La/t;


# direct methods
.method public constructor <init>(La/t;)V
    .locals 2

    .prologue
    .line 25
    invoke-direct {p0}, La/t;-><init>()V

    .line 26
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "delegate == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 27
    :cond_0
    iput-object p1, p0, La/i;->a:La/t;

    .line 28
    return-void
.end method


# virtual methods
.method public H_()J
    .locals 2

    .prologue
    .line 46
    iget-object v0, p0, La/i;->a:La/t;

    invoke-virtual {v0}, La/t;->H_()J

    move-result-wide v0

    return-wide v0
.end method

.method public I_()Z
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, La/i;->a:La/t;

    invoke-virtual {v0}, La/t;->I_()Z

    move-result v0

    return v0
.end method

.method public J_()La/t;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, La/i;->a:La/t;

    invoke-virtual {v0}, La/t;->J_()La/t;

    move-result-object v0

    return-object v0
.end method

.method public final a(La/t;)La/i;
    .locals 2

    .prologue
    .line 36
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "delegate == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 37
    :cond_0
    iput-object p1, p0, La/i;->a:La/t;

    .line 38
    return-object p0
.end method

.method public final a()La/t;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, La/i;->a:La/t;

    return-object v0
.end method

.method public a(J)La/t;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, La/i;->a:La/t;

    invoke-virtual {v0, p1, p2}, La/t;->a(J)La/t;

    move-result-object v0

    return-object v0
.end method

.method public a(JLjava/util/concurrent/TimeUnit;)La/t;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, La/i;->a:La/t;

    invoke-virtual {v0, p1, p2, p3}, La/t;->a(JLjava/util/concurrent/TimeUnit;)La/t;

    move-result-object v0

    return-object v0
.end method

.method public d()J
    .locals 2

    .prologue
    .line 54
    iget-object v0, p0, La/i;->a:La/t;

    invoke-virtual {v0}, La/t;->d()J

    move-result-wide v0

    return-wide v0
.end method

.method public f()La/t;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, La/i;->a:La/t;

    invoke-virtual {v0}, La/t;->f()La/t;

    move-result-object v0

    return-object v0
.end method

.method public g()V
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, La/i;->a:La/t;

    invoke-virtual {v0}, La/t;->g()V

    .line 71
    return-void
.end method
