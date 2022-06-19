.class Lcom/telguarder/features/advertisements/AdvertManager$1;
.super Lcom/telguarder/helpers/backend/BackendCallbackListener;
.source "AdvertManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/telguarder/features/advertisements/AdvertManager;->lambda$updateAdvertCache$0(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/telguarder/helpers/backend/BackendCallbackListener<",
        "Lcom/telguarder/features/advertisements/Adverts;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/telguarder/features/advertisements/AdvertManager;


# direct methods
.method constructor <init>(Lcom/telguarder/features/advertisements/AdvertManager;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/telguarder/features/advertisements/AdvertManager$1;->this$0:Lcom/telguarder/features/advertisements/AdvertManager;

    invoke-direct {p0}, Lcom/telguarder/helpers/backend/BackendCallbackListener;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onSuccess$0$AdvertManager$1(Lcom/telguarder/features/advertisements/Adverts;)V
    .locals 4

    .line 91
    iget-object v0, p0, Lcom/telguarder/features/advertisements/AdvertManager$1;->this$0:Lcom/telguarder/features/advertisements/AdvertManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/telguarder/features/advertisements/AdvertManager;->access$102(Lcom/telguarder/features/advertisements/AdvertManager;Z)Z

    .line 92
    iget-object v0, p0, Lcom/telguarder/features/advertisements/AdvertManager$1;->this$0:Lcom/telguarder/features/advertisements/AdvertManager;

    iput-boolean v1, v0, Lcom/telguarder/features/advertisements/AdvertManager;->mHasPostCallAd:Z

    if-eqz p1, :cond_2

    .line 93
    iget-object v0, p1, Lcom/telguarder/features/advertisements/Adverts;->adverts:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/telguarder/features/advertisements/Adverts;->adverts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 94
    iget-object p1, p1, Lcom/telguarder/features/advertisements/Adverts;->adverts:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/telguarder/features/advertisements/Advert;

    .line 95
    iget-object v2, p0, Lcom/telguarder/features/advertisements/AdvertManager$1;->this$0:Lcom/telguarder/features/advertisements/AdvertManager;

    invoke-static {v2, v0}, Lcom/telguarder/features/advertisements/AdvertManager;->access$200(Lcom/telguarder/features/advertisements/AdvertManager;Lcom/telguarder/features/advertisements/Advert;)V

    .line 97
    invoke-virtual {v0}, Lcom/telguarder/features/advertisements/Advert;->isListbannerAdvert()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    .line 98
    iget-object v0, p0, Lcom/telguarder/features/advertisements/AdvertManager$1;->this$0:Lcom/telguarder/features/advertisements/AdvertManager;

    invoke-static {v0, v3}, Lcom/telguarder/features/advertisements/AdvertManager;->access$102(Lcom/telguarder/features/advertisements/AdvertManager;Z)Z

    goto :goto_0

    .line 99
    :cond_1
    invoke-virtual {v0}, Lcom/telguarder/features/advertisements/Advert;->isPostCallAdvert()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/telguarder/features/advertisements/AdvertManager$1;->this$0:Lcom/telguarder/features/advertisements/AdvertManager;

    iput-boolean v3, v0, Lcom/telguarder/features/advertisements/AdvertManager;->mHasPostCallAd:Z

    goto :goto_0

    .line 105
    :cond_2
    iget-object p1, p0, Lcom/telguarder/features/advertisements/AdvertManager$1;->this$0:Lcom/telguarder/features/advertisements/AdvertManager;

    invoke-static {p1}, Lcom/telguarder/features/advertisements/AdvertManager;->access$100(Lcom/telguarder/features/advertisements/AdvertManager;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 107
    :try_start_0
    invoke-static {}, Lcom/telguarder/features/advertisements/AdvertManager;->getInstance()Lcom/telguarder/features/advertisements/AdvertManager;

    move-result-object p1

    const-string v0, "listbanner"

    invoke-static {p1, v0}, Lcom/telguarder/features/advertisements/AdvertManager;->access$300(Lcom/telguarder/features/advertisements/AdvertManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to delete listbanner ads: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/telguarder/helpers/log/Logger;->error(Ljava/lang/String;)V

    .line 129
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/telguarder/features/advertisements/AdvertManager$1;->this$0:Lcom/telguarder/features/advertisements/AdvertManager;

    iget-boolean p1, p1, Lcom/telguarder/features/advertisements/AdvertManager;->mHasPostCallAd:Z

    if-nez p1, :cond_4

    .line 131
    :try_start_1
    invoke-static {}, Lcom/telguarder/features/advertisements/AdvertManager;->getInstance()Lcom/telguarder/features/advertisements/AdvertManager;

    move-result-object p1

    const-string v0, "postcall"

    invoke-static {p1, v0}, Lcom/telguarder/features/advertisements/AdvertManager;->access$300(Lcom/telguarder/features/advertisements/AdvertManager;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to delete postcall ads: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/telguarder/helpers/log/Logger;->error(Ljava/lang/String;)V

    .line 138
    :cond_4
    :goto_2
    iget-object p1, p0, Lcom/telguarder/features/advertisements/AdvertManager$1;->this$0:Lcom/telguarder/features/advertisements/AdvertManager;

    invoke-static {p1, v1}, Lcom/telguarder/features/advertisements/AdvertManager;->access$002(Lcom/telguarder/features/advertisements/AdvertManager;Z)Z

    return-void
.end method

.method public onError(Ljava/lang/Exception;)V
    .locals 1

    .line 143
    iget-object p1, p0, Lcom/telguarder/features/advertisements/AdvertManager$1;->this$0:Lcom/telguarder/features/advertisements/AdvertManager;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/telguarder/features/advertisements/AdvertManager;->access$002(Lcom/telguarder/features/advertisements/AdvertManager;Z)Z

    return-void
.end method

.method public onStart()V
    .locals 2

    .line 87
    iget-object v0, p0, Lcom/telguarder/features/advertisements/AdvertManager$1;->this$0:Lcom/telguarder/features/advertisements/AdvertManager;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/telguarder/features/advertisements/AdvertManager;->access$002(Lcom/telguarder/features/advertisements/AdvertManager;Z)Z

    return-void
.end method

.method public onSuccess(Lcom/telguarder/features/advertisements/Adverts;)V
    .locals 2

    .line 90
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/telguarder/features/advertisements/-$$Lambda$AdvertManager$1$HZJttnuY2t0ZHOILPNwVi10sEiA;

    invoke-direct {v1, p0, p1}, Lcom/telguarder/features/advertisements/-$$Lambda$AdvertManager$1$HZJttnuY2t0ZHOILPNwVi10sEiA;-><init>(Lcom/telguarder/features/advertisements/AdvertManager$1;Lcom/telguarder/features/advertisements/Adverts;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 139
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 85
    check-cast p1, Lcom/telguarder/features/advertisements/Adverts;

    invoke-virtual {p0, p1}, Lcom/telguarder/features/advertisements/AdvertManager$1;->onSuccess(Lcom/telguarder/features/advertisements/Adverts;)V

    return-void
.end method
