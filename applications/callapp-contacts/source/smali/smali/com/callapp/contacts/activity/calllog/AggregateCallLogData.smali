.class public Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;
.super Lcom/callapp/contacts/activity/base/BaseCallLogData;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/activity/interfaces/StickyHeaderSection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/activity/calllog/AggregateCallLogData$CallLogData;
    }
.end annotation


# instance fields
.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/callapp/contacts/activity/calllog/AggregateCallLogData$CallLogData;",
            ">;"
        }
    .end annotation
.end field

.field private h:I

.field private final i:Z

.field private final j:Ljava/lang/String;

.field private k:I

.field private l:I


# direct methods
.method public constructor <init>(ILjava/util/Date;Ljava/lang/String;Lcom/callapp/framework/phone/Phone;IILjava/lang/String;Lcom/callapp/contacts/manager/sim/SimManager$SimId;IJ)V
    .locals 10

    move-object v8, p0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    .line 25
    invoke-direct/range {v0 .. v7}, Lcom/callapp/contacts/activity/base/BaseCallLogData;-><init>(ILjava/util/Date;Ljava/lang/String;Lcom/callapp/framework/phone/Phone;ILjava/lang/String;Lcom/callapp/contacts/manager/sim/SimManager$SimId;)V

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, v8, Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;->g:Ljava/util/List;

    const/4 v7, 0x0

    .line 22
    iput v7, v8, Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;->l:I

    const/4 v9, 0x0

    if-eqz p2, :cond_0

    .line 26
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    move-object v6, v0

    move v0, p1

    goto :goto_0

    :cond_0
    move v0, p1

    move-object v6, v9

    :goto_0
    int-to-long v1, v0

    move-object v0, p0

    move v3, p5

    move-wide/from16 v4, p10

    .line 27
    invoke-virtual/range {v0 .. v6}, Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;->a(JIJLjava/util/Date;)Z

    move/from16 v0, p9

    .line 28
    iput v0, v8, Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;->h:I

    .line 29
    iput-boolean v7, v8, Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;->i:Z

    .line 30
    iput-object v9, v8, Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;->j:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;)V
    .locals 2

    .line 34
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/base/BaseCallLogData;-><init>(Lcom/callapp/contacts/activity/base/BaseCallLogData;)V

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;->g:Ljava/util/List;

    const/4 v0, 0x0

    .line 22
    iput v0, p0, Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;->l:I

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;->g:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;->g:Ljava/util/List;

    .line 36
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;->getDateType()I

    move-result v0

    iput v0, p0, Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;->h:I

    .line 37
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;->isTitle()Z

    move-result v0

    iput-boolean v0, p0, Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;->i:Z

    .line 38
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;->getTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;->j:Ljava/lang/String;

    .line 39
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;->getTotalInteractionCount()I

    move-result p1

    iput p1, p0, Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;->l:I

    return-void
.end method


