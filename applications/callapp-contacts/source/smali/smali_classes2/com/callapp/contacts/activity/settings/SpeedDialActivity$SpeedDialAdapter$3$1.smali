.class Lcom/callapp/contacts/activity/settings/SpeedDialActivity$SpeedDialAdapter$3$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/manager/popup/ActivityResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/settings/SpeedDialActivity$SpeedDialAdapter$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/settings/SpeedDialActivity$SpeedDialAdapter$3;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/settings/SpeedDialActivity$SpeedDialAdapter$3;)V
    .locals 0

    .line 234
    iput-object p1, p0, Lcom/callapp/contacts/activity/settings/SpeedDialActivity$SpeedDialAdapter$3$1;->a:Lcom/callapp/contacts/activity/settings/SpeedDialActivity$SpeedDialAdapter$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V
    .locals 1

    const/4 p1, -0x1

    if-ne p3, p1, :cond_1

    .line 240
    iget-object p1, p0, Lcom/callapp/contacts/activity/settings/SpeedDialActivity$SpeedDialAdapter$3$1;->a:Lcom/callapp/contacts/activity/settings/SpeedDialActivity$SpeedDialAdapter$3;

    iget-object p1, p1, Lcom/callapp/contacts/activity/settings/SpeedDialActivity$SpeedDialAdapter$3;->a:Lcom/callapp/contacts/activity/settings/SpeedDialActivity$SpeedDialData;

    if-eqz p1, :cond_1

    .line 241
    iget-object p1, p0, Lcom/callapp/contacts/activity/settings/SpeedDialActivity$SpeedDialAdapter$3$1;->a:Lcom/callapp/contacts/activity/settings/SpeedDialActivity$SpeedDialAdapter$3;

    iget-object p1, p1, Lcom/callapp/contacts/activity/settings/SpeedDialActivity$SpeedDialAdapter$3;->a:Lcom/callapp/contacts/activity/settings/SpeedDialActivity$SpeedDialData;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/settings/SpeedDialActivity$SpeedDialData;->getDigit()I

    move-result p1

    .line 242
    invoke-virtual {p4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    .line 243
    new-instance p3, Landroid/util/Pair;

    const-string p4, "phone"

    .line 244
    invoke-virtual {p2, p4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    const-string v0, "fullName"

    .line 245
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p3, p4, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 246
    iget-object p2, p3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p2, Ljava/lang/CharSequence;

    invoke-static {p2}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p2, Ljava/lang/CharSequence;

    invoke-static {p2}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 247
    new-instance p2, Lcom/callapp/contacts/activity/settings/SpeedDialActivity$SpeedDialData;

    iget-object p4, p3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p4, Ljava/lang/String;

    iget-object p3, p3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p3, Ljava/lang/String;

    invoke-direct {p2, p1, p4, p3}, Lcom/callapp/contacts/activity/settings/SpeedDialActivity$SpeedDialData;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 248
    iget-object p1, p0, Lcom/callapp/contacts/activity/settings/SpeedDialActivity$SpeedDialAdapter$3$1;->a:Lcom/callapp/contacts/activity/settings/SpeedDialActivity$SpeedDialAdapter$3;

    iget-object p1, p1, Lcom/callapp/contacts/activity/settings/SpeedDialActivity$SpeedDialAdapter$3;->b:Lcom/callapp/contacts/activity/settings/SpeedDialActivity$SpeedDialAdapter;

    iget-object p1, p1, Lcom/callapp/contacts/activity/settings/SpeedDialActivity$SpeedDialAdapter;->c:Lcom/callapp/contacts/activity/settings/SpeedDialActivity;

    invoke-static {p1}, Lcom/callapp/contacts/activity/settings/SpeedDialActivity;->a(Lcom/callapp/contacts/activity/settings/SpeedDialActivity;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    .line 249
    iget-object p3, p0, Lcom/callapp/contacts/activity/settings/SpeedDialActivity$SpeedDialAdapter$3$1;->a:Lcom/callapp/contacts/activity/settings/SpeedDialActivity$SpeedDialAdapter$3;

    iget-object p3, p3, Lcom/callapp/contacts/activity/settings/SpeedDialActivity$SpeedDialAdapter$3;->b:Lcom/callapp/contacts/activity/settings/SpeedDialActivity$SpeedDialAdapter;

    iget-object p3, p3, Lcom/callapp/contacts/activity/settings/SpeedDialActivity$SpeedDialAdapter;->c:Lcom/callapp/contacts/activity/settings/SpeedDialActivity;

    invoke-static {p3}, Lcom/callapp/contacts/activity/settings/SpeedDialActivity;->a(Lcom/callapp/contacts/activity/settings/SpeedDialActivity;)Ljava/util/List;

    move-result-object p3

    invoke-interface {p3, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 250
    iget-object p1, p0, Lcom/callapp/contacts/activity/settings/SpeedDialActivity$SpeedDialAdapter$3$1;->a:Lcom/callapp/contacts/activity/settings/SpeedDialActivity$SpeedDialAdapter$3;

    iget-object p1, p1, Lcom/callapp/contacts/activity/settings/SpeedDialActivity$SpeedDialAdapter$3;->b:Lcom/callapp/contacts/activity/settings/SpeedDialActivity$SpeedDialAdapter;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/settings/SpeedDialActivity$SpeedDialAdapter;->notifyDataSetChanged()V

    return-void

    .line 252
    :cond_0
    invoke-static {}, Lcom/callapp/contacts/manager/FeedbackManager;->get()Lcom/callapp/contacts/manager/FeedbackManager;

    move-result-object p1

    const p2, 0x7f120681

    invoke-static {p2}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    .line 1111
    invoke-virtual {p1, p2, p3}, Lcom/callapp/contacts/manager/FeedbackManager;->a(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_1
    return-void
.end method
