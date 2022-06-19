.class Lcom/unknownphone/callblocker/activity/FeedbackActivity$3;
.super Ljava/lang/Object;
.source "FeedbackActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unknownphone/callblocker/activity/FeedbackActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/appcompat/widget/AppCompatTextView;

.field final synthetic b:Landroidx/appcompat/widget/AppCompatTextView;

.field final synthetic c:Landroidx/appcompat/widget/AppCompatButton;

.field final synthetic d:Landroidx/appcompat/widget/AppCompatButton;

.field final synthetic e:Lcom/unknownphone/callblocker/activity/FeedbackActivity;


# direct methods
.method constructor <init>(Lcom/unknownphone/callblocker/activity/FeedbackActivity;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatButton;Landroidx/appcompat/widget/AppCompatButton;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/unknownphone/callblocker/activity/FeedbackActivity$3;->e:Lcom/unknownphone/callblocker/activity/FeedbackActivity;

    iput-object p2, p0, Lcom/unknownphone/callblocker/activity/FeedbackActivity$3;->a:Landroidx/appcompat/widget/AppCompatTextView;

    iput-object p3, p0, Lcom/unknownphone/callblocker/activity/FeedbackActivity$3;->b:Landroidx/appcompat/widget/AppCompatTextView;

    iput-object p4, p0, Lcom/unknownphone/callblocker/activity/FeedbackActivity$3;->c:Landroidx/appcompat/widget/AppCompatButton;

    iput-object p5, p0, Lcom/unknownphone/callblocker/activity/FeedbackActivity$3;->d:Landroidx/appcompat/widget/AppCompatButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    const/16 v2, 0xeb

    .line 74
    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/FeedbackActivity$3;->e:Lcom/unknownphone/callblocker/activity/FeedbackActivity;

    invoke-static {v0}, Lcom/unknownphone/callblocker/activity/FeedbackActivity;->a(Lcom/unknownphone/callblocker/activity/FeedbackActivity;)I

    move-result v0

    const/16 v1, 0x334

    if-ne v0, v1, :cond_1

    .line 75
    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/FeedbackActivity$3;->a:Landroidx/appcompat/widget/AppCompatTextView;

    const v1, 0x7f10003a

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setText(I)V

    .line 76
    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/FeedbackActivity$3;->b:Landroidx/appcompat/widget/AppCompatTextView;

    const v1, 0x7f100038

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setText(I)V

    .line 77
    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/FeedbackActivity$3;->c:Landroidx/appcompat/widget/AppCompatButton;

    const v1, 0x7f100039

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatButton;->setText(I)V

    .line 78
    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/FeedbackActivity$3;->d:Landroidx/appcompat/widget/AppCompatButton;

    const v1, 0x7f10003b

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatButton;->setText(I)V

    .line 79
    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/FeedbackActivity$3;->b:Landroidx/appcompat/widget/AppCompatTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setVisibility(I)V

    .line 80
    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/FeedbackActivity$3;->e:Lcom/unknownphone/callblocker/activity/FeedbackActivity;

    invoke-static {v0, v2}, Lcom/unknownphone/callblocker/activity/FeedbackActivity;->a(Lcom/unknownphone/callblocker/activity/FeedbackActivity;I)I

    .line 89
    :cond_0
    :goto_0
    return-void

    .line 81
    :cond_1
    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/FeedbackActivity$3;->e:Lcom/unknownphone/callblocker/activity/FeedbackActivity;

    invoke-static {v0}, Lcom/unknownphone/callblocker/activity/FeedbackActivity;->a(Lcom/unknownphone/callblocker/activity/FeedbackActivity;)I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 82
    const-string/jumbo v0, "User likes the app and rated it."

    invoke-static {v0}, Lcom/unknownphone/callblocker/custom/CustomApplication;->a(Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/FeedbackActivity$3;->e:Lcom/unknownphone/callblocker/activity/FeedbackActivity;

    invoke-virtual {v0}, Lcom/unknownphone/callblocker/activity/FeedbackActivity;->finish()V

    .line 84
    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/FeedbackActivity$3;->e:Lcom/unknownphone/callblocker/activity/FeedbackActivity;

    invoke-static {v0}, Lcom/unknownphone/callblocker/custom/g;->b(Landroid/content/Context;)V

    goto :goto_0

    .line 85
    :cond_2
    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/FeedbackActivity$3;->e:Lcom/unknownphone/callblocker/activity/FeedbackActivity;

    invoke-static {v0}, Lcom/unknownphone/callblocker/activity/FeedbackActivity;->a(Lcom/unknownphone/callblocker/activity/FeedbackActivity;)I

    move-result v0

    const/16 v1, 0x390

    if-ne v0, v1, :cond_0

    .line 86
    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/FeedbackActivity$3;->e:Lcom/unknownphone/callblocker/activity/FeedbackActivity;

    invoke-virtual {v0}, Lcom/unknownphone/callblocker/activity/FeedbackActivity;->finish()V

    .line 87
    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/FeedbackActivity$3;->e:Lcom/unknownphone/callblocker/activity/FeedbackActivity;

    invoke-static {v0}, Lcom/unknownphone/callblocker/activity/FeedbackActivity;->c(Lcom/unknownphone/callblocker/activity/FeedbackActivity;)V

    goto :goto_0
.end method
