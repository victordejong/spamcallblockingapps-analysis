.class Lcom/callapp/contacts/activity/birthday/PostBirthdayActivity$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/birthday/PostBirthdayActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:[Ljava/lang/String;

.field final synthetic b:[[Ljava/lang/String;

.field final synthetic c:Lcom/callapp/contacts/activity/birthday/PostBirthdayActivity;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/birthday/PostBirthdayActivity;[Ljava/lang/String;[[Ljava/lang/String;)V
    .locals 0

    .line 277
    iput-object p1, p0, Lcom/callapp/contacts/activity/birthday/PostBirthdayActivity$3;->c:Lcom/callapp/contacts/activity/birthday/PostBirthdayActivity;

    iput-object p2, p0, Lcom/callapp/contacts/activity/birthday/PostBirthdayActivity$3;->a:[Ljava/lang/String;

    iput-object p3, p0, Lcom/callapp/contacts/activity/birthday/PostBirthdayActivity$3;->b:[[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .line 281
    invoke-static {}, Lcom/callapp/contacts/manager/popup/PopupManager;->get()Lcom/callapp/contacts/manager/popup/PopupManager;

    move-result-object p1

    iget-object v0, p0, Lcom/callapp/contacts/activity/birthday/PostBirthdayActivity$3;->c:Lcom/callapp/contacts/activity/birthday/PostBirthdayActivity;

    new-instance v1, Lcom/callapp/contacts/popup/contact/DialogSelectSingleChoice;

    const v2, 0x7f1200f4

    invoke-static {v2}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/callapp/contacts/activity/birthday/PostBirthdayActivity$3;->a:[Ljava/lang/String;

    new-instance v4, Lcom/callapp/contacts/activity/birthday/PostBirthdayActivity$3$1;

    invoke-direct {v4, p0}, Lcom/callapp/contacts/activity/birthday/PostBirthdayActivity$3$1;-><init>(Lcom/callapp/contacts/activity/birthday/PostBirthdayActivity$3;)V

    const/4 v5, 0x0

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/callapp/contacts/popup/contact/DialogSelectSingleChoice;-><init>(Ljava/lang/String;[Ljava/lang/Object;ILcom/callapp/contacts/popup/contact/DialogSelectSingleChoiceBase$SingleChoiceListener;)V

    invoke-virtual {p1, v0, v1}, Lcom/callapp/contacts/manager/popup/PopupManager;->a(Landroid/content/Context;Lcom/callapp/contacts/manager/popup/DialogPopup;)V

    return-void
.end method
