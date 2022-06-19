.class public Lcom/callapp/contacts/model/objectbox/CallRecorder;
.super Lcom/callapp/contacts/activity/base/BaseAdapterItemData;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/model/objectbox/MonitoredDeviceID;
.implements Ljava/io/Serializable;


# static fields
.field public static final INCOMING_CALL_TYPE:I = 0x1

.field public static final OUTGOING_CALL_TYPE:I = 0x0

.field public static final TEST_TYPE:I = 0x2

.field private static final serialVersionUID:J = -0x36be3bc55e054ce1L


# instance fields
.field private callType:I

.field private date:J

.field private duration:J

.field private fileName:Ljava/lang/String;

.field private id:Ljava/lang/Long;

.field private isUploaded:Z

.field private note:Ljava/lang/String;

.field private phoneOrIdKey:Ljava/lang/String;

.field private phoneText:Ljava/lang/String;

.field private starred:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 66
    invoke-direct {p0}, Lcom/callapp/contacts/activity/base/BaseAdapterItemData;-><init>()V

    const/4 v0, 0x0

    .line 64
    iput-boolean v0, p0, Lcom/callapp/contacts/model/objectbox/CallRecorder;->isUploaded:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;Ljava/lang/String;JLjava/lang/String;JZLjava/lang/String;I)V
    .locals 12

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-object/from16 v5, p5

    move-wide/from16 v6, p6

    move/from16 v8, p8

    move-object/from16 v9, p9

    move/from16 v10, p10

    .line 70
    invoke-direct/range {v0 .. v11}, Lcom/callapp/contacts/model/objectbox/CallRecorder;-><init>(Ljava/lang/Long;Ljava/lang/String;JLjava/lang/String;JZLjava/lang/String;IZ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;Ljava/lang/String;JLjava/lang/String;JZLjava/lang/String;IZ)V
    .locals 1

    .line 73
    invoke-direct {p0}, Lcom/callapp/contacts/activity/base/BaseAdapterItemData;-><init>()V

    const/4 v0, 0x0

    .line 64
    iput-boolean v0, p0, Lcom/callapp/contacts/model/objectbox/CallRecorder;->isUploaded:Z

    .line 74
    iput-object p1, p0, Lcom/callapp/contacts/model/objectbox/CallRecorder;->id:Ljava/lang/Long;

    .line 75
    iput-object p2, p0, Lcom/callapp/contacts/model/objectbox/CallRecorder;->phoneOrIdKey:Ljava/lang/String;

    .line 76
    iput-wide p3, p0, Lcom/callapp/contacts/model/objectbox/CallRecorder;->date:J

    .line 77
    iput-object p5, p0, Lcom/callapp/contacts/model/objectbox/CallRecorder;->fileName:Ljava/lang/String;

    .line 78
    iput-wide p6, p0, Lcom/callapp/contacts/model/objectbox/CallRecorder;->duration:J

    .line 79
    iput-boolean p8, p0, Lcom/callapp/contacts/model/objectbox/CallRecorder;->starred:Z

    .line 80
    iput-object p9, p0, Lcom/callapp/contacts/model/objectbox/CallRecorder;->note:Ljava/lang/String;

    .line 81
    iput p10, p0, Lcom/callapp/contacts/model/objectbox/CallRecorder;->callType:I

    .line 82
    iput-boolean p11, p0, Lcom/callapp/contacts/model/objectbox/CallRecorder;->isUploaded:Z

    return-void
.end method


