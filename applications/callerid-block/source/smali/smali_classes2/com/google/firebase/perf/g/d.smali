.class final Lcom/google/firebase/perf/g/d;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/perf/g/d$a;
    }
.end annotation


# instance fields
.field private final a:F

.field private b:Z

.field private c:Lcom/google/firebase/perf/g/d$a;

.field private d:Lcom/google/firebase/perf/g/d$a;

.field private final e:Lcom/google/firebase/perf/config/a;


# direct methods
.method constructor <init>(DJLcom/google/firebase/perf/util/a;FLcom/google/firebase/perf/config/a;)V
    .locals 13

    move-object v0, p0

    move/from16 v1, p6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/google/firebase/perf/g/d;->b:Z

    const/4 v3, 0x0

    iput-object v3, v0, Lcom/google/firebase/perf/g/d;->c:Lcom/google/firebase/perf/g/d$a;

    iput-object v3, v0, Lcom/google/firebase/perf/g/d;->d:Lcom/google/firebase/perf/g/d$a;

    const/4 v3, 0x0

    cmpg-float v3, v3, v1

    if-gtz v3, :cond_0

    const/high16 v3, 0x3f800000    # 1.0f

    cmpg-float v3, v1, v3

    if-gez v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    const-string v3, "Sampling bucket ID should be in range [0.0f, 1.0f)."

    invoke-static {v2, v3}, Lcom/google/firebase/perf/util/f;->a(ZLjava/lang/String;)V

    iput v1, v0, Lcom/google/firebase/perf/g/d;->a:F

    move-object/from16 v1, p7

    iput-object v1, v0, Lcom/google/firebase/perf/g/d;->e:Lcom/google/firebase/perf/config/a;

    new-instance v2, Lcom/google/firebase/perf/g/d$a;

    iget-boolean v12, v0, Lcom/google/firebase/perf/g/d;->b:Z

    const-string v11, "Trace"

    move-object v4, v2

    move-wide v5, p1

    move-wide/from16 v7, p3

    move-object/from16 v9, p5

    move-object/from16 v10, p7

    invoke-direct/range {v4 .. v12}, Lcom/google/firebase/perf/g/d$a;-><init>(DJLcom/google/firebase/perf/util/a;Lcom/google/firebase/perf/config/a;Ljava/lang/String;Z)V

    iput-object v2, v0, Lcom/google/firebase/perf/g/d;->c:Lcom/google/firebase/perf/g/d$a;

    new-instance v2, Lcom/google/firebase/perf/g/d$a;

    iget-boolean v12, v0, Lcom/google/firebase/perf/g/d;->b:Z

    const-string v11, "Network"

    move-object v4, v2

    invoke-direct/range {v4 .. v12}, Lcom/google/firebase/perf/g/d$a;-><init>(DJLcom/google/firebase/perf/util/a;Lcom/google/firebase/perf/config/a;Ljava/lang/String;Z)V

    iput-object v2, v0, Lcom/google/firebase/perf/g/d;->d:Lcom/google/firebase/perf/g/d$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;DJ)V
    .locals 8

    new-instance v5, Lcom/google/firebase/perf/util/a;

    invoke-direct {v5}, Lcom/google/firebase/perf/util/a;-><init>()V

    invoke-static {}, Lcom/google/firebase/perf/g/d;->c()F

    move-result v6

    invoke-static {}, Lcom/google/firebase/perf/config/a;->f()Lcom/google/firebase/perf/config/a;

    move-result-object v7

    move-object v0, p0

    move-wide v1, p2

    move-wide v3, p4

    invoke-direct/range {v0 .. v7}, Lcom/google/firebase/perf/g/d;-><init>(DJLcom/google/firebase/perf/util/a;FLcom/google/firebase/perf/config/a;)V

    invoke-static {p1}, Lcom/google/firebase/perf/util/f;->b(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/firebase/perf/g/d;->b:Z

    return-void
.end method

.method static c()F
    .locals 1

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    return v0
.end method

.method private d(Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/firebase/perf/v1/i;",
            ">;)Z"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/perf/v1/i;

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/i;->X()I

    move-result v0

    if-lez v0, :cond_0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/perf/v1/i;

    invoke-virtual {p1, v1}, Lcom/google/firebase/perf/v1/i;->W(I)Lcom/google/firebase/perf/v1/SessionVerbosity;

    move-result-object p1

    sget-object v0, Lcom/google/firebase/perf/v1/SessionVerbosity;->c:Lcom/google/firebase/perf/v1/SessionVerbosity;

    if-ne p1, v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private e()Z
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/perf/g/d;->e:Lcom/google/firebase/perf/config/a;

    invoke-virtual {v0}, Lcom/google/firebase/perf/config/a;->q()F

    move-result v0

    iget v1, p0, Lcom/google/firebase/perf/g/d;->a:F

    cmpg-float v0, v1, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private f()Z
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/perf/g/d;->e:Lcom/google/firebase/perf/config/a;

    invoke-virtual {v0}, Lcom/google/firebase/perf/config/a;->E()F

    move-result v0

    iget v1, p0, Lcom/google/firebase/perf/g/d;->a:F

    cmpg-float v0, v1, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method a(Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/perf/g/d;->c:Lcom/google/firebase/perf/g/d$a;

    invoke-virtual {v0, p1}, Lcom/google/firebase/perf/g/d$a;->a(Z)V

    iget-object v0, p0, Lcom/google/firebase/perf/g/d;->d:Lcom/google/firebase/perf/g/d$a;

    invoke-virtual {v0, p1}, Lcom/google/firebase/perf/g/d$a;->a(Z)V

    return-void
.end method

.method b(Lcom/google/firebase/perf/v1/g;)Z
    .locals 2

    invoke-virtual {p1}, Lcom/google/firebase/perf/v1/g;->h()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/firebase/perf/g/d;->f()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/google/firebase/perf/v1/g;->j()Lcom/google/firebase/perf/v1/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/j;->p0()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/firebase/perf/g/d;->d(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Lcom/google/firebase/perf/v1/g;->m()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/google/firebase/perf/g/d;->e()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/google/firebase/perf/v1/g;->n()Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->m0()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/firebase/perf/g/d;->d(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0, p1}, Lcom/google/firebase/perf/g/d;->g(Lcom/google/firebase/perf/v1/g;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    invoke-virtual {p1}, Lcom/google/firebase/perf/v1/g;->m()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/firebase/perf/g/d;->d:Lcom/google/firebase/perf/g/d$a;

    :goto_0
    invoke-virtual {v0, p1}, Lcom/google/firebase/perf/g/d$a;->b(Lcom/google/firebase/perf/v1/g;)Z

    move-result p1

    return p1

    :cond_3
    invoke-virtual {p1}, Lcom/google/firebase/perf/v1/g;->h()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/firebase/perf/g/d;->c:Lcom/google/firebase/perf/g/d$a;

    goto :goto_0

    :cond_4
    return v1
.end method

.method g(Lcom/google/firebase/perf/v1/g;)Z
    .locals 3

    invoke-virtual {p1}, Lcom/google/firebase/perf/v1/g;->h()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/google/firebase/perf/v1/g;->j()Lcom/google/firebase/perf/v1/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/j;->o0()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/google/firebase/perf/util/Constants$TraceNames;->f:Lcom/google/firebase/perf/util/Constants$TraceNames;

    invoke-virtual {v2}, Lcom/google/firebase/perf/util/Constants$TraceNames;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/google/firebase/perf/v1/g;->j()Lcom/google/firebase/perf/v1/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/j;->o0()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/google/firebase/perf/util/Constants$TraceNames;->g:Lcom/google/firebase/perf/util/Constants$TraceNames;

    invoke-virtual {v2}, Lcom/google/firebase/perf/util/Constants$TraceNames;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p1}, Lcom/google/firebase/perf/v1/g;->j()Lcom/google/firebase/perf/v1/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/j;->h0()I

    move-result v0

    if-lez v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {p1}, Lcom/google/firebase/perf/v1/g;->b()Z

    move-result p1

    if-eqz p1, :cond_2

    return v1

    :cond_2
    const/4 p1, 0x1

    return p1
.end method
