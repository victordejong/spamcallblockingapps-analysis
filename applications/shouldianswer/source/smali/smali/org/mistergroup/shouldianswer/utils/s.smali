.class public final Lorg/mistergroup/shouldianswer/utils/s;
.super Ljava/lang/Object;
.source "ProtectionIntegrityChecker.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mistergroup/shouldianswer/utils/s$a;
    }
.end annotation


# static fields
.field public static final a:Lorg/mistergroup/shouldianswer/utils/s;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14
    new-instance v0, Lorg/mistergroup/shouldianswer/utils/s;

    invoke-direct {v0}, Lorg/mistergroup/shouldianswer/utils/s;-><init>()V

    sput-object v0, Lorg/mistergroup/shouldianswer/utils/s;->a:Lorg/mistergroup/shouldianswer/utils/s;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lkotlin/c/c;)Ljava/lang/Object;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/c/c<",
            "-",
            "Lorg/mistergroup/shouldianswer/utils/s$a;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    instance-of v2, v1, Lorg/mistergroup/shouldianswer/utils/s$b;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lorg/mistergroup/shouldianswer/utils/s$b;

    iget v3, v2, Lorg/mistergroup/shouldianswer/utils/s$b;->b:I

    const/high16 v4, -0x80000000

    and-int/2addr v3, v4

    if-eqz v3, :cond_0

    iget v1, v2, Lorg/mistergroup/shouldianswer/utils/s$b;->b:I

    sub-int/2addr v1, v4

    iput v1, v2, Lorg/mistergroup/shouldianswer/utils/s$b;->b:I

    goto :goto_0

    :cond_0
    new-instance v2, Lorg/mistergroup/shouldianswer/utils/s$b;

    invoke-direct {v2, v0, v1}, Lorg/mistergroup/shouldianswer/utils/s$b;-><init>(Lorg/mistergroup/shouldianswer/utils/s;Lkotlin/c/c;)V

    :goto_0
    iget-object v1, v2, Lorg/mistergroup/shouldianswer/utils/s$b;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlin/c/a/b;->a()Ljava/lang/Object;

    move-result-object v3

    .line 28
    iget v4, v2, Lorg/mistergroup/shouldianswer/utils/s$b;->b:I

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_2

    if-ne v4, v6, :cond_1

    iget-object v3, v2, Lorg/mistergroup/shouldianswer/utils/s$b;->f:Ljava/lang/Object;

    check-cast v3, Lorg/mistergroup/shouldianswer/utils/s$a;

    iget-object v4, v2, Lorg/mistergroup/shouldianswer/utils/s$b;->e:Ljava/lang/Object;

    check-cast v4, Lorg/mistergroup/shouldianswer/utils/s$a;

    iget-object v2, v2, Lorg/mistergroup/shouldianswer/utils/s$b;->d:Ljava/lang/Object;

    check-cast v2, Lorg/mistergroup/shouldianswer/utils/s;

    invoke-static {v1}, Lkotlin/k;->a(Ljava/lang/Object;)V

    move-object v1, v3

    goto/16 :goto_5

    .line 56
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 28
    :cond_2
    invoke-static {v1}, Lkotlin/k;->a(Ljava/lang/Object;)V

    .line 29
    new-instance v1, Lorg/mistergroup/shouldianswer/utils/s$a;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x7ff

    const/16 v20, 0x0

    move-object v7, v1

    invoke-direct/range {v7 .. v20}, Lorg/mistergroup/shouldianswer/utils/s$a;-><init>(ZZZZZZZZZZZILkotlin/e/b/e;)V

    .line 31
    sget-object v4, Lorg/mistergroup/shouldianswer/model/ai;->a:Lorg/mistergroup/shouldianswer/model/ai;

    invoke-virtual {v4}, Lorg/mistergroup/shouldianswer/model/ai;->c()Lorg/mistergroup/shouldianswer/model/af;

    move-result-object v4

    sget-object v7, Lorg/mistergroup/shouldianswer/model/af;->d:Lorg/mistergroup/shouldianswer/model/af;

    const/16 v8, 0x1d

    if-ne v4, v7, :cond_4

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v8, :cond_3

    sget-object v4, Lorg/mistergroup/shouldianswer/model/ai;->a:Lorg/mistergroup/shouldianswer/model/ai;

    invoke-virtual {v4}, Lorg/mistergroup/shouldianswer/model/ai;->e()Lorg/mistergroup/shouldianswer/model/a;

    move-result-object v4

    sget-object v7, Lorg/mistergroup/shouldianswer/model/a;->b:Lorg/mistergroup/shouldianswer/model/a;

    if-ne v4, v7, :cond_4

    :cond_3
    move v4, v6

    goto :goto_1

    :cond_4
    move v4, v5

    :goto_1
    invoke-virtual {v1, v4}, Lorg/mistergroup/shouldianswer/utils/s$a;->b(Z)V

    .line 32
    sget-object v4, Lorg/mistergroup/shouldianswer/model/c;->b:Lorg/mistergroup/shouldianswer/model/c;

    invoke-virtual {v4}, Lorg/mistergroup/shouldianswer/model/c;->C()Z

    move-result v4

    invoke-virtual {v1, v4}, Lorg/mistergroup/shouldianswer/utils/s$a;->a(Z)V

    .line 34
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v8, :cond_6

    sget-object v4, Lorg/mistergroup/shouldianswer/model/ai;->a:Lorg/mistergroup/shouldianswer/model/ai;

    invoke-virtual {v4}, Lorg/mistergroup/shouldianswer/model/ai;->c()Lorg/mistergroup/shouldianswer/model/af;

    move-result-object v4

    sget-object v7, Lorg/mistergroup/shouldianswer/model/af;->d:Lorg/mistergroup/shouldianswer/model/af;

    if-ne v4, v7, :cond_6

    sget-object v4, Lorg/mistergroup/shouldianswer/model/ai;->a:Lorg/mistergroup/shouldianswer/model/ai;

    invoke-virtual {v4}, Lorg/mistergroup/shouldianswer/model/ai;->e()Lorg/mistergroup/shouldianswer/model/a;

    move-result-object v4

    sget-object v7, Lorg/mistergroup/shouldianswer/model/a;->c:Lorg/mistergroup/shouldianswer/model/a;

    if-eq v4, v7, :cond_5

    sget-object v4, Lorg/mistergroup/shouldianswer/model/ai;->a:Lorg/mistergroup/shouldianswer/model/ai;

    invoke-virtual {v4}, Lorg/mistergroup/shouldianswer/model/ai;->e()Lorg/mistergroup/shouldianswer/model/a;

    move-result-object v4

    sget-object v7, Lorg/mistergroup/shouldianswer/model/a;->d:Lorg/mistergroup/shouldianswer/model/a;

    if-ne v4, v7, :cond_6

    :cond_5
    move v4, v6

    goto :goto_2

    :cond_6
    move v4, v5

    :goto_2
    invoke-virtual {v1, v4}, Lorg/mistergroup/shouldianswer/utils/s$a;->c(Z)V

    .line 35
    sget-object v4, Lorg/mistergroup/shouldianswer/model/c;->b:Lorg/mistergroup/shouldianswer/model/c;

    invoke-virtual {v4}, Lorg/mistergroup/shouldianswer/model/c;->D()Z

    move-result v4

    invoke-virtual {v1, v4}, Lorg/mistergroup/shouldianswer/utils/s$a;->d(Z)V

    .line 36
    invoke-virtual {v1}, Lorg/mistergroup/shouldianswer/utils/s$a;->c()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-virtual {v1}, Lorg/mistergroup/shouldianswer/utils/s$a;->a()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-virtual {v1, v5}, Lorg/mistergroup/shouldianswer/utils/s$a;->c(Z)V

    .line 39
    :cond_7
    sget-object v4, Lorg/mistergroup/shouldianswer/model/ai;->a:Lorg/mistergroup/shouldianswer/model/ai;

    invoke-virtual {v4}, Lorg/mistergroup/shouldianswer/model/ai;->c()Lorg/mistergroup/shouldianswer/model/af;

    move-result-object v4

    sget-object v7, Lorg/mistergroup/shouldianswer/model/af;->d:Lorg/mistergroup/shouldianswer/model/af;

    if-eq v4, v7, :cond_9

    sget-object v4, Lorg/mistergroup/shouldianswer/model/ai;->a:Lorg/mistergroup/shouldianswer/model/ai;

    invoke-virtual {v4}, Lorg/mistergroup/shouldianswer/model/ai;->c()Lorg/mistergroup/shouldianswer/model/af;

    move-result-object v4

    sget-object v7, Lorg/mistergroup/shouldianswer/model/af;->c:Lorg/mistergroup/shouldianswer/model/af;

    if-ne v4, v7, :cond_8

    goto :goto_3

    :cond_8
    move v4, v5

    goto :goto_4

    :cond_9
    :goto_3
    move v4, v6

    :goto_4
    invoke-virtual {v1, v4}, Lorg/mistergroup/shouldianswer/utils/s$a;->h(Z)V

    .line 40
    sget-object v4, Lorg/mistergroup/shouldianswer/utils/o;->a:Lorg/mistergroup/shouldianswer/utils/o;

    invoke-virtual {v4}, Lorg/mistergroup/shouldianswer/utils/o;->m()Z

    move-result v4

    invoke-virtual {v1, v4}, Lorg/mistergroup/shouldianswer/utils/s$a;->g(Z)V

    .line 42
    invoke-static {}, Lorg/mistergroup/shouldianswer/utils/c;->b()Lkotlinx/coroutines/y;

    move-result-object v4

    check-cast v4, Lkotlin/c/f;

    new-instance v7, Lorg/mistergroup/shouldianswer/utils/s$c;

    const/4 v8, 0x0

    invoke-direct {v7, v1, v8}, Lorg/mistergroup/shouldianswer/utils/s$c;-><init>(Lorg/mistergroup/shouldianswer/utils/s$a;Lkotlin/c/c;)V

    check-cast v7, Lkotlin/e/a/m;

    iput-object v0, v2, Lorg/mistergroup/shouldianswer/utils/s$b;->d:Ljava/lang/Object;

    iput-object v1, v2, Lorg/mistergroup/shouldianswer/utils/s$b;->e:Ljava/lang/Object;

    iput-object v1, v2, Lorg/mistergroup/shouldianswer/utils/s$b;->f:Ljava/lang/Object;

    iput v6, v2, Lorg/mistergroup/shouldianswer/utils/s$b;->b:I

    invoke-static {v4, v7, v2}, Lkotlinx/coroutines/e;->a(Lkotlin/c/f;Lkotlin/e/a/m;Lkotlin/c/c;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v3, :cond_a

    return-object v3

    :cond_a
    move-object v4, v1

    .line 47
    :goto_5
    sget-object v2, Lorg/mistergroup/shouldianswer/model/ai;->a:Lorg/mistergroup/shouldianswer/model/ai;

    invoke-virtual {v2}, Lorg/mistergroup/shouldianswer/model/ai;->c()Lorg/mistergroup/shouldianswer/model/af;

    move-result-object v2

    sget-object v3, Lorg/mistergroup/shouldianswer/model/af;->d:Lorg/mistergroup/shouldianswer/model/af;

    if-ne v2, v3, :cond_b

    move v2, v6

    goto :goto_6

    :cond_b
    move v2, v5

    :goto_6
    invoke-virtual {v1, v2}, Lorg/mistergroup/shouldianswer/utils/s$a;->j(Z)V

    .line 48
    sget-object v2, Lorg/mistergroup/shouldianswer/utils/o;->a:Lorg/mistergroup/shouldianswer/utils/o;

    invoke-virtual {v2}, Lorg/mistergroup/shouldianswer/utils/o;->j()Z

    move-result v2

    invoke-virtual {v1, v2}, Lorg/mistergroup/shouldianswer/utils/s$a;->i(Z)V

    .line 54
    invoke-virtual {v1}, Lorg/mistergroup/shouldianswer/utils/s$a;->b()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-virtual {v1}, Lorg/mistergroup/shouldianswer/utils/s$a;->a()Z

    move-result v2

    if-eqz v2, :cond_11

    :cond_c
    invoke-virtual {v1}, Lorg/mistergroup/shouldianswer/utils/s$a;->c()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-virtual {v1}, Lorg/mistergroup/shouldianswer/utils/s$a;->d()Z

    move-result v2

    if-eqz v2, :cond_11

    :cond_d
    invoke-virtual {v1}, Lorg/mistergroup/shouldianswer/utils/s$a;->h()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-virtual {v1}, Lorg/mistergroup/shouldianswer/utils/s$a;->g()Z

    move-result v2

    if-eqz v2, :cond_11

    :cond_e
    invoke-virtual {v1}, Lorg/mistergroup/shouldianswer/utils/s$a;->f()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-virtual {v1}, Lorg/mistergroup/shouldianswer/utils/s$a;->e()Z

    move-result v2

    if-eqz v2, :cond_11

    :cond_f
    invoke-virtual {v1}, Lorg/mistergroup/shouldianswer/utils/s$a;->j()Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-virtual {v1}, Lorg/mistergroup/shouldianswer/utils/s$a;->i()Z

    move-result v2

    if-eqz v2, :cond_11

    :cond_10
    move v5, v6

    :cond_11
    invoke-virtual {v1, v5}, Lorg/mistergroup/shouldianswer/utils/s$a;->k(Z)V

    return-object v4
.end method
