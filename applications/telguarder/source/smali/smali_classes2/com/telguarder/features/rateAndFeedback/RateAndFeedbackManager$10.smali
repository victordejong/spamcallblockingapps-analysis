.class Lcom/telguarder/features/rateAndFeedback/RateAndFeedbackManager$10;
.super Ljava/lang/Object;
.source "RateAndFeedbackManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/telguarder/features/rateAndFeedback/RateAndFeedbackManager;->showFeedbackDialog(Landroidx/appcompat/app/AppCompatActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/telguarder/features/rateAndFeedback/RateAndFeedbackManager;

.field final synthetic val$activity:Landroidx/appcompat/app/AppCompatActivity;


# direct methods
.method constructor <init>(Lcom/telguarder/features/rateAndFeedback/RateAndFeedbackManager;Landroidx/appcompat/app/AppCompatActivity;)V
    .locals 0

    .line 166
    iput-object p1, p0, Lcom/telguarder/features/rateAndFeedback/RateAndFeedbackManager$10;->this$0:Lcom/telguarder/features/rateAndFeedback/RateAndFeedbackManager;

    iput-object p2, p0, Lcom/telguarder/features/rateAndFeedback/RateAndFeedbackManager$10;->val$activity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 2

    .line 169
    iget-object p1, p0, Lcom/telguarder/features/rateAndFeedback/RateAndFeedbackManager$10;->this$0:Lcom/telguarder/features/rateAndFeedback/RateAndFeedbackManager;

    invoke-static {p1}, Lcom/telguarder/features/rateAndFeedback/RateAndFeedbackManager;->access$400(Lcom/telguarder/features/rateAndFeedback/RateAndFeedbackManager;)Landroid/app/AlertDialog;

    move-result-object p1

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    iget-object v0, p0, Lcom/telguarder/features/rateAndFeedback/RateAndFeedbackManager$10;->val$activity:Landroidx/appcompat/app/AppCompatActivity;

    const v1, 0x7f050041

    invoke-static {v0, v1}, Lcom/telguarder/helpers/ui/UiHelper;->getColorWrapper(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setTextColor(I)V

    .line 170
    iget-object p1, p0, Lcom/telguarder/features/rateAndFeedback/RateAndFeedbackManager$10;->this$0:Lcom/telguarder/features/rateAndFeedback/RateAndFeedbackManager;

    invoke-static {p1}, Lcom/telguarder/features/rateAndFeedback/RateAndFeedbackManager;->access$400(Lcom/telguarder/features/rateAndFeedback/RateAndFeedbackManager;)Landroid/app/AlertDialog;

    move-result-object p1

    const/4 v0, -0x3

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    iget-object v0, p0, Lcom/telguarder/features/rateAndFeedback/RateAndFeedbackManager$10;->val$activity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-static {v0, v1}, Lcom/telguarder/helpers/ui/UiHelper;->getColorWrapper(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setTextColor(I)V

    .line 171
    iget-object p1, p0, Lcom/telguarder/features/rateAndFeedback/RateAndFeedbackManager$10;->this$0:Lcom/telguarder/features/rateAndFeedback/RateAndFeedbackManager;

    invoke-static {p1}, Lcom/telguarder/features/rateAndFeedback/RateAndFeedbackManager;->access$400(Lcom/telguarder/features/rateAndFeedback/RateAndFeedbackManager;)Landroid/app/AlertDialog;

    move-result-object p1

    const/4 v0, -0x2

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    iget-object v0, p0, Lcom/telguarder/features/rateAndFeedback/RateAndFeedbackManager$10;->val$activity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-static {v0, v1}, Lcom/telguarder/helpers/ui/UiHelper;->getColorWrapper(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setTextColor(I)V

    return-void
.end method
