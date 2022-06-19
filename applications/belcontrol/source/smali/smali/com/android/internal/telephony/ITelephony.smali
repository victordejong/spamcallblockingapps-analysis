.class public interface abstract Lcom/android/internal/telephony/ITelephony;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/ITelephony$Stub;,
        Lcom/android/internal/telephony/ITelephony$Default;
    }
.end annotation


# virtual methods
.method public abstract answerRingingCall()V
.end method

.method public abstract cancelMissedCallsNotification()V
.end method

.method public abstract endCall()Z
.end method

.method public abstract silenceRinger()V
.end method
