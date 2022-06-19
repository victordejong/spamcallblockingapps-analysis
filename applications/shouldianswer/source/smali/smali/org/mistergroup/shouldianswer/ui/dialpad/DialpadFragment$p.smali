.class final Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment$p;
.super Ljava/lang/Object;
.source "DialpadFragment.kt"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment;->a(Lorg/mistergroup/shouldianswer/ui/a;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment;


# direct methods
.method constructor <init>(Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment;)V
    .locals 0

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment$p;->a:Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 5

    const/4 p1, 0x2

    const/4 v0, 0x0

    .line 92
    :try_start_0
    sget-object v1, Lorg/mistergroup/shouldianswer/model/c;->b:Lorg/mistergroup/shouldianswer/model/c;

    invoke-virtual {v1}, Lorg/mistergroup/shouldianswer/model/c;->O()Ljava/lang/String;

    move-result-object v1

    .line 93
    sget-object v2, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "voicemail number is \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x27

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0, p1, v0}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    if-eqz v1, :cond_1

    .line 95
    sget-object v2, Lorg/mistergroup/shouldianswer/utils/e;->a:Lorg/mistergroup/shouldianswer/utils/e;

    iget-object v3, p0, Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment$p;->a:Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment;

    invoke-virtual {v3}, Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    if-nez v3, :cond_0

    invoke-static {}, Lkotlin/e/b/h;->a()V

    :cond_0
    const-string v4, "context!!"

    invoke-static {v3, v4}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment$p$a;

    invoke-direct {v4, p0}, Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment$p$a;-><init>(Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment$p;)V

    check-cast v4, Lkotlin/e/a/b;

    invoke-virtual {v2, v3, v1, v4}, Lorg/mistergroup/shouldianswer/utils/e;->a(Landroid/content/Context;Ljava/lang/String;Lkotlin/e/a/b;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 103
    sget-object v2, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    invoke-static {v2, v1, v0, p1, v0}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/Exception;Ljava/lang/String;ILjava/lang/Object;)V

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method
