.class Lcom/callapp/contacts/activity/favorites/DragItemAdapter$ViewHolder$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/favorites/DragItemAdapter$ViewHolder;-><init>(Landroid/view/View;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/callapp/contacts/activity/favorites/DragItemAdapter$ViewHolder;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/favorites/DragItemAdapter$ViewHolder;Landroid/view/View;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/callapp/contacts/activity/favorites/DragItemAdapter$ViewHolder$1;->b:Lcom/callapp/contacts/activity/favorites/DragItemAdapter$ViewHolder;

    iput-object p2, p0, Lcom/callapp/contacts/activity/favorites/DragItemAdapter$ViewHolder$1;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 4

    .line 113
    iget-object p1, p0, Lcom/callapp/contacts/activity/favorites/DragItemAdapter$ViewHolder$1;->b:Lcom/callapp/contacts/activity/favorites/DragItemAdapter$ViewHolder;

    invoke-static {p1}, Lcom/callapp/contacts/activity/favorites/DragItemAdapter$ViewHolder;->a(Lcom/callapp/contacts/activity/favorites/DragItemAdapter$ViewHolder;)Lcom/callapp/contacts/activity/favorites/DragItemAdapter$DragStartCallback;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 117
    :cond_0
    iget-object p1, p0, Lcom/callapp/contacts/activity/favorites/DragItemAdapter$ViewHolder$1;->b:Lcom/callapp/contacts/activity/favorites/DragItemAdapter$ViewHolder;

    invoke-static {p1}, Lcom/callapp/contacts/activity/favorites/DragItemAdapter$ViewHolder;->a(Lcom/callapp/contacts/activity/favorites/DragItemAdapter$ViewHolder;)Lcom/callapp/contacts/activity/favorites/DragItemAdapter$DragStartCallback;

    move-result-object p1

    iget-object v1, p0, Lcom/callapp/contacts/activity/favorites/DragItemAdapter$ViewHolder$1;->a:Landroid/view/View;

    iget-object v2, p0, Lcom/callapp/contacts/activity/favorites/DragItemAdapter$ViewHolder$1;->b:Lcom/callapp/contacts/activity/favorites/DragItemAdapter$ViewHolder;

    iget-wide v2, v2, Lcom/callapp/contacts/activity/favorites/DragItemAdapter$ViewHolder;->v:J

    invoke-interface {p1, v1, v2, v3}, Lcom/callapp/contacts/activity/favorites/DragItemAdapter$DragStartCallback;->a(Landroid/view/View;J)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    .line 121
    :cond_1
    iget-object p1, p0, Lcom/callapp/contacts/activity/favorites/DragItemAdapter$ViewHolder$1;->a:Landroid/view/View;

    iget-object v1, p0, Lcom/callapp/contacts/activity/favorites/DragItemAdapter$ViewHolder$1;->b:Lcom/callapp/contacts/activity/favorites/DragItemAdapter$ViewHolder;

    iget-object v1, v1, Lcom/callapp/contacts/activity/favorites/DragItemAdapter$ViewHolder;->u:Landroid/view/View;

    if-ne p1, v1, :cond_2

    :cond_2
    return v0
.end method
