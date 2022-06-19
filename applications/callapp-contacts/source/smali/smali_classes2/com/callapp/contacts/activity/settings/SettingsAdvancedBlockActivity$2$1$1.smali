.class Lcom/callapp/contacts/activity/settings/SettingsAdvancedBlockActivity$2$1$1;
.super Lcom/callapp/contacts/manager/task/Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/settings/SettingsAdvancedBlockActivity$2$1;->onClickListener(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/settings/SettingsAdvancedBlockActivity$2$1;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/settings/SettingsAdvancedBlockActivity$2$1;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/callapp/contacts/activity/settings/SettingsAdvancedBlockActivity$2$1$1;->a:Lcom/callapp/contacts/activity/settings/SettingsAdvancedBlockActivity$2$1;

    invoke-direct {p0}, Lcom/callapp/contacts/manager/task/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public doTask()V
    .locals 4

    .line 80
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->bL:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->set(Ljava/lang/Object;)V

    .line 81
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Block non contacts toggled. is enabled: true"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/callapp/contacts/activity/settings/SettingsAdvancedBlockActivity$2$1$1;->a:Lcom/callapp/contacts/activity/settings/SettingsAdvancedBlockActivity$2$1;

    iget-boolean v2, v2, Lcom/callapp/contacts/activity/settings/SettingsAdvancedBlockActivity$2$1;->a:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Advanced Block Settings"

    const-string v3, "Clicked"

    invoke-virtual {v0, v2, v1, v3}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
