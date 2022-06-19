.class public Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData$ProductTypeConverter;,
        Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData$PersonalStoreItemType;
    }
.end annotation


# instance fields
.field transient __boxStore:Lio/objectbox/BoxStore;

.field private id:J

.field public isUploaded:Z

.field private personalStoreItemDetailsData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemDetailsData;",
            ">;"
        }
    .end annotation
.end field

.field private personalStoreItemType:Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData$PersonalStoreItemType;

.field private personalStoreItemUrl:Ljava/lang/String;

.field private personalStoreItemUserData:Lio/objectbox/relation/ToMany;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/objectbox/relation/ToMany<",
            "Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUserData;",
            ">;"
        }
    .end annotation
.end field

.field private type:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lio/objectbox/relation/ToMany;

    sget-object v1, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData_;->personalStoreItemUserData:Lio/objectbox/relation/b;

    invoke-direct {v0, p0, v1}, Lio/objectbox/relation/ToMany;-><init>(Ljava/lang/Object;Lio/objectbox/relation/b;)V

    iput-object v0, p0, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData;->personalStoreItemUserData:Lio/objectbox/relation/ToMany;

    const/4 v0, 0x0

    .line 36
    iput-boolean v0, p0, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData;->isUploaded:Z

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData;->personalStoreItemDetailsData:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;ILcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData$PersonalStoreItemType;Z)V
    .locals 2

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lio/objectbox/relation/ToMany;

    sget-object v1, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData_;->personalStoreItemUserData:Lio/objectbox/relation/b;

    invoke-direct {v0, p0, v1}, Lio/objectbox/relation/ToMany;-><init>(Ljava/lang/Object;Lio/objectbox/relation/b;)V

    iput-object v0, p0, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData;->personalStoreItemUserData:Lio/objectbox/relation/ToMany;

    const/4 v0, 0x0

    .line 36
    iput-boolean v0, p0, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData;->isUploaded:Z

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData;->personalStoreItemDetailsData:Ljava/util/ArrayList;

    .line 71
    iput-wide p1, p0, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData;->id:J

    .line 72
    iput-object p3, p0, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData;->personalStoreItemUrl:Ljava/lang/String;

    .line 73
    iput p4, p0, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData;->type:I

    .line 74
    iput-object p5, p0, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData;->personalStoreItemType:Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData$PersonalStoreItemType;

    .line 75
    iput-boolean p6, p0, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData;->isUploaded:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData$PersonalStoreItemType;)V
    .locals 1

    const/4 v0, 0x0

    .line 79
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData;-><init>(Ljava/lang/String;ILcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData$PersonalStoreItemType;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData$PersonalStoreItemType;Z)V
    .locals 2

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lio/objectbox/relation/ToMany;

    sget-object v1, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData_;->personalStoreItemUserData:Lio/objectbox/relation/b;

    invoke-direct {v0, p0, v1}, Lio/objectbox/relation/ToMany;-><init>(Ljava/lang/Object;Lio/objectbox/relation/b;)V

    iput-object v0, p0, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData;->personalStoreItemUserData:Lio/objectbox/relation/ToMany;

    const/4 v0, 0x0

    .line 36
    iput-boolean v0, p0, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData;->isUploaded:Z

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData;->personalStoreItemDetailsData:Ljava/util/ArrayList;

    .line 83
    iput-object p1, p0, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData;->personalStoreItemUrl:Ljava/lang/String;

    .line 84
    iput p2, p0, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData;->type:I

    .line 85
    iput-object p3, p0, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData;->personalStoreItemType:Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData$PersonalStoreItemType;

    .line 86
    iput-boolean p4, p0, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData;->isUploaded:Z

    return-void
.end method


# virtual methods
.method public getId()J
    .locals 2

    .line 91
    iget-wide v0, p0, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData;->id:J

    return-wide v0
.end method

.method public getNames()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 46
    iget-object v1, p0, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData;->personalStoreItemDetailsData:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemDetailsData;

    .line 47
    invoke-virtual {v2}, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemDetailsData;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 48
    invoke-virtual {v2}, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemDetailsData;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getPersonalStoreItemDetailsData()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemDetailsData;",
            ">;"
        }
    .end annotation

    .line 59
    iget-object v0, p0, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData;->personalStoreItemDetailsData:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getPersonalStoreItemType()Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData$PersonalStoreItemType;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData;->personalStoreItemType:Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData$PersonalStoreItemType;

    return-object v0
.end method

.method public getPersonalStoreItemUrl()Ljava/lang/String;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData;->personalStoreItemUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getPersonalStoreItemUserData()Lio/objectbox/relation/ToMany;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/objectbox/relation/ToMany<",
            "Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUserData;",
            ">;"
        }
    .end annotation

    .line 115
    iget-object v0, p0, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData;->personalStoreItemUserData:Lio/objectbox/relation/ToMany;

    return-object v0
.end method

.method public getPhotoUrls()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 131
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 132
    iget-object v1, p0, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData;->personalStoreItemDetailsData:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemDetailsData;

    .line 133
    invoke-virtual {v2}, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemDetailsData;->getPhotoUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 134
    invoke-virtual {v2}, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemDetailsData;->getPhotoUrl()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 107
    iget v0, p0, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData;->type:I

    return v0
.end method

.method public isUploaded()Z
    .locals 1

    .line 123
    iget-boolean v0, p0, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData;->isUploaded:Z

    return v0
.end method

.method public setId(J)V
    .locals 0

    .line 95
    iput-wide p1, p0, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData;->id:J

    return-void
.end method

.method public setPersonalStoreItemDetailsData(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemDetailsData;",
            ">;)V"
        }
    .end annotation

    .line 55
    iput-object p1, p0, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData;->personalStoreItemDetailsData:Ljava/util/ArrayList;

    return-void
.end method

.method public setPersonalStoreItemType(Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData$PersonalStoreItemType;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData;->personalStoreItemType:Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData$PersonalStoreItemType;

    return-void
.end method

.method public setPersonalStoreItemUrl(Ljava/lang/String;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData;->personalStoreItemUrl:Ljava/lang/String;

    return-void
.end method

.method public setPersonalStoreItemUserData(Lio/objectbox/relation/ToMany;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/objectbox/relation/ToMany<",
            "Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUserData;",
            ">;)V"
        }
    .end annotation

    .line 119
    iput-object p1, p0, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData;->personalStoreItemUserData:Lio/objectbox/relation/ToMany;

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 111
    iput p1, p0, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData;->type:I

    return-void
.end method

.method public setUploaded(Z)V
    .locals 0

    .line 127
    iput-boolean p1, p0, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData;->isUploaded:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PersonalStoreItemUrlData{id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", personalStoreItemUrl=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData;->personalStoreItemUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", personalStoreItemType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData;->personalStoreItemType:Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData$PersonalStoreItemType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", personalStoreItemUserData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData;->personalStoreItemUserData:Lio/objectbox/relation/ToMany;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isUploaded="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData;->isUploaded:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", personalStoreItemDetailsData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData;->personalStoreItemDetailsData:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
