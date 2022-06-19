.class Lcom/callapp/contacts/activity/calllog/CallLogFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/activity/interfaces/ContactItemViewEvents;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/calllog/CallLogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/calllog/CallLogFragment;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/calllog/CallLogFragment;)V
    .locals 0

    .line 239
    iput-object p1, p0, Lcom/callapp/contacts/activity/calllog/CallLogFragment$1;->a:Lcom/callapp/contacts/activity/calllog/CallLogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 242
    iget-object v0, p0, Lcom/callapp/contacts/activity/calllog/CallLogFragment$1;->a:Lcom/callapp/contacts/activity/calllog/CallLogFragment;

    invoke-static {v0}, Lcom/callapp/contacts/activity/calllog/CallLogFragment;->a(Lcom/callapp/contacts/activity/calllog/CallLogFragment;)Lcom/callapp/contacts/activity/contact/list/search/ContactsClickEvents;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/callapp/contacts/activity/contact/list/search/ContactsClickEvents;->d(I)V

    return-void
.end method

.method public final b()V
    .locals 2

    .line 247
    iget-object v0, p0, Lcom/callapp/contacts/activity/calllog/CallLogFragment$1;->a:Lcom/callapp/contacts/activity/calllog/CallLogFragment;

    invoke-static {v0}, Lcom/callapp/contacts/activity/calllog/CallLogFragment;->a(Lcom/callapp/contacts/activity/calllog/CallLogFragment;)Lcom/callapp/contacts/activity/contact/list/search/ContactsClickEvents;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/callapp/contacts/activity/contact/list/search/ContactsClickEvents;->d(I)V

    return-void
.end method
