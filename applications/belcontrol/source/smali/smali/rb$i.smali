.class public Lrb$i;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "i"
.end annotation


# instance fields
.field public final a:Lrb;


# direct methods
.method public constructor <init>(Lrb;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lrb$i;->a:Lrb;

    return-void
.end method


# virtual methods
.method public a()Lrb;
    .locals 1

    iget-object v0, p0, Lrb$i;->a:Lrb;

    return-object v0
.end method

.method public b()Lrb;
    .locals 1

    iget-object v0, p0, Lrb$i;->a:Lrb;

    return-object v0
.end method

.method public c()Lrb;
    .locals 1

    iget-object v0, p0, Lrb$i;->a:Lrb;

    return-object v0
.end method

.method public d()Lsa;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public e()Lt8;
    .locals 1

    invoke-virtual {p0}, Lrb$i;->g()Lt8;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lrb$i;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lrb$i;

    invoke-virtual {p0}, Lrb$i;->j()Z

    move-result v1

    invoke-virtual {p1}, Lrb$i;->j()Z

    move-result v3

    if-ne v1, v3, :cond_2

    invoke-virtual {p0}, Lrb$i;->i()Z

    move-result v1

    invoke-virtual {p1}, Lrb$i;->i()Z

    move-result v3

    if-ne v1, v3, :cond_2

    invoke-virtual {p0}, Lrb$i;->g()Lt8;

    move-result-object v1

    invoke-virtual {p1}, Lrb$i;->g()Lt8;

    move-result-object v3

    invoke-static {v1, v3}, Lja;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lrb$i;->f()Lt8;

    move-result-object v1

    invoke-virtual {p1}, Lrb$i;->f()Lt8;

    move-result-object v3

    invoke-static {v1, v3}, Lja;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lrb$i;->d()Lsa;

    move-result-object v1

    invoke-virtual {p1}, Lrb$i;->d()Lsa;

    move-result-object p1

    invoke-static {v1, p1}, Lja;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public f()Lt8;
    .locals 1

    sget-object v0, Lt8;->e:Lt8;

    return-object v0
.end method

.method public g()Lt8;
    .locals 1

    sget-object v0, Lt8;->e:Lt8;

    return-object v0
.end method

.method public h(IIII)Lrb;
    .locals 0

    sget-object p1, Lrb;->b:Lrb;

    return-object p1
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0}, Lrb$i;->j()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lrb$i;->i()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lrb$i;->g()Lt8;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lrb$i;->f()Lt8;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lrb$i;->d()Lsa;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    invoke-static {v0}, Lja;->b([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public i()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public j()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
