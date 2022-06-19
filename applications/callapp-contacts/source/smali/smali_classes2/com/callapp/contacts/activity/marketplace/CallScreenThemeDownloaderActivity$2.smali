.class Lcom/callapp/contacts/activity/marketplace/CallScreenThemeDownloaderActivity$2;
.super Lcom/callapp/contacts/util/DefaultInterfaceImplUtils$AnimatorListenerImpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/marketplace/CallScreenThemeDownloaderActivity;->onBackPressed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/marketplace/CallScreenThemeDownloaderActivity;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/marketplace/CallScreenThemeDownloaderActivity;)V
    .locals 0

    .line 344
    iput-object p1, p0, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeDownloaderActivity$2;->a:Lcom/callapp/contacts/activity/marketplace/CallScreenThemeDownloaderActivity;

    invoke-direct {p0}, Lcom/callapp/contacts/util/DefaultInterfaceImplUtils$AnimatorListenerImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 347
    invoke-super {p0, p1}, Lcom/callapp/contacts/util/DefaultInterfaceImplUtils$AnimatorListenerImpl;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 348
    iget-object p1, p0, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeDownloaderActivity$2;->a:Lcom/callapp/contacts/activity/marketplace/CallScreenThemeDownloaderActivity;

    iget-object p1, p1, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeDownloaderActivity;->f:Lcom/google/android/exoplayer2/ui/PlayerView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/ui/PlayerView;->setVisibility(I)V

    .line 349
    iget-object p1, p0, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeDownloaderActivity$2;->a:Lcom/callapp/contacts/activity/marketplace/CallScreenThemeDownloaderActivity;

    invoke-static {p1}, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeDownloaderActivity;->b(Lcom/callapp/contacts/activity/marketplace/CallScreenThemeDownloaderActivity;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method
