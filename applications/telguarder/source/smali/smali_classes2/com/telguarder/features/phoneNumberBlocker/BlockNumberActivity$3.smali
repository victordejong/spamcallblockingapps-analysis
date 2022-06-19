.class Lcom/telguarder/features/phoneNumberBlocker/BlockNumberActivity$3;
.super Ljava/lang/Object;
.source "BlockNumberActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/telguarder/features/phoneNumberBlocker/BlockNumberActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/telguarder/features/phoneNumberBlocker/BlockNumberActivity;


# direct methods
.method constructor <init>(Lcom/telguarder/features/phoneNumberBlocker/BlockNumberActivity;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/telguarder/features/phoneNumberBlocker/BlockNumberActivity$3;->this$0:Lcom/telguarder/features/phoneNumberBlocker/BlockNumberActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 98
    iget-object p1, p0, Lcom/telguarder/features/phoneNumberBlocker/BlockNumberActivity$3;->this$0:Lcom/telguarder/features/phoneNumberBlocker/BlockNumberActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/telguarder/features/phoneNumberBlocker/BlockNumberActivity;->access$200(Lcom/telguarder/features/phoneNumberBlocker/BlockNumberActivity;Z)V

    .line 99
    iget-object p1, p0, Lcom/telguarder/features/phoneNumberBlocker/BlockNumberActivity$3;->this$0:Lcom/telguarder/features/phoneNumberBlocker/BlockNumberActivity;

    invoke-virtual {p1}, Lcom/telguarder/features/phoneNumberBlocker/BlockNumberActivity;->reportSpamCall()V

    .line 100
    iget-object p1, p0, Lcom/telguarder/features/phoneNumberBlocker/BlockNumberActivity$3;->this$0:Lcom/telguarder/features/phoneNumberBlocker/BlockNumberActivity;

    invoke-static {p1}, Lcom/telguarder/features/phoneNumberBlocker/BlockNumberActivity;->access$300(Lcom/telguarder/features/phoneNumberBlocker/BlockNumberActivity;)V

    return-void
.end method
