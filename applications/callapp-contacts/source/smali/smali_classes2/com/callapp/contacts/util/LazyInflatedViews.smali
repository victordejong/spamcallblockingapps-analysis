.class public Lcom/callapp/contacts/util/LazyInflatedViews;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/util/LazyInflatedViews$LazyView;
    }
.end annotation


# instance fields
.field private a:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/callapp/contacts/util/LazyInflatedViews$LazyView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/callapp/contacts/util/LazyInflatedViews;->a:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;I)Landroid/view/View;
    .locals 2

    .line 29
    iget-object v0, p0, Lcom/callapp/contacts/util/LazyInflatedViews;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/util/LazyInflatedViews$LazyView;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 32
    :cond_0
    iget-object v1, v0, Lcom/callapp/contacts/util/LazyInflatedViews$LazyView;->a:Landroid/view/View;

    if-nez v1, :cond_1

    .line 34
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Lcom/callapp/contacts/util/ViewUtils;->b(Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    iput-object p1, v0, Lcom/callapp/contacts/util/LazyInflatedViews$LazyView;->a:Landroid/view/View;

    .line 35
    iget-object p1, v0, Lcom/callapp/contacts/util/LazyInflatedViews$LazyView;->b:Ljava/lang/Object;

    if-eqz p1, :cond_1

    .line 36
    iget-object p1, v0, Lcom/callapp/contacts/util/LazyInflatedViews$LazyView;->a:Landroid/view/View;

    iget-object p2, v0, Lcom/callapp/contacts/util/LazyInflatedViews$LazyView;->b:Ljava/lang/Object;

    invoke-virtual {p1, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 40
    :cond_1
    iget-object p1, v0, Lcom/callapp/contacts/util/LazyInflatedViews$LazyView;->a:Landroid/view/View;

    return-object p1
.end method

.method public final a(I)V
    .locals 3

    .line 25
    iget-object v0, p0, Lcom/callapp/contacts/util/LazyInflatedViews;->a:Landroid/util/SparseArray;

    new-instance v1, Lcom/callapp/contacts/util/LazyInflatedViews$LazyView;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/callapp/contacts/util/LazyInflatedViews$LazyView;-><init>(Lcom/callapp/contacts/util/LazyInflatedViews;Lcom/callapp/contacts/util/LazyInflatedViews$1;)V

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public isViewInflated(I)Z
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/callapp/contacts/util/LazyInflatedViews;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/callapp/contacts/util/LazyInflatedViews$LazyView;

    if-eqz p1, :cond_0

    .line 53
    iget-object p1, p1, Lcom/callapp/contacts/util/LazyInflatedViews$LazyView;->a:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public setLazyTag(ILjava/lang/Object;)V
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/callapp/contacts/util/LazyInflatedViews;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/callapp/contacts/util/LazyInflatedViews$LazyView;

    if-nez p1, :cond_0

    return-void

    .line 47
    :cond_0
    iput-object p2, p1, Lcom/callapp/contacts/util/LazyInflatedViews$LazyView;->b:Ljava/lang/Object;

    .line 48
    iget-object v0, p1, Lcom/callapp/contacts/util/LazyInflatedViews$LazyView;->a:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object p1, p1, Lcom/callapp/contacts/util/LazyInflatedViews$LazyView;->a:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method
