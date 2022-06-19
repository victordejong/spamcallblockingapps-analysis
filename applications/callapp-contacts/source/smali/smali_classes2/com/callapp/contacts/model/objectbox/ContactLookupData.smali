.class public final Lcom/callapp/contacts/model/objectbox/ContactLookupData;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private contactId:J

.field public description:Ljava/lang/String;

.field public descriptionMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public displayName:Ljava/lang/String;

.field private id:J

.field private lookupKey:Ljava/lang/String;

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

.field private phoneNumbers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public t9Indexes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public unAccentDescription:Ljava/lang/String;

.field public unAccentName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 31
    iput-object v0, p0, Lcom/callapp/contacts/model/objectbox/ContactLookupData;->nameT9Format:Ljava/lang/String;

    .line 34
    iput-object v0, p0, Lcom/callapp/contacts/model/objectbox/ContactLookupData;->nameT9FormatNoZero:Ljava/lang/String;

    .line 37
    iput-object v0, p0, Lcom/callapp/contacts/model/objectbox/ContactLookupData;->displayName:Ljava/lang/String;

    .line 40
    iput-object v0, p0, Lcom/callapp/contacts/model/objectbox/ContactLookupData;->unAccentName:Ljava/lang/String;

    .line 43
    iput-object v0, p0, Lcom/callapp/contacts/model/objectbox/ContactLookupData;->description:Ljava/lang/String;

    .line 46
    iput-object v0, p0, Lcom/callapp/contacts/model/objectbox/ContactLookupData;->unAccentDescription:Ljava/lang/String;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/callapp/contacts/model/objectbox/ContactLookupData;->t9Indexes:Ljava/util/List;

    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/callapp/contacts/model/objectbox/ContactLookupData;->namesMap:Ljava/util/Map;

    .line 55
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/callapp/contacts/model/objectbox/ContactLookupData;->descriptionMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JLjava/lang/String;Ljava/util/List;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 31
    iput-object v0, p0, Lcom/callapp/contacts/model/objectbox/ContactLookupData;->nameT9Format:Ljava/lang/String;

    .line 34
    iput-object v0, p0, Lcom/callapp/contacts/model/objectbox/ContactLookupData;->nameT9FormatNoZero:Ljava/lang/String;

    .line 37
    iput-object v0, p0, Lcom/callapp/contacts/model/objectbox/ContactLookupData;->displayName:Ljava/lang/String;

    .line 40
    iput-object v0, p0, Lcom/callapp/contacts/model/objectbox/ContactLookupData;->unAccentName:Ljava/lang/String;

    .line 43
    iput-object v0, p0, Lcom/callapp/contacts/model/objectbox/ContactLookupData;->description:Ljava/lang/String;

    .line 46
    iput-object v0, p0, Lcom/callapp/contacts/model/objectbox/ContactLookupData;->unAccentDescription:Ljava/lang/String;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/callapp/contacts/model/objectbox/ContactLookupData;->t9Indexes:Ljava/util/List;

    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/callapp/contacts/model/objectbox/ContactLookupData;->namesMap:Ljava/util/Map;

    .line 55
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/callapp/contacts/model/objectbox/ContactLookupData;->descriptionMap:Ljava/util/Map;

    .line 63
    iput-object p1, p0, Lcom/callapp/contacts/model/objectbox/ContactLookupData;->lookupKey:Ljava/lang/String;

    .line 64
    iput-wide p2, p0, Lcom/callapp/contacts/model/objectbox/ContactLookupData;->contactId:J

    .line 65
    iput-object p5, p0, Lcom/callapp/contacts/model/objectbox/ContactLookupData;->phoneNumbers:Ljava/util/List;

    .line 66
    iput-object p4, p0, Lcom/callapp/contacts/model/objectbox/ContactLookupData;->displayName:Ljava/lang/String;

    .line 67
    iput-object p6, p0, Lcom/callapp/contacts/model/objectbox/ContactLookupData;->description:Ljava/lang/String;

    .line 68
    invoke-direct {p0}, Lcom/callapp/contacts/model/objectbox/ContactLookupData;->onNameUpdate()V

    .line 69
    invoke-direct {p0}, Lcom/callapp/contacts/model/objectbox/ContactLookupData;->onDescriptionUpdate()V

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

    .line 106
    invoke-interface {p2}, Ljava/util/Map;->clear()V

    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    .line 109
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v2, v4, :cond_3

    .line 110
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 111
    invoke-static {v4}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 112
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-ne v3, v1, :cond_2

    move v3, v2

    goto :goto_1

    :cond_0
    if-eq v3, v1, :cond_2

    .line 118
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 119
    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 120
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
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

    .line 128
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    return-void
.end method

