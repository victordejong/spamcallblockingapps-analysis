.class public Ld2/u1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld2/n;


# instance fields
.field public final synthetic a:Ld2/t1;


# direct methods
.method public constructor <init>(Ld2/t1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ld2/u1;->a:Ld2/t1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ld2/m;)V
    .locals 5

    .line 1
    iget-object p1, p1, Ld2/m;->b:Ljava/lang/String;

    .line 2
    invoke-static {p1}, Ld2/e4;->k(Ljava/lang/String;)Ld2/f4;

    move-result-object p1

    const-string v0, "event_type"

    .line 3
    invoke-virtual {p1, v0}, Ld2/f4;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "duration"

    .line 4
    invoke-static {p1, v1}, Ld2/e4;->p(Ld2/f4;Ljava/lang/String;)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigDecimal;->floatValue()F

    move-result v1

    const-string v2, "replay"

    .line 5
    invoke-static {p1, v2}, Ld2/e4;->l(Ld2/f4;Ljava/lang/String;)Z

    move-result v2

    const-string v3, "skip_type"

    .line 6
    invoke-virtual {p1, v3}, Ld2/f4;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "dec"

    .line 7
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "asi"

    .line 8
    invoke-virtual {p1, v4}, Ld2/f4;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v4, "skip"

    .line 9
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    if-eqz v3, :cond_0

    .line 10
    iget-object p1, p0, Ld2/u1;->a:Ld2/t1;

    const/4 v0, 0x1

    .line 11
    iput-boolean v0, p1, Ld2/t1;->k:Z

    return-void

    :cond_0
    if-eqz v2, :cond_1

    const-string v2, "start"

    .line 12
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "first_quartile"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "midpoint"

    .line 13
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "third_quartile"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "complete"

    .line 14
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 15
    :cond_1
    new-instance v2, Ld2/u1$a;

    invoke-direct {v2, p0, p1, v0, v1}, Ld2/u1$a;-><init>(Ld2/u1;Ljava/lang/String;Ljava/lang/String;F)V

    invoke-static {v2}, Ld2/i3;->s(Ljava/lang/Runnable;)Z

    :cond_2
    return-void
.end method
