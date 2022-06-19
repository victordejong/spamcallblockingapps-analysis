.class Lcom/callapp/contacts/util/BaseAdTransparentActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/util/BaseAdTransparentActivity;->initAd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/util/BaseAdTransparentActivity;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/util/BaseAdTransparentActivity;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/callapp/contacts/util/BaseAdTransparentActivity$1;->a:Lcom/callapp/contacts/util/BaseAdTransparentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 1

    .line 62
    iget-object p1, p0, Lcom/callapp/contacts/util/BaseAdTransparentActivity$1;->a:Lcom/callapp/contacts/util/BaseAdTransparentActivity;

    iget-object p1, p1, Lcom/callapp/contacts/util/BaseAdTransparentActivity;->multiSizeAdLoader:Lcom/callapp/contacts/util/ads/loaders/BaseMultiSizeAdLoader;

    if-eqz p1, :cond_0

    .line 63
    iget-object p1, p0, Lcom/callapp/contacts/util/BaseAdTransparentActivity$1;->a:Lcom/callapp/contacts/util/BaseAdTransparentActivity;

    iget-object p1, p1, Lcom/callapp/contacts/util/BaseAdTransparentActivity;->multiSizeAdLoader:Lcom/callapp/contacts/util/ads/loaders/BaseMultiSizeAdLoader;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/util/ads/loaders/BaseMultiSizeAdLoader;->setAdVisibility(I)V

    :cond_0
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 1

    .line 69
    iget-object p1, p0, Lcom/callapp/contacts/util/BaseAdTransparentActivity$1;->a:Lcom/callapp/contacts/util/BaseAdTransparentActivity;

    iget-object p1, p1, Lcom/callapp/contacts/util/BaseAdTransparentActivity;->multiSizeAdLoader:Lcom/callapp/contacts/util/ads/loaders/BaseMultiSizeAdLoader;

    if-eqz p1, :cond_0

    .line 70
    iget-object p1, p0, Lcom/callapp/contacts/util/BaseAdTransparentActivity$1;->a:Lcom/callapp/contacts/util/BaseAdTransparentActivity;

    iget-object p1, p1, Lcom/callapp/contacts/util/BaseAdTransparentActivity;->multiSizeAdLoader:Lcom/callapp/contacts/util/ads/loaders/BaseMultiSizeAdLoader;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/util/ads/loaders/BaseMultiSizeAdLoader;->setAdVisibility(I)V

    :cond_0
    return-void
.end method
