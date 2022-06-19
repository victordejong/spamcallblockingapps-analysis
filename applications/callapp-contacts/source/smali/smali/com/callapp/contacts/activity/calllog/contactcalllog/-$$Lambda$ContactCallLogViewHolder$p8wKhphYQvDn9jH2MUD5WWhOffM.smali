.class public final synthetic Lcom/callapp/contacts/activity/calllog/contactcalllog/-$$Lambda$ContactCallLogViewHolder$p8wKhphYQvDn9jH2MUD5WWhOffM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic f$0:Lcom/callapp/contacts/activity/interfaces/OnListItemInteractionsListener;

.field public final synthetic f$1:Lcom/callapp/contacts/activity/calllog/SingleCallLogData;


# direct methods
.method public synthetic constructor <init>(Lcom/callapp/contacts/activity/interfaces/OnListItemInteractionsListener;Lcom/callapp/contacts/activity/calllog/SingleCallLogData;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/callapp/contacts/activity/calllog/contactcalllog/-$$Lambda$ContactCallLogViewHolder$p8wKhphYQvDn9jH2MUD5WWhOffM;->f$0:Lcom/callapp/contacts/activity/interfaces/OnListItemInteractionsListener;

    iput-object p2, p0, Lcom/callapp/contacts/activity/calllog/contactcalllog/-$$Lambda$ContactCallLogViewHolder$p8wKhphYQvDn9jH2MUD5WWhOffM;->f$1:Lcom/callapp/contacts/activity/calllog/SingleCallLogData;

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 2

    iget-object v0, p0, Lcom/callapp/contacts/activity/calllog/contactcalllog/-$$Lambda$ContactCallLogViewHolder$p8wKhphYQvDn9jH2MUD5WWhOffM;->f$0:Lcom/callapp/contacts/activity/interfaces/OnListItemInteractionsListener;

    iget-object v1, p0, Lcom/callapp/contacts/activity/calllog/contactcalllog/-$$Lambda$ContactCallLogViewHolder$p8wKhphYQvDn9jH2MUD5WWhOffM;->f$1:Lcom/callapp/contacts/activity/calllog/SingleCallLogData;

    invoke-static {v0, v1, p1}, Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogViewHolder;->lambda$p8wKhphYQvDn9jH2MUD5WWhOffM(Lcom/callapp/contacts/activity/interfaces/OnListItemInteractionsListener;Lcom/callapp/contacts/activity/calllog/SingleCallLogData;Landroid/view/View;)Z

    move-result p1

    return p1
.end method
