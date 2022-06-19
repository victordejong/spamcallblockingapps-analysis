.class Lcom/unknownphone/callblocker/activity/FeedbackActivity$2;
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
    .line 51
    iput-object p1, p0, Lcom/unknownphone/callblocker/activity/FeedbackActivity$2;->e:Lcom/unknownphone/callblocker/activity/FeedbackActivity;

    iput-object p2, p0, Lcom/unknownphone/callblocker/activity/FeedbackActivity$2;->a:Landroidx/appcompat/widget/AppCompatTextView;

    iput-object p3, p0, Lcom/unknownphone/callblocker/activity/FeedbackActivity$2;->b:Landroidx/appcompat/widget/AppCompatTextView;

    iput-object p4, p0, Lcom/unknownphone/callblocker/activity/FeedbackActivity$2;->c:Landroidx/appcompat/widget/AppCompatButton;

    iput-object p5, p0, Lcom/unknownphone/callblocker/activity/FeedbackActivity$2;->d:Landroidx/appcompat/widget/AppCompatButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    const/16 v2, 0x390

    .line 54
    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/FeedbackActivity$2;->e:Lcom/unknownphone/callblocker/activity/FeedbackActivity;

    invoke-static {v0}, Lcom/unknownphone/callblocker/activity/FeedbackActivity;->a(Lcom/unknownphone/callblocker/activity/FeedbackActivity;)I

    move-result v0

    const/16 v1, 0x334

    if-ne v0, v1, :cond_1

    .line 55
    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/FeedbackActivity$2;->a:Landroidx/appcompat/widget/AppCompatTextView;

    const v1, 0x7f100033

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setText(I)V

    .line 56
    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/FeedbackActivity$2;->b:Landroidx/appcompat/widget/AppCompatTextView;

    const v1, 0x7f100031

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setText(I)V

    .line 57
    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/FeedbackActivity$2;->c:Landroidx/appcompat/widget/AppCompatButton;

    const v1, 0x7f100032

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatButton;->setText(I)V

    .line 58
    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/FeedbackActivity$2;->d:Landroidx/appcompat/widget/AppCompatButton;

    const v1, 0x7f100034

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatButton;->setText(I)V

    .line 59
    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/FeedbackActivity$2;->b:Landroidx/appcompat/widget/AppCompatTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setVisibility(I)V

    .line 60
    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/FeedbackActivity$2;->e:Lcom/unknownphone/callblocker/activity/FeedbackActivity;

    invoke-static {v0, v2}, Lcom/unknownphone/callblocker/activity/FeedbackActivity;->a(Lcom/unknownphone/callblocker/activity/FeedbackActivity;I)I

    .line 61
    const-string/jumbo v0, "User doesn\'t like the app."

    invoke-static {v0}, Lcom/unknownphone/callblocker/custom/CustomApplication;->a(Ljava/lang/String;)V

    .line 69
    :cond_0
    :goto_0
    return-void

    .line 62
    :cond_1
    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/FeedbackActivity$2;->e:Lcom/unknownphone/callblocker/activity/FeedbackActivity;

    invoke-static {v0}, Lcom/unknownphone/callblocker/activity/FeedbackActivity;->a(Lcom/unknownphone/callblocker/activity/FeedbackActivity;)I

    move-result v0

    const/16 v1, 0xeb

    if-ne v0, v1, :cond_2

    .line 63
    const-string/jumbo v0, "User likes the app but no rating."

    invoke-static {v0}, Lcom/unknownphone/callblocker/custom/CustomApplication;->a(Ljava/lang/String;)V

    .line 64
    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/FeedbackActivity$2;->e:Lcom/unknownphone/callblocker/activity/FeedbackActivity;

    invoke-static {v0}, Lcom/unknownphone/callblocker/activity/FeedbackActivity;->b(Lcom/unknownphone/callblocker/activity/FeedbackActivity;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "show_feedback_option_in_settings"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 65
    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/FeedbackActivity$2;->e:Lcom/unknownphone/callblocker/activity/FeedbackActivity;

    invoke-virtual {v0}, Lcom/unknownphone/callblocker/activity/FeedbackActivity;->finish()V

    goto :goto_0

    .line 66
    :cond_2
    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/FeedbackActivity$2;->e:Lcom/unknownphone/callblocker/activity/FeedbackActivity;

    invoke-static {v0}, Lcom/unknownphone/callblocker/activity/FeedbackActivity;->a(Lcom/unknownphone/callblocker/activity/FeedbackActivity;)I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 67
    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/FeedbackActivity$2;->e:Lcom/unknownphone/callblocker/activity/FeedbackActivity;

    invoke-virtual {v0}, Lcom/unknownphone/callblocker/activity/FeedbackActivity;->finish()V

    goto :goto_0
.end method
