.class public abstract Lcom/callapp/contacts/activity/base/BaseAdapterItemData;
.super Lcom/callapp/contacts/activity/base/BaseViewTypeData;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0xdb9bb92611e04f7L


# instance fields
.field private cacheKey:Ljava/lang/String;

.field public contactId:J

.field public transient descriptionHighlights:Landroid/util/SparseIntArray;

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

.field protected isChecked:Z

.field private isLoaded:Z

.field private isTypeAd:Z

.field public lookupKey:Ljava/lang/String;

.field public nameT9:Ljava/lang/String;

.field public nameT9NoZero:Ljava/lang/String;

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

.field public normalNumbers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public numberMatchIndexEnd:I

.field public numberMatchIndexStart:I

.field public t9Indexes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public transient textHighlights:Landroid/util/SparseIntArray;

.field public unaccentDescription:Ljava/lang/String;

.field public unaccentName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 94
    invoke-direct {p0}, Lcom/callapp/contacts/activity/base/BaseViewTypeData;-><init>()V

    .line 23
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/callapp/contacts/activity/base/BaseAdapterItemData;->textHighlights:Landroid/util/SparseIntArray;

    .line 25
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/callapp/contacts/activity/base/BaseAdapterItemData;->descriptionHighlights:Landroid/util/SparseIntArray;

    const/4 v0, -0x1

    .line 27
    iput v0, p0, Lcom/callapp/contacts/activity/base/BaseAdapterItemData;->numberMatchIndexStart:I

    .line 28
    iput v0, p0, Lcom/callapp/contacts/activity/base/BaseAdapterItemData;->numberMatchIndexEnd:I

    const-string v0, ""

    .line 31
    iput-object v0, p0, Lcom/callapp/contacts/activity/base/BaseAdapterItemData;->nameT9NoZero:Ljava/lang/String;

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/callapp/contacts/activity/base/BaseAdapterItemData;->t9Indexes:Ljava/util/List;

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/callapp/contacts/activity/base/BaseAdapterItemData;->normalNumbers:Ljava/util/List;

    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/callapp/contacts/activity/base/BaseAdapterItemData;->namesMap:Ljava/util/Map;

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/callapp/contacts/activity/base/BaseAdapterItemData;->descriptionMap:Ljava/util/Map;

    const/4 v0, 0x0

    .line 46
    iput-boolean v0, p0, Lcom/callapp/contacts/activity/base/BaseAdapterItemData;->isLoaded:Z

    return-void
.end method

