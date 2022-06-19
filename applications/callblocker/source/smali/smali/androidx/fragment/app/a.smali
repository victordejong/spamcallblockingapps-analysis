.class final Landroidx/fragment/app/a;
.super Landroidx/fragment/app/o;
.source "BackStackRecord.java"

# interfaces
.implements Landroidx/fragment/app/j$e;


# instance fields
.field final a:Landroidx/fragment/app/j;

.field b:Z

.field c:I


# direct methods
.method public constructor <init>(Landroidx/fragment/app/j;)V
    .locals 1

    .prologue
    .line 140
    invoke-direct {p0}, Landroidx/fragment/app/o;-><init>()V

    .line 39
    const/4 v0, -0x1

    iput v0, p0, Landroidx/fragment/app/a;->c:I

    .line 141
    iput-object p1, p0, Landroidx/fragment/app/a;->a:Landroidx/fragment/app/j;

    .line 142
    return-void
.end method

.method private static b(Landroidx/fragment/app/o$a;)Z
    .locals 2

    .prologue
    .line 652
    iget-object v0, p0, Landroidx/fragment/app/o$a;->b:Landroidx/fragment/app/Fragment;

    .line 653
    if-eqz v0, :cond_0

    iget-boolean v1, v0, Landroidx/fragment/app/Fragment;->t:Z

    if-eqz v1, :cond_0

    iget-object v1, v0, Landroidx/fragment/app/Fragment;->O:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-boolean v1, v0, Landroidx/fragment/app/Fragment;->I:Z

    if-nez v1, :cond_0

    iget-boolean v1, v0, Landroidx/fragment/app/Fragment;->H:Z

    if-nez v1, :cond_0

    .line 654
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->aq()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 653
    :goto_0
    return v0

    .line 654
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method a(Z)I
    .locals 3

    .prologue
    .line 303
    iget-boolean v0, p0, Landroidx/fragment/app/a;->b:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "commit already called"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 304
    :cond_0
    sget-boolean v0, Landroidx/fragment/app/j;->b:Z

    if-eqz v0, :cond_1

    .line 305
    const-string/jumbo v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Commit: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    new-instance v0, Landroidx/core/g/b;

    const-string/jumbo v1, "FragmentManager"

    invoke-direct {v0, v1}, Landroidx/core/g/b;-><init>(Ljava/lang/String;)V

    .line 307
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 308
    const-string/jumbo v0, "  "

    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/a;->a(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 309
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    .line 311
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/a;->b:Z

    .line 312
    iget-boolean v0, p0, Landroidx/fragment/app/a;->k:Z

    if-eqz v0, :cond_2

    .line 313
    iget-object v0, p0, Landroidx/fragment/app/a;->a:Landroidx/fragment/app/j;

    invoke-virtual {v0, p0}, Landroidx/fragment/app/j;->a(Landroidx/fragment/app/a;)I

    move-result v0

    iput v0, p0, Landroidx/fragment/app/a;->c:I

    .line 317
    :goto_0
    iget-object v0, p0, Landroidx/fragment/app/a;->a:Landroidx/fragment/app/j;

    invoke-virtual {v0, p0, p1}, Landroidx/fragment/app/j;->a(Landroidx/fragment/app/j$e;Z)V

    .line 318
    iget v0, p0, Landroidx/fragment/app/a;->c:I

    return v0

    .line 315
    :cond_2
    const/4 v0, -0x1

    iput v0, p0, Landroidx/fragment/app/a;->c:I

    goto :goto_0
.end method

.method a(Ljava/util/ArrayList;Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/Fragment;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroidx/fragment/app/Fragment;",
            ">;",
            "Landroidx/fragment/app/Fragment;",
            ")",
            "Landroidx/fragment/app/Fragment;"
        }
    .end annotation

    .prologue
    .line 528
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Landroidx/fragment/app/a;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_5

    .line 529
    iget-object v0, p0, Landroidx/fragment/app/a;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/o$a;

    .line 530
    iget v2, v0, Landroidx/fragment/app/o$a;->a:I

    packed-switch v2, :pswitch_data_0

    .line 528
    :cond_0
    :goto_1
    :pswitch_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 533
    :pswitch_1
    iget-object v0, v0, Landroidx/fragment/app/o$a;->b:Landroidx/fragment/app/Fragment;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 537
    :pswitch_2
    iget-object v2, v0, Landroidx/fragment/app/o$a;->b:Landroidx/fragment/app/Fragment;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 538
    iget-object v2, v0, Landroidx/fragment/app/o$a;->b:Landroidx/fragment/app/Fragment;

    if-ne v2, p2, :cond_0

    .line 539
    iget-object v2, p0, Landroidx/fragment/app/a;->d:Ljava/util/ArrayList;

    new-instance v3, Landroidx/fragment/app/o$a;

    const/16 v4, 0x9

    iget-object v0, v0, Landroidx/fragment/app/o$a;->b:Landroidx/fragment/app/Fragment;

    invoke-direct {v3, v4, v0}, Landroidx/fragment/app/o$a;-><init>(ILandroidx/fragment/app/Fragment;)V

    invoke-virtual {v2, v1, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 540
    add-int/lit8 v1, v1, 0x1

    .line 541
    const/4 p2, 0x0

    goto :goto_1

    .line 546
    :pswitch_3
    iget-object v6, v0, Landroidx/fragment/app/o$a;->b:Landroidx/fragment/app/Fragment;

    .line 547
    iget v7, v6, Landroidx/fragment/app/Fragment;->F:I

    .line 548
    const/4 v4, 0x0

    .line 549
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v5, v2, -0x1

    move v2, v1

    move-object v3, p2

    :goto_2
    if-ltz v5, :cond_3

    .line 550
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    .line 551
    iget v8, v1, Landroidx/fragment/app/Fragment;->F:I

    if-ne v8, v7, :cond_6

    .line 552
    if-ne v1, v6, :cond_1

    .line 553
    const/4 v1, 0x1

    .line 549
    :goto_3
    add-int/lit8 v5, v5, -0x1

    move v4, v1

    goto :goto_2

    .line 557
    :cond_1
    if-ne v1, v3, :cond_2

    .line 558
    iget-object v3, p0, Landroidx/fragment/app/a;->d:Ljava/util/ArrayList;

    new-instance v8, Landroidx/fragment/app/o$a;

    const/16 v9, 0x9

    invoke-direct {v8, v9, v1}, Landroidx/fragment/app/o$a;-><init>(ILandroidx/fragment/app/Fragment;)V

    invoke-virtual {v3, v2, v8}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 559
    add-int/lit8 v2, v2, 0x1

    .line 560
    const/4 v3, 0x0

    .line 562
    :cond_2
    new-instance v8, Landroidx/fragment/app/o$a;

    const/4 v9, 0x3

    invoke-direct {v8, v9, v1}, Landroidx/fragment/app/o$a;-><init>(ILandroidx/fragment/app/Fragment;)V

    .line 563
    iget v9, v0, Landroidx/fragment/app/o$a;->c:I

    iput v9, v8, Landroidx/fragment/app/o$a;->c:I

    .line 564
    iget v9, v0, Landroidx/fragment/app/o$a;->e:I

    iput v9, v8, Landroidx/fragment/app/o$a;->e:I

    .line 565
    iget v9, v0, Landroidx/fragment/app/o$a;->d:I

    iput v9, v8, Landroidx/fragment/app/o$a;->d:I

    .line 566
    iget v9, v0, Landroidx/fragment/app/o$a;->f:I

    iput v9, v8, Landroidx/fragment/app/o$a;->f:I

    .line 567
    iget-object v9, p0, Landroidx/fragment/app/a;->d:Ljava/util/ArrayList;

    invoke-virtual {v9, v2, v8}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 568
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 569
    add-int/lit8 v2, v2, 0x1

    move v1, v4

    goto :goto_3

    .line 573
    :cond_3
    if-eqz v4, :cond_4

    .line 574
    iget-object v0, p0, Landroidx/fragment/app/a;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 575
    add-int/lit8 v2, v2, -0x1

    :goto_4
    move v1, v2

    move-object p2, v3

    .line 581
    goto/16 :goto_1

    .line 577
    :cond_4
    const/4 v1, 0x1

    iput v1, v0, Landroidx/fragment/app/o$a;->a:I

    .line 578
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 585
    :pswitch_4
    iget-object v2, p0, Landroidx/fragment/app/a;->d:Ljava/util/ArrayList;

    new-instance v3, Landroidx/fragment/app/o$a;

    const/16 v4, 0x9

    invoke-direct {v3, v4, p2}, Landroidx/fragment/app/o$a;-><init>(ILandroidx/fragment/app/Fragment;)V

    invoke-virtual {v2, v1, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 586
    add-int/lit8 v1, v1, 0x1

    .line 588
    iget-object p2, v0, Landroidx/fragment/app/o$a;->b:Landroidx/fragment/app/Fragment;

    goto/16 :goto_1

    .line 593
    :cond_5
    return-object p2

    :cond_6
    move v1, v4

    goto :goto_3

    .line 530
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_4
    .end packed-switch
.end method

.method public a(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/o;
    .locals 3

    .prologue
    .line 186
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->A:Landroidx/fragment/app/j;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroidx/fragment/app/Fragment;->A:Landroidx/fragment/app/j;

    iget-object v1, p0, Landroidx/fragment/app/a;->a:Landroidx/fragment/app/j;

    if-eq v0, v1, :cond_0

    .line 187
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Cannot remove Fragment attached to a different FragmentManager. Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 188
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is already attached to a FragmentManager."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 191
    :cond_0
    invoke-super {p0, p1}, Landroidx/fragment/app/o;->a(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/o;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/e$b;)Landroidx/fragment/app/o;
    .locals 3

    .prologue
    .line 243
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->A:Landroidx/fragment/app/j;

    iget-object v1, p0, Landroidx/fragment/app/a;->a:Landroidx/fragment/app/j;

    if-eq v0, v1, :cond_0

    .line 244
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Cannot setMaxLifecycle for Fragment not attached to FragmentManager "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroidx/fragment/app/a;->a:Landroidx/fragment/app/j;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 247
    :cond_0
    sget-object v0, Landroidx/lifecycle/e$b;->c:Landroidx/lifecycle/e$b;

    invoke-virtual {p2, v0}, Landroidx/lifecycle/e$b;->a(Landroidx/lifecycle/e$b;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 248
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Cannot set maximum Lifecycle below "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroidx/lifecycle/e$b;->c:Landroidx/lifecycle/e$b;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 251
    :cond_1
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/o;->a(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/e$b;)Landroidx/fragment/app/o;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .locals 2

    .prologue
    .line 272
    iget-object v0, p0, Landroidx/fragment/app/a;->u:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 273
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Landroidx/fragment/app/a;->u:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 274
    iget-object v0, p0, Landroidx/fragment/app/a;->u:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 273
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 276
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/fragment/app/a;->u:Ljava/util/ArrayList;

    .line 278
    :cond_1
    return-void
.end method

.method a(I)V
    .locals 6

    .prologue
    .line 255
    iget-boolean v0, p0, Landroidx/fragment/app/a;->k:Z

    if-nez v0, :cond_1

    .line 269
    :cond_0
    return-void

    .line 258
    :cond_1
    sget-boolean v0, Landroidx/fragment/app/j;->b:Z

    if-eqz v0, :cond_2

    const-string/jumbo v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Bump nesting in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    :cond_2
    iget-object v0, p0, Landroidx/fragment/app/a;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 261
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 262
    iget-object v0, p0, Landroidx/fragment/app/a;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/o$a;

    .line 263
    iget-object v3, v0, Landroidx/fragment/app/o$a;->b:Landroidx/fragment/app/Fragment;

    if-eqz v3, :cond_3

    .line 264
    iget-object v3, v0, Landroidx/fragment/app/o$a;->b:Landroidx/fragment/app/Fragment;

    iget v4, v3, Landroidx/fragment/app/Fragment;->z:I

    add-int/2addr v4, p1

    iput v4, v3, Landroidx/fragment/app/Fragment;->z:I

    .line 265
    sget-boolean v3, Landroidx/fragment/app/j;->b:Z

    if-eqz v3, :cond_3

    const-string/jumbo v3, "FragmentManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Bump nesting of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Landroidx/fragment/app/o$a;->b:Landroidx/fragment/app/Fragment;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v0, v0, Landroidx/fragment/app/o$a;->b:Landroidx/fragment/app/Fragment;

    iget v0, v0, Landroidx/fragment/app/Fragment;->z:I

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method a(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 179
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/fragment/app/o;->a(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    .line 180
    iget-object v0, p0, Landroidx/fragment/app/a;->a:Landroidx/fragment/app/j;

    iput-object v0, p2, Landroidx/fragment/app/Fragment;->A:Landroidx/fragment/app/j;

    .line 181
    return-void
.end method

.method a(Landroidx/fragment/app/Fragment$b;)V
    .locals 3

    .prologue
    .line 643
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Landroidx/fragment/app/a;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 644
    iget-object v0, p0, Landroidx/fragment/app/a;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/o$a;

    .line 645
    invoke-static {v0}, Landroidx/fragment/app/a;->b(Landroidx/fragment/app/o$a;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 646
    iget-object v0, v0, Landroidx/fragment/app/o$a;->b:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/Fragment;->a(Landroidx/fragment/app/Fragment$b;)V

    .line 643
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 649
    :cond_1
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Landroidx/fragment/app/a;->a(Ljava/lang/String;Ljava/io/PrintWriter;Z)V

    .line 60
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/io/PrintWriter;Z)V
    .locals 5

    .prologue
    .line 63
    if-eqz p3, :cond_8

    .line 64
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mName="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/fragment/app/a;->m:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 65
    const-string/jumbo v0, " mIndex="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroidx/fragment/app/a;->c:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 66
    const-string/jumbo v0, " mCommitted="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroidx/fragment/app/a;->b:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 67
    iget v0, p0, Landroidx/fragment/app/a;->i:I

    if-eqz v0, :cond_0

    .line 68
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mTransition=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 69
    iget v0, p0, Landroidx/fragment/app/a;->i:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 70
    const-string/jumbo v0, " mTransitionStyle=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 71
    iget v0, p0, Landroidx/fragment/app/a;->j:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 73
    :cond_0
    iget v0, p0, Landroidx/fragment/app/a;->e:I

    if-nez v0, :cond_1

    iget v0, p0, Landroidx/fragment/app/a;->f:I

    if-eqz v0, :cond_2

    .line 74
    :cond_1
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mEnterAnim=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 75
    iget v0, p0, Landroidx/fragment/app/a;->e:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 76
    const-string/jumbo v0, " mExitAnim=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 77
    iget v0, p0, Landroidx/fragment/app/a;->f:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 79
    :cond_2
    iget v0, p0, Landroidx/fragment/app/a;->g:I

    if-nez v0, :cond_3

    iget v0, p0, Landroidx/fragment/app/a;->h:I

    if-eqz v0, :cond_4

    .line 80
    :cond_3
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mPopEnterAnim=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 81
    iget v0, p0, Landroidx/fragment/app/a;->g:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 82
    const-string/jumbo v0, " mPopExitAnim=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 83
    iget v0, p0, Landroidx/fragment/app/a;->h:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 85
    :cond_4
    iget v0, p0, Landroidx/fragment/app/a;->n:I

    if-nez v0, :cond_5

    iget-object v0, p0, Landroidx/fragment/app/a;->o:Ljava/lang/CharSequence;

    if-eqz v0, :cond_6

    .line 86
    :cond_5
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mBreadCrumbTitleRes=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 87
    iget v0, p0, Landroidx/fragment/app/a;->n:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 88
    const-string/jumbo v0, " mBreadCrumbTitleText="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Landroidx/fragment/app/a;->o:Ljava/lang/CharSequence;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 91
    :cond_6
    iget v0, p0, Landroidx/fragment/app/a;->p:I

    if-nez v0, :cond_7

    iget-object v0, p0, Landroidx/fragment/app/a;->q:Ljava/lang/CharSequence;

    if-eqz v0, :cond_8

    .line 92
    :cond_7
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mBreadCrumbShortTitleRes=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 93
    iget v0, p0, Landroidx/fragment/app/a;->p:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 94
    const-string/jumbo v0, " mBreadCrumbShortTitleText="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 95
    iget-object v0, p0, Landroidx/fragment/app/a;->q:Ljava/lang/CharSequence;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 99
    :cond_8
    iget-object v0, p0, Landroidx/fragment/app/a;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    .line 100
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "Operations:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 101
    iget-object v0, p0, Landroidx/fragment/app/a;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 102
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v3, :cond_d

    .line 103
    iget-object v0, p0, Landroidx/fragment/app/a;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/o$a;

    .line 105
    iget v1, v0, Landroidx/fragment/app/o$a;->a:I

    packed-switch v1, :pswitch_data_0

    .line 117
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "cmd="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, v0, Landroidx/fragment/app/o$a;->a:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 119
    :goto_1
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, "  Op #"

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 120
    const-string/jumbo v4, ": "

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 121
    const-string/jumbo v1, " "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, v0, Landroidx/fragment/app/o$a;->b:Landroidx/fragment/app/Fragment;

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 122
    if-eqz p3, :cond_c

    .line 123
    iget v1, v0, Landroidx/fragment/app/o$a;->c:I

    if-nez v1, :cond_9

    iget v1, v0, Landroidx/fragment/app/o$a;->d:I

    if-eqz v1, :cond_a

    .line 124
    :cond_9
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "enterAnim=#"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 125
    iget v1, v0, Landroidx/fragment/app/o$a;->c:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 126
    const-string/jumbo v1, " exitAnim=#"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 127
    iget v1, v0, Landroidx/fragment/app/o$a;->d:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 129
    :cond_a
    iget v1, v0, Landroidx/fragment/app/o$a;->e:I

    if-nez v1, :cond_b

    iget v1, v0, Landroidx/fragment/app/o$a;->f:I

    if-eqz v1, :cond_c

    .line 130
    :cond_b
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "popEnterAnim=#"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 131
    iget v1, v0, Landroidx/fragment/app/o$a;->e:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 132
    const-string/jumbo v1, " popExitAnim=#"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 133
    iget v0, v0, Landroidx/fragment/app/o$a;->f:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 102
    :cond_c
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_0

    .line 106
    :pswitch_0
    const-string/jumbo v1, "NULL"

    goto :goto_1

    .line 107
    :pswitch_1
    const-string/jumbo v1, "ADD"

    goto :goto_1

    .line 108
    :pswitch_2
    const-string/jumbo v1, "REPLACE"

    goto/16 :goto_1

    .line 109
    :pswitch_3
    const-string/jumbo v1, "REMOVE"

    goto/16 :goto_1

    .line 110
    :pswitch_4
    const-string/jumbo v1, "HIDE"

    goto/16 :goto_1

    .line 111
    :pswitch_5
    const-string/jumbo v1, "SHOW"

    goto/16 :goto_1

    .line 112
    :pswitch_6
    const-string/jumbo v1, "DETACH"

    goto/16 :goto_1

    .line 113
    :pswitch_7
    const-string/jumbo v1, "ATTACH"

    goto/16 :goto_1

    .line 114
    :pswitch_8
    const-string/jumbo v1, "SET_PRIMARY_NAV"

    goto/16 :goto_1

    .line 115
    :pswitch_9
    const-string/jumbo v1, "UNSET_PRIMARY_NAV"

    goto/16 :goto_1

    .line 116
    :pswitch_a
    const-string/jumbo v1, "OP_SET_MAX_LIFECYCLE"

    goto/16 :goto_1

    .line 138
    :cond_d
    return-void

    .line 105
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method a(Ljava/util/ArrayList;II)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroidx/fragment/app/a;",
            ">;II)Z"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 357
    if-ne p3, p2, :cond_0

    move v0, v3

    .line 381
    :goto_0
    return v0

    .line 360
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/a;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 361
    const/4 v1, -0x1

    move v6, v3

    .line 362
    :goto_1
    if-ge v6, v7, :cond_6

    .line 363
    iget-object v0, p0, Landroidx/fragment/app/a;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/o$a;

    .line 364
    iget-object v2, v0, Landroidx/fragment/app/o$a;->b:Landroidx/fragment/app/Fragment;

    if-eqz v2, :cond_1

    iget-object v0, v0, Landroidx/fragment/app/o$a;->b:Landroidx/fragment/app/Fragment;

    iget v2, v0, Landroidx/fragment/app/Fragment;->F:I

    .line 365
    :goto_2
    if-eqz v2, :cond_7

    if-eq v2, v1, :cond_7

    move v5, p2

    .line 367
    :goto_3
    if-ge v5, p3, :cond_5

    .line 368
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/a;

    .line 369
    iget-object v1, v0, Landroidx/fragment/app/a;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v8

    move v4, v3

    .line 370
    :goto_4
    if-ge v4, v8, :cond_4

    .line 371
    iget-object v1, v0, Landroidx/fragment/app/a;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/o$a;

    .line 372
    iget-object v9, v1, Landroidx/fragment/app/o$a;->b:Landroidx/fragment/app/Fragment;

    if-eqz v9, :cond_2

    iget-object v1, v1, Landroidx/fragment/app/o$a;->b:Landroidx/fragment/app/Fragment;

    iget v1, v1, Landroidx/fragment/app/Fragment;->F:I

    .line 374
    :goto_5
    if-ne v1, v2, :cond_3

    .line 375
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v2, v3

    .line 364
    goto :goto_2

    :cond_2
    move v1, v3

    .line 372
    goto :goto_5

    .line 370
    :cond_3
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_4

    .line 367
    :cond_4
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_3

    :cond_5
    move v0, v2

    .line 362
    :goto_6
    add-int/lit8 v2, v6, 0x1

    move v6, v2

    move v1, v0

    goto :goto_1

    :cond_6
    move v0, v3

    .line 381
    goto :goto_0

    :cond_7
    move v0, v1

    goto :goto_6
.end method

.method public a(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroidx/fragment/app/a;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 332
    sget-boolean v0, Landroidx/fragment/app/j;->b:Z

    if-eqz v0, :cond_0

    .line 333
    const-string/jumbo v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Run: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    :cond_0
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 337
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 338
    iget-boolean v0, p0, Landroidx/fragment/app/a;->k:Z

    if-eqz v0, :cond_1

    .line 339
    iget-object v0, p0, Landroidx/fragment/app/a;->a:Landroidx/fragment/app/j;

    invoke-virtual {v0, p0}, Landroidx/fragment/app/j;->b(Landroidx/fragment/app/a;)V

    .line 341
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 282
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/fragment/app/a;->a(Z)I

    move-result v0

    return v0
.end method

.method b(Ljava/util/ArrayList;Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/Fragment;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroidx/fragment/app/Fragment;",
            ">;",
            "Landroidx/fragment/app/Fragment;",
            ")",
            "Landroidx/fragment/app/Fragment;"
        }
    .end annotation

    .prologue
    .line 607
    iget-object v0, p0, Landroidx/fragment/app/a;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    move-object v1, p2

    :goto_0
    if-ltz v2, :cond_0

    .line 608
    iget-object v0, p0, Landroidx/fragment/app/a;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/o$a;

    .line 609
    iget v3, v0, Landroidx/fragment/app/o$a;->a:I

    packed-switch v3, :pswitch_data_0

    :goto_1
    :pswitch_0
    move-object v0, v1

    .line 607
    :goto_2
    add-int/lit8 v2, v2, -0x1

    move-object v1, v0

    goto :goto_0

    .line 612
    :pswitch_1
    iget-object v0, v0, Landroidx/fragment/app/o$a;->b:Landroidx/fragment/app/Fragment;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-object v0, v1

    .line 613
    goto :goto_2

    .line 616
    :pswitch_2
    iget-object v0, v0, Landroidx/fragment/app/o$a;->b:Landroidx/fragment/app/Fragment;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v0, v1

    .line 617
    goto :goto_2

    .line 619
    :pswitch_3
    iget-object v0, v0, Landroidx/fragment/app/o$a;->b:Landroidx/fragment/app/Fragment;

    goto :goto_2

    .line 622
    :pswitch_4
    const/4 v0, 0x0

    .line 623
    goto :goto_2

    .line 625
    :pswitch_5
    iget-object v3, v0, Landroidx/fragment/app/o$a;->g:Landroidx/lifecycle/e$b;

    iput-object v3, v0, Landroidx/fragment/app/o$a;->h:Landroidx/lifecycle/e$b;

    goto :goto_1

    .line 629
    :cond_0
    return-object v1

    .line 609
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_4
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method

.method public b(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/o;
    .locals 3

    .prologue
    .line 197
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->A:Landroidx/fragment/app/j;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroidx/fragment/app/Fragment;->A:Landroidx/fragment/app/j;

    iget-object v1, p0, Landroidx/fragment/app/a;->a:Landroidx/fragment/app/j;

    if-eq v0, v1, :cond_0

    .line 198
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Cannot hide Fragment attached to a different FragmentManager. Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 199
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is already attached to a FragmentManager."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 202
    :cond_0
    invoke-super {p0, p1}, Landroidx/fragment/app/o;->b(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/o;

    move-result-object v0

    return-object v0
.end method

.method b(Z)V
    .locals 5

    .prologue
    .line 451
    iget-object v0, p0, Landroidx/fragment/app/a;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_2

    .line 452
    iget-object v0, p0, Landroidx/fragment/app/a;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/o$a;

    .line 453
    iget-object v2, v0, Landroidx/fragment/app/o$a;->b:Landroidx/fragment/app/Fragment;

    .line 454
    if-eqz v2, :cond_0

    .line 455
    iget v3, p0, Landroidx/fragment/app/a;->i:I

    invoke-static {v3}, Landroidx/fragment/app/j;->d(I)I

    move-result v3

    iget v4, p0, Landroidx/fragment/app/a;->j:I

    invoke-virtual {v2, v3, v4}, Landroidx/fragment/app/Fragment;->a(II)V

    .line 458
    :cond_0
    iget v3, v0, Landroidx/fragment/app/o$a;->a:I

    packed-switch v3, :pswitch_data_0

    .line 493
    :pswitch_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unknown cmd: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v0, v0, Landroidx/fragment/app/o$a;->a:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 460
    :pswitch_1
    iget v3, v0, Landroidx/fragment/app/o$a;->f:I

    invoke-virtual {v2, v3}, Landroidx/fragment/app/Fragment;->c(I)V

    .line 461
    iget-object v3, p0, Landroidx/fragment/app/a;->a:Landroidx/fragment/app/j;

    invoke-virtual {v3, v2}, Landroidx/fragment/app/j;->m(Landroidx/fragment/app/Fragment;)V

    .line 495
    :goto_1
    iget-boolean v3, p0, Landroidx/fragment/app/a;->t:Z

    if-nez v3, :cond_1

    iget v0, v0, Landroidx/fragment/app/o$a;->a:I

    const/4 v3, 0x3

    if-eq v0, v3, :cond_1

    if-eqz v2, :cond_1

    .line 496
    iget-object v0, p0, Landroidx/fragment/app/a;->a:Landroidx/fragment/app/j;

    invoke-virtual {v0, v2}, Landroidx/fragment/app/j;->j(Landroidx/fragment/app/Fragment;)V

    .line 451
    :cond_1
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 464
    :pswitch_2
    iget v3, v0, Landroidx/fragment/app/o$a;->e:I

    invoke-virtual {v2, v3}, Landroidx/fragment/app/Fragment;->c(I)V

    .line 465
    iget-object v3, p0, Landroidx/fragment/app/a;->a:Landroidx/fragment/app/j;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroidx/fragment/app/j;->a(Landroidx/fragment/app/Fragment;Z)V

    goto :goto_1

    .line 468
    :pswitch_3
    iget v3, v0, Landroidx/fragment/app/o$a;->e:I

    invoke-virtual {v2, v3}, Landroidx/fragment/app/Fragment;->c(I)V

    .line 469
    iget-object v3, p0, Landroidx/fragment/app/a;->a:Landroidx/fragment/app/j;

    invoke-virtual {v3, v2}, Landroidx/fragment/app/j;->o(Landroidx/fragment/app/Fragment;)V

    goto :goto_1

    .line 472
    :pswitch_4
    iget v3, v0, Landroidx/fragment/app/o$a;->f:I

    invoke-virtual {v2, v3}, Landroidx/fragment/app/Fragment;->c(I)V

    .line 473
    iget-object v3, p0, Landroidx/fragment/app/a;->a:Landroidx/fragment/app/j;

    invoke-virtual {v3, v2}, Landroidx/fragment/app/j;->n(Landroidx/fragment/app/Fragment;)V

    goto :goto_1

    .line 476
    :pswitch_5
    iget v3, v0, Landroidx/fragment/app/o$a;->e:I

    invoke-virtual {v2, v3}, Landroidx/fragment/app/Fragment;->c(I)V

    .line 477
    iget-object v3, p0, Landroidx/fragment/app/a;->a:Landroidx/fragment/app/j;

    invoke-virtual {v3, v2}, Landroidx/fragment/app/j;->q(Landroidx/fragment/app/Fragment;)V

    goto :goto_1

    .line 480
    :pswitch_6
    iget v3, v0, Landroidx/fragment/app/o$a;->f:I

    invoke-virtual {v2, v3}, Landroidx/fragment/app/Fragment;->c(I)V

    .line 481
    iget-object v3, p0, Landroidx/fragment/app/a;->a:Landroidx/fragment/app/j;

    invoke-virtual {v3, v2}, Landroidx/fragment/app/j;->p(Landroidx/fragment/app/Fragment;)V

    goto :goto_1

    .line 484
    :pswitch_7
    iget-object v3, p0, Landroidx/fragment/app/a;->a:Landroidx/fragment/app/j;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroidx/fragment/app/j;->t(Landroidx/fragment/app/Fragment;)V

    goto :goto_1

    .line 487
    :pswitch_8
    iget-object v3, p0, Landroidx/fragment/app/a;->a:Landroidx/fragment/app/j;

    invoke-virtual {v3, v2}, Landroidx/fragment/app/j;->t(Landroidx/fragment/app/Fragment;)V

    goto :goto_1

    .line 490
    :pswitch_9
    iget-object v3, p0, Landroidx/fragment/app/a;->a:Landroidx/fragment/app/j;

    iget-object v4, v0, Landroidx/fragment/app/o$a;->g:Landroidx/lifecycle/e$b;

    invoke-virtual {v3, v2, v4}, Landroidx/fragment/app/j;->a(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/e$b;)V

    goto :goto_1

    .line 499
    :cond_2
    iget-boolean v0, p0, Landroidx/fragment/app/a;->t:Z

    if-nez v0, :cond_3

    if-eqz p1, :cond_3

    .line 500
    iget-object v0, p0, Landroidx/fragment/app/a;->a:Landroidx/fragment/app/j;

    iget-object v1, p0, Landroidx/fragment/app/a;->a:Landroidx/fragment/app/j;

    iget v1, v1, Landroidx/fragment/app/j;->m:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/j;->a(IZ)V

    .line 502
    :cond_3
    return-void

    .line 458
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method b(I)Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 345
    iget-object v0, p0, Landroidx/fragment/app/a;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v2, v1

    .line 346
    :goto_0
    if-ge v2, v3, :cond_2

    .line 347
    iget-object v0, p0, Landroidx/fragment/app/a;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/o$a;

    .line 348
    iget-object v4, v0, Landroidx/fragment/app/o$a;->b:Landroidx/fragment/app/Fragment;

    if-eqz v4, :cond_0

    iget-object v0, v0, Landroidx/fragment/app/o$a;->b:Landroidx/fragment/app/Fragment;

    iget v0, v0, Landroidx/fragment/app/Fragment;->F:I

    .line 349
    :goto_1
    if-eqz v0, :cond_1

    if-ne v0, p1, :cond_1

    .line 350
    const/4 v0, 0x1

    .line 353
    :goto_2
    return v0

    :cond_0
    move v0, v1

    .line 348
    goto :goto_1

    .line 346
    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_2
    move v0, v1

    .line 353
    goto :goto_2
.end method

.method public c()I
    .locals 1

    .prologue
    .line 287
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/fragment/app/a;->a(Z)I

    move-result v0

    return v0
.end method

.method public c(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/o;
    .locals 3

    .prologue
    .line 208
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->A:Landroidx/fragment/app/j;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroidx/fragment/app/Fragment;->A:Landroidx/fragment/app/j;

    iget-object v1, p0, Landroidx/fragment/app/a;->a:Landroidx/fragment/app/j;

    if-eq v0, v1, :cond_0

    .line 209
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Cannot show Fragment attached to a different FragmentManager. Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 210
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is already attached to a FragmentManager."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 213
    :cond_0
    invoke-super {p0, p1}, Landroidx/fragment/app/o;->c(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/o;

    move-result-object v0

    return-object v0
.end method

.method public d(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/o;
    .locals 3

    .prologue
    .line 219
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->A:Landroidx/fragment/app/j;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroidx/fragment/app/Fragment;->A:Landroidx/fragment/app/j;

    iget-object v1, p0, Landroidx/fragment/app/a;->a:Landroidx/fragment/app/j;

    if-eq v0, v1, :cond_0

    .line 220
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Cannot detach Fragment attached to a different FragmentManager. Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 221
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is already attached to a FragmentManager."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 224
    :cond_0
    invoke-super {p0, p1}, Landroidx/fragment/app/o;->d(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/o;

    move-result-object v0

    return-object v0
.end method

.method public d()V
    .locals 2

    .prologue
    .line 292
    invoke-virtual {p0}, Landroidx/fragment/app/a;->j()Landroidx/fragment/app/o;

    .line 293
    iget-object v0, p0, Landroidx/fragment/app/a;->a:Landroidx/fragment/app/j;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroidx/fragment/app/j;->b(Landroidx/fragment/app/j$e;Z)V

    .line 294
    return-void
.end method

.method public e()V
    .locals 2

    .prologue
    .line 298
    invoke-virtual {p0}, Landroidx/fragment/app/a;->j()Landroidx/fragment/app/o;

    .line 299
    iget-object v0, p0, Landroidx/fragment/app/a;->a:Landroidx/fragment/app/j;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Landroidx/fragment/app/j;->b(Landroidx/fragment/app/j$e;Z)V

    .line 300
    return-void
.end method

.method f()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v2, 0x0

    .line 389
    iget-object v0, p0, Landroidx/fragment/app/a;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v1, v2

    .line 390
    :goto_0
    if-ge v1, v3, :cond_2

    .line 391
    iget-object v0, p0, Landroidx/fragment/app/a;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/o$a;

    .line 392
    iget-object v4, v0, Landroidx/fragment/app/o$a;->b:Landroidx/fragment/app/Fragment;

    .line 393
    if-eqz v4, :cond_0

    .line 394
    iget v5, p0, Landroidx/fragment/app/a;->i:I

    iget v6, p0, Landroidx/fragment/app/a;->j:I

    invoke-virtual {v4, v5, v6}, Landroidx/fragment/app/Fragment;->a(II)V

    .line 396
    :cond_0
    iget v5, v0, Landroidx/fragment/app/o$a;->a:I

    packed-switch v5, :pswitch_data_0

    .line 431
    :pswitch_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unknown cmd: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v0, v0, Landroidx/fragment/app/o$a;->a:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 398
    :pswitch_1
    iget v5, v0, Landroidx/fragment/app/o$a;->c:I

    invoke-virtual {v4, v5}, Landroidx/fragment/app/Fragment;->c(I)V

    .line 399
    iget-object v5, p0, Landroidx/fragment/app/a;->a:Landroidx/fragment/app/j;

    invoke-virtual {v5, v4, v2}, Landroidx/fragment/app/j;->a(Landroidx/fragment/app/Fragment;Z)V

    .line 433
    :goto_1
    iget-boolean v5, p0, Landroidx/fragment/app/a;->t:Z

    if-nez v5, :cond_1

    iget v0, v0, Landroidx/fragment/app/o$a;->a:I

    if-eq v0, v7, :cond_1

    if-eqz v4, :cond_1

    .line 434
    iget-object v0, p0, Landroidx/fragment/app/a;->a:Landroidx/fragment/app/j;

    invoke-virtual {v0, v4}, Landroidx/fragment/app/j;->j(Landroidx/fragment/app/Fragment;)V

    .line 390
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 402
    :pswitch_2
    iget v5, v0, Landroidx/fragment/app/o$a;->d:I

    invoke-virtual {v4, v5}, Landroidx/fragment/app/Fragment;->c(I)V

    .line 403
    iget-object v5, p0, Landroidx/fragment/app/a;->a:Landroidx/fragment/app/j;

    invoke-virtual {v5, v4}, Landroidx/fragment/app/j;->m(Landroidx/fragment/app/Fragment;)V

    goto :goto_1

    .line 406
    :pswitch_3
    iget v5, v0, Landroidx/fragment/app/o$a;->d:I

    invoke-virtual {v4, v5}, Landroidx/fragment/app/Fragment;->c(I)V

    .line 407
    iget-object v5, p0, Landroidx/fragment/app/a;->a:Landroidx/fragment/app/j;

    invoke-virtual {v5, v4}, Landroidx/fragment/app/j;->n(Landroidx/fragment/app/Fragment;)V

    goto :goto_1

    .line 410
    :pswitch_4
    iget v5, v0, Landroidx/fragment/app/o$a;->c:I

    invoke-virtual {v4, v5}, Landroidx/fragment/app/Fragment;->c(I)V

    .line 411
    iget-object v5, p0, Landroidx/fragment/app/a;->a:Landroidx/fragment/app/j;

    invoke-virtual {v5, v4}, Landroidx/fragment/app/j;->o(Landroidx/fragment/app/Fragment;)V

    goto :goto_1

    .line 414
    :pswitch_5
    iget v5, v0, Landroidx/fragment/app/o$a;->d:I

    invoke-virtual {v4, v5}, Landroidx/fragment/app/Fragment;->c(I)V

    .line 415
    iget-object v5, p0, Landroidx/fragment/app/a;->a:Landroidx/fragment/app/j;

    invoke-virtual {v5, v4}, Landroidx/fragment/app/j;->p(Landroidx/fragment/app/Fragment;)V

    goto :goto_1

    .line 418
    :pswitch_6
    iget v5, v0, Landroidx/fragment/app/o$a;->c:I

    invoke-virtual {v4, v5}, Landroidx/fragment/app/Fragment;->c(I)V

    .line 419
    iget-object v5, p0, Landroidx/fragment/app/a;->a:Landroidx/fragment/app/j;

    invoke-virtual {v5, v4}, Landroidx/fragment/app/j;->q(Landroidx/fragment/app/Fragment;)V

    goto :goto_1

    .line 422
    :pswitch_7
    iget-object v5, p0, Landroidx/fragment/app/a;->a:Landroidx/fragment/app/j;

    invoke-virtual {v5, v4}, Landroidx/fragment/app/j;->t(Landroidx/fragment/app/Fragment;)V

    goto :goto_1

    .line 425
    :pswitch_8
    iget-object v5, p0, Landroidx/fragment/app/a;->a:Landroidx/fragment/app/j;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroidx/fragment/app/j;->t(Landroidx/fragment/app/Fragment;)V

    goto :goto_1

    .line 428
    :pswitch_9
    iget-object v5, p0, Landroidx/fragment/app/a;->a:Landroidx/fragment/app/j;

    iget-object v6, v0, Landroidx/fragment/app/o$a;->h:Landroidx/lifecycle/e$b;

    invoke-virtual {v5, v4, v6}, Landroidx/fragment/app/j;->a(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/e$b;)V

    goto :goto_1

    .line 437
    :cond_2
    iget-boolean v0, p0, Landroidx/fragment/app/a;->t:Z

    if-nez v0, :cond_3

    .line 439
    iget-object v0, p0, Landroidx/fragment/app/a;->a:Landroidx/fragment/app/j;

    iget-object v1, p0, Landroidx/fragment/app/a;->a:Landroidx/fragment/app/j;

    iget v1, v1, Landroidx/fragment/app/j;->m:I

    invoke-virtual {v0, v1, v7}, Landroidx/fragment/app/j;->a(IZ)V

    .line 441
    :cond_3
    return-void

    .line 396
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method g()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 633
    move v1, v2

    :goto_0
    iget-object v0, p0, Landroidx/fragment/app/a;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 634
    iget-object v0, p0, Landroidx/fragment/app/a;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/o$a;

    .line 635
    invoke-static {v0}, Landroidx/fragment/app/a;->b(Landroidx/fragment/app/o$a;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 636
    const/4 v2, 0x1

    .line 639
    :cond_0
    return v2

    .line 633
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 660
    iget-object v0, p0, Landroidx/fragment/app/a;->m:Ljava/lang/String;

    return-object v0
.end method

.method public i()Z
    .locals 1

    .prologue
    .line 665
    iget-object v0, p0, Landroidx/fragment/app/a;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 44
    const-string/jumbo v1, "BackStackEntry{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    iget v1, p0, Landroidx/fragment/app/a;->c:I

    if-ltz v1, :cond_0

    .line 47
    const-string/jumbo v1, " #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    iget v1, p0, Landroidx/fragment/app/a;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 50
    :cond_0
    iget-object v1, p0, Landroidx/fragment/app/a;->m:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 51
    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    iget-object v1, p0, Landroidx/fragment/app/a;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    :cond_1
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
