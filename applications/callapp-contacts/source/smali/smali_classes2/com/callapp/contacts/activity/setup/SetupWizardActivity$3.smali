.class Lcom/callapp/contacts/activity/setup/SetupWizardActivity$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/applinks/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/setup/SetupWizardActivity;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/setup/SetupWizardActivity;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/setup/SetupWizardActivity;)V
    .locals 0

    .line 285
    iput-object p1, p0, Lcom/callapp/contacts/activity/setup/SetupWizardActivity$3;->a:Lcom/callapp/contacts/activity/setup/SetupWizardActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/facebook/applinks/a;)V
    .locals 18

    move-object/from16 v0, p1

    if-eqz v0, :cond_0

    .line 1464
    iget-object v1, v0, Lcom/facebook/applinks/a;->a:Landroid/net/Uri;

    if-eqz v1, :cond_0

    .line 2464
    iget-object v1, v0, Lcom/facebook/applinks/a;->a:Landroid/net/Uri;

    .line 288
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, "no appLinkData"

    .line 289
    :goto_0
    const-class v2, Lcom/callapp/contacts/model/DeepLinkManager;

    invoke-static {v2, v1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    const-string v2, "facebook"

    const-string v3, "provider"

    if-eqz v0, :cond_1

    .line 3464
    iget-object v0, v0, Lcom/facebook/applinks/a;->a:Landroid/net/Uri;

    if-eqz v0, :cond_1

    .line 291
    invoke-static {v1}, Lcom/callapp/contacts/receiver/InstallationReceiver;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x16

    new-array v10, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v3, v10, v1

    const/4 v3, 0x1

    aput-object v2, v10, v3

    const/4 v2, 0x2

    const/16 v3, 0x14

    .line 295
    invoke-static {v0, v1, v10, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 296
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v4

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const-string v5, "Installation"

    const-string v6, "deeplink"

    invoke-virtual/range {v4 .. v10}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D[Ljava/lang/String;)V

    return-void

    .line 298
    :cond_1
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v11

    const-wide/16 v15, 0x0

    filled-new-array {v3, v2}, [Ljava/lang/String;

    move-result-object v17

    const-string v12, "Installation"

    const-string v13, "deeplink"

    const-string v14, "no appLinkData"

    invoke-virtual/range {v11 .. v17}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D[Ljava/lang/String;)V

    return-void
.end method
