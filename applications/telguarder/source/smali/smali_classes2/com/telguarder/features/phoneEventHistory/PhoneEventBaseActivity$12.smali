.class Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity$12;
.super Ljava/lang/Object;
.source "PhoneEventBaseActivity.java"

# interfaces
.implements Lcom/telguarder/features/numberLookup/PhoneEventLogManager$DownloadSpamCommentCompletionHandler;


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

    .line 524
    iput-object p1, p0, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity$12;->this$0:Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handle(I)V
    .locals 2

    .line 527
    iget-object v0, p0, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity$12;->this$0:Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;

    new-instance v1, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity$12$1;

    invoke-direct {v1, p0, p1}, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity$12$1;-><init>(Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity$12;I)V

    invoke-virtual {v0, v1}, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
