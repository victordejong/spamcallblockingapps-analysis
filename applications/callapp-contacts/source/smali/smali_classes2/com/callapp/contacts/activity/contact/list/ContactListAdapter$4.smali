.class Lcom/callapp/contacts/activity/contact/list/ContactListAdapter$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/contact/list/ContactListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/base/CallAppRow;

.field final synthetic b:Lcom/callapp/contacts/activity/contact/list/ContactViewHolder;

.field final synthetic c:Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;

.field final synthetic d:Lcom/callapp/contacts/activity/contact/list/ContactListAdapter;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/list/ContactListAdapter;Lcom/callapp/contacts/activity/base/CallAppRow;Lcom/callapp/contacts/activity/contact/list/ContactViewHolder;Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;)V
    .locals 0

    .line 193
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/list/ContactListAdapter$4;->d:Lcom/callapp/contacts/activity/contact/list/ContactListAdapter;

    iput-object p2, p0, Lcom/callapp/contacts/activity/contact/list/ContactListAdapter$4;->a:Lcom/callapp/contacts/activity/base/CallAppRow;

    iput-object p3, p0, Lcom/callapp/contacts/activity/contact/list/ContactListAdapter$4;->b:Lcom/callapp/contacts/activity/contact/list/ContactViewHolder;

    iput-object p4, p0, Lcom/callapp/contacts/activity/contact/list/ContactListAdapter$4;->c:Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 196
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactListAdapter$4;->a:Lcom/callapp/contacts/activity/base/CallAppRow;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/base/CallAppRow;->b()V

    .line 197
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactListAdapter$4;->d:Lcom/callapp/contacts/activity/contact/list/ContactListAdapter;

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/list/ContactListAdapter$4;->b:Lcom/callapp/contacts/activity/contact/list/ContactViewHolder;

    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/list/ContactListAdapter$4;->c:Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;

    invoke-static {v0, p1, v1, v2}, Lcom/callapp/contacts/activity/contact/list/ContactListAdapter;->a(Lcom/callapp/contacts/activity/contact/list/ContactListAdapter;Landroid/view/View;Lcom/callapp/contacts/activity/contact/list/ContactViewHolder;Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;)V

    return-void
.end method
