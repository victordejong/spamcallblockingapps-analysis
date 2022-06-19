.class public Lio/bidmachine/unified/UnifiedMediationParams$MappedUnifiedMediationParams;
.super Lio/bidmachine/unified/UnifiedMediationParams;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/unified/UnifiedMediationParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MappedUnifiedMediationParams"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/unified/UnifiedMediationParams$MappedUnifiedMediationParams$DataProvider;
    }
.end annotation


# instance fields
.field private dataProvider:Lio/bidmachine/unified/UnifiedMediationParams$MappedUnifiedMediationParams$DataProvider;


# direct methods
.method public constructor <init>(Lio/bidmachine/unified/UnifiedMediationParams$MappedUnifiedMediationParams$DataProvider;)V
    .locals 0

    .line 72
    invoke-direct {p0}, Lio/bidmachine/unified/UnifiedMediationParams;-><init>()V

    .line 73
    iput-object p1, p0, Lio/bidmachine/unified/UnifiedMediationParams$MappedUnifiedMediationParams;->dataProvider:Lio/bidmachine/unified/UnifiedMediationParams$MappedUnifiedMediationParams$DataProvider;

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/String;)Z
    .locals 1

    .line 109
    iget-object v0, p0, Lio/bidmachine/unified/UnifiedMediationParams$MappedUnifiedMediationParams;->dataProvider:Lio/bidmachine/unified/UnifiedMediationParams$MappedUnifiedMediationParams$DataProvider;

    invoke-interface {v0}, Lio/bidmachine/unified/UnifiedMediationParams$MappedUnifiedMediationParams$DataProvider;->getData()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getBool(Ljava/lang/String;Z)Z
    .locals 0

    .line 94
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lio/bidmachine/unified/UnifiedMediationParams$MappedUnifiedMediationParams;->getObject(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public getDouble(Ljava/lang/String;D)D
    .locals 0

    .line 99
    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lio/bidmachine/unified/UnifiedMediationParams$MappedUnifiedMediationParams;->getObject(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    return-wide p1
.end method

.method public getFloat(Ljava/lang/String;F)F
    .locals 0

    .line 104
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lio/bidmachine/unified/UnifiedMediationParams$MappedUnifiedMediationParams;->getObject(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    return p1
.end method

.method public getInt(Ljava/lang/String;I)I
    .locals 0

    .line 84
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lio/bidmachine/unified/UnifiedMediationParams$MappedUnifiedMediationParams;->getObject(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public getInteger(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    .line 89
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/unified/UnifiedMediationParams$MappedUnifiedMediationParams;->getObject(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    return-object p1
.end method

.method public getObject(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)TT;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 116
    iget-object v0, p0, Lio/bidmachine/unified/UnifiedMediationParams$MappedUnifiedMediationParams;->dataProvider:Lio/bidmachine/unified/UnifiedMediationParams$MappedUnifiedMediationParams$DataProvider;

    invoke-interface {v0}, Lio/bidmachine/unified/UnifiedMediationParams$MappedUnifiedMediationParams$DataProvider;->getData()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    return-object p2
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 79
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/unified/UnifiedMediationParams$MappedUnifiedMediationParams;->getObject(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method
