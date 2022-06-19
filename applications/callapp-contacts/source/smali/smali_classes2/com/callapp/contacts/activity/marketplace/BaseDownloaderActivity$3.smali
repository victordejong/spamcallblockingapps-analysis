.class Lcom/callapp/contacts/activity/marketplace/BaseDownloaderActivity$3;
.super Lcom/callapp/contacts/util/DefaultInterfaceImplUtils$AnimatorListenerImpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/marketplace/BaseDownloaderActivity;->a(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/marketplace/BaseDownloaderActivity;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/marketplace/BaseDownloaderActivity;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/callapp/contacts/activity/marketplace/BaseDownloaderActivity$3;->a:Lcom/callapp/contacts/activity/marketplace/BaseDownloaderActivity;

    invoke-direct {p0}, Lcom/callapp/contacts/util/DefaultInterfaceImplUtils$AnimatorListenerImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 122
    invoke-super {p0, p1}, Lcom/callapp/contacts/util/DefaultInterfaceImplUtils$AnimatorListenerImpl;->onAnimationCancel(Landroid/animation/Animator;)V

    .line 123
    iget-object p1, p0, Lcom/callapp/contacts/activity/marketplace/BaseDownloaderActivity$3;->a:Lcom/callapp/contacts/activity/marketplace/BaseDownloaderActivity;

    invoke-static {p1}, Lcom/callapp/contacts/activity/marketplace/BaseDownloaderActivity;->b(Lcom/callapp/contacts/activity/marketplace/BaseDownloaderActivity;)Landroid/view/View;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method
