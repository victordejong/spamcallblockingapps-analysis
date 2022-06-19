.class Lcom/callapp/contacts/activity/base/BaseCallAppCursorAdapter$NotifyingDataSetObserver;
.super Landroid/database/DataSetObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/base/BaseCallAppCursorAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NotifyingDataSetObserver"
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/base/BaseCallAppCursorAdapter;


# direct methods
.method private constructor <init>(Lcom/callapp/contacts/activity/base/BaseCallAppCursorAdapter;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/callapp/contacts/activity/base/BaseCallAppCursorAdapter$NotifyingDataSetObserver;->a:Lcom/callapp/contacts/activity/base/BaseCallAppCursorAdapter;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/callapp/contacts/activity/base/BaseCallAppCursorAdapter;Lcom/callapp/contacts/activity/base/BaseCallAppCursorAdapter$1;)V
    .locals 0

    .line 115
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/base/BaseCallAppCursorAdapter$NotifyingDataSetObserver;-><init>(Lcom/callapp/contacts/activity/base/BaseCallAppCursorAdapter;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    .line 119
    invoke-super {p0}, Landroid/database/DataSetObserver;->onChanged()V

    .line 120
    iget-object v0, p0, Lcom/callapp/contacts/activity/base/BaseCallAppCursorAdapter$NotifyingDataSetObserver;->a:Lcom/callapp/contacts/activity/base/BaseCallAppCursorAdapter;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/callapp/contacts/activity/base/BaseCallAppCursorAdapter;->a(Lcom/callapp/contacts/activity/base/BaseCallAppCursorAdapter;Z)Z

    .line 121
    iget-object v0, p0, Lcom/callapp/contacts/activity/base/BaseCallAppCursorAdapter$NotifyingDataSetObserver;->a:Lcom/callapp/contacts/activity/base/BaseCallAppCursorAdapter;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/base/BaseCallAppCursorAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onInvalidated()V
    .locals 2

    .line 126
    invoke-super {p0}, Landroid/database/DataSetObserver;->onInvalidated()V

    .line 127
    iget-object v0, p0, Lcom/callapp/contacts/activity/base/BaseCallAppCursorAdapter$NotifyingDataSetObserver;->a:Lcom/callapp/contacts/activity/base/BaseCallAppCursorAdapter;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/callapp/contacts/activity/base/BaseCallAppCursorAdapter;->a(Lcom/callapp/contacts/activity/base/BaseCallAppCursorAdapter;Z)Z

    .line 128
    iget-object v0, p0, Lcom/callapp/contacts/activity/base/BaseCallAppCursorAdapter$NotifyingDataSetObserver;->a:Lcom/callapp/contacts/activity/base/BaseCallAppCursorAdapter;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/base/BaseCallAppCursorAdapter;->notifyDataSetChanged()V

    return-void
.end method
