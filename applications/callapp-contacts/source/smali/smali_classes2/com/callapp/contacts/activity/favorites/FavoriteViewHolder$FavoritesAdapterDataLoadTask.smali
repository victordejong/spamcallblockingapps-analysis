.class final Lcom/callapp/contacts/activity/favorites/FavoriteViewHolder$FavoritesAdapterDataLoadTask;
.super Lcom/callapp/contacts/activity/base/BaseContactHolder$AdapterDataLoadTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/favorites/FavoriteViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "FavoritesAdapterDataLoadTask"
.end annotation


# instance fields
.field final synthetic d:Lcom/callapp/contacts/activity/favorites/FavoriteViewHolder;


# direct methods
.method private constructor <init>(Lcom/callapp/contacts/activity/favorites/FavoriteViewHolder;)V
    .locals 0

    .line 147
    iput-object p1, p0, Lcom/callapp/contacts/activity/favorites/FavoriteViewHolder$FavoritesAdapterDataLoadTask;->d:Lcom/callapp/contacts/activity/favorites/FavoriteViewHolder;

    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/base/BaseContactHolder$AdapterDataLoadTask;-><init>(Lcom/callapp/contacts/activity/base/BaseContactHolder;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/callapp/contacts/activity/favorites/FavoriteViewHolder;Lcom/callapp/contacts/activity/favorites/FavoriteViewHolder$1;)V
    .locals 0

    .line 147
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/favorites/FavoriteViewHolder$FavoritesAdapterDataLoadTask;-><init>(Lcom/callapp/contacts/activity/favorites/FavoriteViewHolder;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/callapp/contacts/model/contact/ContactData;)Ljava/lang/String;
    .locals 0

    .line 155
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getPhotoUrl()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/callapp/contacts/loader/api/ContactLoader;)V
    .locals 0

    .line 150
    invoke-virtual {p1}, Lcom/callapp/contacts/loader/api/ContactLoader;->addDeviceIdAndPhotoLoaders()Lcom/callapp/contacts/loader/api/ContactLoader;

    return-void
.end method
