.class public final synthetic Lcom/callapp/contacts/activity/missedcall/activity/-$$Lambda$BaseCallActivity$mGFgEC6pqoIon5WTJPHme5m9ICM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity;

.field public final synthetic f$1:Lcom/callapp/contacts/model/objectbox/SingleMissedCallData;

.field public final synthetic f$2:Lcom/callapp/contacts/activity/interfaces/ContactItemViewEvents;


# direct methods
.method public synthetic constructor <init>(Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity;Lcom/callapp/contacts/model/objectbox/SingleMissedCallData;Lcom/callapp/contacts/activity/interfaces/ContactItemViewEvents;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/callapp/contacts/activity/missedcall/activity/-$$Lambda$BaseCallActivity$mGFgEC6pqoIon5WTJPHme5m9ICM;->f$0:Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity;

    iput-object p2, p0, Lcom/callapp/contacts/activity/missedcall/activity/-$$Lambda$BaseCallActivity$mGFgEC6pqoIon5WTJPHme5m9ICM;->f$1:Lcom/callapp/contacts/model/objectbox/SingleMissedCallData;

    iput-object p3, p0, Lcom/callapp/contacts/activity/missedcall/activity/-$$Lambda$BaseCallActivity$mGFgEC6pqoIon5WTJPHme5m9ICM;->f$2:Lcom/callapp/contacts/activity/interfaces/ContactItemViewEvents;

    return-void
.end method


# virtual methods
.method public final onClickListener(Landroid/app/Activity;)V
    .locals 3

    iget-object v0, p0, Lcom/callapp/contacts/activity/missedcall/activity/-$$Lambda$BaseCallActivity$mGFgEC6pqoIon5WTJPHme5m9ICM;->f$0:Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity;

    iget-object v1, p0, Lcom/callapp/contacts/activity/missedcall/activity/-$$Lambda$BaseCallActivity$mGFgEC6pqoIon5WTJPHme5m9ICM;->f$1:Lcom/callapp/contacts/model/objectbox/SingleMissedCallData;

    iget-object v2, p0, Lcom/callapp/contacts/activity/missedcall/activity/-$$Lambda$BaseCallActivity$mGFgEC6pqoIon5WTJPHme5m9ICM;->f$2:Lcom/callapp/contacts/activity/interfaces/ContactItemViewEvents;

    invoke-virtual {v0, v1, v2, p1}, Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity;->lambda$callBtnLongClick$1$BaseCallActivity(Lcom/callapp/contacts/model/objectbox/SingleMissedCallData;Lcom/callapp/contacts/activity/interfaces/ContactItemViewEvents;Landroid/app/Activity;)V

    return-void
.end method
