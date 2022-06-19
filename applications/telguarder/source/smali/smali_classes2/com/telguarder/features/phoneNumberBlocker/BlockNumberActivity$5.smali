.class Lcom/telguarder/features/phoneNumberBlocker/BlockNumberActivity$5;
.super Ljava/lang/Object;
.source "BlockNumberActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/telguarder/features/phoneNumberBlocker/BlockNumberActivity;->setupReasonSpinner()V
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

    .line 172
    iput-object p1, p0, Lcom/telguarder/features/phoneNumberBlocker/BlockNumberActivity$5;->this$0:Lcom/telguarder/features/phoneNumberBlocker/BlockNumberActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 175
    iget-object p1, p0, Lcom/telguarder/features/phoneNumberBlocker/BlockNumberActivity$5;->this$0:Lcom/telguarder/features/phoneNumberBlocker/BlockNumberActivity;

    invoke-static {p1}, Lcom/telguarder/features/phoneNumberBlocker/BlockNumberActivity;->access$100(Lcom/telguarder/features/phoneNumberBlocker/BlockNumberActivity;)V

    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    .line 179
    iget-object p1, p0, Lcom/telguarder/features/phoneNumberBlocker/BlockNumberActivity$5;->this$0:Lcom/telguarder/features/phoneNumberBlocker/BlockNumberActivity;

    invoke-static {p1}, Lcom/telguarder/features/phoneNumberBlocker/BlockNumberActivity;->access$100(Lcom/telguarder/features/phoneNumberBlocker/BlockNumberActivity;)V

    return-void
.end method
