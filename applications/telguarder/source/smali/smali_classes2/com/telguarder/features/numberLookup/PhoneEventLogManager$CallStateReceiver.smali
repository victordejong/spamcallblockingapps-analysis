.class Lcom/telguarder/features/numberLookup/PhoneEventLogManager$CallStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PhoneEventLogManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/telguarder/features/numberLookup/PhoneEventLogManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CallStateReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/telguarder/features/numberLookup/PhoneEventLogManager;


# direct methods
.method private constructor <init>(Lcom/telguarder/features/numberLookup/PhoneEventLogManager;)V
    .locals 0

    .line 797
    iput-object p1, p0, Lcom/telguarder/features/numberLookup/PhoneEventLogManager$CallStateReceiver;->this$0:Lcom/telguarder/features/numberLookup/PhoneEventLogManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/telguarder/features/numberLookup/PhoneEventLogManager;Lcom/telguarder/features/numberLookup/PhoneEventLogManager$1;)V
    .locals 0

    .line 797
    invoke-direct {p0, p1}, Lcom/telguarder/features/numberLookup/PhoneEventLogManager$CallStateReceiver;-><init>(Lcom/telguarder/features/numberLookup/PhoneEventLogManager;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const-string v0, "state"

    .line 800
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 801
    sget-object v0, Landroid/telephony/TelephonyManager;->EXTRA_STATE_IDLE:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 802
    new-instance p2, Ljava/lang/Thread;

    new-instance v0, Lcom/telguarder/features/numberLookup/PhoneEventLogManager$CallStateReceiver$1;

    invoke-direct {v0, p0, p1}, Lcom/telguarder/features/numberLookup/PhoneEventLogManager$CallStateReceiver$1;-><init>(Lcom/telguarder/features/numberLookup/PhoneEventLogManager$CallStateReceiver;Landroid/content/Context;)V

    invoke-direct {p2, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 809
    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method
