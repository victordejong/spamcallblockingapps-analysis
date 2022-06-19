.class Lcom/telguarder/helpers/backend/BackendRequest$1;
.super Ljava/lang/Object;
.source "BackendRequest.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/telguarder/helpers/backend/BackendRequest;->executeRequest(Ljava/lang/Class;Ljava/lang/reflect/Type;Lcom/telguarder/helpers/backend/BackendCallbackListener;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/volley/Response$Listener<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/telguarder/helpers/backend/BackendRequest;

.field final synthetic val$callbackListener:Lcom/telguarder/helpers/backend/BackendCallbackListener;


# direct methods
.method constructor <init>(Lcom/telguarder/helpers/backend/BackendRequest;Lcom/telguarder/helpers/backend/BackendCallbackListener;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/telguarder/helpers/backend/BackendRequest$1;->this$0:Lcom/telguarder/helpers/backend/BackendRequest;

    iput-object p2, p0, Lcom/telguarder/helpers/backend/BackendRequest$1;->val$callbackListener:Lcom/telguarder/helpers/backend/BackendCallbackListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 111
    iget-object v0, p0, Lcom/telguarder/helpers/backend/BackendRequest$1;->val$callbackListener:Lcom/telguarder/helpers/backend/BackendCallbackListener;

    if-eqz v0, :cond_0

    .line 112
    invoke-virtual {v0, p1}, Lcom/telguarder/helpers/backend/BackendCallbackListener;->triggerSuccess(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
