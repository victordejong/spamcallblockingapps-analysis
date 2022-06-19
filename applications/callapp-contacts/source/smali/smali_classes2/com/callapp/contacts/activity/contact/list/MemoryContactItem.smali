.class public Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;
.super Lcom/callapp/contacts/activity/base/BaseAdapterItemData;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/activity/interfaces/StickyHeaderSection;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/callapp/contacts/activity/base/BaseAdapterItemData;",
        "Lcom/callapp/contacts/activity/interfaces/StickyHeaderSection;",
        "Ljava/lang/Comparable<",
        "Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;",
        ">;"
    }
.end annotation


# instance fields
.field private a:I

.field public c:Z

.field public d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/callapp/common/model/json/JSONEmail;",
            ">;"
        }
    .end annotation
.end field

.field public e:Ljava/lang/String;

.field public f:I

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Lcom/callapp/contacts/activity/base/BaseAdapterItemData;-><init>()V

    const/4 v0, 0x0

    .line 34
    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->e:Ljava/lang/String;

    const/4 v0, -0x1

    .line 35
    iput v0, p0, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->f:I

    const-string v0, ""

    .line 37
    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->g:Ljava/lang/String;

    .line 38
    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->h:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;)V
    .locals 1

    .line 45
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/base/BaseAdapterItemData;-><init>(Lcom/callapp/contacts/activity/base/BaseAdapterItemData;)V

    const/4 v0, 0x0

    .line 34
    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->e:Ljava/lang/String;

    const/4 v0, -0x1

    .line 35
    iput v0, p0, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->f:I

    const-string v0, ""

    .line 37
    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->g:Ljava/lang/String;

    .line 38
    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->h:Ljava/lang/String;

    .line 47
    iget-boolean v0, p1, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->c:Z

    iput-boolean v0, p0, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->c:Z

    .line 48
    iget-object v0, p1, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->d:Ljava/util/Set;

    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->d:Ljava/util/Set;

    .line 49
    iget p1, p1, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->f:I

    iput p1, p0, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->f:I

    return-void
.end method

