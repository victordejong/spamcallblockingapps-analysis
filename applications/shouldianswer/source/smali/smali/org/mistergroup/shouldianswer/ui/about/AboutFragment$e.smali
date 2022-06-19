.class final Lorg/mistergroup/shouldianswer/ui/about/AboutFragment$e;
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


# direct methods
.method constructor <init>(Lorg/mistergroup/shouldianswer/ui/about/AboutFragment;)V
    .locals 0

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/about/AboutFragment$e;->a:Lorg/mistergroup/shouldianswer/ui/about/AboutFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 93
    sget-object p1, Lorg/mistergroup/shouldianswer/utils/a;->a:Lorg/mistergroup/shouldianswer/utils/a;

    const-string v0, "UserSettings.followFacebook"

    invoke-virtual {p1, v0}, Lorg/mistergroup/shouldianswer/utils/a;->d(Ljava/lang/String;)V

    .line 94
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/about/AboutFragment$e;->a:Lorg/mistergroup/shouldianswer/ui/about/AboutFragment;

    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/ui/about/AboutFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_0

    sget-object v0, Lorg/mistergroup/shouldianswer/utils/ac;->a:Lorg/mistergroup/shouldianswer/utils/ac;

    const-string v1, "it"

    invoke-static {p1, v1}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "https://www.facebook.com/shouldianswer"

    invoke-virtual {v0, p1, v1}, Lorg/mistergroup/shouldianswer/utils/ac;->a(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
