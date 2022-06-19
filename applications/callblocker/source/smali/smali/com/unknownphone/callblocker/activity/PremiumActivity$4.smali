.class Lcom/unknownphone/callblocker/activity/PremiumActivity$4;
.super Ljava/lang/Object;
.source "PremiumActivity.java"

# interfaces
.implements Lcom/unknownphone/callblocker/custom/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unknownphone/callblocker/activity/PremiumActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/viewpager/widget/ViewPager;

.field final synthetic b:Lcom/unknownphone/callblocker/activity/PremiumActivity;


# direct methods
.method constructor <init>(Lcom/unknownphone/callblocker/activity/PremiumActivity;Landroidx/viewpager/widget/ViewPager;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lcom/unknownphone/callblocker/activity/PremiumActivity$4;->b:Lcom/unknownphone/callblocker/activity/PremiumActivity;

    iput-object p2, p0, Lcom/unknownphone/callblocker/activity/PremiumActivity$4;->a:Landroidx/viewpager/widget/ViewPager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 107
    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/PremiumActivity$4;->a:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0, v1, v1}, Landroidx/viewpager/widget/ViewPager;->a(IZ)V

    .line 108
    return-void
.end method
