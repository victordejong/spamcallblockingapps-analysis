.class Lcom/callapp/contacts/activity/favorites/FavoriteViewHolder$1;
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
.field final synthetic a:Lcom/callapp/contacts/activity/favorites/FavoriteViewHolder;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/favorites/FavoriteViewHolder;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/callapp/contacts/activity/favorites/FavoriteViewHolder$1;->a:Lcom/callapp/contacts/activity/favorites/FavoriteViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/callapp/contacts/activity/favorites/FavoriteViewHolder$1;->a:Lcom/callapp/contacts/activity/favorites/FavoriteViewHolder;

    invoke-static {v0, p1}, Lcom/callapp/contacts/activity/favorites/FavoriteViewHolder;->a(Lcom/callapp/contacts/activity/favorites/FavoriteViewHolder;Landroid/view/View;)V

    return-void
.end method
