.class public abstract Lcom/callapp/contacts/activity/base/BaseCallAppViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$v;
.source "SourceFile"


# instance fields
.field protected r:Lcom/callapp/contacts/activity/base/BaseContactHolder$OnDataLoadListener;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$v;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public setBackgroundColor(I)V
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/callapp/contacts/activity/base/BaseCallAppViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method
