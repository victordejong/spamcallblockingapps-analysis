.class final Lcom/mopub/mobileads/MoPubView$1;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/mobileads/MoPubView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mopub/mobileads/MoPubView;


# direct methods
.method constructor <init>(Lcom/mopub/mobileads/MoPubView;)V
    .locals 0

    .line 158
    iput-object p1, p0, Lcom/mopub/mobileads/MoPubView$1;->a:Lcom/mopub/mobileads/MoPubView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 160
    iget-object p1, p0, Lcom/mopub/mobileads/MoPubView$1;->a:Lcom/mopub/mobileads/MoPubView;

    invoke-static {p1}, Lcom/mopub/mobileads/MoPubView;->a(Lcom/mopub/mobileads/MoPubView;)I

    move-result p1

    invoke-static {p1}, Lcom/mopub/common/util/Visibility;->isScreenVisible(I)Z

    move-result p1

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    .line 164
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.USER_PRESENT"

    .line 166
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 167
    iget-object p1, p0, Lcom/mopub/mobileads/MoPubView$1;->a:Lcom/mopub/mobileads/MoPubView;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/mopub/mobileads/MoPubView;->a(Lcom/mopub/mobileads/MoPubView;I)V

    return-void

    :cond_1
    const-string p2, "android.intent.action.SCREEN_OFF"

    .line 168
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 169
    iget-object p1, p0, Lcom/mopub/mobileads/MoPubView$1;->a:Lcom/mopub/mobileads/MoPubView;

    const/16 p2, 0x8

    invoke-static {p1, p2}, Lcom/mopub/mobileads/MoPubView;->a(Lcom/mopub/mobileads/MoPubView;I)V

    :cond_2
    :goto_0
    return-void
.end method
