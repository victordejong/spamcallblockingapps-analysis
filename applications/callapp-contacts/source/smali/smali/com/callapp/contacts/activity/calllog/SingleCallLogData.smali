.class public Lcom/callapp/contacts/activity/calllog/SingleCallLogData;
.super Lcom/callapp/contacts/activity/base/BaseCallLogData;
.source "SourceFile"


# instance fields
.field public final g:I

.field private final h:I

.field private final i:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/util/Date;Ljava/lang/String;Lcom/callapp/framework/phone/Phone;IILjava/lang/String;ILcom/callapp/contacts/manager/sim/SimManager$SimId;)V
    .locals 9

    move-object v8, p0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p9

    .line 46
    invoke-direct/range {v0 .. v7}, Lcom/callapp/contacts/activity/base/BaseCallLogData;-><init>(ILjava/util/Date;Ljava/lang/String;Lcom/callapp/framework/phone/Phone;ILjava/lang/String;Lcom/callapp/contacts/manager/sim/SimManager$SimId;)V

    move v0, p5

    .line 47
    iput v0, v8, Lcom/callapp/contacts/activity/calllog/SingleCallLogData;->g:I

    move/from16 v0, p8

    .line 48
    iput v0, v8, Lcom/callapp/contacts/activity/calllog/SingleCallLogData;->h:I

    .line 49
    invoke-static/range {p8 .. p8}, Lcom/callapp/contacts/util/date/DateUtils;->a(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/callapp/contacts/activity/calllog/SingleCallLogData;->i:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 33
    :cond_0
    invoke-super {p0, p1}, Lcom/callapp/contacts/activity/base/BaseCallLogData;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 35
    :cond_1
    instance-of v1, p1, Lcom/callapp/contacts/activity/calllog/SingleCallLogData;

    if-nez v1, :cond_2

    return v2

    .line 37
    :cond_2
    check-cast p1, Lcom/callapp/contacts/activity/calllog/SingleCallLogData;

    .line 38
    iget v1, p0, Lcom/callapp/contacts/activity/calllog/SingleCallLogData;->e:I

    iget v3, p1, Lcom/callapp/contacts/activity/calllog/SingleCallLogData;->e:I

    if-eq v1, v3, :cond_3

    return v2

    .line 40
    :cond_3
    iget-object v1, p0, Lcom/callapp/contacts/activity/calllog/SingleCallLogData;->f:Lcom/callapp/contacts/manager/sim/SimManager$SimId;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/calllog/SingleCallLogData;->getSimId()Lcom/callapp/contacts/manager/sim/SimManager$SimId;

    move-result-object p1

    if-eq v1, p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public getDuration()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/callapp/contacts/activity/calllog/SingleCallLogData;->i:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 23
    invoke-super {p0}, Lcom/callapp/contacts/activity/base/BaseCallLogData;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 24
    iget v1, p0, Lcom/callapp/contacts/activity/calllog/SingleCallLogData;->h:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 25
    iget v1, p0, Lcom/callapp/contacts/activity/calllog/SingleCallLogData;->g:I

    add-int/2addr v0, v1

    return v0
.end method

.method public includeContactIdInHashcodeAndEquals()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
