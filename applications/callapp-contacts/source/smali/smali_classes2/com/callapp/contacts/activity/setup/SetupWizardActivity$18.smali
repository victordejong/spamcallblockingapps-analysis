.class Lcom/callapp/contacts/activity/setup/SetupWizardActivity$18;
.super Lcom/callapp/contacts/manager/task/Task;
.source "SourceFile"


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

    .line 940
    iput-object p1, p0, Lcom/callapp/contacts/activity/setup/SetupWizardActivity$18;->a:Lcom/callapp/contacts/activity/setup/SetupWizardActivity;

    invoke-direct {p0}, Lcom/callapp/contacts/manager/task/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public doTask()V
    .locals 0

    .line 944
    invoke-static {}, Lcom/callapp/contacts/activity/contact/list/search/T9Helper;->a()V

    return-void
.end method
