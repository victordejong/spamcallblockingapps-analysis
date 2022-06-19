.class public final synthetic Lcom/callapp/contacts/activity/marketplace/viewholders/-$$Lambda$ButtonSetViewHolder$cr3EmHTIA9pfHsCPsdz-zgr82c8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/callapp/contacts/activity/marketplace/ButtonSetPickedListener;

.field public final synthetic f$1:Lcom/callapp/contacts/activity/marketplace/ButtonSet;


# direct methods
.method public synthetic constructor <init>(Lcom/callapp/contacts/activity/marketplace/ButtonSetPickedListener;Lcom/callapp/contacts/activity/marketplace/ButtonSet;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/callapp/contacts/activity/marketplace/viewholders/-$$Lambda$ButtonSetViewHolder$cr3EmHTIA9pfHsCPsdz-zgr82c8;->f$0:Lcom/callapp/contacts/activity/marketplace/ButtonSetPickedListener;

    iput-object p2, p0, Lcom/callapp/contacts/activity/marketplace/viewholders/-$$Lambda$ButtonSetViewHolder$cr3EmHTIA9pfHsCPsdz-zgr82c8;->f$1:Lcom/callapp/contacts/activity/marketplace/ButtonSet;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/viewholders/-$$Lambda$ButtonSetViewHolder$cr3EmHTIA9pfHsCPsdz-zgr82c8;->f$0:Lcom/callapp/contacts/activity/marketplace/ButtonSetPickedListener;

    iget-object v1, p0, Lcom/callapp/contacts/activity/marketplace/viewholders/-$$Lambda$ButtonSetViewHolder$cr3EmHTIA9pfHsCPsdz-zgr82c8;->f$1:Lcom/callapp/contacts/activity/marketplace/ButtonSet;

    invoke-static {v0, v1, p1}, Lcom/callapp/contacts/activity/marketplace/viewholders/ButtonSetViewHolder;->lambda$cr3EmHTIA9pfHsCPsdz-zgr82c8(Lcom/callapp/contacts/activity/marketplace/ButtonSetPickedListener;Lcom/callapp/contacts/activity/marketplace/ButtonSet;Landroid/view/View;)V

    return-void
.end method
