.class public Lio/bidmachine/core/AdvertisingIdClientInfo$AdvertisingProfile;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/core/AdvertisingIdClientInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AdvertisingProfile"
.end annotation


# instance fields
.field private id:Ljava/lang/String;

.field private limitAdTrackingEnabled:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    .line 68
    iget-object v0, p0, Lio/bidmachine/core/AdvertisingIdClientInfo$AdvertisingProfile;->id:Ljava/lang/String;

    return-object v0
.end method

.method public isLimitAdTrackingEnabled()Z
    .locals 1

    .line 76
    iget-boolean v0, p0, Lio/bidmachine/core/AdvertisingIdClientInfo$AdvertisingProfile;->limitAdTrackingEnabled:Z

    return v0
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lio/bidmachine/core/AdvertisingIdClientInfo$AdvertisingProfile;->id:Ljava/lang/String;

    return-void
.end method

.method setLimitAdTrackingEnabled(Z)V
    .locals 0

    .line 80
    iput-boolean p1, p0, Lio/bidmachine/core/AdvertisingIdClientInfo$AdvertisingProfile;->limitAdTrackingEnabled:Z

    return-void
.end method
