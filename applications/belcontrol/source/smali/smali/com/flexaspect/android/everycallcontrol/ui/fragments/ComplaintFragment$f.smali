.class public Lcom/flexaspect/android/everycallcontrol/ui/fragments/ComplaintFragment$f;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flexaspect/android/everycallcontrol/ui/fragments/ComplaintFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "f"
.end annotation


# direct methods
.method public static a(Landroid/content/Context;Li91;Ljava/lang/String;Ljava/lang/Runnable;)Z
    .locals 14

    move-object v1, p0

    new-instance v3, Lx81;

    invoke-direct {v3}, Lx81;-><init>()V

    move-object v4, p1

    invoke-virtual {v3, p1}, Lx81;->Q(Li91;)V

    iget-wide v5, v3, Lx81;->d:J

    const/4 v0, 0x0

    const-wide/16 v7, 0x0

    cmp-long v2, v5, v7

    if-lez v2, :cond_0

    iget-object v2, v3, Lx81;->l:Lq71$g;

    sget-object v5, Lq71$g;->c:Lq71$g;

    if-ne v2, v5, :cond_0

    return v0

    :cond_0
    invoke-static {p0}, Loe1;->i(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v2, 0x7f0d00a2

    invoke-static {p0, v2}, Loe1;->x(Landroid/content/Context;I)Landroid/view/View;

    move-result-object v8

    const v2, 0x7f110723

    invoke-virtual {v6, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v2, 0x7f0a0249

    invoke-virtual {v8, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const v7, 0x7f1105d5

    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\n"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v7, 0x7f1104f1

    const/4 v13, 0x1

    new-array v9, v13, [Ljava/lang/Object;

    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1

    move-object/from16 v10, p2

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Li91;->m()Ljava/lang/String;

    move-result-object v10

    :goto_0
    aput-object v10, v9, v0

    invoke-virtual {p0, v7, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v7, 0x7f110721

    new-instance v9, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ComplaintFragment$f$b;

    move-object v0, v9

    move-object v1, p0

    move-object/from16 v2, p3

    move-object v4, p1

    move-object/from16 v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ComplaintFragment$f$b;-><init>(Landroid/content/Context;Ljava/lang/Runnable;Lx81;Li91;Ljava/lang/String;)V

    invoke-virtual {v6, v7, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f110531

    new-instance v2, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ComplaintFragment$f$a;

    move-object/from16 v3, p3

    invoke-direct {v2, v3}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ComplaintFragment$f$a;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v7, v0

    invoke-virtual/range {v7 .. v12}, Landroid/app/AlertDialog;->setView(Landroid/view/View;IIII)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return v13
.end method
