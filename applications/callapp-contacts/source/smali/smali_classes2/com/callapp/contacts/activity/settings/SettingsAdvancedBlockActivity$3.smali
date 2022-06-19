.class Lcom/callapp/contacts/activity/settings/SettingsAdvancedBlockActivity$3;
.super Lcom/callapp/contacts/popup/contact/DialogSelectSingleChoiceBase$SingleChoiceListenerImpel;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/settings/SettingsAdvancedBlockActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:[Lcom/callapp/contacts/manager/BlockManager$BlockMethod;

.field final synthetic b:Lcom/callapp/contacts/activity/settings/SettingsAdvancedBlockActivity;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/settings/SettingsAdvancedBlockActivity;[Lcom/callapp/contacts/manager/BlockManager$BlockMethod;)V
    .locals 0

    .line 128
    iput-object p1, p0, Lcom/callapp/contacts/activity/settings/SettingsAdvancedBlockActivity$3;->b:Lcom/callapp/contacts/activity/settings/SettingsAdvancedBlockActivity;

    iput-object p2, p0, Lcom/callapp/contacts/activity/settings/SettingsAdvancedBlockActivity$3;->a:[Lcom/callapp/contacts/manager/BlockManager$BlockMethod;

    invoke-direct {p0}, Lcom/callapp/contacts/popup/contact/DialogSelectSingleChoiceBase$SingleChoiceListenerImpel;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(I)V
    .locals 3

    .line 132
    iget-object v0, p0, Lcom/callapp/contacts/activity/settings/SettingsAdvancedBlockActivity$3;->a:[Lcom/callapp/contacts/manager/BlockManager$BlockMethod;

    aget-object p1, v0, p1

    .line 133
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->bM:Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;->set(Ljava/lang/Object;)V

    .line 134
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Block method option changed to: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/callapp/contacts/manager/BlockManager$BlockMethod;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "Advanced Block Settings"

    const-string v2, "Clicked"

    invoke-virtual {v0, v1, p1, v2}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