.method public constructor <init>(Lcom/callapp/contacts/model/contact/ContactData;Z)V
    .locals 8

    .line 52
    invoke-direct {p0}, Lcom/callapp/contacts/activity/base/BaseAdapterItemData;-><init>()V

    const/4 v0, 0x0

    .line 34
    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->e:Ljava/lang/String;

    const/4 v1, -0x1

    .line 35
    iput v1, p0, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->f:I

    const-string v2, ""

    .line 37
    iput-object v2, p0, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->g:Ljava/lang/String;

    .line 38
    iput-object v2, p0, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->h:Ljava/lang/String;

    .line 53
    iput-boolean p2, p0, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->isChecked:Z

    .line 1158
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getPhones()Ljava/util/Collection;

    move-result-object p2

    invoke-static {p2}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 1159
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->normalNumbers:Ljava/util/List;

    .line 1160
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getPhones()Ljava/util/Collection;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/callapp/framework/phone/Phone;

    .line 1161
    invoke-virtual {v3}, Lcom/callapp/framework/phone/Phone;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/callapp/contacts/activity/contact/list/search/T9Helper;->a(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 1162
    invoke-static {v3}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->normalNumbers:Ljava/util/List;

    invoke-static {v4, v3}, Lcom/callapp/contacts/manager/contacts/ContactUtils;->a(Ljava/util/List;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1163
    iget-object v4, p0, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->normalNumbers:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1167
    :cond_1
    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->e:Ljava/lang/String;

    .line 1168
    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->d:Ljava/util/Set;

    const/4 p2, 0x0

    .line 1169
    invoke-virtual {p0, p2}, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->setChecked(Z)V

    .line 1170
    iput-object v2, p0, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->displayName:Ljava/lang/String;

    .line 1171
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getFullName()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->displayName:Ljava/lang/String;

    .line 1172
    iput-object v2, p0, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->unaccentName:Ljava/lang/String;

    .line 1173
    iget-object p2, p0, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->displayName:Ljava/lang/String;

    invoke-static {p2}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_5

    .line 1174
    iget-object p2, p0, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->displayName:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/callapp/common/util/RegexUtils;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/callapp/common/util/RegexUtils;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->unaccentName:Ljava/lang/String;

    .line 1175
    iget-object p2, p0, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->unaccentName:Ljava/lang/String;

    iget-object v3, p0, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->namesMap:Ljava/util/Map;

    invoke-static {p2, v3}, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 1177
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-direct {p2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->unaccentName:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/callapp/contacts/activity/contact/list/search/T9Helper;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v3, "*"

    const-string v4, "0"

    .line 1178
    invoke-virtual {p2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    const-string v3, "#"

    .line 1179
    invoke-virtual {p2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    const-string v3, "+"

    .line 1180
    invoke-virtual {p2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    .line 1181
    iput-object p2, p0, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->nameT9:Ljava/lang/String;

    .line 1182
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x1

    .line 1183
    :goto_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v5, v6, :cond_3

    .line 1184
    invoke-virtual {p2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x30

    if-eq v6, v7, :cond_2

    add-int/lit8 v6, v5, -0x1

    .line 1185
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1189
    :cond_3
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_4

    .line 1190
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result p2

    sub-int/2addr p2, v0

    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    add-int/2addr p2, v0

    .line 1191
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1193
    :cond_4
    invoke-virtual {v2, v4, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->nameT9NoZero:Ljava/lang/String;

    .line 1194
    iput-object v3, p0, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->t9Indexes:Ljava/util/List;

    .line 1196
    :cond_5
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getDescription()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->h:Ljava/lang/String;

    .line 1197
    iput-object v2, p0, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->unaccentDescription:Ljava/lang/String;

    .line 1198
    iget-object p2, p0, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->h:Ljava/lang/String;

    invoke-static {p2}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 1199
    iget-object p2, p0, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->h:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/callapp/common/util/RegexUtils;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/callapp/common/util/RegexUtils;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->unaccentDescription:Ljava/lang/String;

    .line 1200
    iget-object p2, p0, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->unaccentDescription:Ljava/lang/String;

    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->descriptionMap:Ljava/util/Map;

    invoke-static {p2, v2}, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 1202
    :cond_6
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getDeviceData()Lcom/callapp/contacts/model/contact/DeviceData;

    move-result-object p2

    if-eqz p2, :cond_7

    .line 1203
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getDeviceData()Lcom/callapp/contacts/model/contact/DeviceData;

    move-result-object p2

    invoke-virtual {p2}, Lcom/callapp/contacts/model/contact/DeviceData;->isFavorite()Ljava/lang/Boolean;

    move-result-object p2

    if-eqz p2, :cond_7

    .line 1204
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getDeviceData()Lcom/callapp/contacts/model/contact/DeviceData;

    move-result-object p2

    invoke-virtual {p2}, Lcom/callapp/contacts/model/contact/DeviceData;->isFavorite()Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    iput-boolean p2, p0, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->c:Z

    .line 1207
    :cond_7
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object p2

    invoke-virtual {p2}, Lcom/callapp/contacts/CallAppApplication;->getObjectBoxStore()Lio/objectbox/BoxStore;

    move-result-object p2

    const-class v2, Lcom/callapp/contacts/model/objectbox/ContactLookupData;

    invoke-virtual {p2, v2}, Lio/objectbox/BoxStore;->d(Ljava/lang/Class;)Lio/objectbox/a;

    move-result-object p2

    .line 1208
    invoke-virtual {p2}, Lio/objectbox/a;->e()Lio/objectbox/query/QueryBuilder;

    move-result-object p2

    sget-object v2, Lcom/callapp/contacts/model/objectbox/ContactLookupData_;->contactId:Lio/objectbox/g;

    iget-wide v3, p0, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->contactId:J

    invoke-virtual {p2, v2, v3, v4}, Lio/objectbox/query/QueryBuilder;->a(Lio/objectbox/g;J)Lio/objectbox/query/QueryBuilder;

    move-result-object p2

    invoke-virtual {p2}, Lio/objectbox/query/QueryBuilder;->a()Lio/objectbox/query/Query;

    move-result-object p2

    invoke-virtual {p2}, Lio/objectbox/query/Query;->a()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/callapp/contacts/model/objectbox/ContactLookupData;

    if-eqz p2, :cond_8

    .line 1210
    invoke-virtual {p2}, Lcom/callapp/contacts/model/objectbox/ContactLookupData;->getLookupKey()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->lookupKey:Ljava/lang/String;

    .line 1213
    :cond_8
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getDeviceId()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->contactId:J

    .line 1214
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->setSectionId(I)V

    .line 1215
    iput v1, p0, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->f:I

    .line 1216
    iput v1, p0, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->numberMatchIndexEnd:I

    .line 1217
    iput v1, p0, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->numberMatchIndexStart:I

    .line 1218
    new-instance p1, Landroid/util/SparseIntArray;

    const/4 p2, 0x2

    invoke-direct {p1, p2}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->textHighlights:Landroid/util/SparseIntArray;

    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/util/Map;)V
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

    .line 222
    invoke-interface {p1}, Ljava/util/Map;->clear()V

    .line 223
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    .line 225
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v2, v4, :cond_3

    .line 226
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 227
    invoke-static {v4}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 228
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-ne v3, v1, :cond_2

    move v3, v2

    goto :goto_1

    :cond_0
    if-eq v3, v1, :cond_2

    .line 234
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 235
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 236
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
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

    .line 244
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    return-void
.end method


# virtual methods
.method public final a(II)V
    .locals 0

    if-eq p1, p2, :cond_0

    if-le p2, p1, :cond_1

    .line 306
    :cond_0
    iput p1, p0, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->numberMatchIndexStart:I

    .line 307
    iput p2, p0, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->numberMatchIndexEnd:I

    :cond_1
    return-void
.end method

.method public final a(Lcom/callapp/contacts/model/objectbox/ContactLookupData;)V
    .locals 3

    .line 249
    invoke-virtual {p1}, Lcom/callapp/contacts/model/objectbox/ContactLookupData;->getPhoneNumbers()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 250
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->normalNumbers:Ljava/util/List;

    .line 251
    invoke-virtual {p1}, Lcom/callapp/contacts/model/objectbox/ContactLookupData;->getPhoneNumbers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 252
    invoke-static {v1}, Lcom/callapp/contacts/activity/contact/list/search/T9Helper;->a(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 253
    invoke-static {v1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->normalNumbers:Ljava/util/List;

    invoke-static {v2, v1}, Lcom/callapp/contacts/manager/contacts/ContactUtils;->a(Ljava/util/List;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 254
    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->normalNumbers:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 259
    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->e:Ljava/lang/String;

    .line 260
    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->d:Ljava/util/Set;

    const/4 v0, 0x0

    .line 261
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->setChecked(Z)V

    .line 262
    iget-object v1, p1, Lcom/callapp/contacts/model/objectbox/ContactLookupData;->unAccentName:Ljava/lang/String;

    const-string v2, ""

    if-eqz v1, :cond_2

    iget-object v1, p1, Lcom/callapp/contacts/model/objectbox/ContactLookupData;->unAccentName:Ljava/lang/String;

    goto :goto_1

    :cond_2
    move-object v1, v2

    :goto_1
    iput-object v1, p0, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->unaccentName:Ljava/lang/String;

    .line 263
    iget-object v1, p1, Lcom/callapp/contacts/model/objectbox/ContactLookupData;->unAccentDescription:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p1, Lcom/callapp/contacts/model/objectbox/ContactLookupData;->unAccentDescription:Ljava/lang/String;

    goto :goto_2

    :cond_3
    move-object v1, v2

    :goto_2
    iput-object v1, p0, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->unaccentDescription:Ljava/lang/String;

    .line 264
    iget-object v1, p1, Lcom/callapp/contacts/model/objectbox/ContactLookupData;->displayName:Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-object v1, p1, Lcom/callapp/contacts/model/objectbox/ContactLookupData;->displayName:Ljava/lang/String;

    goto :goto_3

    :cond_4
    move-object v1, v2

    :goto_3
    iput-object v1, p0, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->displayName:Ljava/lang/String;

    .line 265
    iput-boolean v0, p0, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->c:Z

    .line 266
    invoke-virtual {p1}, Lcom/callapp/contacts/model/objectbox/ContactLookupData;->getLookupKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->lookupKey:Ljava/lang/String;

    .line 267
    invoke-virtual {p1}, Lcom/callapp/contacts/model/objectbox/ContactLookupData;->getContactId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->contactId:J

    .line 268
    iget-object v0, p1, Lcom/callapp/contacts/model/objectbox/ContactLookupData;->nameT9Format:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p1, Lcom/callapp/contacts/model/objectbox/ContactLookupData;->nameT9Format:Ljava/lang/String;

    goto :goto_4

    :cond_5
    move-object v0, v2

    :goto_4
    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->nameT9:Ljava/lang/String;

    .line 269
    iget-object v0, p1, Lcom/callapp/contacts/model/objectbox/ContactLookupData;->nameT9FormatNoZero:Ljava/lang/String;

    if-eqz v0, :cond_6

    iget-object v2, p1, Lcom/callapp/contacts/model/objectbox/ContactLookupData;->nameT9FormatNoZero:Ljava/lang/String;

    :cond_6
    iput-object v2, p0, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->nameT9NoZero:Ljava/lang/String;

    .line 270
    invoke-virtual {p1}, Lcom/callapp/contacts/model/objectbox/ContactLookupData;->getT9Indexes()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->t9Indexes:Ljava/util/List;

    .line 271
    iget-object v0, p1, Lcom/callapp/contacts/model/objectbox/ContactLookupData;->namesMap:Ljava/util/Map;

    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->namesMap:Ljava/util/Map;

    .line 272
    iget-object v0, p1, Lcom/callapp/contacts/model/objectbox/ContactLookupData;->descriptionMap:Ljava/util/Map;

    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->descriptionMap:Ljava/util/Map;

    const/4 v0, 0x1

    .line 273
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->setSectionId(I)V

    const/4 v0, -0x1

    .line 274
    iput v0, p0, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->f:I

    .line 275
    iput v0, p0, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->numberMatchIndexEnd:I

    .line 276
    iput v0, p0, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->numberMatchIndexStart:I

    .line 277
    new-instance v0, Landroid/util/SparseIntArray;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->textHighlights:Landroid/util/SparseIntArray;

    .line 278
    invoke-virtual {p1}, Lcom/callapp/contacts/model/objectbox/ContactLookupData;->getDescription()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->h:Ljava/lang/String;

    return-void
.end method

.method public final a(Lcom/callapp/contacts/model/objectbox/ExtractedInfo;)V
    .locals 3

    .line 282
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->normalNumbers:Ljava/util/List;

    .line 283
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->normalNumbers:Ljava/util/List;

    iget-object v1, p1, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;->phoneAsRaw:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    .line 284
    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->e:Ljava/lang/String;

    .line 285
    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->d:Ljava/util/Set;

    const/4 v0, 0x0

    .line 286
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->setChecked(Z)V

    .line 287
    iget-object v1, p1, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;->unAccentName:Ljava/lang/String;

    iput-object v1, p0, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->unaccentName:Ljava/lang/String;

    .line 288
    iget-object v1, p1, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;->displayName:Ljava/lang/String;

    iput-object v1, p0, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->displayName:Ljava/lang/String;

    .line 289
    iput-boolean v0, p0, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->c:Z

    const-string v0, ""

    .line 290
    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->lookupKey:Ljava/lang/String;

    const-wide/16 v1, 0x0

    .line 291
    iput-wide v1, p0, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->contactId:J

    .line 292
    iget-object v1, p1, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;->nameT9Format:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;->nameT9Format:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    iput-object v1, p0, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->nameT9:Ljava/lang/String;

    .line 293
    iget-object v1, p1, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;->nameT9FormatNoZero:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p1, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;->nameT9FormatNoZero:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object v1, v0

    :goto_1
    iput-object v1, p0, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->nameT9NoZero:Ljava/lang/String;

    .line 294
    iget-object v1, p1, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;->t9Indexes:Ljava/util/List;

    iput-object v1, p0, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->t9Indexes:Ljava/util/List;

    .line 295
    iget-object p1, p1, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;->namesMap:Ljava/util/Map;

    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->namesMap:Ljava/util/Map;

    const/4 p1, 0x2

    .line 296
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->setSectionId(I)V

    const/4 v1, -0x1

    .line 297
    iput v1, p0, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->f:I

    .line 298
    iput v1, p0, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->numberMatchIndexEnd:I

    .line 299
    iput v1, p0, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->numberMatchIndexStart:I

    .line 300
    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->h:Ljava/lang/String;

    .line 301
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0, p1}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->textHighlights:Landroid/util/SparseIntArray;

    return-void
.end method

.method public final b(II)V
    .locals 1

    .line 312
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->textHighlights:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public final c(II)V
    .locals 1

    .line 316
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->descriptionHighlights:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public calculateCacheKey()Ljava/lang/String;
    .locals 6

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 118
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->normalNumbers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 119
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/callapp/contacts/manager/phone/PhoneManager;->a(Ljava/lang/String;)Lcom/callapp/framework/phone/Phone;

    move-result-object v2

    invoke-virtual {v2}, Lcom/callapp/framework/phone/Phone;->a()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v4

    const-string v2, "ItemData_%s"

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 122
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-super {p0}, Lcom/callapp/contacts/activity/base/BaseAdapterItemData;->calculateCacheKey()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 126
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 5

    .line 29
    check-cast p1, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;

    .line 2064
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->displayName:Ljava/lang/String;

    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->displayName:Ljava/lang/String;

    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 2067
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->displayName:Ljava/lang/String;

    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, -0x1

    if-eqz v0, :cond_1

    return v2

    .line 2070
    :cond_1
    iget-object v0, p1, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->displayName:Ljava/lang/String;

    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    return v3

    .line 2073
    :cond_2
    iget-object v0, p1, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->displayName:Ljava/lang/String;

    .line 2074
    iget-object v4, p0, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->displayName:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/callapp/framework/util/StringUtils;->c(C)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/callapp/framework/util/StringUtils;->c(C)Z

    move-result v4

    if-nez v4, :cond_3

    return v3

    .line 2076
    :cond_3
    iget-object v3, p0, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->displayName:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/callapp/framework/util/StringUtils;->c(C)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->c(C)Z

    move-result v0

    if-eqz v0, :cond_4

    return v2

    .line 2079
    :cond_4
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->displayName:Ljava/lang/String;

    iget-object p1, p1, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->displayName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 96
    :cond_0
    invoke-super {p0, p1}, Lcom/callapp/contacts/activity/base/BaseAdapterItemData;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 98
    :cond_1
    instance-of v1, p1, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;

    if-nez v1, :cond_2

    return v2

    .line 100
    :cond_2
    check-cast p1, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;

    .line 101
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->normalNumbers:Ljava/util/List;

    if-nez v1, :cond_3

    .line 102
    iget-object p1, p1, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->normalNumbers:Ljava/util/List;

    if-eqz p1, :cond_6

    return v2

    .line 104
    :cond_3
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->normalNumbers:Ljava/util/List;

    iget-object v3, p1, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->normalNumbers:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    .line 106
    :cond_4
    iget-boolean v1, p0, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->c:Z

    iget-boolean v3, p1, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->c:Z

    if-eq v1, v3, :cond_5

    return v2

    .line 108
    :cond_5
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->e:Ljava/lang/String;

    iget-object p1, p1, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->e:Ljava/lang/String;

    invoke-static {v1, p1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public getPhone()Lcom/callapp/framework/phone/Phone;
    .locals 2

    .line 131
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->g:Ljava/lang/String;

    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/phone/PhoneManager;->a(Ljava/lang/String;)Lcom/callapp/framework/phone/Phone;

    move-result-object v0

    return-object v0

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->normalNumbers:Ljava/util/List;

    invoke-static {v0}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 136
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->normalNumbers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 137
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/callapp/contacts/manager/phone/PhoneManager;->a(Ljava/lang/String;)Lcom/callapp/framework/phone/Phone;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSectionId()I
    .locals 1

    .line 154
    iget v0, p0, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->a:I

    return v0
.end method

.method public getViewType()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 85
    invoke-super {p0}, Lcom/callapp/contacts/activity/base/BaseAdapterItemData;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 86
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->nameT9:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->nameT9:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 87
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->normalNumbers:Ljava/util/List;

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->normalNumbers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    return v0
.end method

.method public includeContactIdInHashcodeAndEquals()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public setSectionId(I)V
    .locals 0

    .line 149
    iput p1, p0, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->a:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 321
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MemoryContactItem{phoneToDisplay=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", description=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->h:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", nameT9=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->nameT9:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", nameT9NoZero=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->nameT9NoZero:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", t9Indexes="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->t9Indexes:Ljava/util/List;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", normalNumbers="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->normalNumbers:Ljava/util/List;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", namesMap="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->namesMap:Ljava/util/Map;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", descriptionMap="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->descriptionMap:Ljava/util/Map;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", unaccentName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->unaccentName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", unaccentDescription=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->unaccentDescription:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", contactId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->contactId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", displayName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->displayName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", lookupKey=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->lookupKey:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
