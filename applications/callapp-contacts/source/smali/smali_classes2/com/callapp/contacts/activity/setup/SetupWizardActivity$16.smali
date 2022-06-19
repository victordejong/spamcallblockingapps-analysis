.class Lcom/callapp/contacts/activity/setup/SetupWizardActivity$16;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/setup/SetupWizardActivity;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/setup/SetupWizardActivity;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/setup/SetupWizardActivity;)V
    .locals 0

    .line 884
    iput-object p1, p0, Lcom/callapp/contacts/activity/setup/SetupWizardActivity$16;->a:Lcom/callapp/contacts/activity/setup/SetupWizardActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x1

    .line 888
    invoke-static {p1, v0}, Lcom/callapp/contacts/util/AndroidUtils;->a(Landroid/view/View;I)V

    .line 889
    iget-object p1, p0, Lcom/callapp/contacts/activity/setup/SetupWizardActivity$16;->a:Lcom/callapp/contacts/activity/setup/SetupWizardActivity;

    invoke-static {p1}, Lcom/callapp/contacts/activity/setup/SetupWizardActivity;->j(Lcom/callapp/contacts/activity/setup/SetupWizardActivity;)V

    return-void
.end method
