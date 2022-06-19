.class public Lcom/callapp/contacts/activity/contact/details/presenter/bottombar/BottomBarScrollListener;
.super Landroidx/recyclerview/widget/RecyclerView$m;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/activity/contact/details/presenter/bottombar/BottomBarScrollListener$Listener;
    }
.end annotation


# instance fields
.field private a:Z

.field private b:I

.field private c:Lcom/callapp/contacts/activity/contact/details/presenter/bottombar/BottomBarScrollListener$Listener;


# direct methods
.method public constructor <init>(Lcom/callapp/contacts/activity/contact/details/presenter/bottombar/BottomBarScrollListener$Listener;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$m;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/bottombar/BottomBarScrollListener;->c:Lcom/callapp/contacts/activity/contact/details/presenter/bottombar/BottomBarScrollListener$Listener;

    return-void
.end method


# virtual methods
.method public final a(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 0

    .line 22
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$m;->a(Landroidx/recyclerview/widget/RecyclerView;I)V

    const/4 p1, 0x1

    if-eq p2, p1, :cond_0

    goto :goto_0

    .line 25
    :cond_0
    iput-boolean p1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/bottombar/BottomBarScrollListener;->a:Z

    :goto_0
    return-void
.end method

.method public final a(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 2

    .line 32
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$m;->a(Landroidx/recyclerview/widget/RecyclerView;II)V

    if-eqz p3, :cond_5

    .line 34
    iget-boolean p1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/bottombar/BottomBarScrollListener;->a:Z

    const/4 p2, 0x1

    const/4 v0, 0x0

    if-nez p1, :cond_2

    iget p1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/bottombar/BottomBarScrollListener;->b:I

    if-ltz p3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-gez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    xor-int/2addr p1, v1

    if-nez p1, :cond_4

    .line 36
    :cond_2
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/bottombar/BottomBarScrollListener;->c:Lcom/callapp/contacts/activity/contact/details/presenter/bottombar/BottomBarScrollListener$Listener;

    if-gez p3, :cond_3

    const/4 v1, 0x1

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    :goto_2
    invoke-interface {p1, v1, p2}, Lcom/callapp/contacts/activity/contact/details/presenter/bottombar/BottomBarScrollListener$Listener;->animateBottomActionBar(ZZ)V

    .line 38
    :cond_4
    iput-boolean v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/bottombar/BottomBarScrollListener;->a:Z

    .line 39
    iput p3, p0, Lcom/callapp/contacts/activity/contact/details/presenter/bottombar/BottomBarScrollListener;->b:I

    :cond_5
    return-void
.end method
