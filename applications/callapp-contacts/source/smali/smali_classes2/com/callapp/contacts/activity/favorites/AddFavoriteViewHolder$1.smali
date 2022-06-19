.class Lcom/callapp/contacts/activity/favorites/AddFavoriteViewHolder$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/favorites/AddFavoriteViewHolder;-><init>(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/favorites/AddFavoriteViewHolder;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/favorites/AddFavoriteViewHolder;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/callapp/contacts/activity/favorites/AddFavoriteViewHolder$1;->a:Lcom/callapp/contacts/activity/favorites/AddFavoriteViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 56
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/callapp/contacts/manager/contacts/ContactUtils;->a(Landroid/content/Context;)V

    return-void
.end method
