.class public Lorg/mistergroup/shouldianswer/ui/wizards/welcome/a;
.super Landroidx/fragment/app/Fragment;
.source "WelcomeSlide1Fragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0d0081

    const/4 v0, 0x0

    .line 23
    invoke-static {p1, p3, p2, v0}, Landroidx/databinding/f;->a(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    .line 24
    invoke-virtual {p1}, Landroidx/databinding/ViewDataBinding;->d()Landroid/view/View;

    move-result-object p1

    return-object p1
.end method
