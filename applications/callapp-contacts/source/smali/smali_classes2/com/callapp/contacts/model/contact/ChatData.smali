.class public abstract Lcom/callapp/contacts/model/contact/ChatData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final NO_PRESENCE_DATA_AVAILABLE:I = -0x1

.field private static final PRESENCE_DATA_NOT_FETCHED_YET:I = -0x2

.field private static final serialVersionUID:J = -0x1dc478dec230188eL


# instance fields
.field private final account:Lcom/callapp/common/model/json/JSONIMaddress;

.field private presence:I


# direct methods
.method public constructor <init>(Lcom/callapp/common/model/json/JSONIMaddress;)V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x2

    .line 15
    iput v0, p0, Lcom/callapp/contacts/model/contact/ChatData;->presence:I

    .line 18
    iput-object p1, p0, Lcom/callapp/contacts/model/contact/ChatData;->account:Lcom/callapp/common/model/json/JSONIMaddress;

    .line 19
    instance-of v0, p1, Lcom/callapp/contacts/loader/device/DeviceIMAddress;

    if-eqz v0, :cond_0

    .line 21
    check-cast p1, Lcom/callapp/contacts/loader/device/DeviceIMAddress;

    invoke-virtual {p1}, Lcom/callapp/contacts/loader/device/DeviceIMAddress;->getPresence()I

    move-result p1

    iput p1, p0, Lcom/callapp/contacts/model/contact/ChatData;->presence:I

    :cond_0
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 73
    :cond_1
    instance-of v2, p1, Lcom/callapp/contacts/model/contact/ChatData;

    if-nez v2, :cond_2

    return v1

    .line 75
    :cond_2
    check-cast p1, Lcom/callapp/contacts/model/contact/ChatData;

    .line 76
    iget-object v2, p0, Lcom/callapp/contacts/model/contact/ChatData;->account:Lcom/callapp/common/model/json/JSONIMaddress;

    if-nez v2, :cond_3

    .line 77
    iget-object p1, p1, Lcom/callapp/contacts/model/contact/ChatData;->account:Lcom/callapp/common/model/json/JSONIMaddress;

    if-eqz p1, :cond_4

    return v1

    .line 79
    :cond_3
    iget-object p1, p1, Lcom/callapp/contacts/model/contact/ChatData;->account:Lcom/callapp/common/model/json/JSONIMaddress;

    invoke-virtual {v2, p1}, Lcom/callapp/common/model/json/JSONIMaddress;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v1

    :cond_4
    return v0
.end method

.method protected abstract fetchPresence()I
.end method

.method public getIMAddress()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/ChatData;->account:Lcom/callapp/common/model/json/JSONIMaddress;

    invoke-virtual {v0}, Lcom/callapp/common/model/json/JSONIMaddress;->getIMAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPresence()I
    .locals 1

    const/4 v0, 0x1

    .line 34
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/model/contact/ChatData;->getPresence(Z)I

    move-result v0

    return v0
.end method

.method public getPresence(Z)I
    .locals 2

    .line 39
    iget v0, p0, Lcom/callapp/contacts/model/contact/ChatData;->presence:I

    const/4 v1, -0x2

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, -0x1

    return p1

    .line 50
    :cond_1
    monitor-enter p0

    .line 52
    :try_start_0
    iget p1, p0, Lcom/callapp/contacts/model/contact/ChatData;->presence:I

    if-ne p1, v1, :cond_2

    .line 53
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/ChatData;->fetchPresence()I

    move-result p1

    iput p1, p0, Lcom/callapp/contacts/model/contact/ChatData;->presence:I

    .line 54
    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    iget p1, p0, Lcom/callapp/contacts/model/contact/ChatData;->presence:I

    return p1

    :catchall_0
    move-exception p1

    .line 54
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public hashCode()I
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/ChatData;->account:Lcom/callapp/common/model/json/JSONIMaddress;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/callapp/common/model/json/JSONIMaddress;->hashCode()I

    move-result v0

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    return v0
.end method
