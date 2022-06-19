.class Lcom/unknownphone/callblocker/activity/PermissionActivity$1;
.super Ljava/lang/Object;
.source "PermissionActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unknownphone/callblocker/activity/PermissionActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/RelativeLayout;

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:Lcom/unknownphone/callblocker/activity/PermissionActivity;


# direct methods
.method constructor <init>(Lcom/unknownphone/callblocker/activity/PermissionActivity;Landroid/widget/RelativeLayout;II)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/unknownphone/callblocker/activity/PermissionActivity$1;->d:Lcom/unknownphone/callblocker/activity/PermissionActivity;

    iput-object p2, p0, Lcom/unknownphone/callblocker/activity/PermissionActivity$1;->a:Landroid/widget/RelativeLayout;

    iput p3, p0, Lcom/unknownphone/callblocker/activity/PermissionActivity$1;->b:I

    iput p4, p0, Lcom/unknownphone/callblocker/activity/PermissionActivity$1;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 47
    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/PermissionActivity$1;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v0

    .line 48
    iget-object v1, p0, Lcom/unknownphone/callblocker/activity/PermissionActivity$1;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v1

    .line 49
    int-to-float v0, v0

    iget v2, p0, Lcom/unknownphone/callblocker/activity/PermissionActivity$1;->b:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    .line 50
    int-to-float v1, v1

    iget v2, p0, Lcom/unknownphone/callblocker/activity/PermissionActivity$1;->c:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 51
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 52
    iget-object v1, p0, Lcom/unknownphone/callblocker/activity/PermissionActivity$1;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setScaleX(F)V

    .line 53
    iget-object v1, p0, Lcom/unknownphone/callblocker/activity/PermissionActivity$1;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setScaleY(F)V

    .line 54
    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/PermissionActivity$1;->a:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/unknownphone/callblocker/activity/PermissionActivity$1;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setPivotX(F)V

    .line 55
    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/PermissionActivity$1;->a:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/unknownphone/callblocker/activity/PermissionActivity$1;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setPivotY(F)V

    .line 56
    return-void
.end method
