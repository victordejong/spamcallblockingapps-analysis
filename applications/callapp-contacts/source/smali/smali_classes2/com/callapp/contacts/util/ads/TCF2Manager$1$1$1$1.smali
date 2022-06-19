.class Lcom/callapp/contacts/util/ads/TCF2Manager$1$1$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/c/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/util/ads/TCF2Manager$1$1$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/util/ads/TCF2Manager$1$1$1;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/util/ads/TCF2Manager$1$1$1;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/callapp/contacts/util/ads/TCF2Manager$1$1$1$1;->a:Lcom/callapp/contacts/util/ads/TCF2Manager$1$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/c/e;)V
    .locals 4

    .line 93
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/TCF2Manager$1$1$1$1;->a:Lcom/callapp/contacts/util/ads/TCF2Manager$1$1$1;

    iget-object v0, v0, Lcom/callapp/contacts/util/ads/TCF2Manager$1$1$1;->b:Lcom/callapp/contacts/util/ads/TCF2Manager$1$1;

    iget-object v0, v0, Lcom/callapp/contacts/util/ads/TCF2Manager$1$1;->a:Lcom/callapp/contacts/util/ads/TCF2Manager$1;

    iget-boolean v0, v0, Lcom/callapp/contacts/util/ads/TCF2Manager$1;->c:Z

    if-nez v0, :cond_0

    .line 94
    invoke-static {}, Lcom/callapp/contacts/util/ads/TCF2Manager;->a()V

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/TCF2Manager$1$1$1$1;->a:Lcom/callapp/contacts/util/ads/TCF2Manager$1$1$1;

    iget-object v0, v0, Lcom/callapp/contacts/util/ads/TCF2Manager$1$1$1;->b:Lcom/callapp/contacts/util/ads/TCF2Manager$1$1;

    iget-object v0, v0, Lcom/callapp/contacts/util/ads/TCF2Manager$1$1;->a:Lcom/callapp/contacts/util/ads/TCF2Manager$1;

    iget-object v0, v0, Lcom/callapp/contacts/util/ads/TCF2Manager$1;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/callapp/contacts/util/ads/TCF2Manager;->a(Landroid/app/Activity;)Lcom/callapp/contacts/util/ads/AdUtils$ConsentStatus;

    move-result-object v0

    .line 97
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v1

    invoke-virtual {v0}, Lcom/callapp/contacts/util/ads/AdUtils$ConsentStatus;->name()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Ad"

    const-string v3, "TCF2 consent status"

    invoke-virtual {v1, v2, v3, v0}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    const-class v0, Lcom/callapp/contacts/util/ads/TCF2Manager;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onConsentFormDismissed: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_1

    .line 1006
    iget-object p1, p1, Lcom/google/android/c/e;->a:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 99
    :goto_0
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 100
    iget-object p1, p0, Lcom/callapp/contacts/util/ads/TCF2Manager$1$1$1$1;->a:Lcom/callapp/contacts/util/ads/TCF2Manager$1$1$1;

    iget-object p1, p1, Lcom/callapp/contacts/util/ads/TCF2Manager$1$1$1;->b:Lcom/callapp/contacts/util/ads/TCF2Manager$1$1;

    iget-object p1, p1, Lcom/callapp/contacts/util/ads/TCF2Manager$1$1;->a:Lcom/callapp/contacts/util/ads/TCF2Manager$1;

    iget-object p1, p1, Lcom/callapp/contacts/util/ads/TCF2Manager$1;->d:Lcom/callapp/contacts/manager/task/OutcomeListener;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/callapp/contacts/manager/task/OutcomeListener;->a(Z)V

    return-void
.end method
