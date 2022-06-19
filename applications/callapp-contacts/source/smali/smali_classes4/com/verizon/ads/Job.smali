.class public abstract Lcom/verizon/ads/Job;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/verizon/ads/Job$JobStateListener;
    }
.end annotation


# instance fields
.field a:Lcom/verizon/ads/Job$JobStateListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getDelay()J
.end method

.method public abstract getId()I
.end method

.method public final jobFinished()V
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/verizon/ads/Job;->a:Lcom/verizon/ads/Job$JobStateListener;

    if-eqz v0, :cond_0

    .line 25
    invoke-interface {v0, p0}, Lcom/verizon/ads/Job$JobStateListener;->onJobFinished(Lcom/verizon/ads/Job;)V

    :cond_0
    return-void
.end method
