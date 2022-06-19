.class public abstract Lcom/callapp/contacts/activity/favorites/DragItemAdapter$ViewHolder;
.super Lcom/callapp/contacts/activity/base/BaseContactHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/favorites/DragItemAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ViewHolder"
.end annotation


# instance fields
.field public u:Landroid/view/View;

.field public v:J

.field private w:Lcom/callapp/contacts/activity/favorites/DragItemAdapter$DragStartCallback;


# direct methods
.method public constructor <init>(Landroid/view/View;IZ)V
    .locals 0

    .line 105
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/base/BaseContactHolder;-><init>(Landroid/view/View;)V

    .line 106
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/callapp/contacts/activity/favorites/DragItemAdapter$ViewHolder;->u:Landroid/view/View;

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    .line 110
    new-instance p3, Lcom/callapp/contacts/activity/favorites/DragItemAdapter$ViewHolder$1;

    invoke-direct {p3, p0, p1}, Lcom/callapp/contacts/activity/favorites/DragItemAdapter$ViewHolder$1;-><init>(Lcom/callapp/contacts/activity/favorites/DragItemAdapter$ViewHolder;Landroid/view/View;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/favorites/DragItemAdapter$ViewHolder;)Lcom/callapp/contacts/activity/favorites/DragItemAdapter$DragStartCallback;
    .locals 0

    .line 98
    iget-object p0, p0, Lcom/callapp/contacts/activity/favorites/DragItemAdapter$ViewHolder;->w:Lcom/callapp/contacts/activity/favorites/DragItemAdapter$DragStartCallback;

    return-object p0
.end method


# virtual methods
.method public setDragStartCallback(Lcom/callapp/contacts/activity/favorites/DragItemAdapter$DragStartCallback;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lcom/callapp/contacts/activity/favorites/DragItemAdapter$ViewHolder;->w:Lcom/callapp/contacts/activity/favorites/DragItemAdapter$DragStartCallback;

    return-void
.end method
