.class public Lu91;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lv91$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lu91$i;
    }
.end annotation


# instance fields
.field public a:Landroid/app/Activity;

.field public b:Landroid/app/AlertDialog;

.field public c:I

.field public d:Ljava/util/concurrent/ScheduledExecutorService;

.field public e:Lu91$i;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/util/concurrent/ScheduledExecutorService;Lu91$i;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lu91;->c:I

    const/4 v0, 0x0

    iput-object v0, p0, Lu91;->d:Ljava/util/concurrent/ScheduledExecutorService;

    iput-object v0, p0, Lu91;->e:Lu91$i;

    iput-object p2, p0, Lu91;->d:Ljava/util/concurrent/ScheduledExecutorService;

    iput-object p1, p0, Lu91;->a:Landroid/app/Activity;

    iput-object p3, p0, Lu91;->e:Lu91$i;

    return-void
.end method

.method public static synthetic e(Lu91;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lu91;->a:Landroid/app/Activity;

    return-object p0
.end method

.method public static synthetic f(Lu91;I)I
    .locals 0

    iput p1, p0, Lu91;->c:I

    return p1
.end method

.method public static i(Landroid/app/Activity;)V
    .locals 3

    new-instance v0, Lu91$b;

    invoke-direct {v0, p0}, Lu91$b;-><init>(Landroid/app/Activity;)V

    const v1, 0x7f110676

    const v2, 0x7f1102a7

    invoke-static {p0, v1, v2, v0}, Lu91;->j(Landroid/app/Activity;IILandroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method public static j(Landroid/app/Activity;IILandroid/content/DialogInterface$OnClickListener;)V
    .locals 1

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Loe1;->i(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const p2, 0x7f1101b0

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const p1, 0x7f110680

    invoke-virtual {p0, p1, p3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public a(Lv91;)V
    .locals 1

    sget-object v0, Lr61$b;->b:Lr61$b;

    invoke-virtual {p0, p1, v0}, Lu91;->h(Lv91;Lr61$b;)V

    return-void
.end method

.method public b(Lv91;Z)V
    .locals 1

    iget-object p1, p0, Lu91;->a:Landroid/app/Activity;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lu91;->a:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->isDestroyed()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    iget-object p1, p0, Lu91;->a:Landroid/app/Activity;

    invoke-static {p1}, Loe1;->i(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const p2, 0x7f110555

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const p2, 0x7f1103f5

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const p2, 0x7f1103f4

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    :cond_1
    iget-object p1, p0, Lu91;->e:Lu91$i;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lu91$i;->a()V

    :cond_2
    :goto_0
    return-void
.end method

.method public c(Lv91;)V
    .locals 1

    sget-object v0, Lr61$b;->c:Lr61$b;

    invoke-virtual {p0, p1, v0}, Lu91;->h(Lv91;Lr61$b;)V

    return-void
.end method

.method public d(Lv91;)V
    .locals 0

    return-void
.end method

.method public g(Landroid/app/AlertDialog$Builder;Lv91;)V
    .locals 4

    if-nez p1, :cond_0

    iget-object p1, p0, Lu91;->a:Landroid/app/Activity;

    invoke-static {p1}, Loe1;->i(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    :cond_0
    iget-object v0, p0, Lu91;->a:Landroid/app/Activity;

    const v1, 0x7f0a03b3

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    const v1, 0x7f1101b0

    new-instance v2, Lu91$g;

    invoke-direct {v2, p0}, Lu91$g;-><init>(Lu91;)V

    invoke-virtual {p1, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f110555

    new-instance v3, Lu91$f;

    invoke-direct {v3, p0, p2, v0}, Lu91$f;-><init>(Lu91;Lv91;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const p2, 0x7f1103ee

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    iget-object p2, p0, Lu91;->a:Landroid/app/Activity;

    const v1, 0x7f1103ed

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {p2, v1, v2}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lu91;->b:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method public h(Lv91;Lr61$b;)V
    .locals 3

    iget-object v0, p0, Lu91;->d:Ljava/util/concurrent/ScheduledExecutorService;

    if-nez v0, :cond_0

    const-string p1, "You should provide executor service"

    invoke-static {p0, p1}, Lj91;->k(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :cond_0
    const v0, 0x7f1103ef

    invoke-static {v0}, Lbc1;->e(I)V

    iget-object v0, p0, Lu91;->d:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lu91$a;

    invoke-direct {v1, p0, p1, p2}, Lu91$a;-><init>(Lu91;Lv91;Lr61$b;)V

    const-wide/16 p1, 0x0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, p1, p2, v2}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method public k(Lr61$b;ILr61$c;Lv91;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    iget-object v5, v0, Lu91;->a:Landroid/app/Activity;

    if-eqz v5, :cond_12

    invoke-virtual {v5}, Landroid/app/Activity;->isFinishing()Z

    move-result v5

    if-nez v5, :cond_12

    iget-object v5, v0, Lu91;->a:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->isDestroyed()Z

    move-result v5

    if-eqz v5, :cond_0

    goto/16 :goto_7

    :cond_0
    iget-object v5, v0, Lu91;->b:Landroid/app/AlertDialog;

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, v0, Lu91;->b:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->dismiss()V

    :cond_1
    sget-object v5, Lr61$b;->b:Lr61$b;

    const/16 v6, 0x193

    const/4 v7, 0x1

    if-ne v1, v5, :cond_2

    if-ne v2, v6, :cond_2

    iget v8, v0, Lu91;->c:I

    add-int/2addr v8, v7

    goto :goto_0

    :cond_2
    iget v8, v0, Lu91;->c:I

    :goto_0
    iput v8, v0, Lu91;->c:I

    sget-object v8, Lr61$b;->c:Lr61$b;

    const v9, 0x7f110677

    if-ne v1, v8, :cond_3

    const v10, 0x7f110678

    goto :goto_1

    :cond_3
    const v10, 0x7f110677

    :goto_1
    iget-object v11, v0, Lu91;->a:Landroid/app/Activity;

    invoke-static {v11}, Loe1;->i(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v11

    const v12, 0x7f110555

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v11

    const/16 v12, -0x1f4

    const v13, 0x7f1103f5

    const v14, 0x7f1103ec

    const-string v15, ""

    const/16 v16, 0x0

    if-eq v2, v12, :cond_10

    const/16 v12, 0x12d

    if-eq v2, v12, :cond_f

    const/4 v12, 0x2

    if-eq v2, v6, :cond_a

    const/16 v1, 0x199

    if-eq v2, v1, :cond_5

    const/16 v1, 0x1f4

    if-eq v2, v1, :cond_4

    goto/16 :goto_3

    :cond_4
    const v14, 0x7f1103f4

    goto/16 :goto_4

    :cond_5
    const v9, 0x7f11067d

    iget-object v1, v0, Lu91;->a:Landroid/app/Activity;

    new-array v2, v7, [Ljava/lang/Object;

    aput-object v15, v2, v16

    const v5, 0x7f11067b

    invoke-virtual {v1, v5, v2}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    if-eqz v3, :cond_9

    sget-object v2, Lu91$h;->b:[I

    invoke-virtual/range {p4 .. p4}, Lv91;->f()Lv91$a;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget v2, v2, v6

    const v6, 0x7f11067c

    if-eq v2, v7, :cond_8

    if-eq v2, v12, :cond_7

    const/4 v6, 0x3

    if-eq v2, v6, :cond_6

    goto :goto_2

    :cond_6
    iget-object v1, v0, Lu91;->a:Landroid/app/Activity;

    new-array v2, v7, [Ljava/lang/Object;

    iget-object v3, v3, Lr61$c;->a:Ljava/lang/String;

    aput-object v3, v2, v16

    invoke-virtual {v1, v5, v2}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_7
    iget-object v1, v0, Lu91;->a:Landroid/app/Activity;

    new-array v2, v7, [Ljava/lang/Object;

    const v3, 0x7f110344

    invoke-virtual {v1, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v16

    invoke-virtual {v1, v6, v2}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_8
    iget-object v1, v0, Lu91;->a:Landroid/app/Activity;

    new-array v2, v7, [Ljava/lang/Object;

    const v3, 0x7f110381

    invoke-virtual {v1, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v16

    invoke-virtual {v1, v6, v2}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :cond_9
    :goto_2
    move-object v15, v1

    const v1, 0x7f110139

    new-instance v2, Lu91$c;

    invoke-direct {v2, v0}, Lu91$c;-><init>(Lu91;)V

    invoke-virtual {v11, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v1, Lu91$d;

    invoke-direct {v1, v0}, Lu91$d;-><init>(Lu91;)V

    invoke-virtual {v11, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f1105e0

    new-instance v2, Lu91$e;

    invoke-direct {v2, v0, v4}, Lu91$e;-><init>(Lu91;Lv91;)V

    invoke-virtual {v11, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/4 v14, 0x0

    goto :goto_5

    :cond_a
    if-ne v1, v8, :cond_b

    const v9, 0x7f11067a

    const v14, 0x7f110679

    goto :goto_5

    :cond_b
    sget-object v2, Lr61$b;->d:Lr61$b;

    if-ne v1, v2, :cond_c

    const v9, 0x7f1103f3

    const v14, 0x7f1103f2

    goto :goto_5

    :cond_c
    iget v2, v0, Lu91;->c:I

    if-le v2, v12, :cond_d

    invoke-virtual {v0, v11, v4}, Lu91;->g(Landroid/app/AlertDialog$Builder;Lv91;)V

    return-void

    :cond_d
    if-ne v1, v5, :cond_e

    goto :goto_5

    :cond_e
    :goto_3
    move v9, v10

    goto :goto_5

    :cond_f
    const v9, 0x7f1103f1

    const v14, 0x7f1103f0

    goto :goto_5

    :cond_10
    const v14, 0x7f1102fa

    :goto_4
    const v9, 0x7f1103f5

    :goto_5
    invoke-virtual {v11, v9}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    if-nez v14, :cond_11

    invoke-virtual {v11, v15}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_6

    :cond_11
    invoke-virtual {v11, v14}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    :goto_6
    invoke-virtual {v11}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, v0, Lu91;->b:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    iget-object v1, v0, Lu91;->e:Lu91$i;

    if-eqz v1, :cond_12

    invoke-interface {v1}, Lu91$i;->a()V

    :cond_12
    :goto_7
    return-void
.end method

.method public l(Lr61$c;Lr61$b;Lv91;)V
    .locals 4

    sget-object v0, Lu91$h;->a:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/16 v1, 0x199

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    const/4 v3, 0x3

    if-eq v0, v3, :cond_1

    const/4 v3, 0x4

    if-eq v0, v3, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_3

    invoke-virtual {p0, p2, v1, p1, p3}, Lu91;->k(Lr61$b;ILr61$c;Lv91;)V

    return-void

    :cond_1
    const/16 v0, 0x12d

    invoke-virtual {p0, p2, v0, p1, p3}, Lu91;->k(Lr61$b;ILr61$c;Lv91;)V

    return-void

    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {p0, p2, v1, p1, p3}, Lu91;->k(Lr61$b;ILr61$c;Lv91;)V

    return-void

    :cond_3
    invoke-virtual {p3}, Lv91;->f()Lv91$a;

    move-result-object p1

    invoke-virtual {p1}, Lv91$a;->b()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lr71;->d(Ljava/lang/String;)V

    iget-object p1, p0, Lu91;->a:Landroid/app/Activity;

    const p2, 0x7f110215

    invoke-static {p1, p2, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    iget-object p1, p0, Lu91;->e:Lu91$i;

    if-eqz p1, :cond_4

    invoke-interface {p1}, Lu91$i;->b()V

    :cond_4
    return-void
.end method
