.class Lcom/callapp/contacts/activity/settings/SettingsFragment$17$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/settings/SettingsFragment$17;->onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/settings/SettingsFragment$17;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/settings/SettingsFragment$17;)V
    .locals 0

    .line 1015
    iput-object p1, p0, Lcom/callapp/contacts/activity/settings/SettingsFragment$17$1;->a:Lcom/callapp/contacts/activity/settings/SettingsFragment$17;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static synthetic a(Z)V
    .locals 2

    if-eqz p0, :cond_0

    .line 1022
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p0

    const-string v0, "Permissions"

    const-string v1, "Gave Permission"

    invoke-virtual {p0, v0, v1}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$cc1i5EHe3O_vVI-aZ6dAJoQz-Tk(Z)V
    .locals 0

    invoke-static {p0}, Lcom/callapp/contacts/activity/settings/SettingsFragment$17$1;->a(Z)V

    return-void
.end method


# virtual methods
.method public onClickListener(Landroid/app/Activity;)V
    .locals 4

    .line 1018
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v0

    const-string v1, "Permissions"

    const-string v2, "Draw On Screen"

    const-string v3, "Clicked yes from Settings"

    invoke-virtual {v0, v1, v2, v3}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1019
    sget-object v0, Lcom/callapp/contacts/activity/settings/-$$Lambda$SettingsFragment$17$1$cc1i5EHe3O_vVI-aZ6dAJoQz-Tk;->INSTANCE:Lcom/callapp/contacts/activity/settings/-$$Lambda$SettingsFragment$17$1$cc1i5EHe3O_vVI-aZ6dAJoQz-Tk;

    invoke-static {p1, v0}, Lcom/callapp/contacts/util/Activities;->c(Landroid/app/Activity;Lcom/callapp/contacts/manager/popup/PopupDoneListener;)V

    return-void
.end method
