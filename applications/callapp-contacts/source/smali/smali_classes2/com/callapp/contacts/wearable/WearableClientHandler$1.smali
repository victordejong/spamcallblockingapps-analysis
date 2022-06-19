.class Lcom/callapp/contacts/wearable/WearableClientHandler$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/wearable/WearableClientHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/wearable/WearableClientHandler;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/wearable/WearableClientHandler;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lcom/callapp/contacts/wearable/WearableClientHandler$1;->a:Lcom/callapp/contacts/wearable/WearableClientHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 107
    iget-object v0, p0, Lcom/callapp/contacts/wearable/WearableClientHandler$1;->a:Lcom/callapp/contacts/wearable/WearableClientHandler;

    const/4 v1, 0x0

    new-array v1, v1, [B

    const-string v2, "/callapp/keep_alive"

    invoke-static {v0, v2, v1}, Lcom/callapp/contacts/wearable/WearableClientHandler;->a(Lcom/callapp/contacts/wearable/WearableClientHandler;Ljava/lang/String;[B)V

    .line 108
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/wearable/WearableClientHandler$1;->a:Lcom/callapp/contacts/wearable/WearableClientHandler;

    invoke-static {v1}, Lcom/callapp/contacts/wearable/WearableClientHandler;->a(Lcom/callapp/contacts/wearable/WearableClientHandler;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Lcom/callapp/contacts/CallAppApplication;->a(Ljava/lang/Runnable;J)V

    .line 109
    const-class v0, Lcom/callapp/contacts/wearable/WearableClientHandler;

    const-string v1, "server keep alive"

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method
