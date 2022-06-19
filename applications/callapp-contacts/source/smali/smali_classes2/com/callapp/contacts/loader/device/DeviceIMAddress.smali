.class public Lcom/callapp/contacts/loader/device/DeviceIMAddress;
.super Lcom/callapp/common/model/json/JSONIMaddress;
.source "SourceFile"


# instance fields
.field private dataRowId:J

.field private presence:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 6
    invoke-direct {p0}, Lcom/callapp/common/model/json/JSONIMaddress;-><init>()V

    const-wide/16 v0, -0x1

    .line 8
    iput-wide v0, p0, Lcom/callapp/contacts/loader/device/DeviceIMAddress;->dataRowId:J

    const/4 v0, -0x1

    .line 9
    iput v0, p0, Lcom/callapp/contacts/loader/device/DeviceIMAddress;->presence:I

    return-void
.end method


# virtual methods
.method public getDataRowId()J
    .locals 2

    .line 12
    iget-wide v0, p0, Lcom/callapp/contacts/loader/device/DeviceIMAddress;->dataRowId:J

    return-wide v0
.end method

.method public getPresence()I
    .locals 1

    .line 20
    iget v0, p0, Lcom/callapp/contacts/loader/device/DeviceIMAddress;->presence:I

    return v0
.end method

.method public setDataRowId(J)V
    .locals 0

    .line 16
    iput-wide p1, p0, Lcom/callapp/contacts/loader/device/DeviceIMAddress;->dataRowId:J

    return-void
.end method

.method public setPresence(I)V
    .locals 0

    .line 24
    iput p1, p0, Lcom/callapp/contacts/loader/device/DeviceIMAddress;->presence:I

    return-void
.end method
