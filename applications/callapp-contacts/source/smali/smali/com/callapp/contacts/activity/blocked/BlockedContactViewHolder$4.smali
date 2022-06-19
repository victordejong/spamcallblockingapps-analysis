.class Lcom/callapp/contacts/activity/blocked/BlockedContactViewHolder$4;
.super Lcom/callapp/contacts/util/DefaultInterfaceImplUtils$ClickListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/blocked/BlockedContactViewHolder;->a(Lcom/callapp/contacts/model/ReminderData;Lcom/callapp/contacts/activity/base/ScrollEvents;ILcom/callapp/contacts/activity/blocked/BlockedAdapter$BlockedAdapterEvents;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/model/ReminderData;

.field final synthetic b:I

.field final synthetic c:Lcom/callapp/contacts/activity/blocked/BlockedContactViewHolder;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/blocked/BlockedContactViewHolder;Lcom/callapp/contacts/model/ReminderData;I)V
    .locals 0

    .line 219
    iput-object p1, p0, Lcom/callapp/contacts/activity/blocked/BlockedContactViewHolder$4;->c:Lcom/callapp/contacts/activity/blocked/BlockedContactViewHolder;

    iput-object p2, p0, Lcom/callapp/contacts/activity/blocked/BlockedContactViewHolder$4;->a:Lcom/callapp/contacts/model/ReminderData;

    iput p3, p0, Lcom/callapp/contacts/activity/blocked/BlockedContactViewHolder$4;->b:I

    invoke-direct {p0}, Lcom/callapp/contacts/util/DefaultInterfaceImplUtils$ClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 2

    const/4 v0, 0x1

    .line 222
    invoke-static {p1, v0}, Lcom/callapp/contacts/util/AndroidUtils;->a(Landroid/view/View;I)V

    .line 223
    iget-object v0, p0, Lcom/callapp/contacts/activity/blocked/BlockedContactViewHolder$4;->a:Lcom/callapp/contacts/model/ReminderData;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget v1, p0, Lcom/callapp/contacts/activity/blocked/BlockedContactViewHolder$4;->b:I

    invoke-static {v0, p1, v1}, Lcom/callapp/contacts/activity/blocked/BlockedContactViewHolder;->a(Lcom/callapp/contacts/model/ReminderData;Landroid/content/Context;I)V

    return-void
.end method
