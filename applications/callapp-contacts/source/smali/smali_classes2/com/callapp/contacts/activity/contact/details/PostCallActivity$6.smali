.class Lcom/callapp/contacts/activity/contact/details/PostCallActivity$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/details/PostCallActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/contact/details/PostCallActivity;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/details/PostCallActivity;)V
    .locals 0

    .line 246
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/PostCallActivity$6;->a:Lcom/callapp/contacts/activity/contact/details/PostCallActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 249
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/PostCallActivity$6;->a:Lcom/callapp/contacts/activity/contact/details/PostCallActivity;

    invoke-static {p1}, Lcom/callapp/contacts/activity/contact/details/PostCallActivity;->access$500(Lcom/callapp/contacts/activity/contact/details/PostCallActivity;)Lcom/callapp/contacts/activity/contact/details/presenter/simple/TopSheetPresenter;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 250
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/PostCallActivity$6;->a:Lcom/callapp/contacts/activity/contact/details/PostCallActivity;

    invoke-static {p1}, Lcom/callapp/contacts/activity/contact/details/PostCallActivity;->access$500(Lcom/callapp/contacts/activity/contact/details/PostCallActivity;)Lcom/callapp/contacts/activity/contact/details/presenter/simple/TopSheetPresenter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/TopSheetPresenter;->b()V

    .line 251
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/PostCallActivity$6;->a:Lcom/callapp/contacts/activity/contact/details/PostCallActivity;

    invoke-static {p1}, Lcom/callapp/contacts/activity/contact/details/PostCallActivity;->access$500(Lcom/callapp/contacts/activity/contact/details/PostCallActivity;)Lcom/callapp/contacts/activity/contact/details/presenter/simple/TopSheetPresenter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/TopSheetPresenter;->c()V

    :cond_0
    return-void
.end method
