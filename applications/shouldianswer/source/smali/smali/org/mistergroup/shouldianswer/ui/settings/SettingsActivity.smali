.class public final Lorg/mistergroup/shouldianswer/ui/settings/SettingsActivity;
.super Lorg/mistergroup/shouldianswer/ui/a;
.source "SettingsActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mistergroup/shouldianswer/ui/settings/SettingsActivity$a;
    }
.end annotation


# static fields
.field public static final l:Lorg/mistergroup/shouldianswer/ui/settings/SettingsActivity$a;


# instance fields
.field private m:Lorg/mistergroup/shouldianswer/a/da;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/mistergroup/shouldianswer/ui/settings/SettingsActivity$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/mistergroup/shouldianswer/ui/settings/SettingsActivity$a;-><init>(Lkotlin/e/b/e;)V

    sput-object v0, Lorg/mistergroup/shouldianswer/ui/settings/SettingsActivity;->l:Lorg/mistergroup/shouldianswer/ui/settings/SettingsActivity$a;

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
    .locals 2

    .line 20
    invoke-super {p0}, Lorg/mistergroup/shouldianswer/ui/a;->finish()V

    const v0, 0x7f010025

    const v1, 0x7f010026

    .line 21
    invoke-virtual {p0, v0, v1}, Lorg/mistergroup/shouldianswer/ui/settings/SettingsActivity;->overridePendingTransition(II)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 14
    invoke-super {p0, p1}, Lorg/mistergroup/shouldianswer/ui/a;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f010023

    const v0, 0x7f010024

    .line 15
    invoke-virtual {p0, p1, v0}, Lorg/mistergroup/shouldianswer/ui/settings/SettingsActivity;->overridePendingTransition(II)V

    .line 16
    move-object p1, p0

    check-cast p1, Landroid/app/Activity;

    const v0, 0x7f0d006a

    invoke-static {p1, v0}, Landroidx/databinding/f;->a(Landroid/app/Activity;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    const-string v0, "DataBindingUtil.setConte\u2026layout.settings_activity)"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lorg/mistergroup/shouldianswer/a/da;

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/settings/SettingsActivity;->m:Lorg/mistergroup/shouldianswer/a/da;

    return-void
.end method
