.class Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity$12$1;
.super Ljava/lang/Object;
.source "PhoneEventBaseActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity$12;->handle(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity$12;

.field final synthetic val$peListCurrIndex:I


# direct methods
.method constructor <init>(Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity$12;I)V
    .locals 0

    .line 527
    iput-object p1, p0, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity$12$1;->this$1:Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity$12;

    iput p2, p0, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity$12$1;->val$peListCurrIndex:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 530
    sget-boolean v0, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;->active:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity$12$1;->this$1:Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity$12;

    iget-object v0, v0, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity$12;->this$0:Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;

    iget-object v0, v0, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;->mPhoneEventLogAdapter:Lcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter;

    iget v1, p0, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity$12$1;->val$peListCurrIndex:I

    invoke-virtual {v0, v1}, Lcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter;->notifyItemChanged(I)V

    :cond_0
    return-void
.end method
