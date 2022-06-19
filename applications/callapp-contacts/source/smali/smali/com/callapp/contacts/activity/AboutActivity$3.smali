.class Lcom/callapp/contacts/activity/AboutActivity$3;
.super Lcom/callapp/contacts/util/DefaultInterfaceImplUtils$ClickListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/AboutActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/EditText;

.field final synthetic b:Landroid/app/Dialog;

.field final synthetic c:Lcom/callapp/contacts/activity/AboutActivity;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/AboutActivity;Landroid/widget/EditText;Landroid/app/Dialog;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/callapp/contacts/activity/AboutActivity$3;->c:Lcom/callapp/contacts/activity/AboutActivity;

    iput-object p2, p0, Lcom/callapp/contacts/activity/AboutActivity$3;->a:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/callapp/contacts/activity/AboutActivity$3;->b:Landroid/app/Dialog;

    invoke-direct {p0}, Lcom/callapp/contacts/util/DefaultInterfaceImplUtils$ClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 2

    .line 81
    iget-object p1, p0, Lcom/callapp/contacts/activity/AboutActivity$3;->a:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "9513"

    invoke-static {p1, v0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 82
    iget-object p1, p0, Lcom/callapp/contacts/activity/AboutActivity$3;->b:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 83
    sget-object p1, Lcom/callapp/contacts/manager/preferences/Prefs;->ed:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->set(Ljava/lang/Object;)V

    .line 84
    iget-object p1, p0, Lcom/callapp/contacts/activity/AboutActivity$3;->c:Lcom/callapp/contacts/activity/AboutActivity;

    const v0, 0x7f120537

    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/callapp/contacts/util/AndroidUtils;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 87
    :cond_0
    invoke-static {}, Lcom/callapp/contacts/manager/FeedbackManager;->get()Lcom/callapp/contacts/manager/FeedbackManager;

    move-result-object p1

    const v0, 0x7f1203c7

    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 1111
    invoke-virtual {p1, v0, v1}, Lcom/callapp/contacts/manager/FeedbackManager;->a(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 88
    iget-object p1, p0, Lcom/callapp/contacts/activity/AboutActivity$3;->b:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
