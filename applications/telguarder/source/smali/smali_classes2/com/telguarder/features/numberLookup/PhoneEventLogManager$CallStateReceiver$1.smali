.class Lcom/telguarder/features/numberLookup/PhoneEventLogManager$CallStateReceiver$1;
.super Ljava/lang/Object;
.source "PhoneEventLogManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/telguarder/features/numberLookup/PhoneEventLogManager$CallStateReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/telguarder/features/numberLookup/PhoneEventLogManager$CallStateReceiver;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/telguarder/features/numberLookup/PhoneEventLogManager$CallStateReceiver;Landroid/content/Context;)V
    .locals 0

    .line 802
    iput-object p1, p0, Lcom/telguarder/features/numberLookup/PhoneEventLogManager$CallStateReceiver$1;->this$1:Lcom/telguarder/features/numberLookup/PhoneEventLogManager$CallStateReceiver;

    iput-object p2, p0, Lcom/telguarder/features/numberLookup/PhoneEventLogManager$CallStateReceiver$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 804
    iget-object v0, p0, Lcom/telguarder/features/numberLookup/PhoneEventLogManager$CallStateReceiver$1;->this$1:Lcom/telguarder/features/numberLookup/PhoneEventLogManager$CallStateReceiver;

    iget-object v0, v0, Lcom/telguarder/features/numberLookup/PhoneEventLogManager$CallStateReceiver;->this$0:Lcom/telguarder/features/numberLookup/PhoneEventLogManager;

    iget-object v1, p0, Lcom/telguarder/features/numberLookup/PhoneEventLogManager$CallStateReceiver$1;->val$context:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/telguarder/features/numberLookup/PhoneEventLogManager;->access$1100(Lcom/telguarder/features/numberLookup/PhoneEventLogManager;Landroid/content/Context;I)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 805
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 806
    iget-object v1, p0, Lcom/telguarder/features/numberLookup/PhoneEventLogManager$CallStateReceiver$1;->this$1:Lcom/telguarder/features/numberLookup/PhoneEventLogManager$CallStateReceiver;

    iget-object v1, v1, Lcom/telguarder/features/numberLookup/PhoneEventLogManager$CallStateReceiver;->this$0:Lcom/telguarder/features/numberLookup/PhoneEventLogManager;

    iget-object v2, p0, Lcom/telguarder/features/numberLookup/PhoneEventLogManager$CallStateReceiver$1;->val$context:Landroid/content/Context;

    invoke-static {v1, v2, v0}, Lcom/telguarder/features/numberLookup/PhoneEventLogManager;->access$1200(Lcom/telguarder/features/numberLookup/PhoneEventLogManager;Landroid/content/Context;Ljava/util/ArrayList;)V

    :cond_0
    return-void
.end method
