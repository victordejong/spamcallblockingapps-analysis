.class public Lnet/pubnative/lite/sdk/vpaid/helpers/SimpleTimer;
.super Landroid/os/CountDownTimer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/pubnative/lite/sdk/vpaid/helpers/SimpleTimer$Listener;
    }
.end annotation


# instance fields
.field private mListener:Lnet/pubnative/lite/sdk/vpaid/helpers/SimpleTimer$Listener;


# direct methods
.method public constructor <init>(JLnet/pubnative/lite/sdk/vpaid/helpers/SimpleTimer$Listener;)V
    .locals 2

    const-wide/32 v0, 0xea60

    .line 14
    invoke-direct {p0, p1, p2, v0, v1}, Landroid/os/CountDownTimer;-><init>(JJ)V

    .line 15
    iput-object p3, p0, Lnet/pubnative/lite/sdk/vpaid/helpers/SimpleTimer;->mListener:Lnet/pubnative/lite/sdk/vpaid/helpers/SimpleTimer$Listener;

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 1

    .line 24
    iget-object v0, p0, Lnet/pubnative/lite/sdk/vpaid/helpers/SimpleTimer;->mListener:Lnet/pubnative/lite/sdk/vpaid/helpers/SimpleTimer$Listener;

    if-eqz v0, :cond_0

    .line 25
    invoke-interface {v0}, Lnet/pubnative/lite/sdk/vpaid/helpers/SimpleTimer$Listener;->onFinish()V

    :cond_0
    return-void
.end method

.method public onTick(J)V
    .locals 0

    return-void
.end method
