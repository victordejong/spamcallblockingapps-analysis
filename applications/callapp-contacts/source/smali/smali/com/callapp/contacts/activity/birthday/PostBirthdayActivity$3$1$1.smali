.class Lcom/callapp/contacts/activity/birthday/PostBirthdayActivity$3$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/popup/contact/AdapterText$AdapterEvents;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/birthday/PostBirthdayActivity$3$1;->b(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:[Ljava/lang/String;

.field final synthetic b:Lcom/callapp/contacts/popup/contact/DialogList;

.field final synthetic c:Lcom/callapp/contacts/activity/birthday/PostBirthdayActivity$3$1;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/birthday/PostBirthdayActivity$3$1;[Ljava/lang/String;Lcom/callapp/contacts/popup/contact/DialogList;)V
    .locals 0

    .line 297
    iput-object p1, p0, Lcom/callapp/contacts/activity/birthday/PostBirthdayActivity$3$1$1;->c:Lcom/callapp/contacts/activity/birthday/PostBirthdayActivity$3$1;

    iput-object p2, p0, Lcom/callapp/contacts/activity/birthday/PostBirthdayActivity$3$1$1;->a:[Ljava/lang/String;

    iput-object p3, p0, Lcom/callapp/contacts/activity/birthday/PostBirthdayActivity$3$1$1;->b:Lcom/callapp/contacts/popup/contact/DialogList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRowClicked(I)V
    .locals 2

    .line 300
    iget-object v0, p0, Lcom/callapp/contacts/activity/birthday/PostBirthdayActivity$3$1$1;->c:Lcom/callapp/contacts/activity/birthday/PostBirthdayActivity$3$1;

    iget-object v0, v0, Lcom/callapp/contacts/activity/birthday/PostBirthdayActivity$3$1;->a:Lcom/callapp/contacts/activity/birthday/PostBirthdayActivity$3;

    iget-object v0, v0, Lcom/callapp/contacts/activity/birthday/PostBirthdayActivity$3;->c:Lcom/callapp/contacts/activity/birthday/PostBirthdayActivity;

    invoke-static {v0}, Lcom/callapp/contacts/activity/birthday/PostBirthdayActivity;->d(Lcom/callapp/contacts/activity/birthday/PostBirthdayActivity;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/activity/birthday/PostBirthdayActivity$3$1$1;->a:[Ljava/lang/String;

    aget-object p1, v1, p1

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 301
    iget-object p1, p0, Lcom/callapp/contacts/activity/birthday/PostBirthdayActivity$3$1$1;->b:Lcom/callapp/contacts/popup/contact/DialogList;

    invoke-virtual {p1}, Lcom/callapp/contacts/popup/contact/DialogList;->dismiss()V

    return-void
.end method
