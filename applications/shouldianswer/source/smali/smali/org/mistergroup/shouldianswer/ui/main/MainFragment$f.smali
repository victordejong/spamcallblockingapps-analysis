.class final Lorg/mistergroup/shouldianswer/ui/main/MainFragment$f;
.super Ljava/lang/Object;
.source "MainFragment.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mistergroup/shouldianswer/ui/main/MainFragment;->a(Lorg/mistergroup/shouldianswer/ui/main/MainActivity;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/mistergroup/shouldianswer/ui/main/MainFragment;


# direct methods
.method constructor <init>(Lorg/mistergroup/shouldianswer/ui/main/MainFragment;)V
    .locals 0

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/main/MainFragment$f;->a:Lorg/mistergroup/shouldianswer/ui/main/MainFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 190
    sget-object p1, Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment;->b:Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment$a;

    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/main/MainFragment$f;->a:Lorg/mistergroup/shouldianswer/ui/main/MainFragment;

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/ui/main/MainFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/e/b/h;->a()V

    :cond_0
    const-string v1, "context!!"

    invoke-static {v0, v1}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment$a;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
