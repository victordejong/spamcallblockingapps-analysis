.class public final synthetic Lo8/a0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/mglab/scm/visual/c;

.field public final synthetic b:Z

.field public final synthetic c:Lm8/d;


# direct methods
.method public synthetic constructor <init>(Lcom/mglab/scm/visual/c;ZLm8/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo8/a0;->a:Lcom/mglab/scm/visual/c;

    iput-boolean p2, p0, Lo8/a0;->b:Z

    iput-object p3, p0, Lo8/a0;->c:Lm8/d;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget-object p1, p0, Lo8/a0;->a:Lcom/mglab/scm/visual/c;

    iget-boolean v0, p0, Lo8/a0;->b:Z

    iget-object v1, p0, Lo8/a0;->c:Lm8/d;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1
    sget-object v2, Lcom/mglab/scm/visual/c;->k:Le2/g;

    invoke-virtual {v2}, Le2/g;->dismiss()V

    .line 2
    new-instance v2, Le2/g$a;

    iget-object p1, p1, Lcom/mglab/scm/visual/c;->a:Landroid/content/Context;

    invoke-direct {v2, p1}, Le2/g$a;-><init>(Landroid/content/Context;)V

    const p1, 0x7f1101f8

    .line 3
    invoke-virtual {v2, p1}, Le2/g$a;->k(I)Le2/g$a;

    const p1, 0x7f06005b

    .line 4
    invoke-virtual {v2, p1}, Le2/g$a;->l(I)Le2/g$a;

    const p1, 0x7f0800fc

    .line 5
    invoke-virtual {v2, p1}, Le2/g$a;->e(I)Le2/g$a;

    const p1, 0x7f06005e

    if-eqz v0, :cond_0

    const v3, 0x7f06005e

    goto :goto_0

    :cond_0
    const v3, 0x7f060033

    .line 6
    :goto_0
    invoke-virtual {v2, v3}, Le2/g$a;->c(I)Le2/g$a;

    if-eqz v0, :cond_1

    const p1, 0x7f060091

    .line 7
    :cond_1
    invoke-virtual {v2, p1}, Le2/g$a;->a(I)Le2/g$a;

    const/4 p1, 0x1

    .line 8
    iput-boolean p1, v2, Le2/g$a;->y:Z

    .line 9
    iput-boolean p1, v2, Le2/g$a;->z:Z

    const v0, 0x7f0c0055

    .line 10
    invoke-virtual {v2, v0, p1}, Le2/g$a;->d(IZ)Le2/g$a;

    const p1, 0x7f11018f

    .line 11
    invoke-virtual {v2, p1}, Le2/g$a;->i(I)Le2/g$a;

    new-instance p1, Ly2/l;

    const/16 v0, 0xd

    invoke-direct {p1, v1, v0}, Ly2/l;-><init>(Ljava/lang/Object;I)V

    .line 12
    iput-object p1, v2, Le2/g$a;->u:Le2/g$c;

    const p1, 0x7f11006e

    .line 13
    invoke-virtual {v2, p1}, Le2/g$a;->g(I)Le2/g$a;

    move-result-object p1

    invoke-virtual {p1}, Le2/g$a;->j()Le2/g;

    move-result-object p1

    .line 14
    iget-object p1, p1, Le2/g;->c:Le2/g$a;

    iget-object p1, p1, Le2/g$a;->o:Landroid/view/View;

    .line 15
    invoke-virtual {v1, p1}, Lm8/d;->b(Landroid/view/View;)V

    return-void
.end method
