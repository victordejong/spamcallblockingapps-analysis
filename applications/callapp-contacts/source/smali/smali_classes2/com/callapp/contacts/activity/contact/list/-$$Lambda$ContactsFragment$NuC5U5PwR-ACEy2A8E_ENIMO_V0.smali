.class public final synthetic Lcom/callapp/contacts/activity/contact/list/-$$Lambda$ContactsFragment$NuC5U5PwR-ACEy2A8E_ENIMO_V0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/callapp/contacts/manager/usecase/UseCase$Callback;


# instance fields
.field public final synthetic f$0:Lcom/callapp/contacts/activity/contact/list/ContactsFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/callapp/contacts/activity/contact/list/ContactsFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/list/-$$Lambda$ContactsFragment$NuC5U5PwR-ACEy2A8E_ENIMO_V0;->f$0:Lcom/callapp/contacts/activity/contact/list/ContactsFragment;

    return-void
.end method


# virtual methods
.method public final onResponseReady(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/-$$Lambda$ContactsFragment$NuC5U5PwR-ACEy2A8E_ENIMO_V0;->f$0:Lcom/callapp/contacts/activity/contact/list/ContactsFragment;

    check-cast p1, Lcom/callapp/contacts/manager/cursor/ContactsAggregatorCursor;

    invoke-static {v0, p1}, Lcom/callapp/contacts/activity/contact/list/ContactsFragment;->lambda$NuC5U5PwR-ACEy2A8E_ENIMO_V0(Lcom/callapp/contacts/activity/contact/list/ContactsFragment;Lcom/callapp/contacts/manager/cursor/ContactsAggregatorCursor;)V

    return-void
.end method
