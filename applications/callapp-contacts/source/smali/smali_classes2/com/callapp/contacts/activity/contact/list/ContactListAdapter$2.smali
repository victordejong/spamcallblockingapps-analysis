.class Lcom/callapp/contacts/activity/contact/list/ContactListAdapter$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/activity/base/BaseContactHolder$OnDataLoadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/contact/list/ContactListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/contact/list/ContactListAdapter;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/list/ContactListAdapter;)V
    .locals 0

    .line 174
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/list/ContactListAdapter$2;->a:Lcom/callapp/contacts/activity/contact/list/ContactListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/callapp/contacts/activity/base/BaseAdapterItemData;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 178
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactListAdapter$2;->a:Lcom/callapp/contacts/activity/contact/list/ContactListAdapter;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/list/ContactListAdapter;->a(Lcom/callapp/contacts/activity/contact/list/ContactListAdapter;)Landroid/util/LongSparseArray;

    move-result-object v0

    iget-wide v1, p1, Lcom/callapp/contacts/activity/base/BaseAdapterItemData;->contactId:J

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2, p1}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    :cond_0
    return-void
.end method
