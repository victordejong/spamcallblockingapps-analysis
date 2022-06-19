.class final Lorg/mistergroup/shouldianswer/ui/settings/notifications/SettingsNotificationsFragment$d;
.super Ljava/lang/Object;
.source "SettingsNotificationsFragment.kt"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mistergroup/shouldianswer/ui/settings/notifications/SettingsNotificationsFragment;->a(Lorg/mistergroup/shouldianswer/ui/a;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/mistergroup/shouldianswer/ui/settings/notifications/SettingsNotificationsFragment;


# direct methods
.method constructor <init>(Lorg/mistergroup/shouldianswer/ui/settings/notifications/SettingsNotificationsFragment;)V
    .locals 0

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/settings/notifications/SettingsNotificationsFragment$d;->a:Lorg/mistergroup/shouldianswer/ui/settings/notifications/SettingsNotificationsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    .line 59
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/settings/notifications/SettingsNotificationsFragment$d;->a:Lorg/mistergroup/shouldianswer/ui/settings/notifications/SettingsNotificationsFragment;

    invoke-static {p1}, Lorg/mistergroup/shouldianswer/ui/settings/notifications/SettingsNotificationsFragment;->a(Lorg/mistergroup/shouldianswer/ui/settings/notifications/SettingsNotificationsFragment;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 60
    sget-object p1, Lorg/mistergroup/shouldianswer/model/ai;->a:Lorg/mistergroup/shouldianswer/model/ai;

    invoke-virtual {p1, p2}, Lorg/mistergroup/shouldianswer/model/ai;->u(Z)V

    .line 61
    sget-object p1, Lorg/mistergroup/shouldianswer/utils/a;->a:Lorg/mistergroup/shouldianswer/utils/a;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UserSettings.ttsIncomingCalls"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/mistergroup/shouldianswer/utils/a;->c(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
