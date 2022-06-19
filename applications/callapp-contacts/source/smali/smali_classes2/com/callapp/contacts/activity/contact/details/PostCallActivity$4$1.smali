.class Lcom/callapp/contacts/activity/contact/details/PostCallActivity$4$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/contact/details/PostCallActivity$4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/ImageView;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/callapp/contacts/activity/contact/details/PostCallActivity$4;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/details/PostCallActivity$4;Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 0

    .line 212
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/PostCallActivity$4$1;->c:Lcom/callapp/contacts/activity/contact/details/PostCallActivity$4;

    iput-object p2, p0, Lcom/callapp/contacts/activity/contact/details/PostCallActivity$4$1;->a:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/callapp/contacts/activity/contact/details/PostCallActivity$4$1;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 215
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/PostCallActivity$4$1;->a:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 216
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/PostCallActivity$4$1;->c:Lcom/callapp/contacts/activity/contact/details/PostCallActivity$4;

    iget-object v0, v0, Lcom/callapp/contacts/activity/contact/details/PostCallActivity$4;->a:Lcom/callapp/contacts/activity/contact/details/PostCallActivity;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/details/PostCallActivity;->access$400(Lcom/callapp/contacts/activity/contact/details/PostCallActivity;)Landroid/view/View;

    move-result-object v0

    const v1, 0x3f19999a    # 0.6f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    const/high16 v0, 0x41300000    # 11.0f

    .line 217
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->a(F)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    .line 218
    new-instance v2, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;

    iget-object v3, p0, Lcom/callapp/contacts/activity/contact/details/PostCallActivity$4$1;->a:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/callapp/contacts/activity/contact/details/PostCallActivity$4$1;->b:Ljava/lang/String;

    iget-object v5, p0, Lcom/callapp/contacts/activity/contact/details/PostCallActivity$4$1;->c:Lcom/callapp/contacts/activity/contact/details/PostCallActivity$4;

    iget-object v5, v5, Lcom/callapp/contacts/activity/contact/details/PostCallActivity$4;->a:Lcom/callapp/contacts/activity/contact/details/PostCallActivity;

    invoke-direct {v2, v3, v4, v5}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;-><init>(Landroid/widget/ImageView;Ljava/lang/String;Landroid/content/Context;)V

    double-to-int v0, v0

    sget-object v1, Lcom/callapp/contacts/util/glide/RoundedCornersTransformation$CornerType;->TOP:Lcom/callapp/contacts/util/glide/RoundedCornersTransformation$CornerType;

    invoke-virtual {v2, v0, v1}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->a(ILcom/callapp/contacts/util/glide/RoundedCornersTransformation$CornerType;)Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->d()V

    return-void
.end method
