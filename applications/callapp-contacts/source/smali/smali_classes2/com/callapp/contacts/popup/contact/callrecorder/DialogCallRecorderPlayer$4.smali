.class Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;->onBannerAdLoaded(Lcom/mopub/mobileads/MoPubView;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mopub/mobileads/MoPubView;

.field final synthetic b:Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;Lcom/mopub/mobileads/MoPubView;)V
    .locals 0

    .line 269
    iput-object p1, p0, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer$4;->b:Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;

    iput-object p2, p0, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer$4;->a:Lcom/mopub/mobileads/MoPubView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 272
    iget-object v0, p0, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer$4;->b:Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;

    invoke-static {v0}, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;->access$400(Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;)V

    .line 273
    iget-object v0, p0, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer$4;->b:Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;

    iget-object v1, p0, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer$4;->a:Lcom/mopub/mobileads/MoPubView;

    invoke-static {v0, v1}, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;->access$502(Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    iget-object v0, p0, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer$4;->b:Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;

    iget-object v1, p0, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer$4;->a:Lcom/mopub/mobileads/MoPubView;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;->onAdLoaded(Landroid/view/View;)V

    return-void
.end method
