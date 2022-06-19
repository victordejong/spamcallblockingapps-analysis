.class Lcom/callapp/contacts/sync/syncer/ValidateSocialCallAppId$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/activity/setup/RegistrationRequest$RegistrationEvents;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/sync/syncer/ValidateSocialCallAppId;->onSyncEnd()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/sync/syncer/ValidateSocialCallAppId;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/sync/syncer/ValidateSocialCallAppId;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/callapp/contacts/sync/syncer/ValidateSocialCallAppId$1;->a:Lcom/callapp/contacts/sync/syncer/ValidateSocialCallAppId;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 41
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v0

    const-string v1, "Registration"

    const-string v2, "Successfully changed callappId to phone"

    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    const-class v0, Lcom/callapp/contacts/sync/syncer/ValidateSocialCallAppId;

    const-string v1, "Successfully changed CallappId to phone"

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Lcom/callapp/contacts/util/http/HttpRequest;)V
    .locals 2

    .line 35
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p1

    const-string v0, "Registration"

    const-string v1, "Sending request to change callappId to phone"

    invoke-virtual {p1, v0, v1}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    const-class p1, Lcom/callapp/contacts/sync/syncer/ValidateSocialCallAppId;

    invoke-static {p1, v1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method

.method public final b()V
    .locals 3

    .line 47
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v0

    const-string v1, "Registration"

    const-string v2, "Failed to change callappId to phone"

    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    const-class v0, Lcom/callapp/contacts/sync/syncer/ValidateSocialCallAppId;

    const-string v1, "Failed to change CallappId to phone"

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method

.method public final c()V
    .locals 0

    return-void
.end method
