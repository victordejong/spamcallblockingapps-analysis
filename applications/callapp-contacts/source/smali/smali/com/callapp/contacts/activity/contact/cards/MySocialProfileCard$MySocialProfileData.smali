.class public Lcom/callapp/contacts/activity/contact/cards/MySocialProfileCard$MySocialProfileData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/contact/cards/MySocialProfileCard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MySocialProfileData"
.end annotation


# instance fields
.field private final a:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/callapp/contacts/model/contact/DataSource;",
            ">;"
        }
    .end annotation
.end field

.field private final b:I

.field private final c:I

.field private d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalIconGalleryItemData;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/callapp/contacts/model/contact/DataSource;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 198
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/MySocialProfileCard$MySocialProfileData;->a:Landroid/util/SparseArray;

    .line 205
    iput p1, p0, Lcom/callapp/contacts/activity/contact/cards/MySocialProfileCard$MySocialProfileData;->c:I

    const p1, 0x7f0802b9

    .line 206
    iput p1, p0, Lcom/callapp/contacts/activity/contact/cards/MySocialProfileCard$MySocialProfileData;->b:I

    return-void
.end method

.method private b(Landroid/content/Context;Lcom/callapp/contacts/model/contact/ContactData;Z)Ljava/util/ArrayList;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/callapp/contacts/model/contact/ContactData;",
            "Z)",
            "Ljava/util/ArrayList<",
            "Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalIconGalleryItemData;",
            ">;"
        }
    .end annotation

    .line 222
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/MySocialProfileCard$MySocialProfileData;->a:Landroid/util/SparseArray;

    monitor-enter v0

    .line 223
    :try_start_0
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/cards/MySocialProfileCard$MySocialProfileData;->a:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 224
    new-instance v1, Ljava/util/ArrayList;

    sget-object v2, Lcom/callapp/contacts/model/contact/DataSource;->ACTIVE_SOCIAL_DATA_SOURCES_LIST:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 225
    new-instance v2, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalIconGalleryItemData$Builder;

    invoke-direct {v2}, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalIconGalleryItemData$Builder;-><init>()V

    const v4, 0x7f0802c2

    .line 1064
    iput v4, v2, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalIconGalleryItemData$Builder;->a:I

    .line 227
    invoke-virtual {v2}, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalIconGalleryItemData$Builder;->a()Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalIconGalleryItemData;

    move-result-object v2

    .line 229
    iget-object v4, p0, Lcom/callapp/contacts/activity/contact/cards/MySocialProfileCard$MySocialProfileData;->a:Landroid/util/SparseArray;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    sget-object v6, Lcom/callapp/contacts/model/contact/DataSource;->userMedia:Lcom/callapp/contacts/model/contact/DataSource;

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 230
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 232
    sget-object v2, Lcom/callapp/contacts/model/contact/DataSource;->MY_SOCIAL_PROFILE_CARD_SOURCE:Ljava/util/EnumSet;

    invoke-virtual {v2}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/callapp/contacts/model/contact/DataSource;

    .line 1244
    iget v5, v4, Lcom/callapp/contacts/model/contact/DataSource;->dbCode:I

    invoke-static {v5}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;->getSocialBadgeBgColor(I)I

    move-result v5

    .line 1247
    invoke-static {v4}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;->b(Lcom/callapp/contacts/model/contact/DataSource;)Z

    move-result v6

    const v7, 0x7f060244

    if-eqz v6, :cond_3

    .line 1249
    iget v6, v4, Lcom/callapp/contacts/model/contact/DataSource;->dbCode:I

    invoke-static {p2, v6, v3}, Lcom/callapp/contacts/model/contact/ContactDataUtils;->getContactPhotoUrlOnSocial(Lcom/callapp/contacts/model/contact/ContactData;IZ)Ljava/lang/String;

    move-result-object v6

    .line 1250
    invoke-static {v6}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    if-eqz p3, :cond_1

    const/4 v5, 0x0

    goto :goto_1

    .line 1255
    :cond_1
    new-instance v8, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalIconGalleryItemData$Builder;

    invoke-direct {v8}, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalIconGalleryItemData$Builder;-><init>()V

    iget v9, p0, Lcom/callapp/contacts/activity/contact/cards/MySocialProfileCard$MySocialProfileData;->c:I

    .line 2074
    invoke-static {v6}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 2075
    iput-object v6, v8, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalIconGalleryItemData$Builder;->d:Ljava/lang/String;

    .line 2077
    :cond_2
    iput v9, v8, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalIconGalleryItemData$Builder;->a:I

    .line 1257
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 2083
    iput-object v6, v8, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalIconGalleryItemData$Builder;->e:Ljava/lang/Integer;

    .line 1257
    iget v6, v4, Lcom/callapp/contacts/model/contact/DataSource;->dbCode:I

    .line 1258
    invoke-static {v6}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;->getSocialBadgeResId(I)I

    move-result v6

    .line 2104
    iput v6, v8, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalIconGalleryItemData$Builder;->g:I

    .line 1259
    invoke-static {p1, v7}, Lcom/callapp/contacts/util/ThemeUtils;->a(Landroid/content/Context;I)I

    move-result v6

    .line 3069
    iput v6, v8, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalIconGalleryItemData$Builder;->c:I

    .line 3114
    iput v5, v8, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalIconGalleryItemData$Builder;->i:I

    .line 1260
    sget-object v5, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    .line 3119
    iput-object v5, v8, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalIconGalleryItemData$Builder;->j:Landroid/widget/ImageView$ScaleType;

    .line 1261
    iget-object v5, p0, Lcom/callapp/contacts/activity/contact/cards/MySocialProfileCard$MySocialProfileData;->e:Lcom/callapp/contacts/model/contact/DataSource;

    .line 1262
    invoke-virtual {v4, v5}, Lcom/callapp/contacts/model/contact/DataSource;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 3124
    iput-boolean v5, v8, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalIconGalleryItemData$Builder;->k:Z

    .line 1263
    invoke-virtual {v8}, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalIconGalleryItemData$Builder;->a()Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalIconGalleryItemData;

    move-result-object v5

    goto :goto_1

    .line 1266
    :cond_3
    new-instance v6, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalIconGalleryItemData$Builder;

    invoke-direct {v6}, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalIconGalleryItemData$Builder;-><init>()V

    iget v8, p0, Lcom/callapp/contacts/activity/contact/cards/MySocialProfileCard$MySocialProfileData;->b:I

    .line 4064
    iput v8, v6, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalIconGalleryItemData$Builder;->a:I

    .line 1268
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v8

    invoke-virtual {v8}, Lcom/callapp/contacts/CallAppApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0700ca

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v8

    int-to-float v8, v8

    .line 5059
    iput v8, v6, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalIconGalleryItemData$Builder;->b:F

    const v8, 0x7f0600f2

    .line 1269
    invoke-static {p1, v8}, Lcom/callapp/contacts/util/ThemeUtils;->a(Landroid/content/Context;I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 5083
    iput-object v8, v6, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalIconGalleryItemData$Builder;->e:Ljava/lang/Integer;

    .line 1270
    invoke-static {p1, v7}, Lcom/callapp/contacts/util/ThemeUtils;->a(Landroid/content/Context;I)I

    move-result v7

    .line 6069
    iput v7, v6, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalIconGalleryItemData$Builder;->c:I

    .line 1270
    iget v7, v4, Lcom/callapp/contacts/model/contact/DataSource;->dbCode:I

    .line 1271
    invoke-static {v7}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;->getSocialBadgeResId(I)I

    move-result v7

    .line 6104
    iput v7, v6, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalIconGalleryItemData$Builder;->g:I

    const/4 v7, -0x1

    .line 6109
    iput v7, v6, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalIconGalleryItemData$Builder;->h:I

    .line 6114
    iput v5, v6, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalIconGalleryItemData$Builder;->i:I

    .line 1274
    invoke-virtual {v6}, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalIconGalleryItemData$Builder;->a()Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalIconGalleryItemData;

    move-result-object v5

    :goto_1
    if-eqz v5, :cond_0

    .line 235
    iget-object v6, p0, Lcom/callapp/contacts/activity/contact/cards/MySocialProfileCard$MySocialProfileData;->a:Landroid/util/SparseArray;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, v7, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 236
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 239
    :cond_4
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p1

    .line 240
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/callapp/contacts/model/contact/ContactData;Z)V
    .locals 0

    .line 214
    invoke-direct {p0, p1, p2, p3}, Lcom/callapp/contacts/activity/contact/cards/MySocialProfileCard$MySocialProfileData;->b(Landroid/content/Context;Lcom/callapp/contacts/model/contact/ContactData;Z)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/MySocialProfileCard$MySocialProfileData;->d:Ljava/util/ArrayList;

    return-void
.end method

.method public getData()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalIconGalleryItemData;",
            ">;"
        }
    .end annotation

    .line 218
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/MySocialProfileCard$MySocialProfileData;->d:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getDataSourceAtPosition(I)Lcom/callapp/contacts/model/contact/DataSource;
    .locals 2

    .line 280
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/MySocialProfileCard$MySocialProfileData;->a:Landroid/util/SparseArray;

    monitor-enter v0

    .line 281
    :try_start_0
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/cards/MySocialProfileCard$MySocialProfileData;->a:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/callapp/contacts/model/contact/DataSource;

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 282
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setMarkedDataSource(Lcom/callapp/contacts/model/contact/DataSource;)V
    .locals 0

    .line 210
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/MySocialProfileCard$MySocialProfileData;->e:Lcom/callapp/contacts/model/contact/DataSource;

    return-void
.end method
