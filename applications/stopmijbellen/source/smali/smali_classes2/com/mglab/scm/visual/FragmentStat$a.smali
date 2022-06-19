.class public Lcom/mglab/scm/visual/FragmentStat$a;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "StaticFieldLeak"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mglab/scm/visual/FragmentStat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic b:I


# instance fields
.field public final synthetic a:Lcom/mglab/scm/visual/FragmentStat;


# direct methods
.method public constructor <init>(Lcom/mglab/scm/visual/FragmentStat;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mglab/scm/visual/FragmentStat$a;->a:Lcom/mglab/scm/visual/FragmentStat;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, [Ljava/lang/Integer;

    .line 2
    iget-object v0, p0, Lcom/mglab/scm/visual/FragmentStat$a;->a:Lcom/mglab/scm/visual/FragmentStat;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/o;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    .line 3
    aget-object p1, p1, v1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 4
    invoke-static {v0}, Lf8/g;->v(Landroid/content/Context;)V

    .line 5
    invoke-static {v0, v1}, Lf8/g;->E(Landroid/content/Context;Z)V

    .line 6
    invoke-static {v0}, Lh8/q;->C(Landroid/content/Context;)V

    .line 7
    new-instance p1, Lh8/q;

    invoke-direct {p1}, Lh8/q;-><init>()V

    .line 8
    invoke-virtual {p1, v0, v1}, Lh8/q;->B(Landroid/content/Context;Z)V

    .line 9
    invoke-static {v0}, Lf8/g;->Q(Landroid/content/Context;)V

    .line 10
    invoke-static {v0}, Lf8/g;->N(Landroid/content/Context;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public onPostExecute(Ljava/lang/Object;)V
    .locals 8

    .line 1
    check-cast p1, Ljava/lang/Void;

    .line 2
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 3
    iget-object p1, p0, Lcom/mglab/scm/visual/FragmentStat$a;->a:Lcom/mglab/scm/visual/FragmentStat;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    .line 4
    invoke-static {p1}, Lf8/g;->C(Landroid/content/Context;)V

    const/4 v0, 0x0

    const-string v1, "rate_100"

    .line 5
    invoke-static {p1, v1, v0}, Lf8/h;->f(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_2

    .line 6
    invoke-static {p1}, Lf8/h;->e(Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x64

    if-lt v1, v2, :cond_2

    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-string v3, "rate_100_last_reminded"

    .line 8
    invoke-static {p1, v3}, Lf8/h;->w(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v4

    const-wide/32 v6, 0xf731400

    add-long/2addr v4, v6

    cmp-long v6, v1, v4

    if-lez v6, :cond_2

    .line 9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {p1, v3, v1, v2}, Lf8/h;->k0(Landroid/content/Context;Ljava/lang/String;J)V

    .line 10
    invoke-static {p1}, Lf8/h;->H(Landroid/content/Context;)Z

    move-result v1

    .line 11
    new-instance v2, Le2/g$a;

    invoke-direct {v2, p1}, Le2/g$a;-><init>(Landroid/content/Context;)V

    const v3, 0x7f11019e

    .line 12
    invoke-virtual {v2, v3}, Le2/g$a;->k(I)Le2/g$a;

    const v3, 0x7f06005b

    .line 13
    invoke-virtual {v2, v3}, Le2/g$a;->l(I)Le2/g$a;

    const v3, 0x1080072

    .line 14
    invoke-virtual {v2, v3}, Le2/g$a;->e(I)Le2/g$a;

    const v3, 0x7f06005e

    if-eqz v1, :cond_0

    const v4, 0x7f060091

    goto :goto_0

    :cond_0
    const v4, 0x7f06005e

    .line 15
    :goto_0
    invoke-virtual {v2, v4}, Le2/g$a;->a(I)Le2/g$a;

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    const v3, 0x7f060033

    .line 16
    :goto_1
    invoke-virtual {v2, v3}, Le2/g$a;->c(I)Le2/g$a;

    iget-object v1, p0, Lcom/mglab/scm/visual/FragmentStat$a;->a:Lcom/mglab/scm/visual/FragmentStat;

    const v3, 0x7f11019d

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    .line 17
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lf8/h;->e(Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-virtual {v1, v3, v4}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Le2/g$a;->b(Ljava/lang/CharSequence;)Le2/g$a;

    .line 18
    iput-boolean v0, v2, Le2/g$a;->y:Z

    .line 19
    iput-boolean v0, v2, Le2/g$a;->z:Z

    const v1, 0x7f11019c

    .line 20
    invoke-virtual {v2, v1}, Le2/g$a;->i(I)Le2/g$a;

    new-instance v1, Lo8/w;

    invoke-direct {v1, p1, v0}, Lo8/w;-><init>(Landroid/content/Context;I)V

    .line 21
    iput-object v1, v2, Le2/g$a;->u:Le2/g$c;

    const v0, 0x7f11009f

    .line 22
    invoke-virtual {v2, v0}, Le2/g$a;->h(I)Le2/g$a;

    move-result-object v0

    new-instance v1, Lz2/q;

    const/16 v2, 0x9

    invoke-direct {v1, p1, v2}, Lz2/q;-><init>(Ljava/lang/Object;I)V

    .line 23
    iput-object v1, v0, Le2/g$a;->w:Le2/g$c;

    const p1, 0x7f11006e

    .line 24
    invoke-virtual {v0, p1}, Le2/g$a;->g(I)Le2/g$a;

    move-result-object p1

    .line 25
    invoke-virtual {p1}, Le2/g$a;->j()Le2/g;

    :cond_2
    return-void
.end method

.method public onPreExecute()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    return-void
.end method
