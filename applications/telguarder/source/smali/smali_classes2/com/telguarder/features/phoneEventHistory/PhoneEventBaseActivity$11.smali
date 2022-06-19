.class Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity$11;
.super Ljava/lang/Object;
.source "PhoneEventBaseActivity.java"

# interfaces
.implements Lcom/telguarder/features/numberLookup/PhoneEventLogManager$CallLogUpdateCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;


# direct methods
.method constructor <init>(Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;)V
    .locals 0

    .line 498
    iput-object p1, p0, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity$11;->this$0:Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUpdateFinished(Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/telguarder/features/numberLookup/PhoneEvent;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/telguarder/features/numberLookup/PhoneEvent;",
            ">;Z)V"
        }
    .end annotation

    .line 501
    iget-object v0, p0, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity$11;->this$0:Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;

    new-instance v1, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity$11$1;

    invoke-direct {v1, p0, p3, p2, p1}, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity$11$1;-><init>(Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity$11;ZLjava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onUpdateNotNeeded()V
    .locals 1

    .line 518
    iget-object v0, p0, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity$11;->this$0:Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;

    invoke-static {v0}, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;->access$1300(Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;)V

    return-void
.end method
