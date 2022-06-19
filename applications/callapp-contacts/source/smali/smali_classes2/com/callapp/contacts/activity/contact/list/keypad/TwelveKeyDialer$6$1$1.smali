.class Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer$6$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/manager/popup/ActivityResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer$6$1;->onClickListener(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer$6$1;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer$6$1;)V
    .locals 0

    .line 658
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer$6$1$1;->a:Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer$6$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V
    .locals 0

    const/4 p1, -0x1

    if-ne p3, p1, :cond_1

    if-eqz p4, :cond_1

    .line 663
    invoke-virtual {p4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    .line 664
    new-instance p2, Landroid/util/Pair;

    const-string p3, "phone"

    .line 665
    invoke-virtual {p1, p3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string p4, "fullName"

    .line 666
    invoke-virtual {p1, p4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p3, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 667
    iget-object p1, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {p1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {p1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer$6$1$1;->a:Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer$6$1;

    iget p1, p1, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer$6$1;->a:I

    if-eqz p1, :cond_0

    .line 668
    new-instance p1, Lcom/callapp/contacts/activity/settings/SpeedDialActivity$SpeedDialData;

    iget-object p3, p0, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer$6$1$1;->a:Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer$6$1;

    iget p3, p3, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer$6$1;->a:I

    iget-object p4, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p4, Ljava/lang/String;

    iget-object p2, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p2, Ljava/lang/String;

    invoke-direct {p1, p3, p4, p2}, Lcom/callapp/contacts/activity/settings/SpeedDialActivity$SpeedDialData;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 669
    sget-object p2, Lcom/callapp/contacts/manager/preferences/Prefs;->aE:Lcom/callapp/contacts/manager/preferences/prefs/ArrayPref;

    invoke-virtual {p2}, Lcom/callapp/contacts/manager/preferences/prefs/ArrayPref;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    invoke-static {p2}, Lcom/callapp/contacts/activity/settings/SpeedDialActivity;->a([Ljava/lang/String;)Ljava/util/List;

    move-result-object p2

    .line 670
    invoke-interface {p2, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p3

    .line 671
    invoke-interface {p2, p3, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 672
    invoke-static {p2}, Lcom/callapp/contacts/activity/settings/SpeedDialActivity;->a(Ljava/util/List;)V

    return-void

    .line 674
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
