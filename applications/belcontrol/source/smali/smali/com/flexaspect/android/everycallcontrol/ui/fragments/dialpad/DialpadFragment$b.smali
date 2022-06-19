.class public Lcom/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment$b;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public final synthetic a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment;


# direct methods
.method public constructor <init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment$b;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment;Lcom/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment$b;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    const-string p1, "state"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget-object p2, Landroid/telephony/TelephonyManager;->EXTRA_STATE_IDLE:Ljava/lang/String;

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    sget-object p2, Landroid/telephony/TelephonyManager;->EXTRA_STATE_OFFHOOK:Ljava/lang/String;

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment$b;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment;

    invoke-static {p1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment;->J(Lcom/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment$b;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment;->K(Lcom/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment;Z)V

    :cond_1
    return-void
.end method
