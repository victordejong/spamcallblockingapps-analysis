.class Lcom/callapp/contacts/activity/select/PersonSelectActivity$4;
.super Lcom/callapp/contacts/activity/chooseContact/TopBarWithSearchActivity$searchBarEventsImpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/select/PersonSelectActivity;->getSearchBarEvents()Lcom/callapp/contacts/widget/SimpleSearchBarFragment$SearchBarEvents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/select/PersonSelectActivity;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/select/PersonSelectActivity;)V
    .locals 0

    .line 408
    iput-object p1, p0, Lcom/callapp/contacts/activity/select/PersonSelectActivity$4;->a:Lcom/callapp/contacts/activity/select/PersonSelectActivity;

    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/chooseContact/TopBarWithSearchActivity$searchBarEventsImpl;-><init>(Lcom/callapp/contacts/activity/chooseContact/TopBarWithSearchActivity;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/CharSequence;I)V
    .locals 0

    if-eqz p1, :cond_0

    .line 411
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    .line 412
    :goto_0
    iget-object p2, p0, Lcom/callapp/contacts/activity/select/PersonSelectActivity$4;->a:Lcom/callapp/contacts/activity/select/PersonSelectActivity;

    invoke-static {p2, p1}, Lcom/callapp/contacts/activity/select/PersonSelectActivity;->c(Lcom/callapp/contacts/activity/select/PersonSelectActivity;Ljava/lang/String;)V

    .line 413
    iget-object p2, p0, Lcom/callapp/contacts/activity/select/PersonSelectActivity$4;->a:Lcom/callapp/contacts/activity/select/PersonSelectActivity;

    invoke-static {p2, p1}, Lcom/callapp/contacts/activity/select/PersonSelectActivity;->b(Lcom/callapp/contacts/activity/select/PersonSelectActivity;Ljava/lang/String;)V

    return-void
.end method

.method public final b()V
    .locals 2

    .line 418
    iget-object v0, p0, Lcom/callapp/contacts/activity/select/PersonSelectActivity$4;->a:Lcom/callapp/contacts/activity/select/PersonSelectActivity;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/select/PersonSelectActivity;->getSearchText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/callapp/contacts/activity/select/PersonSelectActivity;->d(Lcom/callapp/contacts/activity/select/PersonSelectActivity;Ljava/lang/String;)V

    return-void
.end method
