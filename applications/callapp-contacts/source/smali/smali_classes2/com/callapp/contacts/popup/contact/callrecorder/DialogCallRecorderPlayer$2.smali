.class Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;->ovViewCreated(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;)V
    .locals 0

    .line 177
    iput-object p1, p0, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer$2;->a:Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 1

    .line 180
    iget-object p1, p0, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer$2;->a:Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;

    invoke-static {p1}, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;->access$200(Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;)Lcom/callapp/contacts/util/ads/loaders/BaseMultiSizeAdLoader;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 181
    iget-object p1, p0, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer$2;->a:Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;

    invoke-static {p1}, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;->access$200(Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;)Lcom/callapp/contacts/util/ads/loaders/BaseMultiSizeAdLoader;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/util/ads/loaders/BaseMultiSizeAdLoader;->setAdVisibility(I)V

    :cond_0
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 1

    .line 187
    iget-object p1, p0, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer$2;->a:Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;

    invoke-static {p1}, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;->access$200(Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;)Lcom/callapp/contacts/util/ads/loaders/BaseMultiSizeAdLoader;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 188
    iget-object p1, p0, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer$2;->a:Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;

    invoke-static {p1}, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;->access$200(Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;)Lcom/callapp/contacts/util/ads/loaders/BaseMultiSizeAdLoader;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/util/ads/loaders/BaseMultiSizeAdLoader;->setAdVisibility(I)V

    :cond_0
    return-void
.end method
