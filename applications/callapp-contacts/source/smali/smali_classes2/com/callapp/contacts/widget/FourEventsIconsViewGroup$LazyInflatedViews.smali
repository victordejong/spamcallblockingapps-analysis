.class Lcom/callapp/contacts/widget/FourEventsIconsViewGroup$LazyInflatedViews;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/widget/FourEventsIconsViewGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LazyInflatedViews"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/widget/FourEventsIconsViewGroup$LazyInflatedViews$LazyView;
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/widget/FourEventsIconsViewGroup;

.field private b:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/callapp/contacts/widget/FourEventsIconsViewGroup$LazyInflatedViews$LazyView;",
            ">;"
        }
    .end annotation
.end field

.field private c:[I


# direct methods
.method public constructor <init>(Lcom/callapp/contacts/widget/FourEventsIconsViewGroup;)V
    .locals 4

    .line 50
    iput-object p1, p0, Lcom/callapp/contacts/widget/FourEventsIconsViewGroup$LazyInflatedViews;->a:Lcom/callapp/contacts/widget/FourEventsIconsViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x4

    new-array p1, p1, [I

    .line 43
    fill-array-data p1, :array_0

    iput-object p1, p0, Lcom/callapp/contacts/widget/FourEventsIconsViewGroup$LazyInflatedViews;->c:[I

    .line 51
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/callapp/contacts/widget/FourEventsIconsViewGroup$LazyInflatedViews;->b:Landroid/util/SparseArray;

    .line 52
    new-instance p1, Lcom/callapp/contacts/widget/FourEventsIconsViewGroup$LazyInflatedViews$LazyView;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/callapp/contacts/widget/FourEventsIconsViewGroup$LazyInflatedViews$LazyView;-><init>(Lcom/callapp/contacts/widget/FourEventsIconsViewGroup$LazyInflatedViews;Lcom/callapp/contacts/widget/FourEventsIconsViewGroup$1;)V

    .line 53
    iget-object v1, p0, Lcom/callapp/contacts/widget/FourEventsIconsViewGroup$LazyInflatedViews;->b:Landroid/util/SparseArray;

    iget-object v2, p0, Lcom/callapp/contacts/widget/FourEventsIconsViewGroup$LazyInflatedViews;->c:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    invoke-virtual {v1, v2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 54
    new-instance p1, Lcom/callapp/contacts/widget/FourEventsIconsViewGroup$LazyInflatedViews$LazyView;

    invoke-direct {p1, p0, v0}, Lcom/callapp/contacts/widget/FourEventsIconsViewGroup$LazyInflatedViews$LazyView;-><init>(Lcom/callapp/contacts/widget/FourEventsIconsViewGroup$LazyInflatedViews;Lcom/callapp/contacts/widget/FourEventsIconsViewGroup$1;)V

    .line 55
    iget-object v1, p0, Lcom/callapp/contacts/widget/FourEventsIconsViewGroup$LazyInflatedViews;->b:Landroid/util/SparseArray;

    iget-object v2, p0, Lcom/callapp/contacts/widget/FourEventsIconsViewGroup$LazyInflatedViews;->c:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    invoke-virtual {v1, v2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 56
    new-instance p1, Lcom/callapp/contacts/widget/FourEventsIconsViewGroup$LazyInflatedViews$LazyView;

    invoke-direct {p1, p0, v0}, Lcom/callapp/contacts/widget/FourEventsIconsViewGroup$LazyInflatedViews$LazyView;-><init>(Lcom/callapp/contacts/widget/FourEventsIconsViewGroup$LazyInflatedViews;Lcom/callapp/contacts/widget/FourEventsIconsViewGroup$1;)V

    .line 57
    iget-object v1, p0, Lcom/callapp/contacts/widget/FourEventsIconsViewGroup$LazyInflatedViews;->b:Landroid/util/SparseArray;

    iget-object v2, p0, Lcom/callapp/contacts/widget/FourEventsIconsViewGroup$LazyInflatedViews;->c:[I

    const/4 v3, 0x2

    aget v2, v2, v3

    invoke-virtual {v1, v2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 58
    new-instance p1, Lcom/callapp/contacts/widget/FourEventsIconsViewGroup$LazyInflatedViews$LazyView;

    invoke-direct {p1, p0, v0}, Lcom/callapp/contacts/widget/FourEventsIconsViewGroup$LazyInflatedViews$LazyView;-><init>(Lcom/callapp/contacts/widget/FourEventsIconsViewGroup$LazyInflatedViews;Lcom/callapp/contacts/widget/FourEventsIconsViewGroup$1;)V

    .line 59
    iget-object v0, p0, Lcom/callapp/contacts/widget/FourEventsIconsViewGroup$LazyInflatedViews;->b:Landroid/util/SparseArray;

    iget-object v1, p0, Lcom/callapp/contacts/widget/FourEventsIconsViewGroup$LazyInflatedViews;->c:[I

    const/4 v2, 0x3

    aget v1, v1, v2

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void

    :array_0
    .array-data 4
        0x7f0a0091
        0x7f0a0092
        0x7f0a0093
        0x7f0a0094
    .end array-data
.end method

.method static synthetic a(Lcom/callapp/contacts/widget/FourEventsIconsViewGroup$LazyInflatedViews;)[I
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/callapp/contacts/widget/FourEventsIconsViewGroup$LazyInflatedViews;->c:[I

    return-object p0
.end method


# virtual methods
.method public getLazyView(I)Landroid/view/View;
    .locals 2

    .line 63
    iget-object v0, p0, Lcom/callapp/contacts/widget/FourEventsIconsViewGroup$LazyInflatedViews;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/widget/FourEventsIconsViewGroup$LazyInflatedViews$LazyView;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 66
    :cond_0
    iget-object v1, v0, Lcom/callapp/contacts/widget/FourEventsIconsViewGroup$LazyInflatedViews$LazyView;->a:Landroid/view/View;

    if-nez v1, :cond_1

    .line 68
    iget-object v1, p0, Lcom/callapp/contacts/widget/FourEventsIconsViewGroup$LazyInflatedViews;->a:Lcom/callapp/contacts/widget/FourEventsIconsViewGroup;

    invoke-virtual {v1, p1}, Lcom/callapp/contacts/widget/FourEventsIconsViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewStub;

    invoke-virtual {p1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object p1

    iput-object p1, v0, Lcom/callapp/contacts/widget/FourEventsIconsViewGroup$LazyInflatedViews$LazyView;->a:Landroid/view/View;

    .line 69
    iget-object p1, v0, Lcom/callapp/contacts/widget/FourEventsIconsViewGroup$LazyInflatedViews$LazyView;->b:Ljava/lang/Object;

    if-eqz p1, :cond_1

    .line 70
    iget-object p1, v0, Lcom/callapp/contacts/widget/FourEventsIconsViewGroup$LazyInflatedViews$LazyView;->a:Landroid/view/View;

    iget-object v1, v0, Lcom/callapp/contacts/widget/FourEventsIconsViewGroup$LazyInflatedViews$LazyView;->b:Ljava/lang/Object;

    invoke-virtual {p1, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 74
    :cond_1
    iget-object p1, v0, Lcom/callapp/contacts/widget/FourEventsIconsViewGroup$LazyInflatedViews$LazyView;->a:Landroid/view/View;

    return-object p1
.end method

.method public isViewInflated(I)Z
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/callapp/contacts/widget/FourEventsIconsViewGroup$LazyInflatedViews;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/callapp/contacts/widget/FourEventsIconsViewGroup$LazyInflatedViews$LazyView;

    if-eqz p1, :cond_0

    .line 87
    iget-object p1, p1, Lcom/callapp/contacts/widget/FourEventsIconsViewGroup$LazyInflatedViews$LazyView;->a:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public setLazyTag(ILjava/lang/Object;)V
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/callapp/contacts/widget/FourEventsIconsViewGroup$LazyInflatedViews;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/callapp/contacts/widget/FourEventsIconsViewGroup$LazyInflatedViews$LazyView;

    if-nez p1, :cond_0

    return-void

    .line 81
    :cond_0
    iput-object p2, p1, Lcom/callapp/contacts/widget/FourEventsIconsViewGroup$LazyInflatedViews$LazyView;->b:Ljava/lang/Object;

    .line 82
    iget-object v0, p1, Lcom/callapp/contacts/widget/FourEventsIconsViewGroup$LazyInflatedViews$LazyView;->a:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object p1, p1, Lcom/callapp/contacts/widget/FourEventsIconsViewGroup$LazyInflatedViews$LazyView;->a:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method
