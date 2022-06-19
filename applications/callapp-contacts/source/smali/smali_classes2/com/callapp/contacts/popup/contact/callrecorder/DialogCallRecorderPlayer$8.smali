.class Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager$AssetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;->setupViews(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager$AssetListener<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/ImageView;

.field final synthetic b:Landroid/widget/ImageView;

.field final synthetic c:Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;Landroid/widget/ImageView;Landroid/widget/ImageView;)V
    .locals 0

    .line 341
    iput-object p1, p0, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer$8;->c:Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;

    iput-object p2, p0, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer$8;->a:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer$8;->b:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic onAssetReady(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    .line 341
    check-cast p1, Ljava/lang/String;

    .line 1344
    invoke-static {p1}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 1347
    iget-object p2, p0, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer$8;->a:Landroid/widget/ImageView;

    const v0, 0x3f19999a    # 0.6f

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 1348
    iget-object p2, p0, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer$8;->b:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1349
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object p2

    new-instance v0, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer$8$1;

    invoke-direct {v0, p0, p1}, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer$8$1;-><init>(Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer$8;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lcom/callapp/contacts/CallAppApplication;->d(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
