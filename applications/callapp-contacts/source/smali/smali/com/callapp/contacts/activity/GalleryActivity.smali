.class public Lcom/callapp/contacts/activity/GalleryActivity;
.super Lcom/callapp/contacts/util/BaseTransparentActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/activity/GalleryActivity$CustomPagerAdapter;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/callapp/contacts/util/BaseTransparentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public getLayoutResourceId()I
    .locals 1

    const v0, 0x7f0d0042

    return v0
.end method

.method public getStatusBarColor()I
    .locals 1

    const/high16 v0, -0x1000000

    return v0
.end method

.method public isColoringTheStatusBar()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 41
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/GalleryActivity;->setKeyguardDismissAndScreenWindowFlags()V

    .line 42
    invoke-super {p0, p1}, Lcom/callapp/contacts/util/BaseTransparentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/GalleryActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    const-string v1, "PHOTO_CLICKED_ID"

    .line 46
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "PHOTO_LIST"

    .line 47
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    .line 48
    invoke-static {p1}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 49
    new-instance v1, Lcom/callapp/contacts/activity/GalleryActivity$CustomPagerAdapter;

    invoke-direct {v1, p0, p0, p1}, Lcom/callapp/contacts/activity/GalleryActivity$CustomPagerAdapter;-><init>(Lcom/callapp/contacts/activity/GalleryActivity;Landroid/content/Context;Ljava/util/List;)V

    const p1, 0x7f0a0692

    .line 50
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/GalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/viewpager/widget/ViewPager;

    if-eqz p1, :cond_0

    .line 52
    invoke-virtual {p1, v1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/a;)V

    const/4 v1, 0x1

    .line 53
    invoke-virtual {p1, v0, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    return-void

    .line 58
    :cond_0
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/GalleryActivity;->finish()V

    return-void
.end method
