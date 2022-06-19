.class public final Lcom/callapp/contacts/widget/referandearn/ReferAndEarnShareOptionsFragment$ListAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/widget/referandearn/ReferAndEarnShareOptionsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$a<",
        "Lcom/callapp/contacts/widget/referandearn/ReferAndEarnShareOptionsFragment$ShareCallAppViewHolder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0086\u0004\u0018\u00002\u000c\u0012\u0008\u0012\u00060\u0002R\u00020\u00030\u0001B\u0013\u0012\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u00a2\u0006\u0002\u0010\u0007J\u0008\u0010\u0008\u001a\u00020\tH\u0016J\u001c\u0010\n\u001a\u00020\u000b2\n\u0010\u000c\u001a\u00060\u0002R\u00020\u00032\u0006\u0010\r\u001a\u00020\tH\u0016J\u001c\u0010\u000e\u001a\u00060\u0002R\u00020\u00032\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\tH\u0016R\u0014\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/callapp/contacts/widget/referandearn/ReferAndEarnShareOptionsFragment$ListAdapter;",
        "Landroidx/recyclerview/widget/RecyclerView$Adapter;",
        "Lcom/callapp/contacts/widget/referandearn/ReferAndEarnShareOptionsFragment$ShareCallAppViewHolder;",
        "Lcom/callapp/contacts/widget/referandearn/ReferAndEarnShareOptionsFragment;",
        "list",
        "",
        "Lcom/callapp/contacts/widget/referandearn/ReferAndEarnShareOptionsFragment$ShareCallAppAppData;",
        "(Lcom/callapp/contacts/widget/referandearn/ReferAndEarnShareOptionsFragment;Ljava/util/List;)V",
        "getItemCount",
        "",
        "onBindViewHolder",
        "",
        "holder",
        "position",
        "onCreateViewHolder",
        "parent",
        "Landroid/view/ViewGroup;",
        "viewType",
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
.field final synthetic a:Lcom/callapp/contacts/widget/referandearn/ReferAndEarnShareOptionsFragment;

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/callapp/contacts/widget/referandearn/ReferAndEarnShareOptionsFragment$ShareCallAppAppData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/callapp/contacts/widget/referandearn/ReferAndEarnShareOptionsFragment;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/widget/referandearn/ReferAndEarnShareOptionsFragment$ShareCallAppAppData;",
            ">;)V"
        }
    .end annotation

    const-string v0, "list"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 174
    iput-object p1, p0, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnShareOptionsFragment$ListAdapter;->a:Lcom/callapp/contacts/widget/referandearn/ReferAndEarnShareOptionsFragment;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$a;-><init>()V

    iput-object p2, p0, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnShareOptionsFragment$ListAdapter;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final getItemCount()I
    .locals 1

    .line 187
    iget-object v0, p0, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnShareOptionsFragment$ListAdapter;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$v;I)V
    .locals 2

    .line 174
    check-cast p1, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnShareOptionsFragment$ShareCallAppViewHolder;

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1182
    iget-object v0, p0, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnShareOptionsFragment$ListAdapter;->b:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnShareOptionsFragment$ShareCallAppAppData;

    const-string v0, "shareCallAppAppData"

    .line 1183
    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1197
    iget-object v0, p1, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnShareOptionsFragment$ShareCallAppViewHolder;->s:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnShareOptionsFragment$ShareCallAppAppData;->getName()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1198
    iget-object v0, p1, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnShareOptionsFragment$ShareCallAppViewHolder;->s:Landroid/widget/TextView;

    const v1, 0x7f0601ec

    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1199
    invoke-virtual {p2}, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnShareOptionsFragment$ShareCallAppAppData;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1200
    iget-object v1, p1, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnShareOptionsFragment$ShareCallAppViewHolder;->r:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1202
    :cond_0
    invoke-virtual {p2}, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnShareOptionsFragment$ShareCallAppAppData;->getIconRes()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_1

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 1203
    iget-object v1, p1, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnShareOptionsFragment$ShareCallAppViewHolder;->r:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1206
    :cond_1
    iget-object v0, p1, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnShareOptionsFragment$ShareCallAppViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnShareOptionsFragment$ShareCallAppViewHolder$bind$3;

    invoke-direct {v1, p1, p2}, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnShareOptionsFragment$ShareCallAppViewHolder$bind$3;-><init>(Lcom/callapp/contacts/widget/referandearn/ReferAndEarnShareOptionsFragment$ShareCallAppViewHolder;Lcom/callapp/contacts/widget/referandearn/ReferAndEarnShareOptionsFragment$ShareCallAppAppData;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$v;
    .locals 3

    const-string p2, "parent"

    .line 174
    invoke-static {p1, p2}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1177
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    .line 1178
    new-instance v0, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnShareOptionsFragment$ShareCallAppViewHolder;

    iget-object v1, p0, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnShareOptionsFragment$ListAdapter;->a:Lcom/callapp/contacts/widget/referandearn/ReferAndEarnShareOptionsFragment;

    const-string v2, "inflater"

    invoke-static {p2, v2}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1, p2, p1}, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnShareOptionsFragment$ShareCallAppViewHolder;-><init>(Lcom/callapp/contacts/widget/referandearn/ReferAndEarnShareOptionsFragment;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V

    .line 174
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$v;

    return-object v0
.end method
