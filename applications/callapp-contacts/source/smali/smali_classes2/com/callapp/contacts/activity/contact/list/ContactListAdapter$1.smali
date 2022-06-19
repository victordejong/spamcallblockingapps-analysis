.class Lcom/callapp/contacts/activity/contact/list/ContactListAdapter$1;
.super Lcom/callapp/contacts/activity/base/BaseViewTypeData;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/list/ContactListAdapter;->getItemAt(I)Lcom/callapp/contacts/activity/base/BaseViewTypeData;
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

    .line 119
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/list/ContactListAdapter$1;->a:Lcom/callapp/contacts/activity/contact/list/ContactListAdapter;

    invoke-direct {p0}, Lcom/callapp/contacts/activity/base/BaseViewTypeData;-><init>()V

    return-void
.end method


# virtual methods
.method public getViewType()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method
