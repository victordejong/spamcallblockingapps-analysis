.class Lcom/unknownphone/callblocker/tutorial_main/MainTutorialActivity$a;
.super Landroidx/fragment/app/m;
.source "MainTutorialActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unknownphone/callblocker/tutorial_main/MainTutorialActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/unknownphone/callblocker/tutorial_main/MainTutorialActivity;

.field private b:Landroidx/viewpager/widget/ViewPager;


# direct methods
.method constructor <init>(Lcom/unknownphone/callblocker/tutorial_main/MainTutorialActivity;Landroidx/fragment/app/i;Landroidx/viewpager/widget/ViewPager;)V
    .locals 1

    .prologue
    .line 192
    iput-object p1, p0, Lcom/unknownphone/callblocker/tutorial_main/MainTutorialActivity$a;->a:Lcom/unknownphone/callblocker/tutorial_main/MainTutorialActivity;

    .line 193
    const/4 v0, 0x1

    invoke-direct {p0, p2, v0}, Landroidx/fragment/app/m;-><init>(Landroidx/fragment/app/i;I)V

    .line 194
    iput-object p3, p0, Lcom/unknownphone/callblocker/tutorial_main/MainTutorialActivity$a;->b:Landroidx/viewpager/widget/ViewPager;

    .line 195
    return-void
.end method


# virtual methods
.method public a(I)Landroidx/fragment/app/Fragment;
    .locals 2

    .prologue
    .line 200
    packed-switch p1, :pswitch_data_0

    .line 211
    iget-object v0, p0, Lcom/unknownphone/callblocker/tutorial_main/MainTutorialActivity$a;->b:Landroidx/viewpager/widget/ViewPager;

    invoke-static {v0}, Lcom/unknownphone/callblocker/tutorial_main/a;->a(Landroidx/viewpager/widget/ViewPager;)Lcom/unknownphone/callblocker/tutorial_main/a;

    move-result-object v0

    :goto_0
    return-object v0

    .line 202
    :pswitch_0
    iget-object v0, p0, Lcom/unknownphone/callblocker/tutorial_main/MainTutorialActivity$a;->b:Landroidx/viewpager/widget/ViewPager;

    invoke-static {v0}, Lcom/unknownphone/callblocker/tutorial_main/b;->a(Landroidx/viewpager/widget/ViewPager;)Lcom/unknownphone/callblocker/tutorial_main/b;

    move-result-object v0

    goto :goto_0

    .line 204
    :pswitch_1
    iget-object v0, p0, Lcom/unknownphone/callblocker/tutorial_main/MainTutorialActivity$a;->b:Landroidx/viewpager/widget/ViewPager;

    iget-object v1, p0, Lcom/unknownphone/callblocker/tutorial_main/MainTutorialActivity$a;->a:Lcom/unknownphone/callblocker/tutorial_main/MainTutorialActivity;

    invoke-static {v1}, Lcom/unknownphone/callblocker/tutorial_main/MainTutorialActivity;->g(Lcom/unknownphone/callblocker/tutorial_main/MainTutorialActivity;)Lcom/unknownphone/callblocker/custom/a;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unknownphone/callblocker/tutorial_main/c;->a(Landroidx/viewpager/widget/ViewPager;Lcom/unknownphone/callblocker/custom/a;)Lcom/unknownphone/callblocker/tutorial_main/c;

    move-result-object v0

    goto :goto_0

    .line 206
    :pswitch_2
    iget-object v0, p0, Lcom/unknownphone/callblocker/tutorial_main/MainTutorialActivity$a;->b:Landroidx/viewpager/widget/ViewPager;

    iget-object v1, p0, Lcom/unknownphone/callblocker/tutorial_main/MainTutorialActivity$a;->a:Lcom/unknownphone/callblocker/tutorial_main/MainTutorialActivity;

    invoke-static {v1}, Lcom/unknownphone/callblocker/tutorial_main/MainTutorialActivity;->h(Lcom/unknownphone/callblocker/tutorial_main/MainTutorialActivity;)Lcom/unknownphone/callblocker/custom/a;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unknownphone/callblocker/tutorial_main/d;->a(Landroidx/viewpager/widget/ViewPager;Lcom/unknownphone/callblocker/custom/a;)Lcom/unknownphone/callblocker/tutorial_main/d;

    move-result-object v0

    goto :goto_0

    .line 208
    :pswitch_3
    iget-object v0, p0, Lcom/unknownphone/callblocker/tutorial_main/MainTutorialActivity$a;->a:Lcom/unknownphone/callblocker/tutorial_main/MainTutorialActivity;

    invoke-static {v0}, Lcom/unknownphone/callblocker/tutorial_main/MainTutorialActivity;->i(Lcom/unknownphone/callblocker/tutorial_main/MainTutorialActivity;)Lcom/unknownphone/callblocker/custom/a;

    move-result-object v0

    invoke-static {v0}, Lcom/unknownphone/callblocker/tutorial_main/e;->a(Lcom/unknownphone/callblocker/custom/a;)Lcom/unknownphone/callblocker/tutorial_main/e;

    move-result-object v0

    goto :goto_0

    .line 200
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
    .line 217
    const/4 v0, 0x5

    return v0
.end method
