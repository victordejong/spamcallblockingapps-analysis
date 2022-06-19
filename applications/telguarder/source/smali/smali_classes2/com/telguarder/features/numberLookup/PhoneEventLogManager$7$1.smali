.class Lcom/telguarder/features/numberLookup/PhoneEventLogManager$7$1;
.super Ljava/lang/Object;
.source "PhoneEventLogManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/telguarder/features/numberLookup/PhoneEventLogManager$7;->onSuccess(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/telguarder/features/numberLookup/PhoneEventLogManager$7;

.field final synthetic val$pe:Lcom/telguarder/features/numberLookup/PhoneEvent;


# direct methods
.method constructor <init>(Lcom/telguarder/features/numberLookup/PhoneEventLogManager$7;Lcom/telguarder/features/numberLookup/PhoneEvent;)V
    .locals 0

    .line 835
    iput-object p1, p0, Lcom/telguarder/features/numberLookup/PhoneEventLogManager$7$1;->this$1:Lcom/telguarder/features/numberLookup/PhoneEventLogManager$7;

    iput-object p2, p0, Lcom/telguarder/features/numberLookup/PhoneEventLogManager$7$1;->val$pe:Lcom/telguarder/features/numberLookup/PhoneEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 837
    iget-object v0, p0, Lcom/telguarder/features/numberLookup/PhoneEventLogManager$7$1;->this$1:Lcom/telguarder/features/numberLookup/PhoneEventLogManager$7;

    iget-object v0, v0, Lcom/telguarder/features/numberLookup/PhoneEventLogManager$7;->this$0:Lcom/telguarder/features/numberLookup/PhoneEventLogManager;

    iget-object v1, p0, Lcom/telguarder/features/numberLookup/PhoneEventLogManager$7$1;->this$1:Lcom/telguarder/features/numberLookup/PhoneEventLogManager$7;

    iget-object v1, v1, Lcom/telguarder/features/numberLookup/PhoneEventLogManager$7;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/telguarder/features/numberLookup/PhoneEventLogManager$7$1;->val$pe:Lcom/telguarder/features/numberLookup/PhoneEvent;

    new-instance v3, Lcom/telguarder/features/numberLookup/PhoneEventLogManager$7$1$1;

    invoke-direct {v3, p0}, Lcom/telguarder/features/numberLookup/PhoneEventLogManager$7$1$1;-><init>(Lcom/telguarder/features/numberLookup/PhoneEventLogManager$7$1;)V

    invoke-static {v0, v1, v2, v3}, Lcom/telguarder/features/numberLookup/PhoneEventLogManager;->access$1300(Lcom/telguarder/features/numberLookup/PhoneEventLogManager;Landroid/content/Context;Lcom/telguarder/features/numberLookup/PhoneEvent;Lcom/telguarder/helpers/backend/BackendCallbackListener;)V

    return-void
.end method
