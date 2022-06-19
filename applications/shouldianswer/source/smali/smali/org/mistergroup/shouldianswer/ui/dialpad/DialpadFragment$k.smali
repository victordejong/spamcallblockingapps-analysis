.class final Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment$k;
.super Ljava/lang/Object;
.source "DialpadFragment.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment$k;->a:Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 124
    sget-object p1, Lorg/mistergroup/shouldianswer/utils/e;->a:Lorg/mistergroup/shouldianswer/utils/e;

    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment$k;->a:Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment;

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/e/b/h;->a()V

    :cond_0
    const-string v1, "context!!"

    invoke-static {v0, v1}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment$k;->a:Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment;

    invoke-static {v1}, Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment;->a(Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment$k$1;

    invoke-direct {v2, p0}, Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment$k$1;-><init>(Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment$k;)V

    check-cast v2, Lkotlin/e/a/b;

    invoke-virtual {p1, v0, v1, v2}, Lorg/mistergroup/shouldianswer/utils/e;->a(Landroid/content/Context;Ljava/lang/String;Lkotlin/e/a/b;)V

    return-void
.end method
