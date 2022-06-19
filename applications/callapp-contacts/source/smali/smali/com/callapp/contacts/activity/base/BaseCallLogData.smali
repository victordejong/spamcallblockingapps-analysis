.class public Lcom/callapp/contacts/activity/base/BaseCallLogData;
.super Lcom/callapp/contacts/activity/base/BaseAdapterItemData;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:Ljava/lang/String;

.field public final c:Lcom/callapp/framework/phone/Phone;

.field public final d:Ljava/util/Date;

.field public final e:I

.field protected f:Lcom/callapp/contacts/manager/sim/SimManager$SimId;


# direct methods
.method public constructor <init>(ILjava/util/Date;Ljava/lang/String;Lcom/callapp/framework/phone/Phone;ILjava/lang/String;Lcom/callapp/contacts/manager/sim/SimManager$SimId;)V
    .locals 0

    .line 54
    invoke-direct {p0}, Lcom/callapp/contacts/activity/base/BaseAdapterItemData;-><init>()V

    .line 55
    iput-object p2, p0, Lcom/callapp/contacts/activity/base/BaseCallLogData;->d:Ljava/util/Date;

    .line 56
    iput-object p3, p0, Lcom/callapp/contacts/activity/base/BaseCallLogData;->displayName:Ljava/lang/String;

    .line 57
    iput-object p4, p0, Lcom/callapp/contacts/activity/base/BaseCallLogData;->c:Lcom/callapp/framework/phone/Phone;

    .line 58
    iput p5, p0, Lcom/callapp/contacts/activity/base/BaseCallLogData;->a:I

    .line 59
    iput-object p6, p0, Lcom/callapp/contacts/activity/base/BaseCallLogData;->b:Ljava/lang/String;

    .line 60
    iput p1, p0, Lcom/callapp/contacts/activity/base/BaseCallLogData;->e:I

    .line 61
    iput-object p7, p0, Lcom/callapp/contacts/activity/base/BaseCallLogData;->f:Lcom/callapp/contacts/manager/sim/SimManager$SimId;

    return-void
.end method

.method public constructor <init>(Lcom/callapp/contacts/activity/base/BaseCallLogData;)V
    .locals 1

    .line 65
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/base/BaseAdapterItemData;-><init>(Lcom/callapp/contacts/activity/base/BaseAdapterItemData;)V

    .line 66
    iget-object v0, p1, Lcom/callapp/contacts/activity/base/BaseCallLogData;->d:Ljava/util/Date;

    iput-object v0, p0, Lcom/callapp/contacts/activity/base/BaseCallLogData;->d:Ljava/util/Date;

    .line 67
    iget-object v0, p1, Lcom/callapp/contacts/activity/base/BaseCallLogData;->displayName:Ljava/lang/String;

    iput-object v0, p0, Lcom/callapp/contacts/activity/base/BaseCallLogData;->displayName:Ljava/lang/String;

    .line 68
    iget-object v0, p1, Lcom/callapp/contacts/activity/base/BaseCallLogData;->c:Lcom/callapp/framework/phone/Phone;

    iput-object v0, p0, Lcom/callapp/contacts/activity/base/BaseCallLogData;->c:Lcom/callapp/framework/phone/Phone;

    .line 69
    iget v0, p1, Lcom/callapp/contacts/activity/base/BaseCallLogData;->a:I

    iput v0, p0, Lcom/callapp/contacts/activity/base/BaseCallLogData;->a:I

    .line 70
    iget-object v0, p1, Lcom/callapp/contacts/activity/base/BaseCallLogData;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/callapp/contacts/activity/base/BaseCallLogData;->b:Ljava/lang/String;

    .line 71
    iget v0, p1, Lcom/callapp/contacts/activity/base/BaseCallLogData;->e:I

    iput v0, p0, Lcom/callapp/contacts/activity/base/BaseCallLogData;->e:I

    .line 72
    iget-object p1, p1, Lcom/callapp/contacts/activity/base/BaseCallLogData;->f:Lcom/callapp/contacts/manager/sim/SimManager$SimId;

    iput-object p1, p0, Lcom/callapp/contacts/activity/base/BaseCallLogData;->f:Lcom/callapp/contacts/manager/sim/SimManager$SimId;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 38
    :cond_0
    invoke-super {p0, p1}, Lcom/callapp/contacts/activity/base/BaseAdapterItemData;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 40
    :cond_1
    instance-of v1, p1, Lcom/callapp/contacts/activity/base/BaseCallLogData;

    if-nez v1, :cond_2

    return v2

    .line 42
    :cond_2
    check-cast p1, Lcom/callapp/contacts/activity/base/BaseCallLogData;

    .line 43
    iget v1, p0, Lcom/callapp/contacts/activity/base/BaseCallLogData;->e:I

    iget v3, p1, Lcom/callapp/contacts/activity/base/BaseCallLogData;->e:I

    if-eq v1, v3, :cond_3

    return v2

    .line 45
    :cond_3
    iget-object v1, p0, Lcom/callapp/contacts/activity/base/BaseCallLogData;->f:Lcom/callapp/contacts/manager/sim/SimManager$SimId;

    if-eqz v1, :cond_4

    .line 46
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/base/BaseCallLogData;->getSimId()Lcom/callapp/contacts/manager/sim/SimManager$SimId;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/callapp/contacts/manager/sim/SimManager$SimId;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public getPhone()Lcom/callapp/framework/phone/Phone;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/callapp/contacts/activity/base/BaseCallLogData;->c:Lcom/callapp/framework/phone/Phone;

    return-object v0
.end method

.method public getSimId()Lcom/callapp/contacts/manager/sim/SimManager$SimId;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/callapp/contacts/activity/base/BaseCallLogData;->f:Lcom/callapp/contacts/manager/sim/SimManager$SimId;

    return-object v0
.end method

.method public getViewType()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 25
    invoke-super {p0}, Lcom/callapp/contacts/activity/base/BaseAdapterItemData;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 26
    iget-object v1, p0, Lcom/callapp/contacts/activity/base/BaseCallLogData;->d:Ljava/util/Date;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/util/Date;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 27
    iget v1, p0, Lcom/callapp/contacts/activity/base/BaseCallLogData;->e:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 28
    iget-object v1, p0, Lcom/callapp/contacts/activity/base/BaseCallLogData;->b:Ljava/lang/String;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 29
    iget v1, p0, Lcom/callapp/contacts/activity/base/BaseCallLogData;->a:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 30
    iget-object v1, p0, Lcom/callapp/contacts/activity/base/BaseCallLogData;->c:Lcom/callapp/framework/phone/Phone;

    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Lcom/callapp/framework/phone/Phone;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    return v0
.end method

.method protected includeContactIdInHashcodeAndEquals()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
