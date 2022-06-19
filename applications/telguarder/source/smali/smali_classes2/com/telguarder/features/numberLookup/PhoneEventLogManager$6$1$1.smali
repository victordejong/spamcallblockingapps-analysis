.class Lcom/telguarder/features/numberLookup/PhoneEventLogManager$6$1$1;
.super Ljava/lang/Object;
.source "PhoneEventLogManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/telguarder/features/numberLookup/PhoneEventLogManager$6$1;->onSuccess(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/telguarder/features/numberLookup/PhoneEventLogManager$6$1;


# direct methods
.method constructor <init>(Lcom/telguarder/features/numberLookup/PhoneEventLogManager$6$1;)V
    .locals 0

    .line 699
    iput-object p1, p0, Lcom/telguarder/features/numberLookup/PhoneEventLogManager$6$1$1;->this$2:Lcom/telguarder/features/numberLookup/PhoneEventLogManager$6$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 701
    iget-object v0, p0, Lcom/telguarder/features/numberLookup/PhoneEventLogManager$6$1$1;->this$2:Lcom/telguarder/features/numberLookup/PhoneEventLogManager$6$1;

    iget-object v0, v0, Lcom/telguarder/features/numberLookup/PhoneEventLogManager$6$1;->this$1:Lcom/telguarder/features/numberLookup/PhoneEventLogManager$6;

    iget-object v0, v0, Lcom/telguarder/features/numberLookup/PhoneEventLogManager$6;->this$0:Lcom/telguarder/features/numberLookup/PhoneEventLogManager;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/telguarder/features/numberLookup/PhoneEventLogManager;->spamCommentLoadInProgress:Z

    .line 702
    invoke-static {}, Lcom/telguarder/features/numberLookup/PhoneEventLogManager;->getInstance()Lcom/telguarder/features/numberLookup/PhoneEventLogManager;

    move-result-object v0

    iget-object v1, p0, Lcom/telguarder/features/numberLookup/PhoneEventLogManager$6$1$1;->this$2:Lcom/telguarder/features/numberLookup/PhoneEventLogManager$6$1;

    iget-object v1, v1, Lcom/telguarder/features/numberLookup/PhoneEventLogManager$6$1;->this$1:Lcom/telguarder/features/numberLookup/PhoneEventLogManager$6;

    iget-object v1, v1, Lcom/telguarder/features/numberLookup/PhoneEventLogManager$6;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/telguarder/features/numberLookup/PhoneEventLogManager$6$1$1;->this$2:Lcom/telguarder/features/numberLookup/PhoneEventLogManager$6$1;

    iget-object v2, v2, Lcom/telguarder/features/numberLookup/PhoneEventLogManager$6$1;->this$1:Lcom/telguarder/features/numberLookup/PhoneEventLogManager$6;

    iget-object v2, v2, Lcom/telguarder/features/numberLookup/PhoneEventLogManager$6;->this$0:Lcom/telguarder/features/numberLookup/PhoneEventLogManager;

    invoke-static {v2}, Lcom/telguarder/features/numberLookup/PhoneEventLogManager;->access$400(Lcom/telguarder/features/numberLookup/PhoneEventLogManager;)Ljava/util/ArrayList;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/telguarder/features/numberLookup/PhoneEventLogManager;->downloadSpamCommentData(Landroid/content/Context;Ljava/util/ArrayList;I)V

    return-void
.end method
