.class public Lcom/unknownphone/callblocker/tutorial_other/OtherTutorialActivity;
.super Landroidx/appcompat/app/c;
.source "OtherTutorialActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unknownphone/callblocker/tutorial_other/OtherTutorialActivity$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Landroidx/appcompat/app/c;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 20
    invoke-super {p0, p1}, Landroidx/appcompat/app/c;->onCreate(Landroid/os/Bundle;)V

    .line 21
    const v0, 0x7f0c0029

    invoke-virtual {p0, v0}, Lcom/unknownphone/callblocker/tutorial_other/OtherTutorialActivity;->setContentView(I)V

    .line 23
    const v0, 0x7f0901ea

    invoke-virtual {p0, v0}, Lcom/unknownphone/callblocker/tutorial_other/OtherTutorialActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/viewpager/widget/ViewPager;

    .line 24
    const v1, 0x7f0901b1

    invoke-virtual {p0, v1}, Lcom/unknownphone/callblocker/tutorial_other/OtherTutorialActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/tabs/TabLayout;

    .line 25
    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/google/android/material/tabs/TabLayout;->a(Landroidx/viewpager/widget/ViewPager;Z)V

    .line 26
    new-instance v1, Lcom/unknownphone/callblocker/tutorial_other/OtherTutorialActivity$a;

    invoke-virtual {p0}, Lcom/unknownphone/callblocker/tutorial_other/OtherTutorialActivity;->m()Landroidx/fragment/app/i;

    move-result-object v2

    invoke-direct {v1, p0, v2, v0}, Lcom/unknownphone/callblocker/tutorial_other/OtherTutorialActivity$a;-><init>(Lcom/unknownphone/callblocker/tutorial_other/OtherTutorialActivity;Landroidx/fragment/app/i;Landroidx/viewpager/widget/ViewPager;)V

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/a;)V

    .line 27
    return-void
.end method