# virtual methods
.method public final a(I)Z
    .locals 4

    .line 178
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;->getAggregateSize()I

    move-result v0

    const/4 v1, 0x0

    if-ge v0, p1, :cond_0

    return v1

    :cond_0
    sub-int p1, v0, p1

    :goto_0
    if-ge p1, v0, :cond_2

    .line 185
    iget-object v2, p0, Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;->g:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/callapp/contacts/activity/calllog/AggregateCallLogData$CallLogData;

    invoke-static {v2}, Lcom/callapp/contacts/activity/calllog/AggregateCallLogData$CallLogData;->a(Lcom/callapp/contacts/activity/calllog/AggregateCallLogData$CallLogData;)I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1

    return v1

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public final a(JIJLjava/util/Date;)Z
    .locals 10

    .line 149
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;->getAggregateSize()I

    move-result v0

    const/4 v1, 0x4

    if-gt v0, v1, :cond_0

    .line 150
    new-instance v0, Lcom/callapp/contacts/activity/calllog/AggregateCallLogData$CallLogData;

    move-object v2, v0

    move-object v3, p0

    move v4, p3

    move-wide v5, p1

    move-wide v7, p4

    move-object/from16 v9, p6

    invoke-direct/range {v2 .. v9}, Lcom/callapp/contacts/activity/calllog/AggregateCallLogData$CallLogData;-><init>(Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;IJJLjava/util/Date;)V

    move-object v1, p0

    .line 151
    iget-object v2, v1, Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;->g:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    return v0

    :cond_0
    move-object v1, p0

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 121
    :cond_0
    invoke-super {p0, p1}, Lcom/callapp/contacts/activity/base/BaseCallLogData;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 123
    :cond_1
    instance-of v1, p1, Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;

    if-nez v1, :cond_2

    return v2

    .line 125
    :cond_2
    check-cast p1, Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;

    .line 126
    iget-object v1, p0, Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;->g:Ljava/util/List;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;->getCallLogs()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 128
    :cond_3
    iget v1, p0, Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;->h:I

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;->getDateType()I

    move-result v3

    if-eq v1, v3, :cond_4

    return v2

    .line 130
    :cond_4
    iget-boolean v1, p0, Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;->i:Z

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;->isTitle()Z

    move-result p1

    if-eq v1, p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public getAggregateSize()I
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getCallLogs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/activity/calllog/AggregateCallLogData$CallLogData;",
            ">;"
        }
    .end annotation

    .line 166
    iget-object v0, p0, Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;->g:Ljava/util/List;

    return-object v0
.end method

.method public getDateType()I
    .locals 1

    .line 162
    iget v0, p0, Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;->h:I

    return v0
.end method

.method public getSectionId()I
    .locals 1

    .line 200
    iget v0, p0, Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;->k:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 174
    iget-object v0, p0, Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;->j:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalInteractionCount()I
    .locals 1

    .line 137
    iget v0, p0, Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;->l:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 111
    invoke-super {p0}, Lcom/callapp/contacts/activity/base/BaseCallLogData;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 112
    iget-object v1, p0, Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;->g:Ljava/util/List;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 113
    iget v1, p0, Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;->h:I

    add-int/2addr v0, v1

    return v0
.end method

.method public includeContactIdInHashcodeAndEquals()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isCallTypesFull()Z
    .locals 2

    .line 158
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;->getAggregateSize()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isTitle()Z
    .locals 1

    .line 170
    iget-boolean v0, p0, Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;->i:Z

    return v0
.end method

.method public setSectionId(I)V
    .locals 0

    .line 195
    iput p1, p0, Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;->k:I

    return-void
.end method

.method public setTotalInteractionCount(I)V
    .locals 0

    .line 141
    iput p1, p0, Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;->l:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 205
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AggregateCallLogData{callLogs="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;->g:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", dateType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isTitle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;->i:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", title=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", sectionId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;->k:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", totalInteractionCount="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;->l:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", numberType="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;->a:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", numberLabel=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", phone="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;->c:Lcom/callapp/framework/phone/Phone;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", date="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;->d:Ljava/util/Date;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", id="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;->e:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", simId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;->f:Lcom/callapp/contacts/manager/sim/SimManager$SimId;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", textHighlights="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;->textHighlights:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", descriptionHighlights="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;->descriptionHighlights:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", numberMatchIndexStart="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;->numberMatchIndexStart:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", numberMatchIndexEnd="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;->numberMatchIndexEnd:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", nameT9=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;->nameT9:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", nameT9NoZero=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;->nameT9NoZero:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", t9Indexes="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;->t9Indexes:Ljava/util/List;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", normalNumbers="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;->normalNumbers:Ljava/util/List;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", namesMap="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;->namesMap:Ljava/util/Map;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", descriptionMap="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;->descriptionMap:Ljava/util/Map;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", unaccentName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;->unaccentName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", unaccentDescription=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;->unaccentDescription:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", contactId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;->contactId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", displayName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;->displayName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", lookupKey=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;->lookupKey:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", isChecked="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;->isChecked:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
