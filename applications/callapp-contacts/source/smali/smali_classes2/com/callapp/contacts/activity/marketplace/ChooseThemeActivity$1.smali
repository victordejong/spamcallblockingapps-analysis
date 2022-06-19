.class Lcom/callapp/contacts/activity/marketplace/ChooseThemeActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment$AddValueAnimatorObjects;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/marketplace/ChooseThemeActivity;->getNewFragment()Landroidx/fragment/app/Fragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/marketplace/ChooseThemeActivity;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/marketplace/ChooseThemeActivity;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/callapp/contacts/activity/marketplace/ChooseThemeActivity$1;->a:Lcom/callapp/contacts/activity/marketplace/ChooseThemeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/util/SparseIntArray;Landroid/util/SparseIntArray;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseIntArray;",
            "Landroid/util/SparseIntArray;",
            ")",
            "Ljava/util/List<",
            "Landroid/animation/ValueAnimator;",
            ">;"
        }
    .end annotation

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 43
    iget-object v1, p0, Lcom/callapp/contacts/activity/marketplace/ChooseThemeActivity$1;->a:Lcom/callapp/contacts/activity/marketplace/ChooseThemeActivity;

    invoke-virtual {v1}, Lcom/callapp/contacts/activity/marketplace/ChooseThemeActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const v2, 0x7f060089

    .line 44
    invoke-virtual {p1, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v3

    invoke-virtual {p2, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    const/4 v4, 0x0

    .line 43
    invoke-static {v1, v4, v3, v2}, Lcom/callapp/contacts/util/animation/CallappAnimationUtils;->a(Ljava/lang/Object;III)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 45
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    iget-object v1, p0, Lcom/callapp/contacts/activity/marketplace/ChooseThemeActivity$1;->a:Lcom/callapp/contacts/activity/marketplace/ChooseThemeActivity;

    invoke-virtual {v1}, Lcom/callapp/contacts/activity/marketplace/ChooseThemeActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v1

    const v2, 0x7f060088

    .line 48
    invoke-virtual {p1, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result p1

    invoke-virtual {p2, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result p2

    const/4 v2, 0x1

    .line 47
    invoke-static {v1, v2, p1, p2}, Lcom/callapp/contacts/util/animation/CallappAnimationUtils;->a(Ljava/lang/Object;III)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 49
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method
