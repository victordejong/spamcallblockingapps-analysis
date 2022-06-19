.class Lcom/callapp/contacts/activity/settings/SettingsAdvancedBlockActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/settings/SettingsAdvancedBlockActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/settings/SettingsAdvancedBlockActivity;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/settings/SettingsAdvancedBlockActivity;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/callapp/contacts/activity/settings/SettingsAdvancedBlockActivity$1;->a:Lcom/callapp/contacts/activity/settings/SettingsAdvancedBlockActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    .line 55
    iget-object p1, p0, Lcom/callapp/contacts/activity/settings/SettingsAdvancedBlockActivity$1;->a:Lcom/callapp/contacts/activity/settings/SettingsAdvancedBlockActivity;

    invoke-static {p1}, Lcom/callapp/contacts/util/AndroidUtils;->a(Landroid/app/Activity;)V

    .line 56
    sget-object p1, Lcom/callapp/contacts/manager/preferences/Prefs;->bK:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->set(Ljava/lang/Object;)V

    .line 57
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p2

    const-string v0, "Block international numbers toggled. is enabled: "

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "Advanced Block Settings"

    const-string v1, "Clicked"

    invoke-virtual {p1, v0, p2, v1}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
