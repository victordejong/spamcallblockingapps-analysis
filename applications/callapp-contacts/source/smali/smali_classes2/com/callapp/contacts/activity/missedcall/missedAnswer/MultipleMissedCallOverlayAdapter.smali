.class public Lcom/callapp/contacts/activity/missedcall/missedAnswer/MultipleMissedCallOverlayAdapter;
.super Landroidx/viewpager/widget/a;
.source "SourceFile"


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/callapp/contacts/model/objectbox/SingleMissedCallData;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/callapp/contacts/activity/missedcall/missedAnswer/SingleMissedCallItemView;",
            ">;"
        }
    .end annotation
.end field

.field private c:I


# direct methods
.method public constructor <init>(Ljava/util/List;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/model/objectbox/SingleMissedCallData;",
            ">;I)V"
        }
    .end annotation

    .line 24
    invoke-direct {p0}, Landroidx/viewpager/widget/a;-><init>()V

    .line 20
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/callapp/contacts/activity/missedcall/missedAnswer/MultipleMissedCallOverlayAdapter;->b:Ljava/util/Map;

    .line 25
    iput-object p1, p0, Lcom/callapp/contacts/activity/missedcall/missedAnswer/MultipleMissedCallOverlayAdapter;->a:Ljava/util/List;

    .line 26
    iput p2, p0, Lcom/callapp/contacts/activity/missedcall/missedAnswer/MultipleMissedCallOverlayAdapter;->c:I

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 7

    .line 52
    new-instance v0, Lcom/callapp/contacts/activity/missedcall/missedAnswer/SingleMissedCallItemView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/callapp/contacts/activity/missedcall/missedAnswer/SingleMissedCallItemView;-><init>(Landroid/content/Context;)V

    .line 53
    iget-object v1, p0, Lcom/callapp/contacts/activity/missedcall/missedAnswer/MultipleMissedCallOverlayAdapter;->a:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/callapp/contacts/model/objectbox/SingleMissedCallData;

    .line 54
    new-instance v2, Ljava/util/Date;

    invoke-virtual {v1}, Lcom/callapp/contacts/model/objectbox/SingleMissedCallData;->getMissedCallTime()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1}, Lcom/callapp/contacts/model/objectbox/SingleMissedCallData;->getMissedCallTime()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/callapp/contacts/util/CallLogUtils;->a(J)I

    move-result v3

    invoke-static {v2, v3}, Lcom/callapp/contacts/util/CallLogUtils;->b(Ljava/util/Date;I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 55
    iget v3, p0, Lcom/callapp/contacts/activity/missedcall/missedAnswer/MultipleMissedCallOverlayAdapter;->c:I

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/callapp/contacts/model/objectbox/SingleMissedCallData;->getNumberOfMissedCalls()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const/4 v5, 0x1

    aput-object v2, v4, v5

    invoke-static {v3, v4}, Lcom/callapp/contacts/util/Activities;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 56
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/missedcall/missedAnswer/MultipleMissedCallOverlayAdapter;->getCount()I

    move-result v3

    const v4, 0x7f0a0649

    .line 1040
    invoke-virtual {v0, v4}, Lcom/callapp/contacts/activity/missedcall/missedAnswer/SingleMissedCallItemView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 1041
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-le v3, v5, :cond_0

    .line 1043
    iget-object v2, v0, Lcom/callapp/contacts/activity/missedcall/missedAnswer/SingleMissedCallItemView;->a:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1044
    iget-object v2, v0, Lcom/callapp/contacts/activity/missedcall/missedAnswer/SingleMissedCallItemView;->a:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/callapp/contacts/model/objectbox/SingleMissedCallData;->getLocation()I

    move-result v1

    add-int/2addr v1, v5

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1046
    :cond_0
    iget-object v1, v0, Lcom/callapp/contacts/activity/missedcall/missedAnswer/SingleMissedCallItemView;->a:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 57
    :goto_0
    iget-object v1, p0, Lcom/callapp/contacts/activity/missedcall/missedAnswer/MultipleMissedCallOverlayAdapter;->b:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method public final a(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/callapp/contacts/activity/missedcall/missedAnswer/MultipleMissedCallOverlayAdapter;->b:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
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

    .line 31
    iget-object v0, p0, Lcom/callapp/contacts/activity/missedcall/missedAnswer/MultipleMissedCallOverlayAdapter;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getItemPosition$5d527804()I
    .locals 1

    const/4 v0, -0x2

    return v0
.end method
