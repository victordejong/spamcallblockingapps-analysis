.class public Lio/bidmachine/AdObjectImpl$BaseUnifiedAdCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/unified/UnifiedAdCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/AdObjectImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BaseUnifiedAdCallback"
.end annotation


# instance fields
.field protected final processCallback:Lio/bidmachine/AdProcessCallback;


# direct methods
.method public constructor <init>(Lio/bidmachine/AdProcessCallback;)V
    .locals 0

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 158
    iput-object p1, p0, Lio/bidmachine/AdObjectImpl$BaseUnifiedAdCallback;->processCallback:Lio/bidmachine/AdProcessCallback;

    return-void
.end method


# virtual methods
.method public log(Ljava/lang/String;)V
    .locals 1

    .line 183
    iget-object v0, p0, Lio/bidmachine/AdObjectImpl$BaseUnifiedAdCallback;->processCallback:Lio/bidmachine/AdProcessCallback;

    invoke-interface {v0, p1}, Lio/bidmachine/AdProcessCallback;->log(Ljava/lang/String;)V

    return-void
.end method

.method public onAdClicked()V
    .locals 1

    .line 168
    iget-object v0, p0, Lio/bidmachine/AdObjectImpl$BaseUnifiedAdCallback;->processCallback:Lio/bidmachine/AdProcessCallback;

    invoke-interface {v0}, Lio/bidmachine/AdProcessCallback;->processClicked()V

    return-void
.end method

.method public onAdExpired()V
    .locals 1

    .line 178
    iget-object v0, p0, Lio/bidmachine/AdObjectImpl$BaseUnifiedAdCallback;->processCallback:Lio/bidmachine/AdProcessCallback;

    invoke-interface {v0}, Lio/bidmachine/AdProcessCallback;->processExpired()V

    return-void
.end method

.method public onAdLoadFailed(Lio/bidmachine/utils/BMError;)V
    .locals 1

    .line 163
    iget-object v0, p0, Lio/bidmachine/AdObjectImpl$BaseUnifiedAdCallback;->processCallback:Lio/bidmachine/AdProcessCallback;

    invoke-interface {v0, p1}, Lio/bidmachine/AdProcessCallback;->processLoadFail(Lio/bidmachine/utils/BMError;)V

    return-void
.end method

.method public onAdShowFailed(Lio/bidmachine/utils/BMError;)V
    .locals 1

    .line 173
    iget-object v0, p0, Lio/bidmachine/AdObjectImpl$BaseUnifiedAdCallback;->processCallback:Lio/bidmachine/AdProcessCallback;

    invoke-interface {v0, p1}, Lio/bidmachine/AdProcessCallback;->processShowFail(Lio/bidmachine/utils/BMError;)V

    return-void
.end method
