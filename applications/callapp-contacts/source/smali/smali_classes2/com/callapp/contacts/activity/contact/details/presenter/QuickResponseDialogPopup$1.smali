.class Lcom/callapp/contacts/activity/contact/details/presenter/QuickResponseDialogPopup$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/contact/details/presenter/QuickResponseDialogPopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/contact/details/presenter/QuickResponseDialogPopup;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/details/presenter/QuickResponseDialogPopup;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/QuickResponseDialogPopup$1;->a:Lcom/callapp/contacts/activity/contact/details/presenter/QuickResponseDialogPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/QuickResponseDialogPopup$1;->a:Lcom/callapp/contacts/activity/contact/details/presenter/QuickResponseDialogPopup;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/details/presenter/QuickResponseDialogPopup;->dismiss()V

    return-void
.end method
