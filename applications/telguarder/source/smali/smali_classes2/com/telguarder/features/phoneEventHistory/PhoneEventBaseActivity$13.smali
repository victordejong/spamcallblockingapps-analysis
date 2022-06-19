.class Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity$13;
.super Ljava/lang/Object;
.source "PhoneEventBaseActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;->updateSpamComments()V
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

    .line 537
    iput-object p1, p0, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity$13;->this$0:Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 540
    sget-boolean v0, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;->active:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity$13;->this$0:Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;

    iget-object v0, v0, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;->mPhoneEventLogAdapter:Lcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter;

    invoke-virtual {v0}, Lcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method