.method public constructor <init>(Lcom/callapp/contacts/activity/base/BaseAdapterItemData;)V
    .locals 3

    .line 98
    invoke-direct {p0}, Lcom/callapp/contacts/activity/base/BaseViewTypeData;-><init>()V

    .line 23
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/callapp/contacts/activity/base/BaseAdapterItemData;->textHighlights:Landroid/util/SparseIntArray;

    .line 25
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/callapp/contacts/activity/base/BaseAdapterItemData;->descriptionHighlights:Landroid/util/SparseIntArray;

    const/4 v0, -0x1

    .line 27
    iput v0, p0, Lcom/callapp/contacts/activity/base/BaseAdapterItemData;->numberMatchIndexStart:I

    .line 28
    iput v0, p0, Lcom/callapp/contacts/activity/base/BaseAdapterItemData;->numberMatchIndexEnd:I

    const-string v0, ""

    .line 31
    iput-object v0, p0, Lcom/callapp/contacts/activity/base/BaseAdapterItemData;->nameT9NoZero:Ljava/lang/String;

    .line 32
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/callapp/contacts/activity/base/BaseAdapterItemData;->t9Indexes:Ljava/util/List;

    .line 33
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/callapp/contacts/activity/base/BaseAdapterItemData;->normalNumbers:Ljava/util/List;

    .line 34
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/callapp/contacts/activity/base/BaseAdapterItemData;->namesMap:Ljava/util/Map;

    .line 35
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/callapp/contacts/activity/base/BaseAdapterItemData;->descriptionMap:Ljava/util/Map;

    const/4 v1, 0x0

    .line 46
    iput-boolean v1, p0, Lcom/callapp/contacts/activity/base/BaseAdapterItemData;->isLoaded:Z

    .line 99
    iget-wide v1, p1, Lcom/callapp/contacts/activity/base/BaseAdapterItemData;->contactId:J

    iput-wide v1, p0, Lcom/callapp/contacts/activity/base/BaseAdapterItemData;->contactId:J

    .line 100
    iget-object v1, p1, Lcom/callapp/contacts/activity/base/BaseAdapterItemData;->displayName:Ljava/lang/String;

    iput-object v1, p0, Lcom/callapp/contacts/activity/base/BaseAdapterItemData;->displayName:Ljava/lang/String;

    .line 101
    iget-object v1, p1, Lcom/callapp/contacts/activity/base/BaseAdapterItemData;->lookupKey:Ljava/lang/String;

    iput-object v1, p0, Lcom/callapp/contacts/activity/base/BaseAdapterItemData;->lookupKey:Ljava/lang/String;

    .line 102
    iget-object v1, p1, Lcom/callapp/contacts/activity/base/BaseAdapterItemData;->textHighlights:Landroid/util/SparseIntArray;

    iput-object v1, p0, Lcom/callapp/contacts/activity/base/BaseAdapterItemData;->textHighlights:Landroid/util/SparseIntArray;

    .line 103
    iget-object v1, p1, Lcom/callapp/contacts/activity/base/BaseAdapterItemData;->descriptionHighlights:Landroid/util/SparseIntArray;

    iput-object v1, p0, Lcom/callapp/contacts/activity/base/BaseAdapterItemData;->descriptionHighlights:Landroid/util/SparseIntArray;

    .line 104
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/base/BaseAdapterItemData;->isChecked()Z

    move-result v1

    iput-boolean v1, p0, Lcom/callapp/contacts/activity/base/BaseAdapterItemData;->isChecked:Z

    .line 105
    iget v1, p1, Lcom/callapp/contacts/activity/base/BaseAdapterItemData;->numberMatchIndexStart:I

    iput v1, p0, Lcom/callapp/contacts/activity/base/BaseAdapterItemData;->numberMatchIndexStart:I

    .line 106
    iget v1, p1, Lcom/callapp/contacts/activity/base/BaseAdapterItemData;->numberMatchIndexEnd:I

    iput v1, p0, Lcom/callapp/contacts/activity/base/BaseAdapterItemData;->numberMatchIndexEnd:I

    .line 107
    iget-object v1, p1, Lcom/callapp/contacts/activity/base/BaseAdapterItemData;->nameT9:Ljava/lang/String;

    iput-object v1, p0, Lcom/callapp/contacts/activity/base/BaseAdapterItemData;->nameT9:Ljava/lang/String;

    const-string v2, "0"

    .line 108
    invoke-static {v1, v2, v0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 109
    iget-object v0, p1, Lcom/callapp/contacts/activity/base/BaseAdapterItemData;->unaccentName:Ljava/lang/String;

    iput-object v0, p0, Lcom/callapp/contacts/activity/base/BaseAdapterItemData;->unaccentName:Ljava/lang/String;

    .line 110
    iget-object v0, p1, Lcom/callapp/contacts/activity/base/BaseAdapterItemData;->unaccentDescription:Ljava/lang/String;

    iput-object v0, p0, Lcom/callapp/contacts/activity/base/BaseAdapterItemData;->unaccentDescription:Ljava/lang/String;

    .line 111
    iget-object v0, p1, Lcom/callapp/contacts/activity/base/BaseAdapterItemData;->normalNumbers:Ljava/util/List;

    iput-object v0, p0, Lcom/callapp/contacts/activity/base/BaseAdapterItemData;->normalNumbers:Ljava/util/List;

    .line 112
    iget-boolean p1, p1, Lcom/callapp/contacts/activity/base/BaseAdapterItemData;->isTypeAd:Z

    iput-boolean p1, p0, Lcom/callapp/contacts/activity/base/BaseAdapterItemData;->isTypeAd:Z

    return-void
.end method

.method static synthetic access$000(Lcom/callapp/contacts/activity/base/BaseAdapterItemData;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/callapp/contacts/activity/base/BaseAdapterItemData;->createCacheKey()V

    return-void
.end method

.method private createCacheKey()V
    .locals 1

    .line 81
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/base/BaseAdapterItemData;->calculateCacheKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/activity/base/BaseAdapterItemData;->cacheKey:Ljava/lang/String;

    return-void
.end method

.method public static createCacheKeysAsync(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lcom/callapp/contacts/activity/base/BaseAdapterItemData;",
            ">;)V"
        }
    .end annotation

    .line 150
    invoke-static {p0}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 154
    :cond_0
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>(Ljava/util/Collection;)V

    .line 155
    new-instance p0, Lcom/callapp/contacts/activity/base/BaseAdapterItemData$1;

    invoke-direct {p0, v0}, Lcom/callapp/contacts/activity/base/BaseAdapterItemData$1;-><init>(Ljava/util/concurrent/CopyOnWriteArrayList;)V

    .line 162
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/base/BaseAdapterItemData$1;->execute()Lcom/callapp/contacts/manager/task/Task;

    return-void
.end method


# virtual methods
.method public calculateCacheKey()Ljava/lang/String;
    .locals 3

    .line 72
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/base/BaseAdapterItemData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 73
    sget-object v1, Lcom/callapp/framework/phone/Phone;->b:Lcom/callapp/framework/phone/Phone;

    if-eq v0, v1, :cond_0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 74
    invoke-virtual {v0}, Lcom/callapp/framework/phone/Phone;->a()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    const-string v0, "ItemData_%s"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 136
    :cond_1
    instance-of v2, p1, Lcom/callapp/contacts/activity/base/BaseAdapterItemData;

    if-nez v2, :cond_2

    return v1

    .line 138
    :cond_2
    check-cast p1, Lcom/callapp/contacts/activity/base/BaseAdapterItemData;

    .line 139
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/base/BaseAdapterItemData;->includeContactIdInHashcodeAndEquals()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-wide v2, p0, Lcom/callapp/contacts/activity/base/BaseAdapterItemData;->contactId:J

    iget-wide v4, p1, Lcom/callapp/contacts/activity/base/BaseAdapterItemData;->contactId:J

    cmp-long v6, v2, v4

    if-eqz v6, :cond_3

    return v1

    .line 141
    :cond_3
    iget-object v2, p0, Lcom/callapp/contacts/activity/base/BaseAdapterItemData;->displayName:Ljava/lang/String;

    if-nez v2, :cond_4

    .line 142
    iget-object p1, p1, Lcom/callapp/contacts/activity/base/BaseAdapterItemData;->displayName:Ljava/lang/String;

    if-eqz p1, :cond_5

    return v1

    .line 144
    :cond_4
    iget-object p1, p1, Lcom/callapp/contacts/activity/base/BaseAdapterItemData;->displayName:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    return v1

    :cond_5
    return v0
.end method

.method public getCacheKey()Ljava/lang/String;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/callapp/contacts/activity/base/BaseAdapterItemData;->cacheKey:Ljava/lang/String;

    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    invoke-direct {p0}, Lcom/callapp/contacts/activity/base/BaseAdapterItemData;->createCacheKey()V

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/base/BaseAdapterItemData;->cacheKey:Ljava/lang/String;

    return-object v0
.end method

.method public getContactId()J
    .locals 2

    .line 174
    iget-wide v0, p0, Lcom/callapp/contacts/activity/base/BaseAdapterItemData;->contactId:J

    return-wide v0
.end method

.method public getNormalNumbers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 64
    iget-object v0, p0, Lcom/callapp/contacts/activity/base/BaseAdapterItemData;->normalNumbers:Ljava/util/List;

    return-object v0
.end method

.method public abstract getPhone()Lcom/callapp/framework/phone/Phone;
.end method

.method public hashCode()I
    .locals 4

    .line 122
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/base/BaseAdapterItemData;->includeContactIdInHashcodeAndEquals()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    iget-wide v0, p0, Lcom/callapp/contacts/activity/base/BaseAdapterItemData;->contactId:J

    const/16 v2, 0x20

    ushr-long v2, v0, v2

    xor-long/2addr v0, v2

    long-to-int v1, v0

    add-int/lit8 v1, v1, 0x1f

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    mul-int/lit8 v1, v1, 0x1f

    .line 125
    iget-object v0, p0, Lcom/callapp/contacts/activity/base/BaseAdapterItemData;->displayName:Ljava/lang/String;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v1, v0

    return v1
.end method

.method protected abstract includeContactIdInHashcodeAndEquals()Z
.end method

.method public isChecked()Z
    .locals 1

    .line 166
    iget-boolean v0, p0, Lcom/callapp/contacts/activity/base/BaseAdapterItemData;->isChecked:Z

    return v0
.end method

.method public isLoaded()Z
    .locals 1

    .line 51
    iget-boolean v0, p0, Lcom/callapp/contacts/activity/base/BaseAdapterItemData;->isLoaded:Z

    return v0
.end method

.method public isTypeAd()Z
    .locals 1

    .line 55
    iget-boolean v0, p0, Lcom/callapp/contacts/activity/base/BaseAdapterItemData;->isTypeAd:Z

    return v0
.end method

.method public setChecked(Z)V
    .locals 0

    .line 170
    iput-boolean p1, p0, Lcom/callapp/contacts/activity/base/BaseAdapterItemData;->isChecked:Z

    return-void
.end method

.method public setLoaded(Z)V
    .locals 0

    .line 68
    iput-boolean p1, p0, Lcom/callapp/contacts/activity/base/BaseAdapterItemData;->isLoaded:Z

    return-void
.end method

.method public setTypeAd(Z)V
    .locals 0

    .line 59
    iput-boolean p1, p0, Lcom/callapp/contacts/activity/base/BaseAdapterItemData;->isTypeAd:Z

    return-void
.end method
