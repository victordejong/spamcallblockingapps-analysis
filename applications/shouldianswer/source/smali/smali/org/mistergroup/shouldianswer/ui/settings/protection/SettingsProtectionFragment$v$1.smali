.class final Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment$v$1;
.super Ljava/lang/Object;
.source "SettingsProtectionFragment.kt"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment$v;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment$v;


# direct methods
.method constructor <init>(Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment$v;)V
    .locals 0

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment$v$1;->a:Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment$v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    const-string p2, "dialogInterface"

    invoke-static {p1, p2}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    sget-object p1, Lorg/mistergroup/shouldianswer/utils/o;->a:Lorg/mistergroup/shouldianswer/utils/o;

    iget-object p2, p0, Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment$v$1;->a:Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment$v;

    iget-object p2, p2, Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment$v;->a:Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment;

    invoke-static {p2}, Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment;->e(Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment;)Lorg/mistergroup/shouldianswer/ui/a;

    move-result-object p2

    check-cast p2, Landroid/content/Context;

    invoke-virtual {p1, p2}, Lorg/mistergroup/shouldianswer/utils/o;->a(Landroid/content/Context;)V

    return-void
.end method
