.class Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;->initEmptyView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;)V
    .locals 0

    .line 428
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment$3;->a:Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 431
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    .line 432
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment$3;->a:Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;

    invoke-static {p1}, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;->b(Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;)Lcom/callapp/contacts/activity/interfaces/ContactScrollEvent;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 433
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment$3;->a:Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;

    invoke-static {p1}, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;->c(Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;)Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Lcom/callapp/contacts/util/Activities;->b(Landroid/view/View;)V

    .line 434
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment$3;->a:Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;

    invoke-static {p1}, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;->b(Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;)Lcom/callapp/contacts/activity/interfaces/ContactScrollEvent;

    move-result-object p1

    invoke-interface {p1}, Lcom/callapp/contacts/activity/interfaces/ContactScrollEvent;->m()V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
