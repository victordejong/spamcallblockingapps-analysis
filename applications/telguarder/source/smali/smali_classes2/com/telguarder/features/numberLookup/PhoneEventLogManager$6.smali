.class Lcom/telguarder/features/numberLookup/PhoneEventLogManager$6;
.super Ljava/lang/Object;
.source "PhoneEventLogManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/telguarder/features/numberLookup/PhoneEventLogManager;->loadCallLogWitResultsFromBackend(Landroid/content/Context;Ljava/util/ArrayList;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/telguarder/features/numberLookup/PhoneEventLogManager;

.field final synthetic val$callLog:Ljava/util/ArrayList;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$limit:I


# direct methods
.method constructor <init>(Lcom/telguarder/features/numberLookup/PhoneEventLogManager;Landroid/content/Context;Ljava/util/ArrayList;I)V
    .locals 0

    .line 676
    iput-object p1, p0, Lcom/telguarder/features/numberLookup/PhoneEventLogManager$6;->this$0:Lcom/telguarder/features/numberLookup/PhoneEventLogManager;

    iput-object p2, p0, Lcom/telguarder/features/numberLookup/PhoneEventLogManager$6;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/telguarder/features/numberLookup/PhoneEventLogManager$6;->val$callLog:Ljava/util/ArrayList;

    iput p4, p0, Lcom/telguarder/features/numberLookup/PhoneEventLogManager$6;->val$limit:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 678
    iget-object v0, p0, Lcom/telguarder/features/numberLookup/PhoneEventLogManager$6;->this$0:Lcom/telguarder/features/numberLookup/PhoneEventLogManager;

    iget-object v1, p0, Lcom/telguarder/features/numberLookup/PhoneEventLogManager$6;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/telguarder/features/numberLookup/PhoneEventLogManager$6;->val$callLog:Ljava/util/ArrayList;

    new-instance v3, Lcom/telguarder/features/numberLookup/PhoneEventLogManager$6$1;

    invoke-direct {v3, p0, v1}, Lcom/telguarder/features/numberLookup/PhoneEventLogManager$6$1;-><init>(Lcom/telguarder/features/numberLookup/PhoneEventLogManager$6;Landroid/content/Context;)V

    iget v4, p0, Lcom/telguarder/features/numberLookup/PhoneEventLogManager$6;->val$limit:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/telguarder/features/numberLookup/PhoneEventLogManager;->getPhoneCallLogWithResultsFromBackend(Landroid/content/Context;Ljava/util/ArrayList;Lcom/telguarder/helpers/backend/BackendCallbackListener;I)V

    return-void
.end method
