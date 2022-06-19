.class Lcom/callapp/contacts/util/ads/TCF2Manager$2$1;
.super Lcom/callapp/contacts/manager/task/Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/util/ads/TCF2Manager$2;->a(Lcom/google/android/c/e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/c/e;

.field final synthetic b:Lcom/callapp/contacts/util/ads/TCF2Manager$2;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/util/ads/TCF2Manager$2;Lcom/google/android/c/e;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lcom/callapp/contacts/util/ads/TCF2Manager$2$1;->b:Lcom/callapp/contacts/util/ads/TCF2Manager$2;

    iput-object p2, p0, Lcom/callapp/contacts/util/ads/TCF2Manager$2$1;->a:Lcom/google/android/c/e;

    invoke-direct {p0}, Lcom/callapp/contacts/manager/task/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public doTask()V
    .locals 3

    .line 133
    const-class v0, Lcom/callapp/contacts/util/ads/TCF2Manager;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onConsentInfoUpdateFailure: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/callapp/contacts/util/ads/TCF2Manager$2$1;->a:Lcom/google/android/c/e;

    if-eqz v2, :cond_0

    .line 1006
    iget-object v2, v2, Lcom/google/android/c/e;->a:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 133
    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 134
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/TCF2Manager$2$1;->b:Lcom/callapp/contacts/util/ads/TCF2Manager$2;

    iget-object v0, v0, Lcom/callapp/contacts/util/ads/TCF2Manager$2;->a:Lcom/callapp/contacts/manager/task/OutcomeListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/callapp/contacts/manager/task/OutcomeListener;->a(Z)V

    return-void
.end method
