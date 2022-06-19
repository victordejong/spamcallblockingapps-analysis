.class public Ld2/a0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld2/a0;->a(Ld2/t0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ld2/t0;

.field public final synthetic b:Ld2/a0;


# direct methods
.method public constructor <init>(Ld2/a0;Ld2/t0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ld2/a0$a;->b:Ld2/a0;

    iput-object p2, p0, Ld2/a0$a;->a:Ld2/t0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .line 1
    iget-object v0, p0, Ld2/a0$a;->b:Ld2/a0;

    iget-object v0, v0, Ld2/a0;->a:Ld2/j0;

    iget-object v7, p0, Ld2/a0$a;->a:Ld2/t0;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v1, v7, Ld2/t0;->b:Ld2/f4;

    const-string v2, "id"

    .line 3
    invoke-static {v1, v2}, Ld2/e4;->r(Ld2/f4;Ljava/lang/String;)I

    move-result v8

    const-string v2, "is_module"

    .line 4
    invoke-static {v1, v2}, Ld2/e4;->l(Ld2/f4;Ljava/lang/String;)Z

    move-result v2

    .line 5
    invoke-static {}, Ld2/t;->d()Ld2/f1;

    move-result-object v3

    const/4 v9, 0x0

    const-string v10, "module_id"

    const/4 v11, 0x0

    if-eqz v2, :cond_1

    .line 6
    iget-object v2, v3, Ld2/f1;->v:Ljava/util/HashMap;

    .line 7
    invoke-static {v1, v10}, Ld2/e4;->r(Ld2/f4;Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ld2/x3;

    if-nez v1, :cond_0

    const-string v1, "Module WebView created with invalid id"

    .line 8
    invoke-static {v11, v11, v1, v11}, Landroid/support/v4/media/b;->l(IILjava/lang/String;Z)V

    goto/16 :goto_1

    :cond_0
    const/4 v2, -0x1

    .line 9
    invoke-virtual {v1, v7, v8, v2, v0}, Ld2/x3;->j(Ld2/t0;IILd2/j0;)V

    .line 10
    invoke-virtual {v1}, Ld2/x3;->z()V

    move-object v9, v1

    goto :goto_0

    .line 11
    :cond_1
    :try_start_0
    new-instance v12, Ld2/x3;

    iget-object v2, v0, Ld2/j0;->y:Landroid/content/Context;

    .line 12
    invoke-virtual {v3}, Ld2/f1;->q()Ld2/u0;

    move-result-object v1

    invoke-virtual {v1}, Ld2/u0;->g()I

    move-result v5

    move-object v1, v12

    move-object v3, v7

    move v4, v8

    move-object v6, v0

    invoke-direct/range {v1 .. v6}, Ld2/x3;-><init>(Landroid/content/Context;Ld2/t0;IILd2/j0;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v9, v12

    .line 13
    :goto_0
    iget-object v1, v0, Ld2/j0;->c:Ljava/util/HashMap;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    iget-object v1, v0, Ld2/j0;->g:Ljava/util/HashMap;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    new-instance v1, Ld2/f4;

    invoke-direct {v1}, Ld2/f4;-><init>()V

    .line 16
    iget v2, v9, Ld2/x3;->u:I

    .line 17
    invoke-static {v1, v10, v2}, Ld2/e4;->m(Ld2/f4;Ljava/lang/String;I)Z

    .line 18
    iget v2, v9, Ld2/x3;->v:I

    const-string v3, "mraid_module_id"

    .line 19
    invoke-static {v1, v3, v2}, Ld2/e4;->m(Ld2/f4;Ljava/lang/String;I)Z

    .line 20
    invoke-virtual {v7, v1}, Ld2/t0;->a(Ld2/f4;)Ld2/t0;

    move-result-object v1

    invoke-virtual {v1}, Ld2/t0;->b()V

    goto :goto_1

    :catch_0
    move-exception v1

    .line 21
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": during WebView initialization."

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 24
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Disabling AdColony."

    .line 25
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 27
    invoke-static {}, Ld2/t;->d()Ld2/f1;

    move-result-object v2

    invoke-virtual {v2}, Ld2/f1;->p()Ld2/h0;

    move-result-object v2

    .line 28
    invoke-virtual {v2, v11, v11, v1, v11}, Ld2/h0;->e(IILjava/lang/String;Z)V

    .line 29
    invoke-static {}, Ld2/b;->i()Z

    .line 30
    :goto_1
    sget-object v1, La7/e;->b:La7/e;

    invoke-virtual {v0, v9, v1}, Ld2/j0;->a(Landroid/view/View;La7/e;)V

    return-void
.end method
