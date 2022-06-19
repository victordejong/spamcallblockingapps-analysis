.class Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity;->setupCallButton(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/api/helper/instantmessaging/basetypes/ImSender;

.field final synthetic b:Landroid/widget/ImageView;

.field final synthetic c:Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity;Lcom/callapp/contacts/api/helper/instantmessaging/basetypes/ImSender;Landroid/widget/ImageView;)V
    .locals 0

    .line 392
    iput-object p1, p0, Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity$7;->c:Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity;

    iput-object p2, p0, Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity$7;->a:Lcom/callapp/contacts/api/helper/instantmessaging/basetypes/ImSender;

    iput-object p3, p0, Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity$7;->b:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 395
    iget-object v0, p0, Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity$7;->a:Lcom/callapp/contacts/api/helper/instantmessaging/basetypes/ImSender;

    if-eqz v0, :cond_0

    .line 396
    new-instance v1, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;

    invoke-interface {v0}, Lcom/callapp/contacts/api/helper/instantmessaging/basetypes/ImSender;->getImIconResId()I

    move-result v0

    invoke-direct {v1, v0}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;-><init>(I)V

    iget-object v0, p0, Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity$7;->a:Lcom/callapp/contacts/api/helper/instantmessaging/basetypes/ImSender;

    .line 397
    invoke-interface {v0}, Lcom/callapp/contacts/api/helper/instantmessaging/basetypes/ImSender;->getImColor()I

    move-result v0

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v0, v2}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->a(ILandroid/graphics/PorterDuff$Mode;)Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;

    move-result-object v0

    const/4 v1, 0x0

    .line 1354
    iput-object v1, v0, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->g:Ljava/lang/Integer;

    const/4 v1, 0x1

    .line 1391
    iput-boolean v1, v0, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->q:Z

    .line 2371
    iput-boolean v1, v0, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->l:Z

    .line 400
    iget-object v1, p0, Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity$7;->b:Landroid/widget/ImageView;

    .line 2427
    iput-object v1, v0, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->a:Landroid/widget/ImageView;

    .line 401
    iget-object v1, p0, Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity$7;->c:Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity;

    .line 2432
    iput-object v1, v0, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->e:Landroid/content/Context;

    .line 403
    invoke-virtual {v0}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->d()V

    return-void

    .line 405
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity$7;->b:Landroid/widget/ImageView;

    const v1, 0x7f08043e

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/ImageUtils;->a(Landroid/widget/ImageView;I)V

    return-void
.end method
