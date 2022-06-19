.class final Lorg/mistergroup/shouldianswer/ui/settings/allowed_numbers/SettingsAllowedNumbersFragment$d$1$a;
.super Lkotlin/c/b/a/k;
.source "SettingsAllowedNumbersFragment.kt"

# interfaces
.implements Lkotlin/e/a/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mistergroup/shouldianswer/ui/settings/allowed_numbers/SettingsAllowedNumbersFragment$d$1;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/c/b/a/k;",
        "Lkotlin/e/a/m<",
        "Lkotlinx/coroutines/ad;",
        "Lkotlin/c/c<",
        "-",
        "Lkotlin/o;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field a:Ljava/lang/Object;

.field b:Ljava/lang/Object;

.field c:Ljava/lang/Object;

.field d:Ljava/lang/Object;

.field e:Ljava/lang/Object;

.field f:Ljava/lang/Object;

.field g:Ljava/lang/Object;

.field h:I

.field final synthetic i:Ljava/util/List;

.field final synthetic j:Lorg/mistergroup/shouldianswer/ui/settings/allowed_numbers/SettingsAllowedNumbersFragment$d$1;

.field private k:Lkotlinx/coroutines/ad;


# direct methods
.method constructor <init>(Ljava/util/List;Lkotlin/c/c;Lorg/mistergroup/shouldianswer/ui/settings/allowed_numbers/SettingsAllowedNumbersFragment$d$1;)V
    .locals 0

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/settings/allowed_numbers/SettingsAllowedNumbersFragment$d$1$a;->i:Ljava/util/List;

    iput-object p3, p0, Lorg/mistergroup/shouldianswer/ui/settings/allowed_numbers/SettingsAllowedNumbersFragment$d$1$a;->j:Lorg/mistergroup/shouldianswer/ui/settings/allowed_numbers/SettingsAllowedNumbersFragment$d$1;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/c/b/a/k;-><init>(ILkotlin/c/c;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lkotlin/c/c;

    invoke-virtual {p0, p1, p2}, Lorg/mistergroup/shouldianswer/ui/settings/allowed_numbers/SettingsAllowedNumbersFragment$d$1$a;->a(Ljava/lang/Object;Lkotlin/c/c;)Lkotlin/c/c;

    move-result-object p1

    check-cast p1, Lorg/mistergroup/shouldianswer/ui/settings/allowed_numbers/SettingsAllowedNumbersFragment$d$1$a;

    sget-object p2, Lkotlin/o;->a:Lkotlin/o;

    invoke-virtual {p1, p2}, Lorg/mistergroup/shouldianswer/ui/settings/allowed_numbers/SettingsAllowedNumbersFragment$d$1$a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/Object;Lkotlin/c/c;)Lkotlin/c/c;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/c/c<",
            "*>;)",
            "Lkotlin/c/c<",
            "Lkotlin/o;",
            ">;"
        }
    .end annotation

    const-string v0, "completion"

    invoke-static {p2, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lorg/mistergroup/shouldianswer/ui/settings/allowed_numbers/SettingsAllowedNumbersFragment$d$1$a;

    iget-object v1, p0, Lorg/mistergroup/shouldianswer/ui/settings/allowed_numbers/SettingsAllowedNumbersFragment$d$1$a;->i:Ljava/util/List;

    iget-object v2, p0, Lorg/mistergroup/shouldianswer/ui/settings/allowed_numbers/SettingsAllowedNumbersFragment$d$1$a;->j:Lorg/mistergroup/shouldianswer/ui/settings/allowed_numbers/SettingsAllowedNumbersFragment$d$1;

    invoke-direct {v0, v1, p2, v2}, Lorg/mistergroup/shouldianswer/ui/settings/allowed_numbers/SettingsAllowedNumbersFragment$d$1$a;-><init>(Ljava/util/List;Lkotlin/c/c;Lorg/mistergroup/shouldianswer/ui/settings/allowed_numbers/SettingsAllowedNumbersFragment$d$1;)V

    check-cast p1, Lkotlinx/coroutines/ad;

    iput-object p1, v0, Lorg/mistergroup/shouldianswer/ui/settings/allowed_numbers/SettingsAllowedNumbersFragment$d$1$a;->k:Lkotlinx/coroutines/ad;

    return-object v0
.end method

.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 22

    move-object/from16 v1, p0

    invoke-static {}, Lkotlin/c/a/b;->a()Ljava/lang/Object;

    move-result-object v0

    .line 63
    iget v2, v1, Lorg/mistergroup/shouldianswer/ui/settings/allowed_numbers/SettingsAllowedNumbersFragment$d$1$a;->h:I

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_2

    if-eq v2, v5, :cond_1

    if-ne v2, v4, :cond_0

    iget-object v0, v1, Lorg/mistergroup/shouldianswer/ui/settings/allowed_numbers/SettingsAllowedNumbersFragment$d$1$a;->a:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/ad;

    :try_start_0
    invoke-static/range {p1 .. p1}, Lkotlin/k;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_3

    .line 80
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :cond_1
    iget-object v2, v1, Lorg/mistergroup/shouldianswer/ui/settings/allowed_numbers/SettingsAllowedNumbersFragment$d$1$a;->g:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v2, v1, Lorg/mistergroup/shouldianswer/ui/settings/allowed_numbers/SettingsAllowedNumbersFragment$d$1$a;->f:Ljava/lang/Object;

    check-cast v2, Lorg/mistergroup/shouldianswer/model/NumberInfo;

    iget-object v2, v1, Lorg/mistergroup/shouldianswer/ui/settings/allowed_numbers/SettingsAllowedNumbersFragment$d$1$a;->e:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v2, v1, Lorg/mistergroup/shouldianswer/ui/settings/allowed_numbers/SettingsAllowedNumbersFragment$d$1$a;->d:Ljava/lang/Object;

    iget-object v2, v1, Lorg/mistergroup/shouldianswer/ui/settings/allowed_numbers/SettingsAllowedNumbersFragment$d$1$a;->c:Ljava/lang/Object;

    check-cast v2, Ljava/util/Iterator;

    iget-object v6, v1, Lorg/mistergroup/shouldianswer/ui/settings/allowed_numbers/SettingsAllowedNumbersFragment$d$1$a;->b:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Iterable;

    iget-object v7, v1, Lorg/mistergroup/shouldianswer/ui/settings/allowed_numbers/SettingsAllowedNumbersFragment$d$1$a;->a:Ljava/lang/Object;

    check-cast v7, Lkotlinx/coroutines/ad;

    :try_start_1
    invoke-static/range {p1 .. p1}, Lkotlin/k;->a(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v8, v6

    move-object v6, v0

    move-object v0, v1

    goto/16 :goto_2

    :cond_2
    invoke-static/range {p1 .. p1}, Lkotlin/k;->a(Ljava/lang/Object;)V

    iget-object v2, v1, Lorg/mistergroup/shouldianswer/ui/settings/allowed_numbers/SettingsAllowedNumbersFragment$d$1$a;->k:Lkotlinx/coroutines/ad;

    .line 65
    :try_start_2
    iget-object v6, v1, Lorg/mistergroup/shouldianswer/ui/settings/allowed_numbers/SettingsAllowedNumbersFragment$d$1$a;->i:Ljava/util/List;

    check-cast v6, Ljava/lang/Iterable;

    .line 145
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move-object v8, v6

    move-object v6, v0

    move-object v0, v1

    move-object/from16 v21, v7

    move-object v7, v2

    move-object/from16 v2, v21

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    move-object v10, v9

    check-cast v10, Ljava/lang/String;

    if-eqz v10, :cond_5

    .line 66
    move-object v11, v10

    check-cast v11, Ljava/lang/CharSequence;

    invoke-static {v11}, Lkotlin/i/g;->a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    .line 67
    move-object v12, v11

    check-cast v12, Ljava/lang/CharSequence;

    invoke-interface {v12}, Ljava/lang/CharSequence;->length()I

    move-result v12

    const/4 v15, 0x0

    if-lez v12, :cond_3

    move v12, v5

    goto :goto_1

    :cond_3
    move v12, v15

    :goto_1
    if-eqz v12, :cond_4

    .line 68
    new-instance v14, Lorg/mistergroup/shouldianswer/model/NumberInfo;

    sget-object v12, Lorg/mistergroup/shouldianswer/utils/f;->a:Lorg/mistergroup/shouldianswer/utils/f;

    invoke-virtual {v12}, Lorg/mistergroup/shouldianswer/utils/f;->a()Ljava/lang/String;

    move-result-object v16

    sget-object v17, Lorg/mistergroup/shouldianswer/model/k;->h:Lorg/mistergroup/shouldianswer/model/k;

    const/16 v18, 0x0

    const/16 v19, 0x8

    const/16 v20, 0x0

    move-object v12, v14

    move-object v13, v11

    move-object/from16 p1, v14

    move-object/from16 v14, v16

    move v4, v15

    move-object/from16 v15, v17

    move/from16 v16, v18

    move/from16 v17, v19

    move-object/from16 v18, v20

    invoke-direct/range {v12 .. v18}, Lorg/mistergroup/shouldianswer/model/NumberInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/mistergroup/shouldianswer/model/k;ZILkotlin/e/b/e;)V

    .line 69
    invoke-static/range {p1 .. p1}, Lorg/mistergroup/shouldianswer/model/x;->e(Lorg/mistergroup/shouldianswer/model/NumberInfo;)Z

    move-result v12

    if-nez v12, :cond_4

    .line 70
    sget-object v12, Lorg/mistergroup/shouldianswer/model/g;->a:Lorg/mistergroup/shouldianswer/model/g;

    iput-object v7, v0, Lorg/mistergroup/shouldianswer/ui/settings/allowed_numbers/SettingsAllowedNumbersFragment$d$1$a;->a:Ljava/lang/Object;

    iput-object v8, v0, Lorg/mistergroup/shouldianswer/ui/settings/allowed_numbers/SettingsAllowedNumbersFragment$d$1$a;->b:Ljava/lang/Object;

    iput-object v2, v0, Lorg/mistergroup/shouldianswer/ui/settings/allowed_numbers/SettingsAllowedNumbersFragment$d$1$a;->c:Ljava/lang/Object;

    iput-object v9, v0, Lorg/mistergroup/shouldianswer/ui/settings/allowed_numbers/SettingsAllowedNumbersFragment$d$1$a;->d:Ljava/lang/Object;

    iput-object v10, v0, Lorg/mistergroup/shouldianswer/ui/settings/allowed_numbers/SettingsAllowedNumbersFragment$d$1$a;->e:Ljava/lang/Object;

    move-object/from16 v9, p1

    iput-object v9, v0, Lorg/mistergroup/shouldianswer/ui/settings/allowed_numbers/SettingsAllowedNumbersFragment$d$1$a;->f:Ljava/lang/Object;

    iput-object v11, v0, Lorg/mistergroup/shouldianswer/ui/settings/allowed_numbers/SettingsAllowedNumbersFragment$d$1$a;->g:Ljava/lang/Object;

    iput v5, v0, Lorg/mistergroup/shouldianswer/ui/settings/allowed_numbers/SettingsAllowedNumbersFragment$d$1$a;->h:I

    invoke-virtual {v12, v9, v4, v0}, Lorg/mistergroup/shouldianswer/model/g;->a(Lorg/mistergroup/shouldianswer/model/NumberInfo;ZLkotlin/c/c;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v6, :cond_4

    return-object v6

    :cond_4
    :goto_2
    const/4 v4, 0x2

    goto :goto_0

    .line 66
    :cond_5
    new-instance v0, Lkotlin/TypeCastException;

    const-string v2, "null cannot be cast to non-null type kotlin.CharSequence"

    invoke-direct {v0, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 74
    :cond_6
    invoke-static {}, Lorg/mistergroup/shouldianswer/utils/c;->b()Lkotlinx/coroutines/y;

    move-result-object v2

    check-cast v2, Lkotlin/c/f;

    new-instance v4, Lorg/mistergroup/shouldianswer/ui/settings/allowed_numbers/SettingsAllowedNumbersFragment$d$1$a$1;

    invoke-direct {v4, v0, v3}, Lorg/mistergroup/shouldianswer/ui/settings/allowed_numbers/SettingsAllowedNumbersFragment$d$1$a$1;-><init>(Lorg/mistergroup/shouldianswer/ui/settings/allowed_numbers/SettingsAllowedNumbersFragment$d$1$a;Lkotlin/c/c;)V

    check-cast v4, Lkotlin/e/a/m;

    iput-object v7, v0, Lorg/mistergroup/shouldianswer/ui/settings/allowed_numbers/SettingsAllowedNumbersFragment$d$1$a;->a:Ljava/lang/Object;

    const/4 v5, 0x2

    iput v5, v0, Lorg/mistergroup/shouldianswer/ui/settings/allowed_numbers/SettingsAllowedNumbersFragment$d$1$a;->h:I

    invoke-static {v2, v4, v0}, Lkotlinx/coroutines/e;->a(Lkotlin/c/f;Lkotlin/e/a/m;Lkotlin/c/c;)Ljava/lang/Object;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    if-ne v0, v6, :cond_7

    return-object v6

    :catch_0
    move-exception v0

    .line 78
    sget-object v2, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const/4 v4, 0x2

    invoke-static {v2, v0, v3, v4, v3}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/Exception;Ljava/lang/String;ILjava/lang/Object;)V

    .line 80
    :cond_7
    :goto_3
    sget-object v0, Lkotlin/o;->a:Lkotlin/o;

    return-object v0
.end method
