.class final Lcom/callapp/contacts/activity/marketplace/videoRingtone/CarouselAdapter$onBindViewHolder$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/marketplace/videoRingtone/CarouselAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Landroid/view/View;",
        "kotlin.jvm.PlatformType",
        "onClick"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/marketplace/videoRingtone/CarouselAdapter;

.field final synthetic b:I

.field final synthetic c:Lcom/callapp/contacts/widget/ProfilePictureView;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/marketplace/videoRingtone/CarouselAdapter;ILcom/callapp/contacts/widget/ProfilePictureView;)V
    .locals 0

    iput-object p1, p0, Lcom/callapp/contacts/activity/marketplace/videoRingtone/CarouselAdapter$onBindViewHolder$1;->a:Lcom/callapp/contacts/activity/marketplace/videoRingtone/CarouselAdapter;

    iput p2, p0, Lcom/callapp/contacts/activity/marketplace/videoRingtone/CarouselAdapter$onBindViewHolder$1;->b:I

    iput-object p3, p0, Lcom/callapp/contacts/activity/marketplace/videoRingtone/CarouselAdapter$onBindViewHolder$1;->c:Lcom/callapp/contacts/widget/ProfilePictureView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    .line 26
    iget-object p1, p0, Lcom/callapp/contacts/activity/marketplace/videoRingtone/CarouselAdapter$onBindViewHolder$1;->a:Lcom/callapp/contacts/activity/marketplace/videoRingtone/CarouselAdapter;

    invoke-static {p1}, Lcom/callapp/contacts/activity/marketplace/videoRingtone/CarouselAdapter;->a(Lcom/callapp/contacts/activity/marketplace/videoRingtone/CarouselAdapter;)Ljava/util/List;

    move-result-object p1

    iget v0, p0, Lcom/callapp/contacts/activity/marketplace/videoRingtone/CarouselAdapter$onBindViewHolder$1;->b:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemDetailsData;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemDetailsData;->isHighLight()Z

    move-result p1

    if-nez p1, :cond_3

    .line 27
    iget-object p1, p0, Lcom/callapp/contacts/activity/marketplace/videoRingtone/CarouselAdapter$onBindViewHolder$1;->a:Lcom/callapp/contacts/activity/marketplace/videoRingtone/CarouselAdapter;

    iget v0, p0, Lcom/callapp/contacts/activity/marketplace/videoRingtone/CarouselAdapter$onBindViewHolder$1;->b:I

    .line 1035
    iget-object v1, p1, Lcom/callapp/contacts/activity/marketplace/videoRingtone/CarouselAdapter;->a:Ljava/util/List;

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x1

    if-ge v3, v1, :cond_2

    if-ne v0, v3, :cond_0

    .line 1037
    iget-object v5, p1, Lcom/callapp/contacts/activity/marketplace/videoRingtone/CarouselAdapter;->a:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemDetailsData;

    invoke-virtual {v5, v4}, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemDetailsData;->setHighLight(Z)V

    goto :goto_1

    .line 1039
    :cond_0
    iget-object v4, p1, Lcom/callapp/contacts/activity/marketplace/videoRingtone/CarouselAdapter;->a:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemDetailsData;

    invoke-virtual {v4}, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemDetailsData;->isHighLight()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1040
    iget-object v4, p1, Lcom/callapp/contacts/activity/marketplace/videoRingtone/CarouselAdapter;->a:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemDetailsData;

    invoke-virtual {v4, v2}, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemDetailsData;->setHighLight(Z)V

    .line 1041
    invoke-virtual {p1, v3}, Lcom/callapp/contacts/activity/marketplace/videoRingtone/CarouselAdapter;->notifyItemChanged(I)V

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 28
    :cond_2
    iget-object p1, p0, Lcom/callapp/contacts/activity/marketplace/videoRingtone/CarouselAdapter$onBindViewHolder$1;->c:Lcom/callapp/contacts/widget/ProfilePictureView;

    invoke-virtual {p1, v4, v4}, Lcom/callapp/contacts/widget/ProfilePictureView;->a(ZZ)V

    .line 29
    iget-object p1, p0, Lcom/callapp/contacts/activity/marketplace/videoRingtone/CarouselAdapter$onBindViewHolder$1;->a:Lcom/callapp/contacts/activity/marketplace/videoRingtone/CarouselAdapter;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/marketplace/videoRingtone/CarouselAdapter;->getItemClick()Lkotlin/jvm/functions/Function1;

    move-result-object p1

    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/videoRingtone/CarouselAdapter$onBindViewHolder$1;->a:Lcom/callapp/contacts/activity/marketplace/videoRingtone/CarouselAdapter;

    invoke-static {v0}, Lcom/callapp/contacts/activity/marketplace/videoRingtone/CarouselAdapter;->a(Lcom/callapp/contacts/activity/marketplace/videoRingtone/CarouselAdapter;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/callapp/contacts/activity/marketplace/videoRingtone/CarouselAdapter$onBindViewHolder$1;->b:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-void
.end method