.method private onDescriptionUpdate()V
    .locals 2

    .line 99
    iget-object v0, p0, Lcom/callapp/contacts/model/objectbox/ContactLookupData;->description:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 100
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/common/util/RegexUtils;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/common/util/RegexUtils;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/model/objectbox/ContactLookupData;->unAccentDescription:Ljava/lang/String;

    .line 101
    iget-object v1, p0, Lcom/callapp/contacts/model/objectbox/ContactLookupData;->descriptionMap:Ljava/util/Map;

    invoke-direct {p0, v0, v1}, Lcom/callapp/contacts/model/objectbox/ContactLookupData;->fillMap(Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method private onNameUpdate()V
    .locals 6

    .line 73
    iget-object v0, p0, Lcom/callapp/contacts/model/objectbox/ContactLookupData;->displayName:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 74
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/common/util/RegexUtils;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/common/util/RegexUtils;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/model/objectbox/ContactLookupData;->unAccentName:Ljava/lang/String;

    .line 75
    iget-object v1, p0, Lcom/callapp/contacts/model/objectbox/ContactLookupData;->namesMap:Ljava/util/Map;

    invoke-direct {p0, v0, v1}, Lcom/callapp/contacts/model/objectbox/ContactLookupData;->fillMap(Ljava/lang/String;Ljava/util/Map;)V

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/callapp/contacts/model/objectbox/ContactLookupData;->unAccentName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/list/search/T9Helper;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "*"

    const-string v2, "0"

    .line 79
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "#"

    .line 80
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "+"

    .line 81
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 82
    iput-object v0, p0, Lcom/callapp/contacts/model/objectbox/ContactLookupData;->nameT9Format:Ljava/lang/String;

    .line 83
    iget-object v1, p0, Lcom/callapp/contacts/model/objectbox/ContactLookupData;->t9Indexes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    const/4 v1, 0x1

    const/4 v3, 0x1

    .line 84
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 85
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x30

    if-eq v4, v5, :cond_0

    .line 86
    iget-object v4, p0, Lcom/callapp/contacts/model/objectbox/ContactLookupData;->t9Indexes:Ljava/util/List;

    add-int/lit8 v5, v3, -0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 90
    :cond_1
    iget-object v0, p0, Lcom/callapp/contacts/model/objectbox/ContactLookupData;->t9Indexes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 91
    iget-object v0, p0, Lcom/callapp/contacts/model/objectbox/ContactLookupData;->t9Indexes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 92
    iget-object v3, p0, Lcom/callapp/contacts/model/objectbox/ContactLookupData;->t9Indexes:Ljava/util/List;

    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    :cond_2
    iget-object v0, p0, Lcom/callapp/contacts/model/objectbox/ContactLookupData;->nameT9Format:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/model/objectbox/ContactLookupData;->nameT9FormatNoZero:Ljava/lang/String;

    :cond_3
    return-void
.end method


# virtual methods
.method public final getContactId()J
    .locals 2

    .line 167
    iget-wide v0, p0, Lcom/callapp/contacts/model/objectbox/ContactLookupData;->contactId:J

    return-wide v0
.end method

.method public final getDescription()Ljava/lang/String;
    .locals 1

    .line 205
    iget-object v0, p0, Lcom/callapp/contacts/model/objectbox/ContactLookupData;->description:Ljava/lang/String;

    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/callapp/contacts/model/objectbox/ContactLookupData;->description:Ljava/lang/String;

    return-object v0

    .line 208
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/model/objectbox/ContactLookupData;->description:Ljava/lang/String;

    return-object v0
.end method

.method public final getDescriptions()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 196
    iget-object v0, p0, Lcom/callapp/contacts/model/objectbox/ContactLookupData;->descriptionMap:Ljava/util/Map;

    return-object v0
.end method

.method public final getId()J
    .locals 2

    .line 133
    iget-wide v0, p0, Lcom/callapp/contacts/model/objectbox/ContactLookupData;->id:J

    return-wide v0
.end method

.method public final getLookupKey()Ljava/lang/String;
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/callapp/contacts/model/objectbox/ContactLookupData;->lookupKey:Ljava/lang/String;

    return-object v0
.end method

.method public final getNames()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 188
    iget-object v0, p0, Lcom/callapp/contacts/model/objectbox/ContactLookupData;->namesMap:Ljava/util/Map;

    return-object v0
.end method

.method public final getPhoneNumbers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 175
    iget-object v0, p0, Lcom/callapp/contacts/model/objectbox/ContactLookupData;->phoneNumbers:Ljava/util/List;

    return-object v0
.end method

.method public final getT9Indexes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 184
    iget-object v0, p0, Lcom/callapp/contacts/model/objectbox/ContactLookupData;->t9Indexes:Ljava/util/List;

    return-object v0
.end method

.method public final setContactId(J)V
    .locals 0

    .line 171
    iput-wide p1, p0, Lcom/callapp/contacts/model/objectbox/ContactLookupData;->contactId:J

    return-void
.end method

.method public final setDescription(Ljava/lang/String;)V
    .locals 0

    :goto_0
    if-eqz p1, :cond_0

    .line 150
    iput-object p1, p0, Lcom/callapp/contacts/model/objectbox/ContactLookupData;->description:Ljava/lang/String;

    .line 151
    invoke-direct {p0}, Lcom/callapp/contacts/model/objectbox/ContactLookupData;->onDescriptionUpdate()V

    return-void

    :cond_0
    const-string p1, ""

    goto :goto_0
.end method

.method public final setDescriptions(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 200
    iput-object p1, p0, Lcom/callapp/contacts/model/objectbox/ContactLookupData;->descriptionMap:Ljava/util/Map;

    return-void
.end method

.method public final setDisplayName(Ljava/lang/String;)V
    .locals 0

    :goto_0
    if-eqz p1, :cond_0

    .line 159
    iput-object p1, p0, Lcom/callapp/contacts/model/objectbox/ContactLookupData;->displayName:Ljava/lang/String;

    .line 160
    invoke-direct {p0}, Lcom/callapp/contacts/model/objectbox/ContactLookupData;->onNameUpdate()V

    return-void

    :cond_0
    const-string p1, ""

    goto :goto_0
.end method

.method public final setId(J)V
    .locals 0

    .line 137
    iput-wide p1, p0, Lcom/callapp/contacts/model/objectbox/ContactLookupData;->id:J

    return-void
.end method

.method public final setLookupKey(Ljava/lang/String;)V
    .locals 0

    .line 145
    iput-object p1, p0, Lcom/callapp/contacts/model/objectbox/ContactLookupData;->lookupKey:Ljava/lang/String;

    return-void
.end method

.method public final setNames(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 192
    iput-object p1, p0, Lcom/callapp/contacts/model/objectbox/ContactLookupData;->namesMap:Ljava/util/Map;

    return-void
.end method

.method public final setPhoneNumbers(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 179
    iget-object v0, p0, Lcom/callapp/contacts/model/objectbox/ContactLookupData;->phoneNumbers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 180
    iget-object v0, p0, Lcom/callapp/contacts/model/objectbox/ContactLookupData;->phoneNumbers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 214
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ContactLookupData{id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/callapp/contacts/model/objectbox/ContactLookupData;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", lookupKey=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/callapp/contacts/model/objectbox/ContactLookupData;->lookupKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", contactId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/callapp/contacts/model/objectbox/ContactLookupData;->contactId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", phoneNumbers="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/callapp/contacts/model/objectbox/ContactLookupData;->phoneNumbers:Ljava/util/List;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", nameT9Format=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/callapp/contacts/model/objectbox/ContactLookupData;->nameT9Format:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", nameT9FormatNoZero=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/callapp/contacts/model/objectbox/ContactLookupData;->nameT9FormatNoZero:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", displayName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/callapp/contacts/model/objectbox/ContactLookupData;->displayName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", unAccentName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/callapp/contacts/model/objectbox/ContactLookupData;->unAccentName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", description=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/callapp/contacts/model/objectbox/ContactLookupData;->description:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", unAccentDescription=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/callapp/contacts/model/objectbox/ContactLookupData;->unAccentDescription:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", t9Indexes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/callapp/contacts/model/objectbox/ContactLookupData;->t9Indexes:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", namesMap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/callapp/contacts/model/objectbox/ContactLookupData;->namesMap:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", descriptionMap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/callapp/contacts/model/objectbox/ContactLookupData;->descriptionMap:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
