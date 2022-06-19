.class public final Lcom/callapp/contacts/widget/referandearn/ReferAndEarnShareOptionsFragment$ShareCallAppViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$v;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/widget/referandearn/ReferAndEarnShareOptionsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ShareCallAppViewHolder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0004\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u000e\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000eR\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/callapp/contacts/widget/referandearn/ReferAndEarnShareOptionsFragment$ShareCallAppViewHolder;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "inflater",
        "Landroid/view/LayoutInflater;",
        "parent",
        "Landroid/view/ViewGroup;",
        "(Lcom/callapp/contacts/widget/referandearn/ReferAndEarnShareOptionsFragment;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V",
        "shareIcon",
        "Landroid/widget/ImageView;",
        "shareTitle",
        "Landroid/widget/TextView;",
        "bind",
        "",
        "shareCallAppAppData",
        "Lcom/callapp/contacts/widget/referandearn/ReferAndEarnShareOptionsFragment$ShareCallAppAppData;",
        "callapp-client_playRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field r:Landroid/widget/ImageView;

.field s:Landroid/widget/TextView;

.field final synthetic t:Lcom/callapp/contacts/widget/referandearn/ReferAndEarnShareOptionsFragment;


# direct methods
.method public constructor <init>(Lcom/callapp/contacts/widget/referandearn/ReferAndEarnShareOptionsFragment;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/LayoutInflater;",
            "Landroid/view/ViewGroup;",
            ")V"
        }
    .end annotation

    const-string v0, "inflater"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parent"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 191
    iput-object p1, p0, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnShareOptionsFragment$ShareCallAppViewHolder;->t:Lcom/callapp/contacts/widget/referandearn/ReferAndEarnShareOptionsFragment;

    const p1, 0x7f0d0268

    const/4 v0, 0x0

    .line 192
    invoke-virtual {p2, p1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$v;-><init>(Landroid/view/View;)V

    .line 193
    iget-object p1, p0, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnShareOptionsFragment$ShareCallAppViewHolder;->itemView:Landroid/view/View;

    const p2, 0x7f0a0807

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p2, "itemView.findViewById(R.id.shareIcon)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnShareOptionsFragment$ShareCallAppViewHolder;->r:Landroid/widget/ImageView;

    .line 194
    iget-object p1, p0, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnShareOptionsFragment$ShareCallAppViewHolder;->itemView:Landroid/view/View;

    const p2, 0x7f0a0809

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p2, "itemView.findViewById(R.id.shareTitle)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnShareOptionsFragment$ShareCallAppViewHolder;->s:Landroid/widget/TextView;

    return-void
.end method
