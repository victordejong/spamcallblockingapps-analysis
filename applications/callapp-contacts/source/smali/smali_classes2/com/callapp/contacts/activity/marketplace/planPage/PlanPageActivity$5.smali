.class Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;->a(ILandroid/widget/TextView;Landroid/widget/ImageView$ScaleType;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I

.field final synthetic c:Landroid/widget/ImageView$ScaleType;

.field final synthetic d:Landroid/widget/RelativeLayout;

.field final synthetic e:Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;Ljava/lang/String;ILandroid/widget/ImageView$ScaleType;Landroid/widget/RelativeLayout;)V
    .locals 0

    .line 684
    iput-object p1, p0, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity$5;->e:Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;

    iput-object p2, p0, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity$5;->a:Ljava/lang/String;

    iput p3, p0, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity$5;->b:I

    iput-object p4, p0, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity$5;->c:Landroid/widget/ImageView$ScaleType;

    iput-object p5, p0, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity$5;->d:Landroid/widget/RelativeLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 687
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity$5;->e:Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;

    iget-object v1, p0, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity$5;->a:Ljava/lang/String;

    invoke-static {v1}, Lcom/callapp/contacts/util/glide/GlideUtils;->a(Ljava/lang/String;)Lcom/bumptech/glide/e/c;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;->a(Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;Lcom/bumptech/glide/e/c;)Lcom/bumptech/glide/e/c;

    .line 688
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity$5;->e:Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;

    invoke-static {v0}, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;->n(Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;)Lcom/bumptech/glide/e/c;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 690
    :try_start_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity$5;->e:Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;

    invoke-static {v0}, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;->n(Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;)Lcom/bumptech/glide/e/c;

    move-result-object v1

    invoke-interface {v1}, Lcom/bumptech/glide/e/c;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-static {v0, v1}, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;->a(Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 691
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity$5;->e:Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;

    invoke-static {v0}, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;->o(Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 692
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity$5$1;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity$5$1;-><init>(Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity$5;)V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/CallAppApplication;->d(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 708
    :goto_0
    const-class v1, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;

    invoke-static {v1, v0}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method
