.class final Lorg/mistergroup/shouldianswer/ui/about/AboutFragment$f;
.super Ljava/lang/Object;
.source "AboutFragment.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mistergroup/shouldianswer/ui/about/AboutFragment;->a(Lorg/mistergroup/shouldianswer/ui/a;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/mistergroup/shouldianswer/ui/about/AboutFragment;

.field final synthetic b:Lorg/mistergroup/shouldianswer/ui/a;


# direct methods
.method constructor <init>(Lorg/mistergroup/shouldianswer/ui/about/AboutFragment;Lorg/mistergroup/shouldianswer/ui/a;)V
    .locals 0

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/about/AboutFragment$f;->a:Lorg/mistergroup/shouldianswer/ui/about/AboutFragment;

    iput-object p2, p0, Lorg/mistergroup/shouldianswer/ui/about/AboutFragment$f;->b:Lorg/mistergroup/shouldianswer/ui/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 98
    sget-object p1, Lorg/mistergroup/shouldianswer/utils/ac;->a:Lorg/mistergroup/shouldianswer/utils/ac;

    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/about/AboutFragment$f;->b:Lorg/mistergroup/shouldianswer/ui/a;

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lorg/mistergroup/shouldianswer/ui/about/AboutFragment$f;->a:Lorg/mistergroup/shouldianswer/ui/about/AboutFragment;

    const v2, 0x7f100134

    invoke-virtual {v1, v2}, Lorg/mistergroup/shouldianswer/ui/about/AboutFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "getString(R.string.help_url_about_our_project)"

    invoke-static {v1, v2}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Lorg/mistergroup/shouldianswer/utils/ac;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
