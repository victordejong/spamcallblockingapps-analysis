.class public final synthetic Lcom/telguarder/features/phoneCallWidget/-$$Lambda$PhoneStateBroadcastReceiver$VzB865HJZNK1jecMMHYFDptd_vw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/telguarder/features/phoneCallWidget/PhoneStateBroadcastReceiver;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Landroid/content/Context;

.field public final synthetic f$3:Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler$PhoneStateCallData;


# direct methods
.method public synthetic constructor <init>(Lcom/telguarder/features/phoneCallWidget/PhoneStateBroadcastReceiver;Ljava/lang/String;Landroid/content/Context;Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler$PhoneStateCallData;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/telguarder/features/phoneCallWidget/-$$Lambda$PhoneStateBroadcastReceiver$VzB865HJZNK1jecMMHYFDptd_vw;->f$0:Lcom/telguarder/features/phoneCallWidget/PhoneStateBroadcastReceiver;

    iput-object p2, p0, Lcom/telguarder/features/phoneCallWidget/-$$Lambda$PhoneStateBroadcastReceiver$VzB865HJZNK1jecMMHYFDptd_vw;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/telguarder/features/phoneCallWidget/-$$Lambda$PhoneStateBroadcastReceiver$VzB865HJZNK1jecMMHYFDptd_vw;->f$2:Landroid/content/Context;

    iput-object p4, p0, Lcom/telguarder/features/phoneCallWidget/-$$Lambda$PhoneStateBroadcastReceiver$VzB865HJZNK1jecMMHYFDptd_vw;->f$3:Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler$PhoneStateCallData;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/telguarder/features/phoneCallWidget/-$$Lambda$PhoneStateBroadcastReceiver$VzB865HJZNK1jecMMHYFDptd_vw;->f$0:Lcom/telguarder/features/phoneCallWidget/PhoneStateBroadcastReceiver;

    iget-object v1, p0, Lcom/telguarder/features/phoneCallWidget/-$$Lambda$PhoneStateBroadcastReceiver$VzB865HJZNK1jecMMHYFDptd_vw;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/telguarder/features/phoneCallWidget/-$$Lambda$PhoneStateBroadcastReceiver$VzB865HJZNK1jecMMHYFDptd_vw;->f$2:Landroid/content/Context;

    iget-object v3, p0, Lcom/telguarder/features/phoneCallWidget/-$$Lambda$PhoneStateBroadcastReceiver$VzB865HJZNK1jecMMHYFDptd_vw;->f$3:Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler$PhoneStateCallData;

    invoke-virtual {v0, v1, v2, v3}, Lcom/telguarder/features/phoneCallWidget/PhoneStateBroadcastReceiver;->lambda$onTelephonyManagerCallstateringing$1$PhoneStateBroadcastReceiver(Ljava/lang/String;Landroid/content/Context;Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler$PhoneStateCallData;)V

    return-void
.end method
