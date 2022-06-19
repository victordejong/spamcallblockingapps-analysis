.class Lcom/telguarder/features/numberLookup/PhoneEventLogManager$1;
.super Lcom/telguarder/helpers/backend/BackendCallbackListener;
.source "PhoneEventLogManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/telguarder/features/numberLookup/PhoneEventLogManager;->lookupNumbersOnBackend(Landroid/content/Context;Ljava/util/ArrayList;Lcom/telguarder/helpers/backend/BackendCallbackListener;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/telguarder/helpers/backend/BackendCallbackListener<",
        "Lcom/telguarder/features/numberLookup/NumberLookupResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/telguarder/features/numberLookup/PhoneEventLogManager;

.field final synthetic val$calLogFromCache:Ljava/util/ArrayList;

.field final synthetic val$callbackListener:Lcom/telguarder/helpers/backend/BackendCallbackListener;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$limit:I


# direct methods
.method constructor <init>(Lcom/telguarder/features/numberLookup/PhoneEventLogManager;Landroid/content/Context;Landroid/content/Context;Ljava/util/ArrayList;Lcom/telguarder/helpers/backend/BackendCallbackListener;I)V
    .locals 0

    .line 284
    iput-object p1, p0, Lcom/telguarder/features/numberLookup/PhoneEventLogManager$1;->this$0:Lcom/telguarder/features/numberLookup/PhoneEventLogManager;

    iput-object p3, p0, Lcom/telguarder/features/numberLookup/PhoneEventLogManager$1;->val$context:Landroid/content/Context;

    iput-object p4, p0, Lcom/telguarder/features/numberLookup/PhoneEventLogManager$1;->val$calLogFromCache:Ljava/util/ArrayList;

    iput-object p5, p0, Lcom/telguarder/features/numberLookup/PhoneEventLogManager$1;->val$callbackListener:Lcom/telguarder/helpers/backend/BackendCallbackListener;

    iput p6, p0, Lcom/telguarder/features/numberLookup/PhoneEventLogManager$1;->val$limit:I

    invoke-direct {p0, p2}, Lcom/telguarder/helpers/backend/BackendCallbackListener;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onSuccess$0$PhoneEventLogManager$1(Landroid/content/Context;Ljava/util/ArrayList;Lcom/telguarder/features/numberLookup/NumberLookupResponse;Lcom/telguarder/helpers/backend/BackendCallbackListener;I)V
    .locals 6

    .line 291
    iget-object v0, p0, Lcom/telguarder/features/numberLookup/PhoneEventLogManager$1;->this$0:Lcom/telguarder/features/numberLookup/PhoneEventLogManager;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-static/range {v0 .. v5}, Lcom/telguarder/features/numberLookup/PhoneEventLogManager;->access$100(Lcom/telguarder/features/numberLookup/PhoneEventLogManager;Landroid/content/Context;Ljava/util/ArrayList;Lcom/telguarder/features/numberLookup/NumberLookupResponse;Lcom/telguarder/helpers/backend/BackendCallbackListener;I)V

    return-void
.end method

.method public onError(Ljava/lang/Exception;)V
    .locals 1

    .line 296
    iget-object v0, p0, Lcom/telguarder/features/numberLookup/PhoneEventLogManager$1;->val$callbackListener:Lcom/telguarder/helpers/backend/BackendCallbackListener;

    invoke-virtual {v0, p1}, Lcom/telguarder/helpers/backend/BackendCallbackListener;->triggerError(Ljava/lang/Exception;)V

    return-void
.end method

.method public onStart()V
    .locals 0

    return-void
.end method

.method public onSuccess(Lcom/telguarder/features/numberLookup/NumberLookupResponse;)V
    .locals 9

    .line 291
    new-instance v0, Ljava/lang/Thread;

    iget-object v3, p0, Lcom/telguarder/features/numberLookup/PhoneEventLogManager$1;->val$context:Landroid/content/Context;

    iget-object v4, p0, Lcom/telguarder/features/numberLookup/PhoneEventLogManager$1;->val$calLogFromCache:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/telguarder/features/numberLookup/PhoneEventLogManager$1;->val$callbackListener:Lcom/telguarder/helpers/backend/BackendCallbackListener;

    iget v7, p0, Lcom/telguarder/features/numberLookup/PhoneEventLogManager$1;->val$limit:I

    new-instance v8, Lcom/telguarder/features/numberLookup/-$$Lambda$PhoneEventLogManager$1$a6gme16A2BVDgcE7brsanV33UgA;

    move-object v1, v8

    move-object v2, p0

    move-object v5, p1

    invoke-direct/range {v1 .. v7}, Lcom/telguarder/features/numberLookup/-$$Lambda$PhoneEventLogManager$1$a6gme16A2BVDgcE7brsanV33UgA;-><init>(Lcom/telguarder/features/numberLookup/PhoneEventLogManager$1;Landroid/content/Context;Ljava/util/ArrayList;Lcom/telguarder/features/numberLookup/NumberLookupResponse;Lcom/telguarder/helpers/backend/BackendCallbackListener;I)V

    invoke-direct {v0, v8}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 284
    check-cast p1, Lcom/telguarder/features/numberLookup/NumberLookupResponse;

    invoke-virtual {p0, p1}, Lcom/telguarder/features/numberLookup/PhoneEventLogManager$1;->onSuccess(Lcom/telguarder/features/numberLookup/NumberLookupResponse;)V

    return-void
.end method
