.class Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;->onAdLoaded(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;Landroid/view/View;)V
    .locals 0

    .line 296
    iput-object p1, p0, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer$6;->b:Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;

    iput-object p2, p0, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer$6;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 299
    iget-object v0, p0, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer$6;->b:Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;

    invoke-static {v0}, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;->access$800(Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;)Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer$6;->b:Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;

    invoke-static {v1}, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;->access$700(Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 300
    iget-object v0, p0, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer$6;->a:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 301
    iget-object v1, p0, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer$6;->b:Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;

    invoke-static {v1}, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;->access$700(Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 302
    iget-object v0, p0, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer$6;->b:Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;

    invoke-static {v0}, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;->access$800(Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 303
    iget-object v0, p0, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer$6;->b:Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;

    invoke-static {v0}, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;->access$800(Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;)Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer$6;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 304
    iget-object v0, p0, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer$6;->a:Landroid/view/View;

    instance-of v1, v0, Lcom/mopub/mobileads/MoPubView;

    if-nez v1, :cond_2

    const v1, 0x7f0a0620

    .line 305
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    const v1, 0x7f0601ec

    .line 307
    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 309
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer$6;->a:Landroid/view/View;

    const v1, 0x7f0a00b5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 311
    iget-object v1, p0, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer$6;->b:Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;

    invoke-static {v1}, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;->access$900(Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 313
    :cond_1
    iget-object v0, p0, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer$6;->a:Landroid/view/View;

    const v1, 0x7f0a061f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 315
    iget-object v1, p0, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer$6;->b:Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;

    invoke-static {v1}, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;->access$900(Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_2
    return-void
.end method
