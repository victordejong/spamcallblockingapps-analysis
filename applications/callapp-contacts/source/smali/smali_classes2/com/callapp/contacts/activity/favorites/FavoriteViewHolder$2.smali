.class Lcom/callapp/contacts/activity/favorites/FavoriteViewHolder$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/favorites/FavoriteViewHolder;->a(Lcom/callapp/contacts/activity/favorites/FavoriteMemoryContactItem;Lcom/callapp/contacts/activity/base/ScrollEvents;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/favorites/FavoriteMemoryContactItem;

.field final synthetic b:Lcom/callapp/contacts/activity/favorites/FavoriteViewHolder;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/favorites/FavoriteViewHolder;Lcom/callapp/contacts/activity/favorites/FavoriteMemoryContactItem;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/callapp/contacts/activity/favorites/FavoriteViewHolder$2;->b:Lcom/callapp/contacts/activity/favorites/FavoriteViewHolder;

    iput-object p2, p0, Lcom/callapp/contacts/activity/favorites/FavoriteViewHolder$2;->a:Lcom/callapp/contacts/activity/favorites/FavoriteMemoryContactItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    const/4 v0, 0x1

    .line 91
    invoke-static {p1, v0}, Lcom/callapp/contacts/util/AndroidUtils;->a(Landroid/view/View;I)V

    .line 92
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/callapp/contacts/activity/favorites/FavoriteViewHolder$2;->a:Lcom/callapp/contacts/activity/favorites/FavoriteMemoryContactItem;

    iget-object v1, p0, Lcom/callapp/contacts/activity/favorites/FavoriteViewHolder$2;->b:Lcom/callapp/contacts/activity/favorites/FavoriteViewHolder;

    invoke-virtual {v1}, Lcom/callapp/contacts/activity/favorites/FavoriteViewHolder;->getAdapterPosition()I

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/callapp/contacts/activity/favorites/FavoriteViewHolder;->a(Landroid/content/Context;Lcom/callapp/contacts/activity/favorites/FavoriteMemoryContactItem;I)Z

    return-void
.end method
