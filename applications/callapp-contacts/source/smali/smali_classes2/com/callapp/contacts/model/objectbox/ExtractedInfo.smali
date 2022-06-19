.class public Lcom/callapp/contacts/model/objectbox/ExtractedInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/model/objectbox/ExtractedInfo$Builder;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x673aecdf199672adL


# instance fields
.field public comType:Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$ComType;

.field public disableNotification:Z

.field public displayName:Ljava/lang/String;

.field public firstSeen:J

.field public groupName:Ljava/lang/String;

.field protected id:Ljava/lang/Long;

.field public lastNotificationShowed:J

.field public nameT9Format:Ljava/lang/String;

.field public nameT9FormatNoZero:Ljava/lang/String;

.field public namesMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public phoneAsRaw:Ljava/lang/String;

.field public recognizedPersonOrigin:Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;

.field public seenCount:I

.field public senderName:Ljava/lang/String;

.field public starred:Z

.field public t9Indexes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public unAccentName:Ljava/lang/String;

.field public when:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 50
    iput-object v0, p0, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;->displayName:Ljava/lang/String;

    .line 53
    iput-object v0, p0, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;->nameT9Format:Ljava/lang/String;

    .line 56
    iput-object v0, p0, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;->nameT9FormatNoZero:Ljava/lang/String;

    .line 59
    iput-object v0, p0, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;->unAccentName:Ljava/lang/String;

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;->t9Indexes:Ljava/util/List;

    .line 65
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;->namesMap:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Lcom/callapp/contacts/model/objectbox/ExtractedInfo$Builder;)V
    .locals 2

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 50
    iput-object v0, p0, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;->displayName:Ljava/lang/String;

    .line 53
    iput-object v0, p0, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;->nameT9Format:Ljava/lang/String;

    .line 56
    iput-object v0, p0, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;->nameT9FormatNoZero:Ljava/lang/String;

    .line 59
    iput-object v0, p0, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;->unAccentName:Ljava/lang/String;

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;->t9Indexes:Ljava/util/List;

    .line 65
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;->namesMap:Ljava/util/Map;

    .line 123
    iget-object v0, p1, Lcom/callapp/contacts/model/objectbox/ExtractedInfo$Builder;->recognizedPersonOrigin:Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;

    iput-object v0, p0, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;->recognizedPersonOrigin:Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;

    .line 124
    iget-object v0, p1, Lcom/callapp/contacts/model/objectbox/ExtractedInfo$Builder;->comType:Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$ComType;

    iput-object v0, p0, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;->comType:Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$ComType;

    .line 125
    iget-object v0, p1, Lcom/callapp/contacts/model/objectbox/ExtractedInfo$Builder;->senderName:Ljava/lang/String;

    iput-object v0, p0, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;->senderName:Ljava/lang/String;

    .line 126
    iget-object v0, p1, Lcom/callapp/contacts/model/objectbox/ExtractedInfo$Builder;->groupName:Ljava/lang/String;

    iput-object v0, p0, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;->groupName:Ljava/lang/String;

    .line 127
    iget-object v0, p1, Lcom/callapp/contacts/model/objectbox/ExtractedInfo$Builder;->phoneAsRaw:Ljava/lang/String;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/list/search/T9Helper;->a(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;->phoneAsRaw:Ljava/lang/String;

    .line 128
    iget-wide v0, p1, Lcom/callapp/contacts/model/objectbox/ExtractedInfo$Builder;->when:J

    iput-wide v0, p0, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;->when:J

    .line 129
    iget-wide v0, p1, Lcom/callapp/contacts/model/objectbox/ExtractedInfo$Builder;->firstSeen:J

    iput-wide v0, p0, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;->firstSeen:J

    .line 130
    iget-wide v0, p1, Lcom/callapp/contacts/model/objectbox/ExtractedInfo$Builder;->lastNotificationShowed:J

    iput-wide v0, p0, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;->lastNotificationShowed:J

    .line 131
    iget v0, p1, Lcom/callapp/contacts/model/objectbox/ExtractedInfo$Builder;->seenCount:I

    iput v0, p0, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;->seenCount:I

    .line 132
    iget-boolean p1, p1, Lcom/callapp/contacts/model/objectbox/ExtractedInfo$Builder;->disableNotification:Z

    iput-boolean p1, p0, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;->disableNotification:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/callapp/contacts/model/objectbox/ExtractedInfo$Builder;Lcom/callapp/contacts/model/objectbox/ExtractedInfo$1;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;-><init>(Lcom/callapp/contacts/model/objectbox/ExtractedInfo$Builder;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$ComType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJJIZ)V
    .locals 1

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 50
    iput-object v0, p0, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;->displayName:Ljava/lang/String;

    .line 53
    iput-object v0, p0, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;->nameT9Format:Ljava/lang/String;

    .line 56
    iput-object v0, p0, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;->nameT9FormatNoZero:Ljava/lang/String;

    .line 59
    iput-object v0, p0, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;->unAccentName:Ljava/lang/String;

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;->t9Indexes:Ljava/util/List;

    .line 65
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;->namesMap:Ljava/util/Map;

    .line 83
    iput-object p1, p0, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;->id:Ljava/lang/Long;

    .line 84
    iput-object p2, p0, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;->recognizedPersonOrigin:Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;

    .line 85
    iput-object p3, p0, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;->comType:Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$ComType;

    .line 86
    iput-object p4, p0, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;->senderName:Ljava/lang/String;

    .line 87
    iput-object p5, p0, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;->groupName:Ljava/lang/String;

    .line 88
    invoke-static {p6}, Lcom/callapp/contacts/activity/contact/list/search/T9Helper;->a(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;->phoneAsRaw:Ljava/lang/String;

    .line 89
    iput-wide p7, p0, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;->when:J

    .line 90
    iput-wide p9, p0, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;->firstSeen:J

    .line 91
    iput-wide p11, p0, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;->lastNotificationShowed:J

    .line 92
    iput p13, p0, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;->seenCount:I

    .line 93
    iput-boolean p14, p0, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;->disableNotification:Z

    return-void
.end method

.method private fillMap(Ljava/lang/String;Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 314
    invoke-interface {p2}, Ljava/util/Map;->clear()V

    .line 315
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    .line 317
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v2, v4, :cond_3

    .line 318
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 319
    invoke-static {v4}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 320
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-ne v3, v1, :cond_2

    move v3, v2

    goto :goto_1

    :cond_0
    if-eq v3, v1, :cond_2

    .line 326
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 327
    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 328
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, -0x1

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    if-eq v3, v1, :cond_4

    .line 336
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    return-void
.end method

.method private onNameUpdate()V
    .locals 6

    .line 288
    iget-object v0, p0, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;->displayName:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 289
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/common/util/RegexUtils;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/common/util/RegexUtils;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;->unAccentName:Ljava/lang/String;

    .line 290
    iget-object v1, p0, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;->namesMap:Ljava/util/Map;

    invoke-direct {p0, v0, v1}, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;->fillMap(Ljava/lang/String;Ljava/util/Map;)V

    .line 293
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;->unAccentName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/list/search/T9Helper;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "*"

    const-string v2, "0"

    .line 294
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "#"

    .line 295
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "+"

    .line 296
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 297
    iput-object v0, p0, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;->nameT9Format:Ljava/lang/String;

    .line 298
    iget-object v1, p0, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;->t9Indexes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    const/4 v1, 0x1

    const/4 v3, 0x1

    .line 299
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 300
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x30

    if-eq v4, v5, :cond_0

    .line 301
    iget-object v4, p0, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;->t9Indexes:Ljava/util/List;

    add-int/lit8 v5, v3, -0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 305
    :cond_1
    iget-object v0, p0, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;->t9Indexes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 306
    iget-object v0, p0, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;->t9Indexes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 307
    iget-object v3, p0, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;->t9Indexes:Ljava/util/List;

    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 309
    :cond_2
    iget-object v0, p0, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;->nameT9Format:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;->nameT9FormatNoZero:Ljava/lang/String;

    :cond_3
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 164
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_1

    return v3

    .line 167
    :cond_1
    check-cast p1, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;

    .line 169
    iget-object v1, p0, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;->recognizedPersonOrigin:Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;

    if-eqz v1, :cond_2

    iget-object v2, p1, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;->recognizedPersonOrigin:Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;

    invoke-virtual {v1, v2}, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v3

    .line 173
    :cond_2
    iget-object v1, p0, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;->recognizedPersonOrigin:Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;

    if-nez v1, :cond_3

    iget-object v1, p1, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;->recognizedPersonOrigin:Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;

    if-eqz v1, :cond_3

    return v3

    .line 177
    :cond_3
    iget-object v1, p0, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;->phoneAsRaw:Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-object v2, p1, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;->phoneAsRaw:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v3

    .line 181
    :cond_4
    iget-object v1, p0, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;->phoneAsRaw:Ljava/lang/String;

    if-nez v1, :cond_5

    iget-object v1, p1, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;->phoneAsRaw:Ljava/lang/String;

    if-eqz v1, :cond_5

    return v3

    .line 185
    :cond_5
    iget-object v1, p0, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;->groupName:Ljava/lang/String;

    iget-object p1, p1, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;->groupName:Ljava/lang/String;

    invoke-static {v1, p1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    return v3

    :cond_6
    return v0
.end method

.method public getComType()Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$ComType;
    .locals 1

    .line 204
    iget-object v0, p0, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;->comType:Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$ComType;

    return-object v0
.end method

.method public getFirstSeen()J
    .locals 2

    .line 228
    iget-wide v0, p0, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;->firstSeen:J

    return-wide v0
.end method

.method public getGroupName()Ljava/lang/String;
    .locals 1

    .line 212
    iget-object v0, p0, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;->groupName:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/Long;
    .locals 1

    .line 192
    iget-object v0, p0, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;->id:Ljava/lang/Long;

    return-object v0
.end method

.method public getLastNotificationShowed()J
    .locals 2

    .line 236
    iget-wide v0, p0, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;->lastNotificationShowed:J

    return-wide v0
.end method

.method public getPhoneAsRaw()Ljava/lang/String;
    .locals 1

    .line 216
    iget-object v0, p0, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;->phoneAsRaw:Ljava/lang/String;

    return-object v0
.end method

.method public getRecognizedPersonOrigin()Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;
    .locals 1

    .line 200
    iget-object v0, p0, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;->recognizedPersonOrigin:Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;

    return-object v0
.end method

.method public getSeenCount()I
    .locals 1

    .line 253
    iget v0, p0, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;->seenCount:I

    return v0
.end method

.method public getSenderName()Ljava/lang/String;
    .locals 1

    .line 208
    iget-object v0, p0, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;->senderName:Ljava/lang/String;

    return-object v0
.end method

.method public getWhen()J
    .locals 2

    .line 220
    iget-wide v0, p0, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;->when:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 2

    .line 153
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 154
    iget-object v1, p0, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;->phoneAsRaw:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 155
    iget-object v1, p0, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;->recognizedPersonOrigin:Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;

    invoke-virtual {v1}, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 156
    iget-object v1, p0, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;->groupName:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public isDisableNotification()Z
    .locals 1

    .line 280
    iget-boolean v0, p0, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;->disableNotification:Z

    return v0
.end method

.method public isStarred()Z
    .locals 1

    .line 244
    iget-boolean v0, p0, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;->starred:Z

    return v0
.end method

.method public setComType(Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$ComType;)V
    .locals 0

    .line 261
    iput-object p1, p0, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;->comType:Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$ComType;

    return-void
.end method

.method public setDisableNotification(Z)V
    .locals 0

    .line 284
    iput-boolean p1, p0, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;->disableNotification:Z

    return-void
.end method

.method public setDisplayName(Ljava/lang/String;)V
    .locals 1

    .line 269
    invoke-static {p1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 270
    iput-object p1, p0, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;->displayName:Ljava/lang/String;

    .line 271
    invoke-direct {p0}, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;->onNameUpdate()V

    :cond_0
    return-void
.end method

.method public setFirstSeen(J)V
    .locals 0

    .line 232
    iput-wide p1, p0, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;->firstSeen:J

    return-void
.end method

.method public setGroupName(Ljava/lang/String;)V
    .locals 0

    .line 276
    iput-object p1, p0, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;->groupName:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/Long;)V
    .locals 0

    .line 196
    iput-object p1, p0, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;->id:Ljava/lang/Long;

    return-void
.end method

.method public setLastNotificationShowed(J)V
    .locals 0

    .line 240
    iput-wide p1, p0, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;->lastNotificationShowed:J

    return-void
.end method

.method public setSeenCount(I)V
    .locals 0

    .line 257
    iput p1, p0, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;->seenCount:I

    return-void
.end method

.method public setSenderName(Ljava/lang/String;)V
    .locals 0

    .line 265
    iput-object p1, p0, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;->senderName:Ljava/lang/String;

    return-void
.end method

.method public setStarred(Z)V
    .locals 0

    .line 248
    iput-boolean p1, p0, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;->starred:Z

    return-void
.end method

.method public setWhen(J)V
    .locals 0

    .line 224
    iput-wide p1, p0, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;->when:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "IM: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;->recognizedPersonOrigin:Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\ncomType "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;->comType:Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$ComType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\ncontactName "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;->senderName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nDisplay Name "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;->displayName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nnameT9FormatNoZero "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;->nameT9FormatNoZero:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\ngroupName "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;->groupName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nphone "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;->phoneAsRaw:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nwhen "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;->when:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "\nfirstSeen "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;->firstSeen:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "\nlastNotificationShowed "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;->lastNotificationShowed:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "\nseenCount "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;->seenCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
