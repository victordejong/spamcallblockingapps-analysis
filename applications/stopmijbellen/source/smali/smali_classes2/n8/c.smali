.class public final synthetic Ln8/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/mglab/scm/telephony/ForegroundService;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:J

.field public final synthetic d:I

.field public final synthetic e:I

.field public final synthetic f:J

.field public final synthetic g:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lcom/mglab/scm/telephony/ForegroundService;Ljava/lang/String;JIIJLandroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln8/c;->a:Lcom/mglab/scm/telephony/ForegroundService;

    iput-object p2, p0, Ln8/c;->b:Ljava/lang/String;

    iput-wide p3, p0, Ln8/c;->c:J

    iput p5, p0, Ln8/c;->d:I

    iput p6, p0, Ln8/c;->e:I

    iput-wide p7, p0, Ln8/c;->f:J

    iput-object p9, p0, Ln8/c;->g:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    iget-object v0, p0, Ln8/c;->a:Lcom/mglab/scm/telephony/ForegroundService;

    iget-object v1, p0, Ln8/c;->b:Ljava/lang/String;

    iget-wide v2, p0, Ln8/c;->c:J

    iget v4, p0, Ln8/c;->d:I

    iget v5, p0, Ln8/c;->e:I

    iget-wide v6, p0, Ln8/c;->f:J

    iget-object v8, p0, Ln8/c;->g:Landroid/content/Context;

    sget-object v9, Lcom/mglab/scm/telephony/ForegroundService;->h:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v9, "PresetNo"

    .line 1
    :try_start_0
    new-instance v10, Lh8/l;

    invoke-direct {v10}, Lh8/l;-><init>()V

    .line 2
    iput-object v1, v10, Lh8/l;->c:Ljava/lang/String;

    .line 3
    new-instance v11, Ljava/sql/Date;

    invoke-direct {v11, v2, v3}, Ljava/sql/Date;-><init>(J)V

    iput-object v11, v10, Lh8/l;->e:Ljava/sql/Date;

    .line 4
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v10, Lh8/l;->d:Ljava/lang/Integer;

    .line 5
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v10, Lh8/l;->f:Ljava/lang/Integer;

    .line 6
    invoke-static {v1}, Lh8/q;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v10, Lh8/l;->v:Ljava/lang/String;

    .line 7
    iput-wide v6, v10, Lh8/l;->w:J

    .line 8
    invoke-static {v8}, Lf8/h;->W(Landroid/content/Context;)Z

    move-result v2

    invoke-static {v1, v2}, Lh8/q;->o(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v10, Lh8/l;->h:Ljava/lang/String;

    .line 9
    sget-object v2, Lcom/mglab/scm/telephony/ForegroundService;->h:Ljava/lang/String;

    iput-object v2, v10, Lh8/l;->D:Ljava/lang/String;

    .line 10
    iget-object v2, v10, Lh8/l;->d:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, -0x3e8

    const/4 v5, 0x0

    if-ne v2, v3, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    iget-object v2, v0, Lcom/mglab/scm/telephony/ForegroundService;->a:Ll8/w;

    .line 11
    iget v2, v2, Ll8/w;->c:I

    .line 12
    :goto_0
    iput v2, v10, Lh8/l;->G:I

    .line 13
    iget-object v2, v0, Lcom/mglab/scm/telephony/ForegroundService;->a:Ll8/w;

    const/16 v3, 0xc

    invoke-virtual {v2, v3}, Ll8/w;->f(I)Z

    move-result v2

    iput-boolean v2, v10, Lh8/l;->m:Z

    .line 14
    iget-object v2, v0, Lcom/mglab/scm/telephony/ForegroundService;->a:Ll8/w;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Ll8/w;->f(I)Z

    move-result v2

    iput-boolean v2, v10, Lh8/l;->n:Z

    .line 15
    iget-object v2, v0, Lcom/mglab/scm/telephony/ForegroundService;->a:Ll8/w;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Ll8/w;->f(I)Z

    move-result v2

    iput-boolean v2, v10, Lh8/l;->o:Z

    .line 16
    iget-object v2, v0, Lcom/mglab/scm/telephony/ForegroundService;->a:Ll8/w;

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Ll8/w;->f(I)Z

    move-result v2

    iput-boolean v2, v10, Lh8/l;->p:Z

    .line 17
    iget-object v2, v0, Lcom/mglab/scm/telephony/ForegroundService;->a:Ll8/w;

    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Ll8/w;->f(I)Z

    move-result v2

    iput-boolean v2, v10, Lh8/l;->F:Z

    .line 18
    iget-object v2, v0, Lcom/mglab/scm/telephony/ForegroundService;->a:Ll8/w;

    const/16 v3, 0xb

    invoke-virtual {v2, v3}, Ll8/w;->f(I)Z

    move-result v2

    iput-boolean v2, v10, Lh8/l;->q:Z

    .line 19
    iget-object v2, v0, Lcom/mglab/scm/telephony/ForegroundService;->a:Ll8/w;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Ll8/w;->f(I)Z

    move-result v2

    iput-boolean v2, v10, Lh8/l;->r:Z

    .line 20
    iget-object v2, v0, Lcom/mglab/scm/telephony/ForegroundService;->a:Ll8/w;

    const/16 v3, 0x9

    invoke-virtual {v2, v3}, Ll8/w;->f(I)Z

    move-result v2

    iput-boolean v2, v10, Lh8/l;->B:Z

    .line 21
    iget-object v2, v0, Lcom/mglab/scm/telephony/ForegroundService;->a:Ll8/w;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ll8/w;->f(I)Z

    move-result v2

    iput-boolean v2, v10, Lh8/l;->s:Z

    .line 22
    iget-object v2, v0, Lcom/mglab/scm/telephony/ForegroundService;->a:Ll8/w;

    const/16 v3, 0xe

    invoke-virtual {v2, v3}, Ll8/w;->f(I)Z

    move-result v2

    iput-boolean v2, v10, Lh8/l;->H:Z

    .line 23
    iget-object v2, v0, Lcom/mglab/scm/telephony/ForegroundService;->a:Ll8/w;

    invoke-virtual {v2}, Ll8/w;->b()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v10, Lh8/l;->I:Ljava/lang/String;

    .line 24
    iget-object v2, v0, Lcom/mglab/scm/telephony/ForegroundService;->a:Ll8/w;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ll8/w;->f(I)Z

    move-result v2

    iput-boolean v2, v10, Lh8/l;->J:Z

    .line 25
    iget-object v0, v0, Lcom/mglab/scm/telephony/ForegroundService;->a:Ll8/w;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Ll8/w;->f(I)Z

    move-result v0

    iput-boolean v0, v10, Lh8/l;->K:Z

    .line 26
    iget v0, v10, Lh8/l;->G:I

    if-eqz v0, :cond_1

    .line 27
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 28
    iget v2, v10, Lh8/l;->G:I

    invoke-virtual {v0, v9, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 29
    invoke-static {v8, v9, v0}, Lf8/g;->z(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_1
    const/4 v0, 0x1

    .line 30
    iput-boolean v0, v10, Lh8/l;->t:Z

    .line 31
    iput-boolean v5, v10, Lh8/l;->x:Z

    .line 32
    invoke-static {v8}, Lf8/h;->t(Landroid/content/Context;)J

    move-result-wide v6

    iput-wide v6, v10, Lh8/l;->z:J

    .line 33
    sget-object v0, Lcom/mglab/scm/telephony/ForegroundService;->i:Ljava/lang/String;

    iput-object v0, v10, Lh8/l;->y:Ljava/lang/String;

    .line 34
    iput v5, v10, Lh8/l;->A:I

    const/16 v0, 0x17e

    .line 35
    iput v0, v10, Lh8/l;->E:I

    .line 36
    invoke-static {v8}, Lf8/h;->F(Landroid/content/Context;)I

    move-result v0

    iput v0, v10, Lh8/l;->L:I

    .line 37
    invoke-static {v8}, Lf8/h;->X(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, v10, Lh8/l;->M:Z

    .line 38
    invoke-static {v8}, Lf8/h;->Z(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, v10, Lh8/l;->N:Z

    .line 39
    invoke-static {v8}, Lf8/h;->G(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, v10, Lh8/l;->O:Z

    .line 40
    invoke-static {v8}, Lf8/g;->w(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, v10, Lh8/l;->R:Z

    .line 41
    invoke-static {v8}, Lf8/h;->Y(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, v10, Lh8/l;->S:Z

    .line 42
    invoke-virtual {v10}, Lb9/a;->a()Z

    .line 43
    invoke-static {}, Lba/b;->b()Lba/b;

    move-result-object v0

    new-instance v2, Lk8/i;

    new-instance v5, Lcom/mglab/scm/visual/CallItem;

    invoke-direct {v5, v10}, Lcom/mglab/scm/visual/CallItem;-><init>(Lh8/l;)V

    invoke-direct {v2, v5}, Lk8/i;-><init>(Lcom/mglab/scm/visual/CallItem;)V

    invoke-virtual {v0, v2}, Lba/b;->g(Ljava/lang/Object;)V

    const/16 v0, 0x28

    if-eq v4, v0, :cond_2

    const/16 v0, 0x1e

    if-ne v4, v0, :cond_3

    .line 44
    :cond_2
    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Ly2/q;

    invoke-direct {v2, v1, v3}, Ly2/q;-><init>(Ljava/lang/Object;I)V

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 45
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 46
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_1
    return-void
.end method
