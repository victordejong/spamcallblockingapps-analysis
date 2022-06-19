.class Lcom/callapp/contacts/model/objectbox/PreferredSimData$SimTypeConverter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/objectbox/converter/PropertyConverter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/model/objectbox/PreferredSimData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SimTypeConverter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/objectbox/converter/PropertyConverter<",
        "Lcom/callapp/contacts/manager/sim/SimManager$SimId;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public convertToDatabaseValue(Lcom/callapp/contacts/manager/sim/SimManager$SimId;)Ljava/lang/Integer;
    .locals 0

    .line 67
    iget p1, p1, Lcom/callapp/contacts/manager/sim/SimManager$SimId;->simId:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic convertToDatabaseValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 64
    check-cast p1, Lcom/callapp/contacts/manager/sim/SimManager$SimId;

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/model/objectbox/PreferredSimData$SimTypeConverter;->convertToDatabaseValue(Lcom/callapp/contacts/manager/sim/SimManager$SimId;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public convertToEntityProperty(Ljava/lang/Integer;)Lcom/callapp/contacts/manager/sim/SimManager$SimId;
    .locals 1

    .line 72
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 78
    sget-object p1, Lcom/callapp/contacts/manager/sim/SimManager$SimId;->ASK:Lcom/callapp/contacts/manager/sim/SimManager$SimId;

    return-object p1

    .line 76
    :cond_0
    sget-object p1, Lcom/callapp/contacts/manager/sim/SimManager$SimId;->SIM_2:Lcom/callapp/contacts/manager/sim/SimManager$SimId;

    return-object p1

    .line 74
    :cond_1
    sget-object p1, Lcom/callapp/contacts/manager/sim/SimManager$SimId;->SIM_1:Lcom/callapp/contacts/manager/sim/SimManager$SimId;

    return-object p1
.end method

.method public bridge synthetic convertToEntityProperty(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 64
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/model/objectbox/PreferredSimData$SimTypeConverter;->convertToEntityProperty(Ljava/lang/Integer;)Lcom/callapp/contacts/manager/sim/SimManager$SimId;

    move-result-object p1

    return-object p1
.end method
