.class public final synthetic Lcom/telguarder/features/phoneCallWidget/-$$Lambda$PhoneStateBroadcastReceiver$hPHkNiagnE4t2vgYFSURspgDru0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler$PhoneStateCallData;

.field public final synthetic f$1:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler$PhoneStateCallData;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/telguarder/features/phoneCallWidget/-$$Lambda$PhoneStateBroadcastReceiver$hPHkNiagnE4t2vgYFSURspgDru0;->f$0:Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler$PhoneStateCallData;

    iput-object p2, p0, Lcom/telguarder/features/phoneCallWidget/-$$Lambda$PhoneStateBroadcastReceiver$hPHkNiagnE4t2vgYFSURspgDru0;->f$1:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/telguarder/features/phoneCallWidget/-$$Lambda$PhoneStateBroadcastReceiver$hPHkNiagnE4t2vgYFSURspgDru0;->f$0:Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler$PhoneStateCallData;

    iget-object v1, p0, Lcom/telguarder/features/phoneCallWidget/-$$Lambda$PhoneStateBroadcastReceiver$hPHkNiagnE4t2vgYFSURspgDru0;->f$1:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/telguarder/features/phoneCallWidget/PhoneStateBroadcastReceiver;->lambda$onTelephonyManagerCallstateidle$2(Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler$PhoneStateCallData;Landroid/content/Context;)V

    return-void
.end method
