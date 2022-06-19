.class Lcom/telguarder/features/phoneNumberBlocker/BlockNumberActivity$2;
.super Ljava/lang/Object;
.source "BlockNumberActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


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

    .line 85
    iput-object p1, p0, Lcom/telguarder/features/phoneNumberBlocker/BlockNumberActivity$2;->this$0:Lcom/telguarder/features/phoneNumberBlocker/BlockNumberActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 91
    iget-object p1, p0, Lcom/telguarder/features/phoneNumberBlocker/BlockNumberActivity$2;->this$0:Lcom/telguarder/features/phoneNumberBlocker/BlockNumberActivity;

    invoke-static {p1}, Lcom/telguarder/features/phoneNumberBlocker/BlockNumberActivity;->access$100(Lcom/telguarder/features/phoneNumberBlocker/BlockNumberActivity;)V

    return-void
.end method
