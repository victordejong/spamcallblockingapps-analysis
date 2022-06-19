.class Lcom/callapp/contacts/activity/marketplace/CallScreenThemeStoreItemsListActivity$3$1;
.super Lcom/callapp/contacts/util/DefaultInterfaceImplUtils$AnimatorListenerImpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/marketplace/CallScreenThemeStoreItemsListActivity$3;->a(Landroidx/recyclerview/widget/RecyclerView;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/marketplace/CallScreenThemeStoreItemsListActivity$3;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/marketplace/CallScreenThemeStoreItemsListActivity$3;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeStoreItemsListActivity$3$1;->a:Lcom/callapp/contacts/activity/marketplace/CallScreenThemeStoreItemsListActivity$3;

    invoke-direct {p0}, Lcom/callapp/contacts/util/DefaultInterfaceImplUtils$AnimatorListenerImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 105
    iget-object p1, p0, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeStoreItemsListActivity$3$1;->a:Lcom/callapp/contacts/activity/marketplace/CallScreenThemeStoreItemsListActivity$3;

    iget-object p1, p1, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeStoreItemsListActivity$3;->a:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    return-void
.end method
