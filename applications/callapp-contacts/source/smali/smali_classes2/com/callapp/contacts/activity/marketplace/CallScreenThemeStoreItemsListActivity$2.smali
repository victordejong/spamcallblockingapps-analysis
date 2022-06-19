.class Lcom/callapp/contacts/activity/marketplace/CallScreenThemeStoreItemsListActivity$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/marketplace/CallScreenThemeStoreItemsListActivity;->a(Landroid/view/View;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Landroid/view/animation/ScaleAnimation;

.field final synthetic c:Lcom/callapp/contacts/activity/marketplace/CallScreenThemeStoreItemsListActivity;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/marketplace/CallScreenThemeStoreItemsListActivity;Landroid/view/View;Landroid/view/animation/ScaleAnimation;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeStoreItemsListActivity$2;->c:Lcom/callapp/contacts/activity/marketplace/CallScreenThemeStoreItemsListActivity;

    iput-object p2, p0, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeStoreItemsListActivity$2;->a:Landroid/view/View;

    iput-object p3, p0, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeStoreItemsListActivity$2;->b:Landroid/view/animation/ScaleAnimation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .line 90
    iget-object p1, p0, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeStoreItemsListActivity$2;->a:Landroid/view/View;

    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeStoreItemsListActivity$2;->b:Landroid/view/animation/ScaleAnimation;

    invoke-virtual {p1, v0}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 91
    iget-object p1, p0, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeStoreItemsListActivity$2;->b:Landroid/view/animation/ScaleAnimation;

    invoke-virtual {p1}, Landroid/view/animation/ScaleAnimation;->start()V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
