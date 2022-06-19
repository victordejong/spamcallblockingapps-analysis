.class public final Lorg/mistergroup/shouldianswer/ui/wizards/welcome/WelcomeActivity;
.super Lorg/mistergroup/shouldianswer/ui/a;
.source "WelcomeActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mistergroup/shouldianswer/ui/wizards/welcome/WelcomeActivity$a;
    }
.end annotation


# static fields
.field public static final l:Lorg/mistergroup/shouldianswer/ui/wizards/welcome/WelcomeActivity$a;


# instance fields
.field private m:Lorg/mistergroup/shouldianswer/a/eo;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/mistergroup/shouldianswer/ui/wizards/welcome/WelcomeActivity$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/mistergroup/shouldianswer/ui/wizards/welcome/WelcomeActivity$a;-><init>(Lkotlin/e/b/e;)V

    sput-object v0, Lorg/mistergroup/shouldianswer/ui/wizards/welcome/WelcomeActivity;->l:Lorg/mistergroup/shouldianswer/ui/wizards/welcome/WelcomeActivity$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Lorg/mistergroup/shouldianswer/ui/a;-><init>()V

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 0

    .line 22
    invoke-super {p0}, Lorg/mistergroup/shouldianswer/ui/a;->finish()V

    return-void
.end method

.method public k()V
    .locals 0

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 17
    invoke-super {p0, p1}, Lorg/mistergroup/shouldianswer/ui/a;->onCreate(Landroid/os/Bundle;)V

    .line 18
    move-object p1, p0

    check-cast p1, Landroid/app/Activity;

    const v0, 0x7f0d007f

    invoke-static {p1, v0}, Landroidx/databinding/f;->a(Landroid/app/Activity;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    const-string v0, "DataBindingUtil.setConte\u2026.layout.welcome_activity)"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lorg/mistergroup/shouldianswer/a/eo;

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/wizards/welcome/WelcomeActivity;->m:Lorg/mistergroup/shouldianswer/a/eo;

    return-void
.end method
