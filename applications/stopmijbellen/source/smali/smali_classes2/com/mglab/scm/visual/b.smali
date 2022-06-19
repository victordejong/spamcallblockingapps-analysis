.class public final synthetic Lcom/mglab/scm/visual/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le2/g$c;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/mglab/scm/visual/c;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lcom/mglab/scm/visual/c;II)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/mglab/scm/visual/b;->a:I

    iput-object p1, p0, Lcom/mglab/scm/visual/b;->b:Lcom/mglab/scm/visual/c;

    iput p2, p0, Lcom/mglab/scm/visual/b;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final g(Le2/g;Le2/b;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v0, Lcom/mglab/scm/visual/b;->a:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x2

    const v6, 0x7f1100c5

    const/4 v7, 0x0

    const v8, 0x7f0901dd

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_3

    :pswitch_0
    iget-object v2, v0, Lcom/mglab/scm/visual/b;->b:Lcom/mglab/scm/visual/c;

    iget v9, v0, Lcom/mglab/scm/visual/b;->c:I

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1
    invoke-virtual {v1, v8}, Le2/c;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 2
    :goto_0
    invoke-virtual {v1}, Landroid/widget/ListView;->getCount()I

    move-result v12

    if-ge v8, v12, :cond_1

    .line 3
    invoke-virtual {v1, v8}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/mglab/scm/visual/ContactItem;

    .line 4
    iget-boolean v12, v12, Lcom/mglab/scm/visual/ContactItem;->e:Z

    if-eqz v12, :cond_0

    add-int/lit8 v10, v10, 0x1

    move v11, v8

    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_1
    if-ne v10, v4, :cond_2

    .line 5
    invoke-virtual {v1, v11}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mglab/scm/visual/ContactItem;

    .line 6
    iget-object v14, v4, Lcom/mglab/scm/visual/ContactItem;->c:Ljava/lang/String;

    .line 7
    invoke-virtual {v1, v11}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mglab/scm/visual/ContactItem;

    .line 8
    iget-object v4, v4, Lcom/mglab/scm/visual/ContactItem;->b:Ljava/lang/String;

    .line 9
    invoke-static {v4}, Lh8/q;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 10
    invoke-virtual {v1, v11}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mglab/scm/visual/ContactItem;

    .line 11
    iget-object v1, v1, Lcom/mglab/scm/visual/ContactItem;->d:Ljava/lang/String;

    .line 12
    new-instance v4, Lcom/mglab/scm/visual/c;

    iget-object v5, v2, Lcom/mglab/scm/visual/c;->a:Landroid/content/Context;

    iget-object v2, v2, Lcom/mglab/scm/visual/c;->b:Landroid/view/View;

    invoke-direct {v4, v5, v2}, Lcom/mglab/scm/visual/c;-><init>(Landroid/content/Context;Landroid/view/View;)V

    new-instance v2, Lcom/mglab/scm/visual/CallItem;

    new-instance v15, Ljava/util/Date;

    invoke-direct {v15}, Ljava/util/Date;-><init>()V

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object v12, v2

    move-object/from16 v17, v1

    invoke-direct/range {v12 .. v17}, Lcom/mglab/scm/visual/CallItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-virtual {v4, v9, v2}, Lcom/mglab/scm/visual/c;->d(ILcom/mglab/scm/visual/CallItem;)V

    goto/16 :goto_2

    :cond_2
    const/4 v8, 0x0

    const/4 v10, 0x0

    .line 13
    :goto_1
    invoke-virtual {v1}, Landroid/widget/ListView;->getCount()I

    move-result v11

    if-ge v8, v11, :cond_5

    .line 14
    invoke-virtual {v1, v8}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/mglab/scm/visual/ContactItem;

    .line 15
    iget-boolean v11, v11, Lcom/mglab/scm/visual/ContactItem;->e:Z

    if-eqz v11, :cond_4

    .line 16
    invoke-virtual {v1, v8}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/mglab/scm/visual/ContactItem;

    .line 17
    iget-object v11, v11, Lcom/mglab/scm/visual/ContactItem;->c:Ljava/lang/String;

    .line 18
    invoke-virtual {v1, v8}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/mglab/scm/visual/ContactItem;

    .line 19
    iget-object v12, v12, Lcom/mglab/scm/visual/ContactItem;->b:Ljava/lang/String;

    .line 20
    invoke-virtual {v1, v8}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/mglab/scm/visual/ContactItem;

    .line 21
    iget-object v13, v13, Lcom/mglab/scm/visual/ContactItem;->d:Ljava/lang/String;

    if-ne v9, v5, :cond_3

    .line 22
    invoke-static {v12}, Lh8/q;->c(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_3

    .line 23
    invoke-static {v12}, Ln8/d;->d(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_3

    .line 24
    new-instance v14, Lh8/c;

    invoke-direct {v14}, Lh8/c;-><init>()V

    .line 25
    iput-object v11, v14, Lh8/c;->d:Ljava/lang/String;

    .line 26
    invoke-static {v12}, Lh8/q;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    iput-object v15, v14, Lh8/c;->c:Ljava/lang/String;

    .line 27
    iput-object v13, v14, Lh8/c;->e:Ljava/lang/String;

    .line 28
    iput v3, v14, Lh8/c;->f:I

    .line 29
    invoke-virtual {v14}, Lb9/a;->a()Z

    add-int/lit8 v10, v10, 0x1

    :cond_3
    if-ne v9, v4, :cond_4

    .line 30
    invoke-static {v12}, Lh8/q;->i(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_4

    .line 31
    invoke-static {v12}, Ln8/d;->d(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_4

    .line 32
    new-instance v14, Lh8/w;

    invoke-direct {v14}, Lh8/w;-><init>()V

    .line 33
    iput-object v11, v14, Lh8/w;->d:Ljava/lang/String;

    .line 34
    invoke-static {v12}, Lh8/q;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v14, Lh8/w;->c:Ljava/lang/String;

    .line 35
    iput-object v13, v14, Lh8/w;->e:Ljava/lang/String;

    .line 36
    iput v3, v14, Lh8/w;->f:I

    .line 37
    invoke-virtual {v14}, Lb9/a;->a()Z

    add-int/lit8 v10, v10, 0x1

    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 38
    :cond_5
    iget-object v1, v2, Lcom/mglab/scm/visual/c;->a:Landroid/content/Context;

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v3

    invoke-virtual {v1, v6, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v7, v2}, Lf8/g;->L(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;)V

    .line 39
    invoke-static {}, Lba/b;->b()Lba/b;

    move-result-object v1

    new-instance v2, Lk8/a;

    invoke-direct {v2, v4}, Lk8/a;-><init>(I)V

    invoke-virtual {v1, v2}, Lba/b;->g(Ljava/lang/Object;)V

    .line 40
    invoke-static {}, Lba/b;->b()Lba/b;

    move-result-object v1

    new-instance v2, Lk8/c0;

    invoke-direct {v2, v4}, Lk8/c0;-><init>(I)V

    invoke-virtual {v1, v2}, Lba/b;->g(Ljava/lang/Object;)V

    :goto_2
    return-void

    .line 41
    :goto_3
    iget-object v2, v0, Lcom/mglab/scm/visual/b;->b:Lcom/mglab/scm/visual/c;

    iget v9, v0, Lcom/mglab/scm/visual/b;->c:I

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    const-class v10, Lcom/mglab/scm/visual/CallItem;

    invoke-virtual {v1, v8}, Le2/c;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    const/4 v8, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 43
    :goto_4
    invoke-virtual {v1}, Landroid/widget/ListView;->getCount()I

    move-result v13

    if-ge v8, v13, :cond_7

    .line 44
    invoke-virtual {v1, v8}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 45
    invoke-virtual {v1, v8}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/mglab/scm/visual/CallItem;

    .line 46
    iget-boolean v13, v13, Lcom/mglab/scm/visual/CallItem;->e:Z

    if-eqz v13, :cond_6

    add-int/lit8 v11, v11, 0x1

    move v12, v8

    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :cond_7
    if-ne v11, v4, :cond_8

    .line 47
    invoke-virtual {v1, v12}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mglab/scm/visual/CallItem;

    .line 48
    new-instance v3, Lcom/mglab/scm/visual/c;

    iget-object v4, v2, Lcom/mglab/scm/visual/c;->a:Landroid/content/Context;

    iget-object v2, v2, Lcom/mglab/scm/visual/c;->b:Landroid/view/View;

    invoke-direct {v3, v4, v2}, Lcom/mglab/scm/visual/c;-><init>(Landroid/content/Context;Landroid/view/View;)V

    invoke-virtual {v3, v9, v1}, Lcom/mglab/scm/visual/c;->d(ILcom/mglab/scm/visual/CallItem;)V

    goto/16 :goto_7

    :cond_8
    const/4 v8, 0x0

    const/4 v11, 0x0

    .line 49
    :goto_5
    invoke-virtual {v1}, Landroid/widget/ListView;->getCount()I

    move-result v12

    if-ge v8, v12, :cond_c

    .line 50
    invoke-virtual {v1, v8}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_b

    .line 51
    invoke-virtual {v1, v8}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/mglab/scm/visual/CallItem;

    .line 52
    iget-boolean v12, v12, Lcom/mglab/scm/visual/CallItem;->e:Z

    if-eqz v12, :cond_b

    .line 53
    invoke-virtual {v1, v8}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/mglab/scm/visual/CallItem;

    invoke-virtual {v12}, Lcom/mglab/scm/visual/CallItem;->d()Ljava/lang/String;

    move-result-object v12

    .line 54
    invoke-virtual {v1, v8}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/mglab/scm/visual/CallItem;

    invoke-virtual {v13}, Lcom/mglab/scm/visual/CallItem;->e()Ljava/lang/String;

    move-result-object v13

    .line 55
    invoke-virtual {v1, v8}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/mglab/scm/visual/CallItem;

    .line 56
    iget-object v15, v14, Lcom/mglab/scm/visual/CallItem;->d:Lh8/l;

    if-nez v15, :cond_9

    .line 57
    iget-object v14, v14, Lcom/mglab/scm/visual/CallItem;->k:Ljava/lang/String;

    goto :goto_6

    .line 58
    :cond_9
    iget-object v14, v15, Lh8/l;->v:Ljava/lang/String;

    :goto_6
    if-ne v9, v5, :cond_a

    .line 59
    invoke-static {v13}, Lh8/q;->c(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_a

    .line 60
    invoke-static {v13}, Ln8/d;->d(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_a

    .line 61
    new-instance v15, Lh8/c;

    invoke-direct {v15}, Lh8/c;-><init>()V

    .line 62
    iput-object v12, v15, Lh8/c;->d:Ljava/lang/String;

    .line 63
    iput-object v13, v15, Lh8/c;->c:Ljava/lang/String;

    .line 64
    iput-object v14, v15, Lh8/c;->e:Ljava/lang/String;

    .line 65
    iput v3, v15, Lh8/c;->f:I

    .line 66
    invoke-virtual {v15}, Lb9/a;->a()Z

    add-int/lit8 v11, v11, 0x1

    :cond_a
    if-ne v9, v4, :cond_b

    .line 67
    invoke-static {v13}, Lh8/q;->i(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_b

    .line 68
    invoke-static {v13}, Ln8/d;->d(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_b

    .line 69
    new-instance v15, Lh8/w;

    invoke-direct {v15}, Lh8/w;-><init>()V

    .line 70
    iput-object v12, v15, Lh8/w;->d:Ljava/lang/String;

    .line 71
    iput-object v13, v15, Lh8/w;->c:Ljava/lang/String;

    .line 72
    iput-object v14, v15, Lh8/w;->e:Ljava/lang/String;

    .line 73
    iput v3, v15, Lh8/w;->f:I

    .line 74
    invoke-virtual {v15}, Lb9/a;->a()Z

    add-int/lit8 v11, v11, 0x1

    :cond_b
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_5

    .line 75
    :cond_c
    iget-object v1, v2, Lcom/mglab/scm/visual/c;->a:Landroid/content/Context;

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v3

    invoke-virtual {v1, v6, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v7, v2}, Lf8/g;->L(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;)V

    .line 76
    invoke-static {}, Lba/b;->b()Lba/b;

    move-result-object v1

    new-instance v2, Lk8/a;

    invoke-direct {v2, v4}, Lk8/a;-><init>(I)V

    invoke-virtual {v1, v2}, Lba/b;->g(Ljava/lang/Object;)V

    .line 77
    invoke-static {}, Lba/b;->b()Lba/b;

    move-result-object v1

    new-instance v2, Lk8/c0;

    invoke-direct {v2, v4}, Lk8/c0;-><init>(I)V

    invoke-virtual {v1, v2}, Lba/b;->g(Ljava/lang/Object;)V

    :goto_7
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
