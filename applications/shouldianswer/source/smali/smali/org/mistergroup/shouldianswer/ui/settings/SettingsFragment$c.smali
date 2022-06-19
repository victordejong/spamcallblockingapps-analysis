.class final Lorg/mistergroup/shouldianswer/ui/settings/SettingsFragment$c;
.super Ljava/lang/Object;
.source "SettingsFragment.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mistergroup/shouldianswer/ui/settings/SettingsFragment;->a(Lorg/mistergroup/shouldianswer/ui/a;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/mistergroup/shouldianswer/ui/a;


# direct methods
.method constructor <init>(Lorg/mistergroup/shouldianswer/ui/a;)V
    .locals 0

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/settings/SettingsFragment$c;->a:Lorg/mistergroup/shouldianswer/ui/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 35
    sget-object p1, Lorg/mistergroup/shouldianswer/ui/settings/notifications/SettingsNotificationsActivity;->l:Lorg/mistergroup/shouldianswer/ui/settings/notifications/SettingsNotificationsActivity$a;

    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/settings/SettingsFragment$c;->a:Lorg/mistergroup/shouldianswer/ui/a;

    check-cast v0, Landroid/content/Context;

    invoke-virtual {p1, v0}, Lorg/mistergroup/shouldianswer/ui/settings/notifications/SettingsNotificationsActivity$a;->a(Landroid/content/Context;)V

    return-void
.end method
