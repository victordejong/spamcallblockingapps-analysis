.class Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer$8$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer$8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer$8;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer$8;Ljava/lang/String;)V
    .locals 0

    .line 349
    iput-object p1, p0, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer$8$1;->b:Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer$8;

    iput-object p2, p0, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer$8$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/high16 v0, 0x41300000    # 11.0f

    .line 352
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->a(F)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    .line 353
    new-instance v2, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;

    iget-object v3, p0, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer$8$1;->b:Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer$8;

    iget-object v3, v3, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer$8;->b:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer$8$1;->a:Ljava/lang/String;

    iget-object v5, p0, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer$8$1;->b:Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer$8;

    iget-object v5, v5, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer$8;->c:Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;

    invoke-static {v5}, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;->access$1000(Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;)Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;

    move-result-object v5

    invoke-virtual {v5}, Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;->getRealContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;-><init>(Landroid/widget/ImageView;Ljava/lang/String;Landroid/content/Context;)V

    double-to-int v0, v0

    sget-object v1, Lcom/callapp/contacts/util/glide/RoundedCornersTransformation$CornerType;->TOP:Lcom/callapp/contacts/util/glide/RoundedCornersTransformation$CornerType;

    invoke-virtual {v2, v0, v1}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->a(ILcom/callapp/contacts/util/glide/RoundedCornersTransformation$CornerType;)Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->d()V

    return-void
.end method
