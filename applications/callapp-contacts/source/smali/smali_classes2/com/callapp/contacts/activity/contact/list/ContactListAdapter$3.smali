.class Lcom/callapp/contacts/activity/contact/list/ContactListAdapter$3;
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
.field final synthetic a:Lcom/callapp/contacts/activity/contact/list/ContactViewHolder;

.field final synthetic b:Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;

.field final synthetic c:Lcom/callapp/contacts/activity/contact/list/ContactListAdapter;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/list/ContactListAdapter;Lcom/callapp/contacts/activity/contact/list/ContactViewHolder;Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;)V
    .locals 0

    .line 185
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/list/ContactListAdapter$3;->c:Lcom/callapp/contacts/activity/contact/list/ContactListAdapter;

    iput-object p2, p0, Lcom/callapp/contacts/activity/contact/list/ContactListAdapter$3;->a:Lcom/callapp/contacts/activity/contact/list/ContactViewHolder;

    iput-object p3, p0, Lcom/callapp/contacts/activity/contact/list/ContactListAdapter$3;->b:Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 188
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactListAdapter$3;->c:Lcom/callapp/contacts/activity/contact/list/ContactListAdapter;

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/list/ContactListAdapter$3;->a:Lcom/callapp/contacts/activity/contact/list/ContactViewHolder;

    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/list/ContactListAdapter$3;->b:Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;

    invoke-static {v0, p1, v1, v2}, Lcom/callapp/contacts/activity/contact/list/ContactListAdapter;->a(Lcom/callapp/contacts/activity/contact/list/ContactListAdapter;Landroid/view/View;Lcom/callapp/contacts/activity/contact/list/ContactViewHolder;Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;)V

    return-void
.end method
