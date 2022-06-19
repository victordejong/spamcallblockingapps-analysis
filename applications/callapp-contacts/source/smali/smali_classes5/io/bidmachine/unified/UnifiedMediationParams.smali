.class public abstract Lio/bidmachine/unified/UnifiedMediationParams;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/unified/UnifiedMediationParams$MappedUnifiedMediationParams;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract contains(Ljava/lang/String;)Z
.end method

.method public getBool(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    .line 35
    invoke-virtual {p0, p1, v0}, Lio/bidmachine/unified/UnifiedMediationParams;->getBool(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public abstract getBool(Ljava/lang/String;Z)Z
.end method

.method public getDouble(Ljava/lang/String;)D
    .locals 2

    const-wide/16 v0, 0x0

    .line 41
    invoke-virtual {p0, p1, v0, v1}, Lio/bidmachine/unified/UnifiedMediationParams;->getDouble(Ljava/lang/String;D)D

    move-result-wide v0

    return-wide v0
.end method

.method public abstract getDouble(Ljava/lang/String;D)D
.end method

.method public getFloat(Ljava/lang/String;)F
    .locals 1

    const/4 v0, 0x0

    .line 47
    invoke-virtual {p0, p1, v0}, Lio/bidmachine/unified/UnifiedMediationParams;->getFloat(Ljava/lang/String;F)F

    move-result p1

    return p1
.end method

.method public abstract getFloat(Ljava/lang/String;F)F
.end method

.method public getInt(Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    .line 21
    invoke-virtual {p0, p1, v0}, Lio/bidmachine/unified/UnifiedMediationParams;->getInt(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public abstract getInt(Ljava/lang/String;I)I
.end method

.method public getInteger(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1

    const/4 v0, 0x0

    .line 28
    invoke-virtual {p0, p1, v0}, Lio/bidmachine/unified/UnifiedMediationParams;->getInteger(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public abstract getInteger(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;
.end method

.method public getObject(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 55
    invoke-virtual {p0, p1, v0}, Lio/bidmachine/unified/UnifiedMediationParams;->getObject(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getObject(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)TT;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 14
    invoke-virtual {p0, p1, v0}, Lio/bidmachine/unified/UnifiedMediationParams;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public abstract getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method
