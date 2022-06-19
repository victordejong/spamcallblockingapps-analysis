.class Lcom/callapp/contacts/activity/contact/details/overlay/MultipleIncomingSmsOverlayView$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/details/overlay/MultipleIncomingSmsOverlayView;->onAdLoaded(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/contact/details/overlay/MultipleIncomingSmsOverlayView;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/details/overlay/MultipleIncomingSmsOverlayView;)V
    .locals 0

    .line 383
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/overlay/MultipleIncomingSmsOverlayView$5;->a:Lcom/callapp/contacts/activity/contact/details/overlay/MultipleIncomingSmsOverlayView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 386
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/overlay/MultipleIncomingSmsOverlayView$5;->a:Lcom/callapp/contacts/activity/contact/details/overlay/MultipleIncomingSmsOverlayView;

    const v1, 0x7f0a0333

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/activity/contact/details/overlay/MultipleIncomingSmsOverlayView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 387
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v1

    const v2, 0x7f06011a

    invoke-static {v1, v2}, Lcom/callapp/contacts/util/ThemeUtils;->a(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    const/4 v1, 0x0

    .line 388
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
