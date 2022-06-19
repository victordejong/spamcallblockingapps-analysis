.class Lcom/telguarder/features/phoneNumberBlocker/BlockNumberActivity$4;
.super Lcom/telguarder/helpers/backend/BackendCallbackListener;
.source "BlockNumberActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/telguarder/features/phoneNumberBlocker/BlockNumberActivity;->reportSpamCall()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/telguarder/helpers/backend/BackendCallbackListener<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/telguarder/features/phoneNumberBlocker/BlockNumberActivity;


# direct methods
.method constructor <init>(Lcom/telguarder/features/phoneNumberBlocker/BlockNumberActivity;)V
    .locals 0

    .line 146
    iput-object p1, p0, Lcom/telguarder/features/phoneNumberBlocker/BlockNumberActivity$4;->this$0:Lcom/telguarder/features/phoneNumberBlocker/BlockNumberActivity;

    invoke-direct {p0}, Lcom/telguarder/helpers/backend/BackendCallbackListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;)V
    .locals 1

    .line 157
    iget-object p1, p0, Lcom/telguarder/features/phoneNumberBlocker/BlockNumberActivity$4;->this$0:Lcom/telguarder/features/phoneNumberBlocker/BlockNumberActivity;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/telguarder/features/phoneNumberBlocker/BlockNumberActivity;->access$200(Lcom/telguarder/features/phoneNumberBlocker/BlockNumberActivity;Z)V

    .line 158
    iget-object p1, p0, Lcom/telguarder/features/phoneNumberBlocker/BlockNumberActivity$4;->this$0:Lcom/telguarder/features/phoneNumberBlocker/BlockNumberActivity;

    const v0, 0x7f10003e

    invoke-virtual {p1, v0}, Lcom/telguarder/features/phoneNumberBlocker/BlockNumberActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/telguarder/features/phoneNumberBlocker/BlockNumberActivity;->access$400(Lcom/telguarder/features/phoneNumberBlocker/BlockNumberActivity;Ljava/lang/String;)V

    return-void
.end method

.method public onStart()V
    .locals 0

    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 2

    .line 151
    iget-object p1, p0, Lcom/telguarder/features/phoneNumberBlocker/BlockNumberActivity$4;->this$0:Lcom/telguarder/features/phoneNumberBlocker/BlockNumberActivity;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/telguarder/features/phoneNumberBlocker/BlockNumberActivity;->access$200(Lcom/telguarder/features/phoneNumberBlocker/BlockNumberActivity;Z)V

    .line 152
    iget-object p1, p0, Lcom/telguarder/features/phoneNumberBlocker/BlockNumberActivity$4;->this$0:Lcom/telguarder/features/phoneNumberBlocker/BlockNumberActivity;

    const v1, 0x7f10003f

    invoke-virtual {p1, v1}, Lcom/telguarder/features/phoneNumberBlocker/BlockNumberActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/telguarder/features/phoneNumberBlocker/BlockNumberActivity;->access$400(Lcom/telguarder/features/phoneNumberBlocker/BlockNumberActivity;Ljava/lang/String;)V

    .line 153
    iget-object p1, p0, Lcom/telguarder/features/phoneNumberBlocker/BlockNumberActivity$4;->this$0:Lcom/telguarder/features/phoneNumberBlocker/BlockNumberActivity;

    invoke-static {p1, v0}, Lcom/telguarder/features/phoneNumberBlocker/BlockNumberActivity;->access$500(Lcom/telguarder/features/phoneNumberBlocker/BlockNumberActivity;Z)V

    return-void
.end method
