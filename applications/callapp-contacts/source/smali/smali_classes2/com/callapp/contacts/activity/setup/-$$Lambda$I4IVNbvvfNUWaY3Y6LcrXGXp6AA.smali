.class public final synthetic Lcom/callapp/contacts/activity/setup/-$$Lambda$I4IVNbvvfNUWaY3Y6LcrXGXp6AA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/callapp/contacts/activity/setup/SetupWizardActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/callapp/contacts/activity/setup/SetupWizardActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/callapp/contacts/activity/setup/-$$Lambda$I4IVNbvvfNUWaY3Y6LcrXGXp6AA;->f$0:Lcom/callapp/contacts/activity/setup/SetupWizardActivity;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/callapp/contacts/activity/setup/-$$Lambda$I4IVNbvvfNUWaY3Y6LcrXGXp6AA;->f$0:Lcom/callapp/contacts/activity/setup/SetupWizardActivity;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/setup/SetupWizardActivity;->onBackPressed()V

    return-void
.end method
