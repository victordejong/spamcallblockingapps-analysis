.class Lcom/callapp/contacts/activity/favorites/DragListView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView$DragItemListener;


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

.field private b:I


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/favorites/DragListView;)V
    .locals 0

    .line 139
    iput-object p1, p0, Lcom/callapp/contacts/activity/favorites/DragListView$1;->a:Lcom/callapp/contacts/activity/favorites/DragListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/callapp/contacts/activity/favorites/DragListView$1;->a:Lcom/callapp/contacts/activity/favorites/DragListView;

    invoke-static {v0}, Lcom/callapp/contacts/activity/favorites/DragListView;->a(Lcom/callapp/contacts/activity/favorites/DragListView;)Lcom/callapp/contacts/activity/favorites/DragListView$DragListListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/callapp/contacts/activity/favorites/DragListView$1;->a:Lcom/callapp/contacts/activity/favorites/DragListView;

    invoke-static {v0}, Lcom/callapp/contacts/activity/favorites/DragListView;->a(Lcom/callapp/contacts/activity/favorites/DragListView;)Lcom/callapp/contacts/activity/favorites/DragListView$DragListListener;

    :cond_0
    return-void
.end method

.method public final a(I)V
    .locals 2

    .line 144
    iget-object v0, p0, Lcom/callapp/contacts/activity/favorites/DragListView$1;->a:Lcom/callapp/contacts/activity/favorites/DragListView;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/favorites/DragListView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 145
    iput p1, p0, Lcom/callapp/contacts/activity/favorites/DragListView$1;->b:I

    .line 146
    iget-object p1, p0, Lcom/callapp/contacts/activity/favorites/DragListView$1;->a:Lcom/callapp/contacts/activity/favorites/DragListView;

    invoke-static {p1}, Lcom/callapp/contacts/activity/favorites/DragListView;->a(Lcom/callapp/contacts/activity/favorites/DragListView;)Lcom/callapp/contacts/activity/favorites/DragListView$DragListListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 147
    iget-object p1, p0, Lcom/callapp/contacts/activity/favorites/DragListView$1;->a:Lcom/callapp/contacts/activity/favorites/DragListView;

    invoke-static {p1}, Lcom/callapp/contacts/activity/favorites/DragListView;->a(Lcom/callapp/contacts/activity/favorites/DragListView;)Lcom/callapp/contacts/activity/favorites/DragListView$DragListListener;

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/callapp/contacts/activity/favorites/DragListView$1;->a:Lcom/callapp/contacts/activity/favorites/DragListView;

    invoke-static {v0}, Lcom/callapp/contacts/activity/favorites/DragListView;->a(Lcom/callapp/contacts/activity/favorites/DragListView;)Lcom/callapp/contacts/activity/favorites/DragListView$DragListListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/callapp/contacts/activity/favorites/DragListView$1;->a:Lcom/callapp/contacts/activity/favorites/DragListView;

    invoke-static {v0}, Lcom/callapp/contacts/activity/favorites/DragListView;->a(Lcom/callapp/contacts/activity/favorites/DragListView;)Lcom/callapp/contacts/activity/favorites/DragListView$DragListListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/callapp/contacts/activity/favorites/DragListView$DragListListener;->a()V

    :cond_0
    return-void
.end method
