.class final Lorg/mistergroup/shouldianswer/ui/search/a$c;
.super Lkotlin/c/b/a/k;
.source "SearchAdapter.kt"

# interfaces
.implements Lkotlin/e/a/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mistergroup/shouldianswer/ui/search/a;->g()V
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

.annotation runtime Lkotlin/c/b/a/f;
    b = "SearchAdapter.kt"
    c = {
        0xbb,
        0x11a
    }
    d = "invokeSuspend"
    e = "org.mistergroup.shouldianswer.ui.search.SearchAdapter$filterData$1"
.end annotation


# instance fields
.field a:Ljava/lang/Object;

.field b:Ljava/lang/Object;

.field c:I

.field final synthetic d:Lorg/mistergroup/shouldianswer/ui/search/a;

.field private e:Lkotlinx/coroutines/ad;


# direct methods
.method constructor <init>(Lorg/mistergroup/shouldianswer/ui/search/a;Lkotlin/c/c;)V
    .locals 0

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/search/a$c;->d:Lorg/mistergroup/shouldianswer/ui/search/a;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/c/b/a/k;-><init>(ILkotlin/c/c;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lkotlin/c/c;

    invoke-virtual {p0, p1, p2}, Lorg/mistergroup/shouldianswer/ui/search/a$c;->a(Ljava/lang/Object;Lkotlin/c/c;)Lkotlin/c/c;

    move-result-object p1

    check-cast p1, Lorg/mistergroup/shouldianswer/ui/search/a$c;

    sget-object p2, Lkotlin/o;->a:Lkotlin/o;

    invoke-virtual {p1, p2}, Lorg/mistergroup/shouldianswer/ui/search/a$c;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/Object;Lkotlin/c/c;)Lkotlin/c/c;
    .locals 2
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

    new-instance v0, Lorg/mistergroup/shouldianswer/ui/search/a$c;

    iget-object v1, p0, Lorg/mistergroup/shouldianswer/ui/search/a$c;->d:Lorg/mistergroup/shouldianswer/ui/search/a;

    invoke-direct {v0, v1, p2}, Lorg/mistergroup/shouldianswer/ui/search/a$c;-><init>(Lorg/mistergroup/shouldianswer/ui/search/a;Lkotlin/c/c;)V

    check-cast p1, Lkotlinx/coroutines/ad;

    iput-object p1, v0, Lorg/mistergroup/shouldianswer/ui/search/a$c;->e:Lkotlinx/coroutines/ad;

    return-object v0
.end method

