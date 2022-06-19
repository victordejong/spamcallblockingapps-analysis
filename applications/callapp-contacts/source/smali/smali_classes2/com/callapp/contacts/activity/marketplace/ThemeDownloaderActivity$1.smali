.class Lcom/callapp/contacts/activity/marketplace/ThemeDownloaderActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment$AddValueAnimatorObjects;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/marketplace/ThemeDownloaderActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/marketplace/ThemeDownloaderActivity;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/marketplace/ThemeDownloaderActivity;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/callapp/contacts/activity/marketplace/ThemeDownloaderActivity$1;->a:Lcom/callapp/contacts/activity/marketplace/ThemeDownloaderActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/util/SparseIntArray;Landroid/util/SparseIntArray;)Ljava/util/List;
    .locals 10
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

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 86
    iget-object v1, p0, Lcom/callapp/contacts/activity/marketplace/ThemeDownloaderActivity$1;->a:Lcom/callapp/contacts/activity/marketplace/ThemeDownloaderActivity;

    invoke-virtual {v1}, Lcom/callapp/contacts/activity/marketplace/ThemeDownloaderActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const v2, 0x7f060089

    .line 87
    invoke-virtual {p1, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v3

    invoke-virtual {p2, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    const/4 v4, 0x0

    .line 86
    invoke-static {v1, v4, v3, v2}, Lcom/callapp/contacts/util/animation/CallappAnimationUtils;->a(Ljava/lang/Object;III)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 88
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    iget-object v1, p0, Lcom/callapp/contacts/activity/marketplace/ThemeDownloaderActivity$1;->a:Lcom/callapp/contacts/activity/marketplace/ThemeDownloaderActivity;

    invoke-virtual {v1}, Lcom/callapp/contacts/activity/marketplace/ThemeDownloaderActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v1

    const v2, 0x7f060088

    invoke-virtual {p1, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v3

    invoke-virtual {p2, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v5

    const/4 v6, 0x1

    invoke-static {v1, v6, v3, v5}, Lcom/callapp/contacts/util/animation/CallappAnimationUtils;->a(Ljava/lang/Object;III)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 91
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    iget-object v1, p0, Lcom/callapp/contacts/activity/marketplace/ThemeDownloaderActivity$1;->a:Lcom/callapp/contacts/activity/marketplace/ThemeDownloaderActivity;

    invoke-virtual {v1}, Lcom/callapp/contacts/activity/marketplace/ThemeDownloaderActivity;->getCardContainer()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v3, 0x2

    const v5, 0x7f0600f3

    .line 96
    invoke-virtual {p1, v5}, Landroid/util/SparseIntArray;->get(I)I

    move-result v6

    invoke-virtual {p2, v5}, Landroid/util/SparseIntArray;->get(I)I

    move-result v5

    .line 95
    invoke-static {v1, v3, v6, v5}, Lcom/callapp/contacts/util/animation/CallappAnimationUtils;->a(Ljava/lang/Object;III)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 97
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    :cond_0
    iget-object v1, p0, Lcom/callapp/contacts/activity/marketplace/ThemeDownloaderActivity$1;->a:Lcom/callapp/contacts/activity/marketplace/ThemeDownloaderActivity;

    invoke-virtual {v1}, Lcom/callapp/contacts/activity/marketplace/ThemeDownloaderActivity;->getProgressCardView()Lcom/callapp/contacts/widget/ProgressCardView;

    move-result-object v1

    if-eqz v1, :cond_6

    const/16 v3, 0xa

    const v5, 0x7f060026

    .line 103
    invoke-virtual {p1, v5}, Landroid/util/SparseIntArray;->get(I)I

    move-result v6

    invoke-virtual {p2, v5}, Landroid/util/SparseIntArray;->get(I)I

    move-result v5

    .line 102
    invoke-static {v1, v3, v6, v5}, Lcom/callapp/contacts/util/animation/CallappAnimationUtils;->a(Ljava/lang/Object;III)Landroid/animation/ValueAnimator;

    move-result-object v3

    .line 104
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    invoke-virtual {v1}, Lcom/callapp/contacts/widget/ProgressCardView;->getTitle()Landroid/widget/TextView;

    move-result-object v3

    const v5, 0x7f0601ec

    const/4 v6, 0x6

    if-eqz v3, :cond_1

    .line 109
    invoke-virtual {p1, v5}, Landroid/util/SparseIntArray;->get(I)I

    move-result v7

    invoke-virtual {p2, v5}, Landroid/util/SparseIntArray;->get(I)I

    move-result v8

    .line 108
    invoke-static {v3, v6, v7, v8}, Lcom/callapp/contacts/util/animation/CallappAnimationUtils;->a(Ljava/lang/Object;III)Landroid/animation/ValueAnimator;

    move-result-object v7

    .line 110
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    :cond_1
    invoke-virtual {v1}, Lcom/callapp/contacts/widget/ProgressCardView;->getDescription()Landroid/widget/TextView;

    move-result-object v7

    if-eqz v3, :cond_2

    .line 116
    invoke-virtual {p1, v5}, Landroid/util/SparseIntArray;->get(I)I

    move-result v8

    invoke-virtual {p2, v5}, Landroid/util/SparseIntArray;->get(I)I

    move-result v5

    .line 115
    invoke-static {v7, v6, v8, v5}, Lcom/callapp/contacts/util/animation/CallappAnimationUtils;->a(Ljava/lang/Object;III)Landroid/animation/ValueAnimator;

    move-result-object v5

    .line 117
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    :cond_2
    invoke-virtual {v1}, Lcom/callapp/contacts/widget/ProgressCardView;->getRightButtonText()Landroid/widget/TextView;

    move-result-object v5

    if-eqz v3, :cond_3

    const/4 v3, -0x1

    .line 122
    invoke-static {v5, v6, v3, v3}, Lcom/callapp/contacts/util/animation/CallappAnimationUtils;->a(Ljava/lang/Object;III)Landroid/animation/ValueAnimator;

    move-result-object v3

    .line 124
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    :cond_3
    invoke-virtual {v1}, Lcom/callapp/contacts/widget/ProgressCardView;->getRightButtonContainerBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 128
    instance-of v5, v3, Landroid/graphics/drawable/GradientDrawable;

    const/16 v7, 0x9

    const/16 v8, 0x8

    if-eqz v5, :cond_4

    .line 129
    check-cast v3, Landroid/graphics/drawable/GradientDrawable;

    .line 131
    invoke-virtual {p1, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v5

    invoke-virtual {p2, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v9

    .line 130
    invoke-static {v3, v8, v5, v9}, Lcom/callapp/contacts/util/animation/CallappAnimationUtils;->a(Ljava/lang/Object;III)Landroid/animation/ValueAnimator;

    move-result-object v5

    .line 132
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 134
    invoke-virtual {p1, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v5

    invoke-virtual {p2, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v9

    .line 133
    invoke-static {v3, v7, v5, v9}, Lcom/callapp/contacts/util/animation/CallappAnimationUtils;->a(Ljava/lang/Object;III)Landroid/animation/ValueAnimator;

    move-result-object v3

    .line 135
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 138
    :cond_4
    invoke-virtual {v1}, Lcom/callapp/contacts/widget/ProgressCardView;->getLeftButtonContainerBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 139
    instance-of v5, v3, Landroid/graphics/drawable/GradientDrawable;

    if-eqz v5, :cond_5

    .line 140
    check-cast v3, Landroid/graphics/drawable/GradientDrawable;

    .line 141
    invoke-static {v3, v8, v4, v4}, Lcom/callapp/contacts/util/animation/CallappAnimationUtils;->a(Ljava/lang/Object;III)Landroid/animation/ValueAnimator;

    move-result-object v4

    .line 143
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 145
    invoke-virtual {p1, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v4

    invoke-virtual {p2, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v5

    .line 144
    invoke-static {v3, v7, v4, v5}, Lcom/callapp/contacts/util/animation/CallappAnimationUtils;->a(Ljava/lang/Object;III)Landroid/animation/ValueAnimator;

    move-result-object v3

    .line 146
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 149
    :cond_5
    invoke-virtual {v1}, Lcom/callapp/contacts/widget/ProgressCardView;->getLeftTextView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 152
    invoke-virtual {p1, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result p1

    invoke-virtual {p2, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result p2

    .line 151
    invoke-static {v1, v6, p1, p2}, Lcom/callapp/contacts/util/animation/CallappAnimationUtils;->a(Ljava/lang/Object;III)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 153
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    return-object v0
.end method
