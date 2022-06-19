.class Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity$4$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogSimpleListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity$4;->a(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity$4;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity$4;)V
    .locals 0

    .line 509
    iput-object p1, p0, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity$4$1;->a:Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/callapp/contacts/manager/popup/DialogPopup;)V
    .locals 1

    .line 512
    iget-object p1, p0, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity$4$1;->a:Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity$4;

    iget-object p1, p1, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity$4;->a:Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;

    const v0, 0x7f120537

    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/callapp/contacts/util/AndroidUtils;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public final b(Lcom/callapp/contacts/manager/popup/DialogPopup;)V
    .locals 1

    .line 517
    iget-object p1, p0, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity$4$1;->a:Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity$4;

    iget-object p1, p1, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity$4;->a:Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;

    const v0, 0x7f120537

    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/callapp/contacts/util/AndroidUtils;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public onShow(Landroid/content/DialogInterface;)V
    .locals 0

    return-void
.end method
