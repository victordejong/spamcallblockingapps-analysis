.class Lcom/unknownphone/callblocker/tutorial_other/OtherTutorialActivity$a;
.super Landroidx/fragment/app/m;
.source "OtherTutorialActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unknownphone/callblocker/tutorial_other/OtherTutorialActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/unknownphone/callblocker/tutorial_other/OtherTutorialActivity;

.field private b:Landroidx/viewpager/widget/ViewPager;


# direct methods
.method constructor <init>(Lcom/unknownphone/callblocker/tutorial_other/OtherTutorialActivity;Landroidx/fragment/app/i;Landroidx/viewpager/widget/ViewPager;)V
    .locals 1

    .prologue
    .line 33
    iput-object p1, p0, Lcom/unknownphone/callblocker/tutorial_other/OtherTutorialActivity$a;->a:Lcom/unknownphone/callblocker/tutorial_other/OtherTutorialActivity;

    .line 34
    const/4 v0, 0x1

    invoke-direct {p0, p2, v0}, Landroidx/fragment/app/m;-><init>(Landroidx/fragment/app/i;I)V

    .line 35
    iput-object p3, p0, Lcom/unknownphone/callblocker/tutorial_other/OtherTutorialActivity$a;->b:Landroidx/viewpager/widget/ViewPager;

    .line 36
    return-void
.end method


# virtual methods
.method public a(I)Landroidx/fragment/app/Fragment;
    .locals 1

    .prologue
    .line 41
    packed-switch p1, :pswitch_data_0

    .line 52
    iget-object v0, p0, Lcom/unknownphone/callblocker/tutorial_other/OtherTutorialActivity$a;->b:Landroidx/viewpager/widget/ViewPager;

    invoke-static {v0}, Lcom/unknownphone/callblocker/tutorial_other/a;->a(Landroidx/viewpager/widget/ViewPager;)Lcom/unknownphone/callblocker/tutorial_other/a;

    move-result-object v0

    :goto_0
    return-object v0

    .line 43
    :pswitch_0
    iget-object v0, p0, Lcom/unknownphone/callblocker/tutorial_other/OtherTutorialActivity$a;->b:Landroidx/viewpager/widget/ViewPager;

    invoke-static {v0}, Lcom/unknownphone/callblocker/tutorial_other/b;->a(Landroidx/viewpager/widget/ViewPager;)Lcom/unknownphone/callblocker/tutorial_other/b;

    move-result-object v0

    goto :goto_0

    .line 45
    :pswitch_1
    iget-object v0, p0, Lcom/unknownphone/callblocker/tutorial_other/OtherTutorialActivity$a;->b:Landroidx/viewpager/widget/ViewPager;

    invoke-static {v0}, Lcom/unknownphone/callblocker/tutorial_other/c;->a(Landroidx/viewpager/widget/ViewPager;)Lcom/unknownphone/callblocker/tutorial_other/c;

    move-result-object v0

    goto :goto_0

    .line 47
    :pswitch_2
    iget-object v0, p0, Lcom/unknownphone/callblocker/tutorial_other/OtherTutorialActivity$a;->b:Landroidx/viewpager/widget/ViewPager;

    invoke-static {v0}, Lcom/unknownphone/callblocker/tutorial_other/d;->a(Landroidx/viewpager/widget/ViewPager;)Lcom/unknownphone/callblocker/tutorial_other/d;

    move-result-object v0

    goto :goto_0

    .line 49
    :pswitch_3
    invoke-static {}, Lcom/unknownphone/callblocker/tutorial_other/e;->a()Lcom/unknownphone/callblocker/tutorial_other/e;

    move-result-object v0

    goto :goto_0

    .line 41
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public b()I
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x5

    return v0
.end method
