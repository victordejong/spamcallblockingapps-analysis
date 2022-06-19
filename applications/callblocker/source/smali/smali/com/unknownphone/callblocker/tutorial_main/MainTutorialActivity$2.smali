.class Lcom/unknownphone/callblocker/tutorial_main/MainTutorialActivity$2;
.super Ljava/lang/Object;
.source "MainTutorialActivity.java"

# interfaces
.implements Lcom/unknownphone/callblocker/custom/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unknownphone/callblocker/tutorial_main/MainTutorialActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/unknownphone/callblocker/tutorial_main/MainTutorialActivity;


# direct methods
.method constructor <init>(Lcom/unknownphone/callblocker/tutorial_main/MainTutorialActivity;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/unknownphone/callblocker/tutorial_main/MainTutorialActivity$2;->a:Lcom/unknownphone/callblocker/tutorial_main/MainTutorialActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 61
    iget-object v0, p0, Lcom/unknownphone/callblocker/tutorial_main/MainTutorialActivity$2;->a:Lcom/unknownphone/callblocker/tutorial_main/MainTutorialActivity;

    invoke-static {v0}, Lcom/unknownphone/callblocker/tutorial_main/MainTutorialActivity;->e(Lcom/unknownphone/callblocker/tutorial_main/MainTutorialActivity;)Z

    move-result v0

    .line 62
    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/unknownphone/callblocker/tutorial_main/MainTutorialActivity$2;->a:Lcom/unknownphone/callblocker/tutorial_main/MainTutorialActivity;

    iget-object v1, p0, Lcom/unknownphone/callblocker/tutorial_main/MainTutorialActivity$2;->a:Lcom/unknownphone/callblocker/tutorial_main/MainTutorialActivity;

    invoke-static {v1}, Lcom/unknownphone/callblocker/tutorial_main/MainTutorialActivity;->f(Lcom/unknownphone/callblocker/tutorial_main/MainTutorialActivity;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unknownphone/callblocker/tutorial_main/MainTutorialActivity;->a(Lcom/unknownphone/callblocker/tutorial_main/MainTutorialActivity;Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/unknownphone/callblocker/tutorial_main/MainTutorialActivity$2;->a:Lcom/unknownphone/callblocker/tutorial_main/MainTutorialActivity;

    invoke-static {v0}, Lcom/unknownphone/callblocker/tutorial_main/MainTutorialActivity;->c(Lcom/unknownphone/callblocker/tutorial_main/MainTutorialActivity;)Landroidx/viewpager/widget/ViewPager;

    move-result-object v0

    const/4 v1, 0x4

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroidx/viewpager/widget/ViewPager;->a(IZ)V

    .line 65
    :goto_0
    return-void

    .line 64
    :cond_1
    iget-object v0, p0, Lcom/unknownphone/callblocker/tutorial_main/MainTutorialActivity$2;->a:Lcom/unknownphone/callblocker/tutorial_main/MainTutorialActivity;

    invoke-static {v0}, Lcom/unknownphone/callblocker/tutorial_main/MainTutorialActivity;->d(Lcom/unknownphone/callblocker/tutorial_main/MainTutorialActivity;)V

    goto :goto_0
.end method
