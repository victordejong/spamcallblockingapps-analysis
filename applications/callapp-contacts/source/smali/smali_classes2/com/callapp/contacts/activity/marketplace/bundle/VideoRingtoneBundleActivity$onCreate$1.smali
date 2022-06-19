.class public final Lcom/callapp/contacts/activity/marketplace/bundle/VideoRingtoneBundleActivity$onCreate$1;
.super Lcom/callapp/contacts/widget/SwipeGestureListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/marketplace/bundle/VideoRingtoneBundleActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0014J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0014\u00a8\u0006\u0007"
    }
    d2 = {
        "com/callapp/contacts/activity/marketplace/bundle/VideoRingtoneBundleActivity$onCreate$1",
        "Lcom/callapp/contacts/widget/SwipeGestureListener;",
        "onSwipeLeft",
        "",
        "velocityX",
        "",
        "onSwipeRight",
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
.field final synthetic a:Lcom/callapp/contacts/activity/marketplace/bundle/VideoRingtoneBundleActivity;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/marketplace/bundle/VideoRingtoneBundleActivity;ZLcom/callapp/contacts/widget/SwipeGestureListener$Sensitivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/callapp/contacts/widget/SwipeGestureListener$Sensitivity;",
            ")V"
        }
    .end annotation

    .line 99
    iput-object p1, p0, Lcom/callapp/contacts/activity/marketplace/bundle/VideoRingtoneBundleActivity$onCreate$1;->a:Lcom/callapp/contacts/activity/marketplace/bundle/VideoRingtoneBundleActivity;

    invoke-direct {p0, p2, p3}, Lcom/callapp/contacts/widget/SwipeGestureListener;-><init>(ZLcom/callapp/contacts/widget/SwipeGestureListener$Sensitivity;)V

    return-void
.end method


# virtual methods
.method public final a(F)Z
    .locals 3

    .line 106
    iget-object p1, p0, Lcom/callapp/contacts/activity/marketplace/bundle/VideoRingtoneBundleActivity$onCreate$1;->a:Lcom/callapp/contacts/activity/marketplace/bundle/VideoRingtoneBundleActivity;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/marketplace/bundle/VideoRingtoneBundleActivity;->getVideoRingtoneBundleFragment()Lcom/callapp/contacts/activity/marketplace/bundle/VideoRingtoneBundleFragment;

    move-result-object p1

    .line 2106
    sget v0, Lcom/callapp/contacts/activity/marketplace/bundle/VideoRingtoneBundleFragment;->c:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    .line 2107
    iget-object v2, p1, Lcom/callapp/contacts/activity/marketplace/bundle/VideoRingtoneBundleFragment;->b:Lcom/callapp/contacts/activity/marketplace/bundle/VideoRingtoneBundleAdapter;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/callapp/contacts/activity/marketplace/bundle/VideoRingtoneBundleAdapter;->getItemCount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {v2}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;)V

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 2108
    iget-object p1, p1, Lcom/callapp/contacts/activity/marketplace/bundle/VideoRingtoneBundleFragment;->a:Landroidx/recyclerview/widget/RecyclerView;

    if-nez p1, :cond_1

    const-string v2, "recyclerView"

    invoke-static {v2}, Lkotlin/jvm/internal/p;->a(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->d(I)V

    :cond_2
    return v1
.end method

.method public final b(F)Z
    .locals 2

    .line 101
    iget-object p1, p0, Lcom/callapp/contacts/activity/marketplace/bundle/VideoRingtoneBundleActivity$onCreate$1;->a:Lcom/callapp/contacts/activity/marketplace/bundle/VideoRingtoneBundleActivity;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/marketplace/bundle/VideoRingtoneBundleActivity;->getVideoRingtoneBundleFragment()Lcom/callapp/contacts/activity/marketplace/bundle/VideoRingtoneBundleFragment;

    move-result-object p1

    .line 1112
    sget v0, Lcom/callapp/contacts/activity/marketplace/bundle/VideoRingtoneBundleFragment;->c:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-ltz v0, :cond_1

    .line 1114
    iget-object p1, p1, Lcom/callapp/contacts/activity/marketplace/bundle/VideoRingtoneBundleFragment;->a:Landroidx/recyclerview/widget/RecyclerView;

    if-nez p1, :cond_0

    const-string v0, "recyclerView"

    invoke-static {v0}, Lkotlin/jvm/internal/p;->a(Ljava/lang/String;)V

    :cond_0
    sget v0, Lcom/callapp/contacts/activity/marketplace/bundle/VideoRingtoneBundleFragment;->c:I

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->d(I)V

    :cond_1
    return v1
.end method
