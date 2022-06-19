.class final Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget$1;
.super Ljava/lang/Object;
.source "PhoneCallWidget.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->show(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager$CallType;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callId:Ljava/lang/String;

.field final synthetic val$callType:Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager$CallType;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$phoneNumber:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager$CallType;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget$1;->val$callId:Ljava/lang/String;

    iput-object p3, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget$1;->val$phoneNumber:Ljava/lang/String;

    iput-object p4, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget$1;->val$callType:Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager$CallType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$run$0(Landroid/content/Context;)V
    .locals 1

    .line 126
    :try_start_0
    invoke-static {}, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->getInstance()Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->access$900(Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 128
    :catch_0
    invoke-static {p0}, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->hide(Landroid/content/Context;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 113
    :try_start_0
    invoke-static {}, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->isInstantiated()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->getInstance()Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;

    move-result-object v0

    iget-object v1, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget$1;->val$context:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->access$000(Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    :catch_0
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->getInstance()Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;

    move-result-object v0

    iget-object v1, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget$1;->val$callId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->access$102(Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;Ljava/lang/String;)Ljava/lang/String;

    .line 115
    invoke-static {}, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->getInstance()Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;

    move-result-object v0

    iget-object v1, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget$1;->val$phoneNumber:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->access$202(Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;Ljava/lang/String;)Ljava/lang/String;

    .line 116
    invoke-static {}, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->getInstance()Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;

    move-result-object v0

    iget-object v1, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget$1;->val$callType:Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager$CallType;

    invoke-static {v0, v1}, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->access$302(Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager$CallType;)Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager$CallType;

    .line 117
    invoke-static {}, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->getInstance()Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;

    move-result-object v0

    invoke-static {}, Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler;->getInstance()Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler;

    move-result-object v1

    iget-object v2, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget$1;->val$phoneNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler;->getPhoneStateCallData(Ljava/lang/String;)Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler$PhoneStateCallData;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->access$402(Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler$PhoneStateCallData;)Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler$PhoneStateCallData;

    .line 118
    invoke-static {}, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->getInstance()Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;

    move-result-object v0

    iget-object v1, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget$1;->val$context:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->access$500(Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;Landroid/content/Context;)V

    .line 119
    invoke-static {}, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->getInstance()Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;

    move-result-object v0

    invoke-static {v0}, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->access$600(Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;)V

    .line 120
    invoke-static {}, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->getInstance()Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;

    move-result-object v0

    iget-object v1, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget$1;->val$context:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->access$700(Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;Landroid/content/Context;)V

    .line 121
    iget-object v0, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget$1;->val$phoneNumber:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 122
    invoke-static {}, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->getInstance()Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;

    move-result-object v0

    iget-object v1, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget$1;->val$context:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->access$800(Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;Landroid/content/Context;)V

    goto :goto_0

    .line 124
    :cond_1
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget$1;->val$context:Landroid/content/Context;

    new-instance v2, Lcom/telguarder/features/phoneCallWidget/-$$Lambda$PhoneCallWidget$1$61QIz44zCfuZ1fSKYw6wiVFs0O8;

    invoke-direct {v2, v1}, Lcom/telguarder/features/phoneCallWidget/-$$Lambda$PhoneCallWidget$1$61QIz44zCfuZ1fSKYw6wiVFs0O8;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 130
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :goto_0
    return-void
.end method
