.class final Lorg/mistergroup/shouldianswer/components/a/e$c;
.super Lkotlin/c/b/a/k;
.source "ContactsAdapter.kt"

# interfaces
.implements Lkotlin/e/a/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mistergroup/shouldianswer/components/a/e;->a(Ljava/lang/String;)V
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
    b = "ContactsAdapter.kt"
    c = {
        0xee
    }
    d = "invokeSuspend"
    e = "org.mistergroup.shouldianswer.components.contacts.ContactsAdapter$setFilter$1"
.end annotation


# instance fields
.field a:Ljava/lang/Object;

.field b:Ljava/lang/Object;

.field c:I

.field final synthetic d:Lorg/mistergroup/shouldianswer/components/a/e;

.field final synthetic e:Ljava/lang/String;

.field private f:Lkotlinx/coroutines/ad;


# direct methods
.method constructor <init>(Lorg/mistergroup/shouldianswer/components/a/e;Ljava/lang/String;Lkotlin/c/c;)V
    .locals 0

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/components/a/e$c;->d:Lorg/mistergroup/shouldianswer/components/a/e;

    iput-object p2, p0, Lorg/mistergroup/shouldianswer/components/a/e$c;->e:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/c/b/a/k;-><init>(ILkotlin/c/c;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lkotlin/c/c;

    invoke-virtual {p0, p1, p2}, Lorg/mistergroup/shouldianswer/components/a/e$c;->a(Ljava/lang/Object;Lkotlin/c/c;)Lkotlin/c/c;

    move-result-object p1

    check-cast p1, Lorg/mistergroup/shouldianswer/components/a/e$c;

    sget-object p2, Lkotlin/o;->a:Lkotlin/o;

    invoke-virtual {p1, p2}, Lorg/mistergroup/shouldianswer/components/a/e$c;->b(Ljava/lang/Object;)Ljava/lang/Object;

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

    new-instance v0, Lorg/mistergroup/shouldianswer/components/a/e$c;

    iget-object v1, p0, Lorg/mistergroup/shouldianswer/components/a/e$c;->d:Lorg/mistergroup/shouldianswer/components/a/e;

    iget-object v2, p0, Lorg/mistergroup/shouldianswer/components/a/e$c;->e:Ljava/lang/String;

    invoke-direct {v0, v1, v2, p2}, Lorg/mistergroup/shouldianswer/components/a/e$c;-><init>(Lorg/mistergroup/shouldianswer/components/a/e;Ljava/lang/String;Lkotlin/c/c;)V

    check-cast p1, Lkotlinx/coroutines/ad;

    iput-object p1, v0, Lorg/mistergroup/shouldianswer/components/a/e$c;->f:Lkotlinx/coroutines/ad;

    return-object v0
.end method

.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v1, p0

    invoke-static {}, Lkotlin/c/a/b;->a()Ljava/lang/Object;

    move-result-object v0

    .line 187
    iget v2, v1, Lorg/mistergroup/shouldianswer/components/a/e$c;->c:I

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-eqz v2, :cond_1

    if-ne v2, v3, :cond_0

    iget-object v0, v1, Lorg/mistergroup/shouldianswer/components/a/e$c;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    iget-object v0, v1, Lorg/mistergroup/shouldianswer/components/a/e$c;->a:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/ad;

    :try_start_0
    invoke-static/range {p1 .. p1}, Lkotlin/k;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_b

    .line 244
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 187
    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/k;->a(Ljava/lang/Object;)V

    iget-object v2, v1, Lorg/mistergroup/shouldianswer/components/a/e$c;->f:Lkotlinx/coroutines/ad;

    .line 189
    :try_start_1
    sget-object v6, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const-string v7, "ContactsAdapter.setFilter sorting.startByIntent"

    invoke-static {v6, v7, v5, v4, v5}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 190
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 192
    iget-object v7, v1, Lorg/mistergroup/shouldianswer/components/a/e$c;->e:Ljava/lang/String;

    check-cast v7, Ljava/lang/CharSequence;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_13

    .line 193
    iget-object v7, v1, Lorg/mistergroup/shouldianswer/components/a/e$c;->d:Lorg/mistergroup/shouldianswer/components/a/e;

    invoke-static {v7}, Lorg/mistergroup/shouldianswer/components/a/e;->a(Lorg/mistergroup/shouldianswer/components/a/e;)Ljava/util/List;

    move-result-object v7

    if-eqz v7, :cond_12

    .line 194
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_12

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/mistergroup/shouldianswer/components/a/a;

    .line 195
    invoke-virtual {v8}, Lorg/mistergroup/shouldianswer/components/a/a;->e()Lorg/mistergroup/shouldianswer/components/a/a$a;

    move-result-object v9

    sget-object v10, Lorg/mistergroup/shouldianswer/components/a/a$a;->a:Lorg/mistergroup/shouldianswer/components/a/a$a;

    if-ne v9, v10, :cond_11

    .line 196
    invoke-virtual {v8}, Lorg/mistergroup/shouldianswer/components/a/a;->f()Lorg/mistergroup/shouldianswer/model/ac;

    move-result-object v9

    if-eqz v9, :cond_2

    .line 197
    invoke-virtual {v9}, Lorg/mistergroup/shouldianswer/model/ac;->f()Lorg/mistergroup/shouldianswer/model/NumberInfo;

    move-result-object v10

    if-eqz v10, :cond_2

    invoke-virtual {v10}, Lorg/mistergroup/shouldianswer/model/NumberInfo;->h()Ljava/lang/String;

    move-result-object v10

    goto :goto_1

    :cond_2
    move-object v10, v5

    :goto_1
    if-eqz v9, :cond_3

    .line 198
    invoke-virtual {v9}, Lorg/mistergroup/shouldianswer/model/ac;->b()Ljava/lang/String;

    move-result-object v9

    goto :goto_2

    :cond_3
    move-object v9, v5

    .line 199
    :goto_2
    iget-object v11, v1, Lorg/mistergroup/shouldianswer/components/a/e$c;->d:Lorg/mistergroup/shouldianswer/components/a/e;

    iget-object v12, v1, Lorg/mistergroup/shouldianswer/components/a/e$c;->e:Ljava/lang/String;

    invoke-static {v11, v10, v12}, Lorg/mistergroup/shouldianswer/components/a/e;->a(Lorg/mistergroup/shouldianswer/components/a/e;Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    .line 200
    iget-object v12, v1, Lorg/mistergroup/shouldianswer/components/a/e$c;->d:Lorg/mistergroup/shouldianswer/components/a/e;

    iget-object v13, v1, Lorg/mistergroup/shouldianswer/components/a/e$c;->e:Ljava/lang/String;

    invoke-static {v12, v9, v13}, Lorg/mistergroup/shouldianswer/components/a/e;->a(Lorg/mistergroup/shouldianswer/components/a/e;Ljava/lang/String;Ljava/lang/String;)I

    move-result v12

    const/4 v13, -0x1

    if-ne v11, v13, :cond_4

    :goto_3
    move v11, v4

    goto :goto_4

    :cond_4
    if-eq v12, v13, :cond_5

    if-ge v12, v11, :cond_5

    goto :goto_3

    :cond_5
    move v12, v11

    move v11, v3

    :goto_4
    if-ne v12, v13, :cond_6

    goto/16 :goto_9

    .line 213
    :cond_6
    iget-object v13, v1, Lorg/mistergroup/shouldianswer/components/a/e$c;->e:Ljava/lang/String;

    if-nez v13, :cond_7

    invoke-static {}, Lkotlin/e/b/h;->a()V

    :cond_7
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v14, "(this as java.lang.String).substring(startIndex)"

    const-string v15, "</strong>"

    const-string v4, "<strong>"

    const-string v5, "null cannot be cast to non-null type java.lang.String"

    move-object/from16 v16, v7

    const-string v7, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    if-ne v11, v3, :cond_e

    .line 215
    :try_start_2
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v10, :cond_9

    if-eqz v10, :cond_8

    const/4 v11, 0x0

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, v7}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_5

    :cond_8
    new-instance v0, Lkotlin/TypeCastException;

    invoke-direct {v0, v5}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    const/4 v11, 0x0

    :goto_5
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v10, :cond_b

    add-int v4, v12, v13

    if-eqz v10, :cond_a

    invoke-virtual {v10, v12, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v7}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_6

    :cond_a
    new-instance v0, Lkotlin/TypeCastException;

    invoke-direct {v0, v5}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    const/4 v4, 0x0

    :goto_6
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v10, :cond_d

    add-int/2addr v13, v12

    if-eqz v10, :cond_c

    invoke-virtual {v10, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v14}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_7

    :cond_c
    new-instance v0, Lkotlin/TypeCastException;

    invoke-direct {v0, v5}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    const/4 v5, 0x0

    :goto_7
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 216
    invoke-static {v4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    .line 217
    invoke-virtual {v8, v4}, Lorg/mistergroup/shouldianswer/components/a/a;->b(Landroid/text/Spanned;)V

    const/4 v4, 0x0

    .line 218
    move-object v5, v4

    check-cast v5, Landroid/text/Spanned;

    invoke-virtual {v8, v5}, Lorg/mistergroup/shouldianswer/components/a/a;->a(Landroid/text/Spanned;)V

    goto :goto_8

    .line 220
    :cond_e
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    if-nez v9, :cond_f

    invoke-static {}, Lkotlin/e/b/h;->a()V

    :cond_f
    if-eqz v9, :cond_10

    const/4 v11, 0x0

    invoke-virtual {v9, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v7}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/2addr v13, v12

    invoke-virtual {v9, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v7}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v14}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 221
    invoke-static {v4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    const/4 v5, 0x0

    .line 222
    move-object v7, v5

    check-cast v7, Landroid/text/Spanned;

    invoke-virtual {v8, v7}, Lorg/mistergroup/shouldianswer/components/a/a;->b(Landroid/text/Spanned;)V

    .line 223
    invoke-virtual {v8, v4}, Lorg/mistergroup/shouldianswer/components/a/a;->a(Landroid/text/Spanned;)V

    .line 225
    :goto_8
    invoke-virtual {v8, v12}, Lorg/mistergroup/shouldianswer/components/a/a;->a(I)V

    .line 226
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 220
    :cond_10
    new-instance v0, Lkotlin/TypeCastException;

    invoke-direct {v0, v5}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11
    :goto_9
    move-object/from16 v16, v7

    :goto_a
    move-object/from16 v7, v16

    const/4 v4, 0x2

    const/4 v5, 0x0

    goto/16 :goto_0

    .line 231
    :cond_12
    move-object v4, v6

    check-cast v4, Ljava/util/List;

    sget-object v5, Lorg/mistergroup/shouldianswer/components/a/e$c$1;->a:Lorg/mistergroup/shouldianswer/components/a/e$c$1;

    check-cast v5, Ljava/util/Comparator;

    invoke-static {v4, v5}, Lkotlin/a/g;->a(Ljava/util/List;Ljava/util/Comparator;)V

    .line 237
    :cond_13
    sget-object v4, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const-string v5, "ContactsAdapter.setFilter sorting.end"

    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-static {v4, v5, v8, v7, v8}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 238
    invoke-static {}, Lorg/mistergroup/shouldianswer/utils/c;->b()Lkotlinx/coroutines/y;

    move-result-object v4

    check-cast v4, Lkotlin/c/f;

    new-instance v5, Lorg/mistergroup/shouldianswer/components/a/e$c$2;

    invoke-direct {v5, v1, v6, v8}, Lorg/mistergroup/shouldianswer/components/a/e$c$2;-><init>(Lorg/mistergroup/shouldianswer/components/a/e$c;Ljava/util/ArrayList;Lkotlin/c/c;)V

    check-cast v5, Lkotlin/e/a/m;

    iput-object v2, v1, Lorg/mistergroup/shouldianswer/components/a/e$c;->a:Ljava/lang/Object;

    iput-object v6, v1, Lorg/mistergroup/shouldianswer/components/a/e$c;->b:Ljava/lang/Object;

    iput v3, v1, Lorg/mistergroup/shouldianswer/components/a/e$c;->c:I

    invoke-static {v4, v5, v1}, Lkotlinx/coroutines/e;->a(Lkotlin/c/f;Lkotlin/e/a/m;Lkotlin/c/c;)Ljava/lang/Object;

    move-result-object v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    if-ne v2, v0, :cond_14

    return-object v0

    :catch_0
    move-exception v0

    .line 242
    sget-object v2, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v2, v0, v4, v3, v4}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/Exception;Ljava/lang/String;ILjava/lang/Object;)V

    .line 244
    :cond_14
    :goto_b
    sget-object v0, Lkotlin/o;->a:Lkotlin/o;

    return-object v0
.end method
