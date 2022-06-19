.class Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget$8;
.super Ljava/lang/Object;
.source "PhoneCallWidget.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->startLookup(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;Landroid/content/Context;)V
    .locals 0

    .line 621
    iput-object p1, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget$8;->this$0:Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;

    iput-object p2, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget$8;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 623
    invoke-static {}, Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager;->getInstance()Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager;

    move-result-object v0

    iget-object v1, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget$8;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget$8;->this$0:Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;

    invoke-static {v2}, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->access$200(Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget$8$1;

    invoke-direct {v3, p0}, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget$8$1;-><init>(Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget$8;)V

    iget-object v4, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget$8;->this$0:Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;

    .line 651
    invoke-static {v4}, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->access$300(Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;)Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager$CallType;

    move-result-object v4

    invoke-static {}, Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler;->getInstance()Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler;

    move-result-object v5

    invoke-virtual {v5}, Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler;->isKeepAliveRunning()Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    .line 623
    invoke-virtual/range {v0 .. v5}, Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager;->lookupResultsForPhoneNumber(Landroid/content/Context;Ljava/lang/String;Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager$PhoneNumberLookupCallbackListener;Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager$CallType;Z)V

    return-void
.end method
