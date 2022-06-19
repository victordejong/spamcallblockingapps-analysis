.class public Lcom/callapp/contacts/service/jobs/SimChangedServiceV1;
.super Landroidx/core/app/SafeJobIntentService;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Landroidx/core/app/SafeJobIntentService;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Intent;)V
    .locals 0

    .line 17
    invoke-static {}, Lcom/callapp/contacts/manager/Singletons;->get()Lcom/callapp/contacts/manager/Singletons;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/manager/Singletons;->getSimManager()Lcom/callapp/contacts/manager/sim/SimManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/manager/sim/SimManager;->a()V

    return-void
.end method