.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    move-object/from16 v0, p0

    invoke-static {}, Lkotlin/c/a/b;->a()Ljava/lang/Object;

    move-result-object v1

    .line 184
    iget v2, v0, Lorg/mistergroup/shouldianswer/ui/search/a$c;->c:I

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-eqz v2, :cond_2

    if-eq v2, v3, :cond_1

    if-ne v2, v4, :cond_0

    iget-object v1, v0, Lorg/mistergroup/shouldianswer/ui/search/a$c;->b:Ljava/lang/Object;

    check-cast v1, Lorg/mistergroup/shouldianswer/ui/search/e;

    iget-object v1, v0, Lorg/mistergroup/shouldianswer/ui/search/a$c;->a:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/ad;

    invoke-static/range {p1 .. p1}, Lkotlin/k;->a(Ljava/lang/Object;)V

    goto/16 :goto_e

    .line 283
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 184
    :cond_1
    iget-object v1, v0, Lorg/mistergroup/shouldianswer/ui/search/a$c;->b:Ljava/lang/Object;

    check-cast v1, Lorg/mistergroup/shouldianswer/ui/search/e;

    iget-object v1, v0, Lorg/mistergroup/shouldianswer/ui/search/a$c;->a:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/ad;

    invoke-static/range {p1 .. p1}, Lkotlin/k;->a(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    invoke-static/range {p1 .. p1}, Lkotlin/k;->a(Ljava/lang/Object;)V

    iget-object v2, v0, Lorg/mistergroup/shouldianswer/ui/search/a$c;->e:Lkotlinx/coroutines/ad;

    .line 185
    new-instance v5, Lorg/mistergroup/shouldianswer/ui/search/e;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    check-cast v6, Ljava/util/List;

    invoke-direct {v5, v6}, Lorg/mistergroup/shouldianswer/ui/search/e;-><init>(Ljava/util/List;)V

    .line 186
    iget-object v6, v0, Lorg/mistergroup/shouldianswer/ui/search/a$c;->d:Lorg/mistergroup/shouldianswer/ui/search/a;

    invoke-static {v6}, Lorg/mistergroup/shouldianswer/ui/search/a;->a(Lorg/mistergroup/shouldianswer/ui/search/a;)Ljava/lang/String;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-nez v6, :cond_3

    move v6, v3

    goto :goto_0

    :cond_3
    const/4 v6, 0x0

    :goto_0
    if-eqz v6, :cond_5

    .line 187
    iget-object v4, v0, Lorg/mistergroup/shouldianswer/ui/search/a$c;->d:Lorg/mistergroup/shouldianswer/ui/search/a;

    iput-object v2, v0, Lorg/mistergroup/shouldianswer/ui/search/a$c;->a:Ljava/lang/Object;

    iput-object v5, v0, Lorg/mistergroup/shouldianswer/ui/search/a$c;->b:Ljava/lang/Object;

    iput v3, v0, Lorg/mistergroup/shouldianswer/ui/search/a$c;->c:I

    invoke-virtual {v4, v5, v0}, Lorg/mistergroup/shouldianswer/ui/search/a;->a(Lorg/mistergroup/shouldianswer/ui/search/e;Lkotlin/c/c;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_4

    return-object v1

    .line 188
    :cond_4
    :goto_1
    sget-object v1, Lkotlin/o;->a:Lkotlin/o;

    return-object v1

    .line 190
    :cond_5
    sget-object v6, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const/4 v8, 0x0

    const-string v9, "SearchAdapter.filterData searching via contacts"

    invoke-static {v6, v9, v8, v4, v8}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 191
    iget-object v6, v0, Lorg/mistergroup/shouldianswer/ui/search/a$c;->d:Lorg/mistergroup/shouldianswer/ui/search/a;

    invoke-static {v6}, Lorg/mistergroup/shouldianswer/ui/search/a;->b(Lorg/mistergroup/shouldianswer/ui/search/a;)Ljava/util/List;

    move-result-object v6

    const/4 v9, -0x1

    if-eqz v6, :cond_15

    .line 192
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_15

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/mistergroup/shouldianswer/components/a/a;

    .line 193
    invoke-virtual {v10}, Lorg/mistergroup/shouldianswer/components/a/a;->e()Lorg/mistergroup/shouldianswer/components/a/a$a;

    move-result-object v11

    sget-object v12, Lorg/mistergroup/shouldianswer/components/a/a$a;->a:Lorg/mistergroup/shouldianswer/components/a/a$a;

    if-eq v11, v12, :cond_7

    :cond_6
    move-object/from16 v17, v6

    const/4 v7, 0x0

    goto/16 :goto_b

    .line 194
    :cond_7
    new-instance v11, Lorg/mistergroup/shouldianswer/ui/search/d;

    sget-object v12, Lorg/mistergroup/shouldianswer/ui/search/d$a;->a:Lorg/mistergroup/shouldianswer/ui/search/d$a;

    invoke-direct {v11, v12}, Lorg/mistergroup/shouldianswer/ui/search/d;-><init>(Lorg/mistergroup/shouldianswer/ui/search/d$a;)V

    .line 195
    invoke-virtual {v10}, Lorg/mistergroup/shouldianswer/components/a/a;->f()Lorg/mistergroup/shouldianswer/model/ac;

    move-result-object v12

    if-eqz v12, :cond_6

    .line 196
    invoke-virtual {v12}, Lorg/mistergroup/shouldianswer/model/ac;->f()Lorg/mistergroup/shouldianswer/model/NumberInfo;

    move-result-object v13

    if-eqz v13, :cond_8

    invoke-virtual {v13}, Lorg/mistergroup/shouldianswer/model/NumberInfo;->h()Ljava/lang/String;

    move-result-object v13

    goto :goto_3

    :cond_8
    move-object v13, v8

    .line 197
    :goto_3
    invoke-virtual {v12}, Lorg/mistergroup/shouldianswer/model/ac;->b()Ljava/lang/String;

    move-result-object v14

    .line 198
    iget-object v15, v0, Lorg/mistergroup/shouldianswer/ui/search/a$c;->d:Lorg/mistergroup/shouldianswer/ui/search/a;

    invoke-static {v15}, Lorg/mistergroup/shouldianswer/ui/search/a;->c(Lorg/mistergroup/shouldianswer/ui/search/a;)Lkotlin/i/f;

    move-result-object v15

    invoke-virtual {v12}, Lorg/mistergroup/shouldianswer/model/ac;->b()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v4, v16

    check-cast v4, Ljava/lang/CharSequence;

    sget-object v8, Ljava/text/Normalizer$Form;->NFD:Ljava/text/Normalizer$Form;

    invoke-static {v4, v8}, Ljava/text/Normalizer;->normalize(Ljava/lang/CharSequence;Ljava/text/Normalizer$Form;)Ljava/lang/String;

    move-result-object v4

    const-string v8, "Normalizer.normalize(pho\u2026ame, Normalizer.Form.NFD)"

    invoke-static {v4, v8}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Ljava/lang/CharSequence;

    const-string v8, ""

    invoke-virtual {v15, v4, v8}, Lkotlin/i/f;->a(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 199
    iget-object v8, v0, Lorg/mistergroup/shouldianswer/ui/search/a$c;->d:Lorg/mistergroup/shouldianswer/ui/search/a;

    invoke-static {v8}, Lorg/mistergroup/shouldianswer/ui/search/a;->a(Lorg/mistergroup/shouldianswer/ui/search/a;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v8, v13, v15}, Lorg/mistergroup/shouldianswer/ui/search/a;->a(Lorg/mistergroup/shouldianswer/ui/search/a;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 200
    iget-object v15, v0, Lorg/mistergroup/shouldianswer/ui/search/a$c;->d:Lorg/mistergroup/shouldianswer/ui/search/a;

    invoke-static {v15}, Lorg/mistergroup/shouldianswer/ui/search/a;->a(Lorg/mistergroup/shouldianswer/ui/search/a;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v15, v14, v7}, Lorg/mistergroup/shouldianswer/ui/search/a;->a(Lorg/mistergroup/shouldianswer/ui/search/a;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    if-ne v7, v9, :cond_9

    .line 201
    iget-object v7, v0, Lorg/mistergroup/shouldianswer/ui/search/a$c;->d:Lorg/mistergroup/shouldianswer/ui/search/a;

    invoke-static {v7}, Lorg/mistergroup/shouldianswer/ui/search/a;->a(Lorg/mistergroup/shouldianswer/ui/search/a;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v7, v4, v15}, Lorg/mistergroup/shouldianswer/ui/search/a;->a(Lorg/mistergroup/shouldianswer/ui/search/a;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    goto :goto_4

    :cond_9
    move v4, v7

    :goto_4
    if-ne v8, v9, :cond_a

    :goto_5
    const/4 v7, 0x2

    goto :goto_6

    :cond_a
    if-eq v4, v9, :cond_b

    if-ge v4, v8, :cond_b

    goto :goto_5

    :cond_b
    move v7, v3

    move v4, v8

    :goto_6
    if-ltz v4, :cond_6

    .line 206
    invoke-virtual {v11, v10}, Lorg/mistergroup/shouldianswer/ui/search/d;->a(Lorg/mistergroup/shouldianswer/components/a/a;)V

    .line 207
    invoke-virtual {v11, v12}, Lorg/mistergroup/shouldianswer/ui/search/d;->a(Lorg/mistergroup/shouldianswer/model/ac;)V

    .line 208
    iget-object v8, v0, Lorg/mistergroup/shouldianswer/ui/search/a$c;->d:Lorg/mistergroup/shouldianswer/ui/search/a;

    invoke-static {v8}, Lorg/mistergroup/shouldianswer/ui/search/a;->a(Lorg/mistergroup/shouldianswer/ui/search/a;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    const-string v10, "(this as java.lang.String).substring(startIndex)"

    const-string v12, "</strong>"

    const-string v15, "<strong>"

    const-string v9, "null cannot be cast to non-null type java.lang.String"

    move-object/from16 v17, v6

    const-string v6, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    if-ne v7, v3, :cond_12

    .line 210
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v13, :cond_d

    if-eqz v13, :cond_c

    const/4 v14, 0x0

    invoke-virtual {v13, v14, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v6}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_7

    :cond_c
    new-instance v1, Lkotlin/TypeCastException;

    invoke-direct {v1, v9}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_d
    const/4 v3, 0x0

    :goto_7
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v13, :cond_f

    add-int v3, v4, v8

    if-eqz v13, :cond_e

    invoke-virtual {v13, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v6}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_8

    :cond_e
    new-instance v1, Lkotlin/TypeCastException;

    invoke-direct {v1, v9}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_f
    const/4 v3, 0x0

    :goto_8
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v13, :cond_11

    add-int/2addr v8, v4

    if-eqz v13, :cond_10

    invoke-virtual {v13, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v10}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_9

    :cond_10
    new-instance v1, Lkotlin/TypeCastException;

    invoke-direct {v1, v9}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_11
    const/4 v8, 0x0

    :goto_9
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 211
    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    .line 212
    invoke-virtual {v11, v3}, Lorg/mistergroup/shouldianswer/ui/search/d;->b(Landroid/text/Spanned;)V

    const/4 v3, 0x0

    .line 213
    move-object v8, v3

    check-cast v8, Landroid/text/Spanned;

    invoke-virtual {v11, v8}, Lorg/mistergroup/shouldianswer/ui/search/d;->a(Landroid/text/Spanned;)V

    const/4 v7, 0x0

    goto :goto_a

    .line 215
    :cond_12
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    if-nez v14, :cond_13

    invoke-static {}, Lkotlin/e/b/h;->a()V

    :cond_13
    if-eqz v14, :cond_14

    const/4 v7, 0x0

    invoke-virtual {v14, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v6}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/2addr v8, v4

    invoke-virtual {v14, v4, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v6}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v10}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 216
    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    const/4 v6, 0x0

    .line 217
    move-object v8, v6

    check-cast v8, Landroid/text/Spanned;

    invoke-virtual {v11, v8}, Lorg/mistergroup/shouldianswer/ui/search/d;->b(Landroid/text/Spanned;)V

    .line 218
    invoke-virtual {v11, v3}, Lorg/mistergroup/shouldianswer/ui/search/d;->a(Landroid/text/Spanned;)V

    .line 220
    :goto_a
    invoke-virtual {v11, v4}, Lorg/mistergroup/shouldianswer/ui/search/d;->a(I)V

    .line 221
    invoke-virtual {v5}, Lorg/mistergroup/shouldianswer/ui/search/e;->a()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 215
    :cond_14
    new-instance v1, Lkotlin/TypeCastException;

    invoke-direct {v1, v9}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v1

    :goto_b
    move-object/from16 v6, v17

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v8, 0x0

    const/4 v9, -0x1

    goto/16 :goto_2

    .line 227
    :cond_15
    sget-object v3, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const-string v4, "SearchAdapter.filterData searching via logs"

    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-static {v3, v4, v7, v6, v7}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 228
    iget-object v3, v0, Lorg/mistergroup/shouldianswer/ui/search/a$c;->d:Lorg/mistergroup/shouldianswer/ui/search/a;

    invoke-static {v3}, Lorg/mistergroup/shouldianswer/ui/search/a;->d(Lorg/mistergroup/shouldianswer/ui/search/a;)Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_19

    .line 229
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_16
    :goto_c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_19

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/mistergroup/shouldianswer/ui/main/c/c;

    .line 230
    new-instance v6, Lorg/mistergroup/shouldianswer/ui/search/d;

    sget-object v7, Lorg/mistergroup/shouldianswer/ui/search/d$a;->b:Lorg/mistergroup/shouldianswer/ui/search/d$a;

    invoke-direct {v6, v7}, Lorg/mistergroup/shouldianswer/ui/search/d;-><init>(Lorg/mistergroup/shouldianswer/ui/search/d$a;)V

    .line 231
    invoke-virtual {v4}, Lorg/mistergroup/shouldianswer/ui/main/c/c;->f()Lorg/mistergroup/shouldianswer/model/NumberInfo;

    move-result-object v7

    .line 233
    invoke-virtual {v7}, Lorg/mistergroup/shouldianswer/model/NumberInfo;->h()Ljava/lang/String;

    move-result-object v8

    .line 234
    sget-object v9, Lorg/mistergroup/shouldianswer/MyApp;->c:Lorg/mistergroup/shouldianswer/MyApp$a;

    invoke-virtual {v9}, Lorg/mistergroup/shouldianswer/MyApp$a;->a()Lorg/mistergroup/shouldianswer/MyApp;

    move-result-object v9

    check-cast v9, Landroid/content/Context;

    invoke-virtual {v7, v9}, Lorg/mistergroup/shouldianswer/model/NumberInfo;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    .line 235
    iget-object v9, v0, Lorg/mistergroup/shouldianswer/ui/search/a$c;->d:Lorg/mistergroup/shouldianswer/ui/search/a;

    invoke-static {v9}, Lorg/mistergroup/shouldianswer/ui/search/a;->a(Lorg/mistergroup/shouldianswer/ui/search/a;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v8, v10}, Lorg/mistergroup/shouldianswer/ui/search/a;->a(Lorg/mistergroup/shouldianswer/ui/search/a;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 236
    iget-object v9, v0, Lorg/mistergroup/shouldianswer/ui/search/a$c;->d:Lorg/mistergroup/shouldianswer/ui/search/a;

    invoke-static {v9}, Lorg/mistergroup/shouldianswer/ui/search/a;->a(Lorg/mistergroup/shouldianswer/ui/search/a;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v7, v10}, Lorg/mistergroup/shouldianswer/ui/search/a;->a(Lorg/mistergroup/shouldianswer/ui/search/a;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    const/4 v9, -0x1

    if-ne v8, v9, :cond_17

    goto :goto_d

    :cond_17
    if-eq v7, v9, :cond_18

    if-ge v7, v8, :cond_18

    goto :goto_d

    :cond_18
    move v7, v8

    :goto_d
    if-ltz v7, :cond_16

    .line 247
    new-instance v8, Ljava/util/Date;

    invoke-virtual {v4}, Lorg/mistergroup/shouldianswer/ui/main/c/c;->g()J

    move-result-wide v10

    invoke-direct {v8, v10, v11}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v6, v8}, Lorg/mistergroup/shouldianswer/ui/search/d;->a(Ljava/util/Date;)V

    .line 248
    invoke-virtual {v6, v4}, Lorg/mistergroup/shouldianswer/ui/search/d;->a(Lorg/mistergroup/shouldianswer/ui/main/c/c;)V

    add-int/lit8 v7, v7, 0xa

    .line 268
    invoke-virtual {v6, v7}, Lorg/mistergroup/shouldianswer/ui/search/d;->a(I)V

    .line 269
    invoke-virtual {v5}, Lorg/mistergroup/shouldianswer/ui/search/e;->a()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 274
    :cond_19
    sget-object v3, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const-string v4, "SearchAdapter.filterData sorting"

    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-static {v3, v4, v7, v6, v7}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 276
    invoke-virtual {v5}, Lorg/mistergroup/shouldianswer/ui/search/e;->a()Ljava/util/List;

    move-result-object v3

    sget-object v4, Lorg/mistergroup/shouldianswer/ui/search/a$c$1;->a:Lorg/mistergroup/shouldianswer/ui/search/a$c$1;

    check-cast v4, Ljava/util/Comparator;

    invoke-static {v3, v4}, Lkotlin/a/g;->a(Ljava/util/List;Ljava/util/Comparator;)V

    .line 281
    sget-object v3, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const-string v4, "SearchAdapter.filterData sorting.end"

    invoke-static {v3, v4, v7, v6, v7}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 282
    iget-object v3, v0, Lorg/mistergroup/shouldianswer/ui/search/a$c;->d:Lorg/mistergroup/shouldianswer/ui/search/a;

    iput-object v2, v0, Lorg/mistergroup/shouldianswer/ui/search/a$c;->a:Ljava/lang/Object;

    iput-object v5, v0, Lorg/mistergroup/shouldianswer/ui/search/a$c;->b:Ljava/lang/Object;

    iput v6, v0, Lorg/mistergroup/shouldianswer/ui/search/a$c;->c:I

    invoke-virtual {v3, v5, v0}, Lorg/mistergroup/shouldianswer/ui/search/a;->a(Lorg/mistergroup/shouldianswer/ui/search/e;Lkotlin/c/c;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_1a

    return-object v1

    .line 283
    :cond_1a
    :goto_e
    sget-object v1, Lkotlin/o;->a:Lkotlin/o;

    return-object v1
.end method