# virtual methods
.method public calculateCacheKey()Ljava/lang/String;
    .locals 4

    .line 87
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/callapp/contacts/model/objectbox/CallRecorder;->phoneText:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-wide v2, p0, Lcom/callapp/contacts/model/objectbox/CallRecorder;->contactId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "CallRecorderData_%s-%d"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 195
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 196
    :cond_1
    invoke-super {p0, p1}, Lcom/callapp/contacts/activity/base/BaseAdapterItemData;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 197
    :cond_2
    check-cast p1, Lcom/callapp/contacts/model/objectbox/CallRecorder;

    .line 198
    iget-wide v2, p0, Lcom/callapp/contacts/model/objectbox/CallRecorder;->date:J

    iget-wide v4, p1, Lcom/callapp/contacts/model/objectbox/CallRecorder;->date:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_3

    iget-wide v2, p0, Lcom/callapp/contacts/model/objectbox/CallRecorder;->duration:J

    iget-wide v4, p1, Lcom/callapp/contacts/model/objectbox/CallRecorder;->duration:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_3

    iget-boolean v2, p0, Lcom/callapp/contacts/model/objectbox/CallRecorder;->starred:Z

    iget-boolean v3, p1, Lcom/callapp/contacts/model/objectbox/CallRecorder;->starred:Z

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/callapp/contacts/model/objectbox/CallRecorder;->callType:I

    iget v3, p1, Lcom/callapp/contacts/model/objectbox/CallRecorder;->callType:I

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/callapp/contacts/model/objectbox/CallRecorder;->id:Ljava/lang/Long;

    iget-object v3, p1, Lcom/callapp/contacts/model/objectbox/CallRecorder;->id:Ljava/lang/Long;

    .line 202
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/callapp/contacts/model/objectbox/CallRecorder;->phoneOrIdKey:Ljava/lang/String;

    iget-object v3, p1, Lcom/callapp/contacts/model/objectbox/CallRecorder;->phoneOrIdKey:Ljava/lang/String;

    .line 203
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/callapp/contacts/model/objectbox/CallRecorder;->fileName:Ljava/lang/String;

    iget-object v3, p1, Lcom/callapp/contacts/model/objectbox/CallRecorder;->fileName:Ljava/lang/String;

    .line 204
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/callapp/contacts/model/objectbox/CallRecorder;->note:Ljava/lang/String;

    iget-object p1, p1, Lcom/callapp/contacts/model/objectbox/CallRecorder;->note:Ljava/lang/String;

    .line 205
    invoke-static {v2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    return v0

    :cond_3
    :goto_0
    return v1
.end method

.method public getBackupFileName()Ljava/lang/String;
    .locals 6

    .line 216
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 217
    iget-wide v1, p0, Lcom/callapp/contacts/model/objectbox/CallRecorder;->date:J

    const-string v3, "yyy_MM_dd"

    invoke-static {v1, v2, v3}, Lcom/callapp/contacts/api/helper/backup/BackupUtils;->a(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    iget-wide v1, p0, Lcom/callapp/contacts/model/objectbox/CallRecorder;->duration:J

    long-to-int v2, v1

    div-int/lit8 v2, v2, 0x3c

    .line 219
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "_"

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    iget-wide v4, p0, Lcom/callapp/contacts/model/objectbox/CallRecorder;->duration:J

    long-to-int v1, v4

    mul-int/lit8 v2, v2, 0x3c

    sub-int/2addr v1, v2

    .line 221
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    iget-object v1, p0, Lcom/callapp/contacts/model/objectbox/CallRecorder;->phoneOrIdKey:Ljava/lang/String;

    invoke-static {v1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 223
    iget-object v1, p0, Lcom/callapp/contacts/model/objectbox/CallRecorder;->phoneOrIdKey:Ljava/lang/String;

    invoke-static {v1}, Lcom/callapp/contacts/model/contact/ContactData;->splitPhoneOrIdKey(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v1

    .line 224
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 225
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/callapp/framework/phone/Phone;->b(Ljava/lang/String;)Lcom/callapp/framework/phone/Phone;

    move-result-object v2

    invoke-virtual {v2}, Lcom/callapp/framework/phone/Phone;->e()Ljava/lang/String;

    move-result-object v2

    .line 226
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/callapp/contacts/manager/contacts/ContactUtils;->a(Ljava/lang/String;)Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object v1

    .line 229
    invoke-virtual {v1}, Lcom/callapp/contacts/model/contact/ContactData;->getFullName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 230
    invoke-virtual {v1}, Lcom/callapp/contacts/model/contact/ContactData;->getFullName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/callapp/contacts/api/helper/backup/BackupUtils;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 231
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 235
    :cond_0
    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 236
    invoke-static {v4, v5}, Lcom/callapp/contacts/manager/contacts/ContactUtils;->f(J)Ljava/util/List;

    move-result-object v2

    .line 237
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_1

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/callapp/framework/phone/Phone;

    invoke-virtual {v4}, Lcom/callapp/framework/phone/Phone;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 238
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/callapp/framework/phone/Phone;

    invoke-virtual {v2}, Lcom/callapp/framework/phone/Phone;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/callapp/framework/phone/Phone;->b(Ljava/lang/String;)Lcom/callapp/framework/phone/Phone;

    move-result-object v2

    invoke-virtual {v2}, Lcom/callapp/framework/phone/Phone;->e()Ljava/lang/String;

    move-result-object v2

    .line 240
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    :cond_1
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/callapp/contacts/manager/contacts/ContactUtils;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 243
    invoke-static {v1}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 244
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 245
    invoke-static {v1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 246
    invoke-static {v1}, Lcom/callapp/contacts/api/helper/backup/BackupUtils;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 247
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/callapp/contacts/model/objectbox/CallRecorder;->fileName:Ljava/lang/String;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCallType()I
    .locals 1

    .line 152
    iget v0, p0, Lcom/callapp/contacts/model/objectbox/CallRecorder;->callType:I

    return v0
.end method

.method public getContactId()J
    .locals 2

    .line 160
    iget-wide v0, p0, Lcom/callapp/contacts/model/objectbox/CallRecorder;->contactId:J

    return-wide v0
.end method

.method public getDate()J
    .locals 2

    .line 96
    iget-wide v0, p0, Lcom/callapp/contacts/model/objectbox/CallRecorder;->date:J

    return-wide v0
.end method

.method public getDuration()J
    .locals 2

    .line 120
    iget-wide v0, p0, Lcom/callapp/contacts/model/objectbox/CallRecorder;->duration:J

    return-wide v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/callapp/contacts/model/objectbox/CallRecorder;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/Long;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/callapp/contacts/model/objectbox/CallRecorder;->id:Ljava/lang/Long;

    return-object v0
.end method

.method public getNote()Ljava/lang/String;
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/callapp/contacts/model/objectbox/CallRecorder;->note:Ljava/lang/String;

    return-object v0
.end method

.method public getPhone()Lcom/callapp/framework/phone/Phone;
    .locals 2

    .line 169
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/model/objectbox/CallRecorder;->phoneText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/phone/PhoneManager;->a(Ljava/lang/String;)Lcom/callapp/framework/phone/Phone;

    move-result-object v0

    return-object v0
.end method

.method public getPhoneOrIdKey()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/callapp/contacts/model/objectbox/CallRecorder;->phoneOrIdKey:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneText()Ljava/lang/String;
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/callapp/contacts/model/objectbox/CallRecorder;->phoneText:Ljava/lang/String;

    return-object v0
.end method

.method public getStarred()Z
    .locals 1

    .line 136
    iget-boolean v0, p0, Lcom/callapp/contacts/model/objectbox/CallRecorder;->starred:Z

    return v0
.end method

.method public getViewType()I
    .locals 1

    const/16 v0, 0xf

    return v0
.end method

.method public hashCode()I
    .locals 3

    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/Object;

    .line 210
    invoke-super {p0}, Lcom/callapp/contacts/activity/base/BaseAdapterItemData;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/callapp/contacts/model/objectbox/CallRecorder;->id:Ljava/lang/Long;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/callapp/contacts/model/objectbox/CallRecorder;->phoneOrIdKey:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/callapp/contacts/model/objectbox/CallRecorder;->date:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/callapp/contacts/model/objectbox/CallRecorder;->fileName:Ljava/lang/String;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/callapp/contacts/model/objectbox/CallRecorder;->duration:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/callapp/contacts/model/objectbox/CallRecorder;->starred:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/callapp/contacts/model/objectbox/CallRecorder;->note:Ljava/lang/String;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget v1, p0, Lcom/callapp/contacts/model/objectbox/CallRecorder;->callType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public includeContactIdInHashcodeAndEquals()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isUploaded()Z
    .locals 1

    .line 104
    iget-boolean v0, p0, Lcom/callapp/contacts/model/objectbox/CallRecorder;->isUploaded:Z

    return v0
.end method

.method public setCallType(I)V
    .locals 0

    .line 156
    iput p1, p0, Lcom/callapp/contacts/model/objectbox/CallRecorder;->callType:I

    return-void
.end method

.method public setContactId(J)V
    .locals 0

    .line 164
    iput-wide p1, p0, Lcom/callapp/contacts/model/objectbox/CallRecorder;->contactId:J

    return-void
.end method

.method public setDate(J)V
    .locals 0

    .line 100
    iput-wide p1, p0, Lcom/callapp/contacts/model/objectbox/CallRecorder;->date:J

    return-void
.end method

.method public setDuration(J)V
    .locals 0

    .line 124
    iput-wide p1, p0, Lcom/callapp/contacts/model/objectbox/CallRecorder;->duration:J

    return-void
.end method

.method public setFileName(Ljava/lang/String;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/callapp/contacts/model/objectbox/CallRecorder;->fileName:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/Long;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/callapp/contacts/model/objectbox/CallRecorder;->id:Ljava/lang/Long;

    return-void
.end method

.method public setNote(Ljava/lang/String;)V
    .locals 0

    .line 148
    iput-object p1, p0, Lcom/callapp/contacts/model/objectbox/CallRecorder;->note:Ljava/lang/String;

    return-void
.end method

.method public setPhoneOrIdKey(Ljava/lang/String;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/callapp/contacts/model/objectbox/CallRecorder;->phoneOrIdKey:Ljava/lang/String;

    return-void
.end method

.method public setPhoneText(Ljava/lang/String;)V
    .locals 0

    .line 132
    iput-object p1, p0, Lcom/callapp/contacts/model/objectbox/CallRecorder;->phoneText:Ljava/lang/String;

    return-void
.end method

.method public setStarred(Z)V
    .locals 0

    .line 140
    iput-boolean p1, p0, Lcom/callapp/contacts/model/objectbox/CallRecorder;->starred:Z

    return-void
.end method

.method public setUploaded(Z)V
    .locals 0

    .line 108
    iput-boolean p1, p0, Lcom/callapp/contacts/model/objectbox/CallRecorder;->isUploaded:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CallRecorder{id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/callapp/contacts/model/objectbox/CallRecorder;->id:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", phoneOrIdKey=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/callapp/contacts/model/objectbox/CallRecorder;->phoneOrIdKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", date="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/callapp/contacts/model/objectbox/CallRecorder;->date:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", fileName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/callapp/contacts/model/objectbox/CallRecorder;->fileName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", duration="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/callapp/contacts/model/objectbox/CallRecorder;->duration:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", phoneText=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/callapp/contacts/model/objectbox/CallRecorder;->phoneText:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", starred="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/callapp/contacts/model/objectbox/CallRecorder;->starred:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", note=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/callapp/contacts/model/objectbox/CallRecorder;->note:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", callType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/callapp/contacts/model/objectbox/CallRecorder;->callType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
