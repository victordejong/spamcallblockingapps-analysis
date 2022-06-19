.class public Lcom/mopub/mobileads/MoPubView$a;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/mobileads/MoPubView;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/mopub/mobileads/MoPubView;


# direct methods
.method public constructor <init>(Lcom/mopub/mobileads/MoPubView;)V
    .locals 0

    iput-object p1, p0, Lcom/mopub/mobileads/MoPubView$a;->a:Lcom/mopub/mobileads/MoPubView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    iget-object p1, p0, Lcom/mopub/mobileads/MoPubView$a;->a:Lcom/mopub/mobileads/MoPubView;

    invoke-static {p1}, Lcom/mopub/mobileads/MoPubView;->a(Lcom/mopub/mobileads/MoPubView;)I

    move-result p1

    invoke-static {p1}, Lcom/mopub/common/util/Visibility;->isScreenVisible(I)Z

    move-result p1

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.USER_PRESENT"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p1, p0, Lcom/mopub/mobileads/MoPubView$a;->a:Lcom/mopub/mobileads/MoPubView;

    const/4 p2, 0x0

    :goto_0
    invoke-static {p1, p2}, Lcom/mopub/mobileads/MoPubView;->b(Lcom/mopub/mobileads/MoPubView;I)V

    goto :goto_1

    :cond_1
    const-string p2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/mopub/mobileads/MoPubView$a;->a:Lcom/mopub/mobileads/MoPubView;

    const/16 p2, 0x8

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method
