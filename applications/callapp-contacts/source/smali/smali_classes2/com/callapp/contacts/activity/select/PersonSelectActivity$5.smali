.class Lcom/callapp/contacts/activity/select/PersonSelectActivity$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/select/PersonSelectActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/select/PersonSelectActivity;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/select/PersonSelectActivity;)V
    .locals 0

    .line 471
    iput-object p1, p0, Lcom/callapp/contacts/activity/select/PersonSelectActivity$5;->a:Lcom/callapp/contacts/activity/select/PersonSelectActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x1

    .line 475
    invoke-static {p1, v0}, Lcom/callapp/contacts/util/AndroidUtils;->a(Landroid/view/View;I)V

    .line 476
    iget-object p1, p0, Lcom/callapp/contacts/activity/select/PersonSelectActivity$5;->a:Lcom/callapp/contacts/activity/select/PersonSelectActivity;

    invoke-static {p1}, Lcom/callapp/contacts/activity/select/PersonSelectActivity;->e(Lcom/callapp/contacts/activity/select/PersonSelectActivity;)Landroid/widget/CheckBox;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 477
    iget-object p1, p0, Lcom/callapp/contacts/activity/select/PersonSelectActivity$5;->a:Lcom/callapp/contacts/activity/select/PersonSelectActivity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/activity/select/PersonSelectActivity;->setSearchText(Ljava/lang/String;)V

    .line 479
    iget-object p1, p0, Lcom/callapp/contacts/activity/select/PersonSelectActivity$5;->a:Lcom/callapp/contacts/activity/select/PersonSelectActivity;

    invoke-static {p1}, Lcom/callapp/contacts/activity/select/PersonSelectActivity;->e(Lcom/callapp/contacts/activity/select/PersonSelectActivity;)Landroid/widget/CheckBox;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setVisibility(I)V

    :cond_0
    return-void
.end method
