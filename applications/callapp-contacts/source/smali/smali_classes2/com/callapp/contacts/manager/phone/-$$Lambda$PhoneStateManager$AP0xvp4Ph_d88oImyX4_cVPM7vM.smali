.class public final synthetic Lcom/callapp/contacts/manager/phone/-$$Lambda$PhoneStateManager$AP0xvp4Ph_d88oImyX4_cVPM7vM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/telecom/CallAudioState;


# direct methods
.method public synthetic constructor <init>(Landroid/telecom/CallAudioState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/callapp/contacts/manager/phone/-$$Lambda$PhoneStateManager$AP0xvp4Ph_d88oImyX4_cVPM7vM;->f$0:Landroid/telecom/CallAudioState;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/callapp/contacts/manager/phone/-$$Lambda$PhoneStateManager$AP0xvp4Ph_d88oImyX4_cVPM7vM;->f$0:Landroid/telecom/CallAudioState;

    invoke-static {v0}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->lambda$onAudioStateChanged$0(Landroid/telecom/CallAudioState;)V

    return-void
.end method
