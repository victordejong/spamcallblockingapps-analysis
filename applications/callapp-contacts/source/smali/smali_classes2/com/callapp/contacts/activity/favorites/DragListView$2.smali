.class Lcom/callapp/contacts/activity/favorites/DragListView$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView$DragItemCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/favorites/DragListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/favorites/DragListView;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/favorites/DragListView;)V
    .locals 0

    .line 165
    iput-object p1, p0, Lcom/callapp/contacts/activity/favorites/DragListView$2;->a:Lcom/callapp/contacts/activity/favorites/DragListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)Z
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/callapp/contacts/activity/favorites/DragListView$2;->a:Lcom/callapp/contacts/activity/favorites/DragListView;

    invoke-static {v0}, Lcom/callapp/contacts/activity/favorites/DragListView;->b(Lcom/callapp/contacts/activity/favorites/DragListView;)Lcom/callapp/contacts/activity/favorites/DragListView$DragListCallback;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/callapp/contacts/activity/favorites/DragListView$2;->a:Lcom/callapp/contacts/activity/favorites/DragListView;

    invoke-static {v0}, Lcom/callapp/contacts/activity/favorites/DragListView;->b(Lcom/callapp/contacts/activity/favorites/DragListView;)Lcom/callapp/contacts/activity/favorites/DragListView$DragListCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/callapp/contacts/activity/favorites/DragListView$DragListCallback;->a(I)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final b(I)Z
    .locals 1

    .line 173
    iget-object v0, p0, Lcom/callapp/contacts/activity/favorites/DragListView$2;->a:Lcom/callapp/contacts/activity/favorites/DragListView;

    invoke-static {v0}, Lcom/callapp/contacts/activity/favorites/DragListView;->b(Lcom/callapp/contacts/activity/favorites/DragListView;)Lcom/callapp/contacts/activity/favorites/DragListView$DragListCallback;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/callapp/contacts/activity/favorites/DragListView$2;->a:Lcom/callapp/contacts/activity/favorites/DragListView;

    invoke-static {v0}, Lcom/callapp/contacts/activity/favorites/DragListView;->b(Lcom/callapp/contacts/activity/favorites/DragListView;)Lcom/callapp/contacts/activity/favorites/DragListView$DragListCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/callapp/contacts/activity/favorites/DragListView$DragListCallback;->b(I)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method
