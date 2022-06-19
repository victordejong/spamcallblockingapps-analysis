.class public abstract Lio/bidmachine/unified/UnifiedParams;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mediationParams:Lio/bidmachine/unified/UnifiedMediationParams;


# direct methods
.method public constructor <init>(Lio/bidmachine/unified/UnifiedMediationParams;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lio/bidmachine/unified/UnifiedParams;->mediationParams:Lio/bidmachine/unified/UnifiedMediationParams;

    return-void
.end method


# virtual methods
.method public getMediationParams()Lio/bidmachine/unified/UnifiedMediationParams;
    .locals 1

    .line 16
    iget-object v0, p0, Lio/bidmachine/unified/UnifiedParams;->mediationParams:Lio/bidmachine/unified/UnifiedMediationParams;

    return-object v0
.end method

.method public abstract isValid(Lio/bidmachine/unified/UnifiedAdCallback;)Z
.end method
