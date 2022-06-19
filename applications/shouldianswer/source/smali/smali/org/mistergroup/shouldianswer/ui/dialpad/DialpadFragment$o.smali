.class final Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment$o;
.super Lkotlin/e/b/i;
.source "DialpadFragment.kt"

# interfaces
.implements Lkotlin/e/a/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment;->a(Lorg/mistergroup/shouldianswer/ui/a;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/e/b/i;",
        "Lkotlin/e/a/b<",
        "Lorg/mistergroup/shouldianswer/components/a/a;",
        "Lkotlin/o;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment;

.field final synthetic b:Lorg/mistergroup/shouldianswer/ui/a;


# direct methods
.method constructor <init>(Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment;Lorg/mistergroup/shouldianswer/ui/a;)V
    .locals 0

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment$o;->a:Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment;

    iput-object p2, p0, Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment$o;->b:Lorg/mistergroup/shouldianswer/ui/a;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/e/b/i;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 35
    check-cast p1, Lorg/mistergroup/shouldianswer/components/a/a;

    invoke-virtual {p0, p1}, Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment$o;->a(Lorg/mistergroup/shouldianswer/components/a/a;)V

    sget-object p1, Lkotlin/o;->a:Lkotlin/o;

    return-object p1
.end method

.method public final a(Lorg/mistergroup/shouldianswer/components/a/a;)V
    .locals 3

    const-string v0, "contactItem"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 157
    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/components/a/a;->f()Lorg/mistergroup/shouldianswer/model/ac;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 158
    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/components/a/a;->f()Lorg/mistergroup/shouldianswer/model/ac;

    move-result-object p1

    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment$o;->a:Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment;

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/e/b/h;->a()V

    :cond_0
    const-string v1, "context!!"

    invoke-static {v0, v1}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lorg/mistergroup/shouldianswer/model/ac;->b(Landroid/content/Context;)V

    goto :goto_0

    .line 161
    :cond_1
    :try_start_0
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.INSERT"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "vnd.android.cursor.dir/contact"

    .line 162
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "phone"

    .line 163
    iget-object v1, p0, Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment$o;->a:Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment;

    invoke-static {v1}, Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment;->a(Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 164
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment$o;->a:Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment;

    invoke-virtual {v0, p1}, Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 166
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {v0, p1, v2, v1, v2}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/Exception;Ljava/lang/String;ILjava/lang/Object;)V

    .line 170
    :goto_0
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment$o;->b:Lorg/mistergroup/shouldianswer/ui/a;

    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/ui/a;->finish()V

    return-void
.end method
