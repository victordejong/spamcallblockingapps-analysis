.class final Lcom/callapp/contacts/api/helper/backup/BackupPlansActivity$drawDiscount$1$$special$$inlined$let$lambda$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/api/helper/backup/BackupPlansActivity$drawDiscount$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002\u00a8\u0006\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "run",
        "com/callapp/contacts/api/helper/backup/BackupPlansActivity$drawDiscount$1$1$1$1",
        "com/callapp/contacts/api/helper/backup/BackupPlansActivity$drawDiscount$1$$special$$inlined$let$lambda$1"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/api/helper/backup/BackupPlansActivity$drawDiscount$1;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/api/helper/backup/BackupPlansActivity$drawDiscount$1;)V
    .locals 0

    iput-object p1, p0, Lcom/callapp/contacts/api/helper/backup/BackupPlansActivity$drawDiscount$1$$special$$inlined$let$lambda$2;->a:Lcom/callapp/contacts/api/helper/backup/BackupPlansActivity$drawDiscount$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 266
    iget-object v0, p0, Lcom/callapp/contacts/api/helper/backup/BackupPlansActivity$drawDiscount$1$$special$$inlined$let$lambda$2;->a:Lcom/callapp/contacts/api/helper/backup/BackupPlansActivity$drawDiscount$1;

    iget-object v0, v0, Lcom/callapp/contacts/api/helper/backup/BackupPlansActivity$drawDiscount$1;->a:Lcom/callapp/contacts/api/helper/backup/BackupPlansActivity;

    invoke-static {v0}, Lcom/callapp/contacts/api/helper/backup/BackupPlansActivity;->h(Lcom/callapp/contacts/api/helper/backup/BackupPlansActivity;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/callapp/contacts/api/helper/backup/BackupPlansActivity$drawDiscount$1$$special$$inlined$let$lambda$2;->a:Lcom/callapp/contacts/api/helper/backup/BackupPlansActivity$drawDiscount$1;

    iget v2, v2, Lcom/callapp/contacts/api/helper/backup/BackupPlansActivity$drawDiscount$1;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0x25

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/ImageUtils;->a(Landroid/graphics/Bitmap;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    const-string v1, "ImageUtils.drawTextToBit\u2026getBitmap, \" $discount%\")"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 267
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 268
    iget-object v2, p0, Lcom/callapp/contacts/api/helper/backup/BackupPlansActivity$drawDiscount$1$$special$$inlined$let$lambda$2;->a:Lcom/callapp/contacts/api/helper/backup/BackupPlansActivity$drawDiscount$1;

    iget-object v2, v2, Lcom/callapp/contacts/api/helper/backup/BackupPlansActivity$drawDiscount$1;->a:Lcom/callapp/contacts/api/helper/backup/BackupPlansActivity;

    invoke-static {v2}, Lcom/callapp/contacts/api/helper/backup/BackupPlansActivity;->i(Lcom/callapp/contacts/api/helper/backup/BackupPlansActivity;)Lcom/callapp/contacts/activity/marketplace/planPage/JsonPlanPageConfig;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lcom/callapp/contacts/activity/marketplace/planPage/JsonPlanPageConfig;->getBadgePosition()Ljava/lang/String;

    move-result-object v2

    const-string v3, "RIGHT"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0xb

    goto :goto_0

    :cond_0
    const/16 v2, 0x9

    .line 269
    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 270
    new-instance v2, Landroid/widget/ImageView;

    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v3

    check-cast v3, Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 271
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 272
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 273
    iget-object v0, p0, Lcom/callapp/contacts/api/helper/backup/BackupPlansActivity$drawDiscount$1$$special$$inlined$let$lambda$2;->a:Lcom/callapp/contacts/api/helper/backup/BackupPlansActivity$drawDiscount$1;

    iget-object v0, v0, Lcom/callapp/contacts/api/helper/backup/BackupPlansActivity$drawDiscount$1;->d:Landroid/view/ViewParent;

    check-cast v0, Landroid/widget/RelativeLayout;

    check-cast v2, Landroid/view/View;

    check-cast v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v0, v2, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
