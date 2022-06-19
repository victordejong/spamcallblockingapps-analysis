.class public final Lcom/callapp/contacts/activity/marketplace/videoRingtone/CarouselAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$a<",
        "Lcom/callapp/contacts/activity/marketplace/videoRingtone/CarouseViewHolder;",
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
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0010 \n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B(\u0012!\u0010\u0003\u001a\u001d\u0012\u0013\u0012\u00110\u0005\u00a2\u0006\u000c\u0008\u0006\u0012\u0008\u0008\u0007\u0012\u0004\u0008\u0008(\u0008\u0012\u0004\u0012\u00020\t0\u0004\u00a2\u0006\u0002\u0010\nJ\u0008\u0010\u000f\u001a\u00020\u0010H\u0016J\u0018\u0010\u0011\u001a\u00020\t2\u0006\u0010\u0012\u001a\u00020\u00022\u0006\u0010\u0013\u001a\u00020\u0010H\u0016J\u0018\u0010\u0014\u001a\u00020\u00022\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u0010H\u0016J\u000e\u0010\u0018\u001a\u00020\t2\u0006\u0010\u0013\u001a\u00020\u0010J%\u0010\u0019\u001a\u00020\t2\u000c\u0010\u001a\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u000e2\n\u0008\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u0010\u00a2\u0006\u0002\u0010\u001cR,\u0010\u0003\u001a\u001d\u0012\u0013\u0012\u00110\u0005\u00a2\u0006\u000c\u0008\u0006\u0012\u0008\u0008\u0007\u0012\u0004\u0008\u0008(\u0008\u0012\u0004\u0012\u00020\t0\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0014\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/callapp/contacts/activity/marketplace/videoRingtone/CarouselAdapter;",
        "Landroidx/recyclerview/widget/RecyclerView$Adapter;",
        "Lcom/callapp/contacts/activity/marketplace/videoRingtone/CarouseViewHolder;",
        "itemClick",
        "Lkotlin/Function1;",
        "Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemDetailsData;",
        "Lkotlin/ParameterName;",
        "name",
        "item",
        "",
        "(Lkotlin/jvm/functions/Function1;)V",
        "getItemClick",
        "()Lkotlin/jvm/functions/Function1;",
        "personalStoreItemDetailsDataList",
        "",
        "getItemCount",
        "",
        "onBindViewHolder",
        "holder",
        "position",
        "onCreateViewHolder",
        "parent",
        "Landroid/view/ViewGroup;",
        "viewType",
        "resetLastHighLight",
        "setItems",
        "newItems",
        "selectedIndex",
        "(Ljava/util/List;Ljava/lang/Integer;)V",
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
.field a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemDetailsData;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemDetailsData;",
            "Lkotlin/v;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemDetailsData;",
            "Lkotlin/v;",
            ">;)V"
        }
    .end annotation

    const-string v0, "itemClick"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$a;-><init>()V

    iput-object p1, p0, Lcom/callapp/contacts/activity/marketplace/videoRingtone/CarouselAdapter;->b:Lkotlin/jvm/functions/Function1;

    .line 16
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lcom/callapp/contacts/activity/marketplace/videoRingtone/CarouselAdapter;->a:Ljava/util/List;

    return-void
.end method

.method public static final synthetic a(Lcom/callapp/contacts/activity/marketplace/videoRingtone/CarouselAdapter;)Ljava/util/List;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/callapp/contacts/activity/marketplace/videoRingtone/CarouselAdapter;->a:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public final a(Ljava/util/List;Ljava/lang/Integer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemDetailsData;",
            ">;",
            "Ljava/lang/Integer;",
            ")V"
        }
    .end annotation

    const-string v0, "newItems"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    iput-object p1, p0, Lcom/callapp/contacts/activity/marketplace/videoRingtone/CarouselAdapter;->a:Ljava/util/List;

    if-eqz p2, :cond_0

    .line 53
    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p1

    .line 54
    iget-object p2, p0, Lcom/callapp/contacts/activity/marketplace/videoRingtone/CarouselAdapter;->a:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemDetailsData;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemDetailsData;->setHighLight(Z)V

    .line 55
    iget-object p2, p0, Lcom/callapp/contacts/activity/marketplace/videoRingtone/CarouselAdapter;->b:Lkotlin/jvm/functions/Function1;

    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/videoRingtone/CarouselAdapter;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p2, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    :cond_0
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/marketplace/videoRingtone/CarouselAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public final getItemClick()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemDetailsData;",
            "Lkotlin/v;",
            ">;"
        }
    .end annotation

    .line 14
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/videoRingtone/CarouselAdapter;->b:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public final getItemCount()I
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/videoRingtone/CarouselAdapter;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$v;I)V
    .locals 5

    .line 14
    check-cast p1, Lcom/callapp/contacts/activity/marketplace/videoRingtone/CarouseViewHolder;

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1023
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/videoRingtone/CarouselAdapter;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemDetailsData;

    const-string v1, "item"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1063
    iget-object v1, p1, Lcom/callapp/contacts/activity/marketplace/videoRingtone/CarouseViewHolder;->r:Landroid/view/View;

    const v2, 0x7f0a06ed

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/callapp/contacts/widget/ProfilePictureView;

    .line 1064
    iget-object v3, p1, Lcom/callapp/contacts/activity/marketplace/videoRingtone/CarouseViewHolder;->r:Landroid/view/View;

    const v4, 0x7f0a0291

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 1065
    invoke-virtual {v0}, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemDetailsData;->getName()Ljava/lang/String;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v4, 0x7f0601ec

    .line 1066
    invoke-static {v4}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1067
    invoke-virtual {v0}, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemDetailsData;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/callapp/framework/util/StringUtils;->r(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Lcom/callapp/contacts/widget/ProfilePictureView;->setText(Ljava/lang/CharSequence;)V

    .line 1068
    new-instance v3, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemDetailsData;->getPhotoUrl()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x1

    .line 1449
    iput-boolean v4, v3, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->j:Z

    .line 2371
    iput-boolean v4, v3, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->l:Z

    .line 1068
    invoke-virtual {v1, v3}, Lcom/callapp/contacts/widget/ProfilePictureView;->a(Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;)Z

    .line 1069
    invoke-virtual {v0}, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemDetailsData;->isHighLight()Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 1070
    invoke-virtual {v1, v4, v3}, Lcom/callapp/contacts/widget/ProfilePictureView;->a(ZZ)V

    goto :goto_0

    .line 1072
    :cond_0
    invoke-virtual {v1, v3, v3}, Lcom/callapp/contacts/widget/ProfilePictureView;->a(ZZ)V

    .line 1024
    :goto_0
    iget-object p1, p1, Lcom/callapp/contacts/activity/marketplace/videoRingtone/CarouseViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/callapp/contacts/widget/ProfilePictureView;

    .line 1025
    new-instance v0, Lcom/callapp/contacts/activity/marketplace/videoRingtone/CarouselAdapter$onBindViewHolder$1;

    invoke-direct {v0, p0, p2, p1}, Lcom/callapp/contacts/activity/marketplace/videoRingtone/CarouselAdapter$onBindViewHolder$1;-><init>(Lcom/callapp/contacts/activity/marketplace/videoRingtone/CarouselAdapter;ILcom/callapp/contacts/widget/ProfilePictureView;)V

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/widget/ProfilePictureView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$v;
    .locals 3

    const-string p2, "parent"

    .line 14
    invoke-static {p1, p2}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1019
    new-instance p2, Lcom/callapp/contacts/activity/marketplace/videoRingtone/CarouseViewHolder;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0090

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string v0, "LayoutInflater.from(pare\u2026usel_item, parent, false)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p1}, Lcom/callapp/contacts/activity/marketplace/videoRingtone/CarouseViewHolder;-><init>(Landroid/view/View;)V

    .line 14
    check-cast p2, Landroidx/recyclerview/widget/RecyclerView$v;

    return-object p2
.end method
