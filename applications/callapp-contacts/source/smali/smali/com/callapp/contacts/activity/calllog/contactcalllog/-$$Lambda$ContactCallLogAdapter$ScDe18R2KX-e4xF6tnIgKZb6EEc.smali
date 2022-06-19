.class public final synthetic Lcom/callapp/contacts/activity/calllog/contactcalllog/-$$Lambda$ContactCallLogAdapter$ScDe18R2KX-e4xF6tnIgKZb6EEc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/callapp/contacts/activity/interfaces/OnListItemInteractionsListener;


# instance fields
.field public final synthetic f$0:Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogAdapter;


# direct methods
.method public synthetic constructor <init>(Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogAdapter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/callapp/contacts/activity/calllog/contactcalllog/-$$Lambda$ContactCallLogAdapter$ScDe18R2KX-e4xF6tnIgKZb6EEc;->f$0:Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogAdapter;

    return-void
.end method


# virtual methods
.method public final onListItemInteracted(Landroid/view/View;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/callapp/contacts/activity/calllog/contactcalllog/-$$Lambda$ContactCallLogAdapter$ScDe18R2KX-e4xF6tnIgKZb6EEc;->f$0:Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogAdapter;

    check-cast p2, Lcom/callapp/contacts/activity/calllog/SingleCallLogData;

    invoke-static {v0, p1, p2}, Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogAdapter;->lambda$ScDe18R2KX-e4xF6tnIgKZb6EEc(Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogAdapter;Landroid/view/View;Lcom/callapp/contacts/activity/calllog/SingleCallLogData;)V

    return-void
.end method
