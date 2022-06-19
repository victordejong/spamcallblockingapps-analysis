.class public Lcom/callapp/contacts/activity/contact/details/overlay/MultipleSmsOverlayAdapter;
.super Landroidx/viewpager/widget/a;
.source "SourceFile"


# instance fields
.field private a:Lcom/callapp/contacts/activity/contact/details/overlay/SingleSmsItemView$OnSinglePageEventListener;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/callapp/contacts/model/objectbox/SingleSmsData;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/callapp/contacts/activity/contact/details/overlay/SingleSmsItemView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/callapp/contacts/activity/contact/details/overlay/SingleSmsItemView$OnSinglePageEventListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/model/objectbox/SingleSmsData;",
            ">;",
            "Lcom/callapp/contacts/activity/contact/details/overlay/SingleSmsItemView$OnSinglePageEventListener;",
            ")V"
        }
    .end annotation

    .line 21
    invoke-direct {p0}, Landroidx/viewpager/widget/a;-><init>()V

    .line 18
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/details/overlay/MultipleSmsOverlayAdapter;->c:Ljava/util/Map;

    .line 22
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/overlay/MultipleSmsOverlayAdapter;->b:Ljava/util/List;

    .line 23
    iput-object p2, p0, Lcom/callapp/contacts/activity/contact/details/overlay/MultipleSmsOverlayAdapter;->a:Lcom/callapp/contacts/activity/contact/details/overlay/SingleSmsItemView$OnSinglePageEventListener;

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 3

    .line 50
    new-instance v0, Lcom/callapp/contacts/activity/contact/details/overlay/SingleSmsItemView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/callapp/contacts/activity/contact/details/overlay/SingleSmsItemView;-><init>(Landroid/content/Context;)V

    .line 51
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/overlay/MultipleSmsOverlayAdapter;->a:Lcom/callapp/contacts/activity/contact/details/overlay/SingleSmsItemView$OnSinglePageEventListener;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/activity/contact/details/overlay/SingleSmsItemView;->setOnSinglePageEventListener(Lcom/callapp/contacts/activity/contact/details/overlay/SingleSmsItemView$OnSinglePageEventListener;)V

    .line 53
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/overlay/MultipleSmsOverlayAdapter;->b:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/callapp/contacts/model/objectbox/SingleSmsData;

    .line 54
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/details/overlay/MultipleSmsOverlayAdapter;->getCount()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/activity/contact/details/overlay/SingleSmsItemView;->a(Lcom/callapp/contacts/model/objectbox/SingleSmsData;I)V

    .line 55
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/overlay/MultipleSmsOverlayAdapter;->c:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method public final a(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/overlay/MultipleSmsOverlayAdapter;->c:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    check-cast p3, Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public final a(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 0

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getCount()I
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/overlay/MultipleSmsOverlayAdapter;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getItemPosition$5d527804()I
    .locals 1

    const/4 v0, -0x2

    return v0
.end method

.method public getViewByPosition(I)Lcom/callapp/contacts/activity/contact/details/overlay/SingleSmsItemView;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/overlay/MultipleSmsOverlayAdapter;->c:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/callapp/contacts/activity/contact/details/overlay/SingleSmsItemView;

    return-object p1
.end method
