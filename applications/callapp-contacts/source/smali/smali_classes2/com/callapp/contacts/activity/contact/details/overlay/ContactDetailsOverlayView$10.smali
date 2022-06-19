.class Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;->onContactChanged(Lcom/callapp/contacts/model/contact/ContactData;Ljava/util/Set;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/model/contact/ContactData;

.field final synthetic b:Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;Lcom/callapp/contacts/model/contact/ContactData;)V
    .locals 0

    .line 581
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView$10;->b:Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;

    iput-object p2, p0, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView$10;->a:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 585
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView$10;->b:Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView$10;->a:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-static {v1}, Lcom/callapp/contacts/util/UserCorrectedInfoUtil;->a(Lcom/callapp/contacts/model/contact/ContactData;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;->setLayoutColors(Z)V

    return-void
.end method
