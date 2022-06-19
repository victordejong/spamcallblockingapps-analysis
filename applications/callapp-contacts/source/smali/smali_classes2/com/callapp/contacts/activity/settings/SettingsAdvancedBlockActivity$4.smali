.class Lcom/callapp/contacts/activity/settings/SettingsAdvancedBlockActivity$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 138
    iput-object p1, p0, Lcom/callapp/contacts/activity/settings/SettingsAdvancedBlockActivity$4;->a:Lcom/callapp/contacts/activity/settings/SettingsAdvancedBlockActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 141
    iget-object p1, p0, Lcom/callapp/contacts/activity/settings/SettingsAdvancedBlockActivity$4;->a:Lcom/callapp/contacts/activity/settings/SettingsAdvancedBlockActivity;

    invoke-static {p1}, Lcom/callapp/contacts/util/AndroidUtils;->a(Landroid/app/Activity;)V

    .line 142
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p1

    const-string v0, "Advanced Block Settings"

    const-string v1, "Block method option clicked."

    const-string v2, "Clicked"

    invoke-virtual {p1, v0, v1, v2}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
