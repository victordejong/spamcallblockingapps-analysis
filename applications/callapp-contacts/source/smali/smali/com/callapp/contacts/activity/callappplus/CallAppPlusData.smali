.class public Lcom/callapp/contacts/activity/callappplus/CallAppPlusData;
.super Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;
.source "SourceFile"


# instance fields
.field public final a:Lcom/callapp/contacts/model/objectbox/ExtractedInfo;

.field public final b:Landroid/util/SparseIntArray;

.field private i:Landroid/graphics/drawable/Drawable;

.field private j:I

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:I

.field private final n:Z

.field private final o:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/callapp/contacts/model/objectbox/ExtractedInfo;)V
    .locals 1

    .line 30
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;-><init>()V

    .line 24
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/callapp/contacts/activity/callappplus/CallAppPlusData;->b:Landroid/util/SparseIntArray;

    .line 31
    iput-object p1, p0, Lcom/callapp/contacts/activity/callappplus/CallAppPlusData;->a:Lcom/callapp/contacts/model/objectbox/ExtractedInfo;

    const/4 v0, 0x0

    .line 32
    iput-object v0, p0, Lcom/callapp/contacts/activity/callappplus/CallAppPlusData;->o:Ljava/lang/String;

    const/4 v0, 0x0

    .line 33
    iput-boolean v0, p0, Lcom/callapp/contacts/activity/callappplus/CallAppPlusData;->n:Z

    if-eqz p1, :cond_0

    .line 35
    invoke-virtual {p1}, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;->isStarred()Z

    move-result p1

    iput-boolean p1, p0, Lcom/callapp/contacts/activity/callappplus/CallAppPlusData;->c:Z

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 39
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;-><init>()V

    .line 24
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/callapp/contacts/activity/callappplus/CallAppPlusData;->b:Landroid/util/SparseIntArray;

    const/4 v0, 0x0

    .line 40
    iput-object v0, p0, Lcom/callapp/contacts/activity/callappplus/CallAppPlusData;->a:Lcom/callapp/contacts/model/objectbox/ExtractedInfo;

    .line 41
    iput-object p1, p0, Lcom/callapp/contacts/activity/callappplus/CallAppPlusData;->o:Ljava/lang/String;

    .line 42
    invoke-static {p1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/callapp/contacts/activity/callappplus/CallAppPlusData;->n:Z

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    .line 133
    iget-object v0, p0, Lcom/callapp/contacts/activity/callappplus/CallAppPlusData;->a:Lcom/callapp/contacts/model/objectbox/ExtractedInfo;

    if-eqz v0, :cond_0

    iget-wide v0, v0, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;->when:J

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_b

    .line 97
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 98
    :cond_1
    invoke-super {p0, p1}, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v0

    .line 100
    :cond_2
    check-cast p1, Lcom/callapp/contacts/activity/callappplus/CallAppPlusData;

    .line 102
    iget v1, p0, Lcom/callapp/contacts/activity/callappplus/CallAppPlusData;->j:I

    iget v2, p1, Lcom/callapp/contacts/activity/callappplus/CallAppPlusData;->j:I

    if-eq v1, v2, :cond_3

    return v0

    .line 103
    :cond_3
    iget v1, p0, Lcom/callapp/contacts/activity/callappplus/CallAppPlusData;->m:I

    iget v2, p1, Lcom/callapp/contacts/activity/callappplus/CallAppPlusData;->m:I

    if-eq v1, v2, :cond_4

    return v0

    .line 104
    :cond_4
    iget-boolean v1, p0, Lcom/callapp/contacts/activity/callappplus/CallAppPlusData;->n:Z

    iget-boolean v2, p1, Lcom/callapp/contacts/activity/callappplus/CallAppPlusData;->n:Z

    if-eq v1, v2, :cond_5

    return v0

    .line 105
    :cond_5
    iget-object v1, p0, Lcom/callapp/contacts/activity/callappplus/CallAppPlusData;->a:Lcom/callapp/contacts/model/objectbox/ExtractedInfo;

    iget-object v2, p1, Lcom/callapp/contacts/activity/callappplus/CallAppPlusData;->a:Lcom/callapp/contacts/model/objectbox/ExtractedInfo;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v0

    .line 107
    :cond_6
    iget-object v1, p0, Lcom/callapp/contacts/activity/callappplus/CallAppPlusData;->i:Landroid/graphics/drawable/Drawable;

    iget-object v2, p1, Lcom/callapp/contacts/activity/callappplus/CallAppPlusData;->i:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v0

    .line 108
    :cond_7
    iget-object v1, p0, Lcom/callapp/contacts/activity/callappplus/CallAppPlusData;->k:Ljava/lang/String;

    iget-object v2, p1, Lcom/callapp/contacts/activity/callappplus/CallAppPlusData;->k:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v0

    .line 110
    :cond_8
    iget-object v1, p0, Lcom/callapp/contacts/activity/callappplus/CallAppPlusData;->l:Ljava/lang/String;

    iget-object v2, p1, Lcom/callapp/contacts/activity/callappplus/CallAppPlusData;->l:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v0

    .line 112
    :cond_9
    iget-object v1, p0, Lcom/callapp/contacts/activity/callappplus/CallAppPlusData;->b:Landroid/util/SparseIntArray;

    iget-object v2, p1, Lcom/callapp/contacts/activity/callappplus/CallAppPlusData;->b:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v0

    .line 113
    :cond_a
    iget-object v0, p0, Lcom/callapp/contacts/activity/callappplus/CallAppPlusData;->o:Ljava/lang/String;

    iget-object p1, p1, Lcom/callapp/contacts/activity/callappplus/CallAppPlusData;->o:Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_b
    :goto_0
    return v0
.end method

.method public getBadge()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/callapp/contacts/activity/callappplus/CallAppPlusData;->i:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getBadgeColor()I
    .locals 1

    .line 71
    iget v0, p0, Lcom/callapp/contacts/activity/callappplus/CallAppPlusData;->j:I

    return v0
.end method

.method public getBadgeId()I
    .locals 1

    .line 87
    iget v0, p0, Lcom/callapp/contacts/activity/callappplus/CallAppPlusData;->m:I

    return v0
.end method

.method public getPhone()Lcom/callapp/framework/phone/Phone;
    .locals 2

    .line 47
    iget-object v0, p0, Lcom/callapp/contacts/activity/callappplus/CallAppPlusData;->a:Lcom/callapp/contacts/model/objectbox/ExtractedInfo;

    if-nez v0, :cond_0

    sget-object v0, Lcom/callapp/framework/phone/Phone;->b:Lcom/callapp/framework/phone/Phone;

    return-object v0

    :cond_0
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/activity/callappplus/CallAppPlusData;->a:Lcom/callapp/contacts/model/objectbox/ExtractedInfo;

    iget-object v1, v1, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;->phoneAsRaw:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/phone/PhoneManager;->a(Ljava/lang/String;)Lcom/callapp/framework/phone/Phone;

    move-result-object v0

    return-object v0
.end method

.method public getViewType()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 119
    invoke-super {p0}, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 120
    iget-object v1, p0, Lcom/callapp/contacts/activity/callappplus/CallAppPlusData;->a:Lcom/callapp/contacts/model/objectbox/ExtractedInfo;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 121
    iget-object v1, p0, Lcom/callapp/contacts/activity/callappplus/CallAppPlusData;->i:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 122
    iget v1, p0, Lcom/callapp/contacts/activity/callappplus/CallAppPlusData;->j:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 123
    iget v1, p0, Lcom/callapp/contacts/activity/callappplus/CallAppPlusData;->m:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 124
    iget-object v1, p0, Lcom/callapp/contacts/activity/callappplus/CallAppPlusData;->k:Ljava/lang/String;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 125
    iget-object v1, p0, Lcom/callapp/contacts/activity/callappplus/CallAppPlusData;->l:Ljava/lang/String;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 126
    iget-object v1, p0, Lcom/callapp/contacts/activity/callappplus/CallAppPlusData;->b:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 127
    iget-boolean v1, p0, Lcom/callapp/contacts/activity/callappplus/CallAppPlusData;->n:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 128
    iget-object v1, p0, Lcom/callapp/contacts/activity/callappplus/CallAppPlusData;->o:Ljava/lang/String;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    :cond_4
    add-int/2addr v0, v2

    return v0
.end method

.method public includeContactIdInHashcodeAndEquals()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setBadge(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/callapp/contacts/activity/callappplus/CallAppPlusData;->i:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setBadgeColor(I)V
    .locals 0

    .line 75
    iput p1, p0, Lcom/callapp/contacts/activity/callappplus/CallAppPlusData;->j:I

    return-void
.end method

.method public setBadgeId(I)V
    .locals 0

    .line 91
    iput p1, p0, Lcom/callapp/contacts/activity/callappplus/CallAppPlusData;->m:I

    return-void
.end method

.method public setStarred(Z)V
    .locals 1

    .line 158
    iput-boolean p1, p0, Lcom/callapp/contacts/activity/callappplus/CallAppPlusData;->c:Z

    .line 159
    iget-object v0, p0, Lcom/callapp/contacts/activity/callappplus/CallAppPlusData;->a:Lcom/callapp/contacts/model/objectbox/ExtractedInfo;

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;->setStarred(Z)V

    return-void
.end method
