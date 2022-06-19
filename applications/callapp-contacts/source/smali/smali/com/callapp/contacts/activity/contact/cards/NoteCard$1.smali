.class Lcom/callapp/contacts/activity/contact/cards/NoteCard$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/cards/NoteCard;->refreshListData(Ljava/util/List;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I

.field final synthetic c:Lcom/callapp/contacts/activity/contact/cards/NoteCard;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/cards/NoteCard;Ljava/lang/String;I)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/NoteCard$1;->c:Lcom/callapp/contacts/activity/contact/cards/NoteCard;

    iput-object p2, p0, Lcom/callapp/contacts/activity/contact/cards/NoteCard$1;->a:Ljava/lang/String;

    iput p3, p0, Lcom/callapp/contacts/activity/contact/cards/NoteCard$1;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 111
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v0

    const-string v1, "Contact Details"

    const-string v2, "Notes card clicked"

    const-string v3, "Add or edit note"

    invoke-virtual {v0, v1, v2, v3}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 112
    invoke-static {p1, v0}, Lcom/callapp/contacts/util/AndroidUtils;->a(Landroid/view/View;I)V

    .line 113
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/NoteCard$1;->c:Lcom/callapp/contacts/activity/contact/cards/NoteCard;

    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/NoteCard$1;->a:Ljava/lang/String;

    iget v1, p0, Lcom/callapp/contacts/activity/contact/cards/NoteCard$1;->b:I

    invoke-static {p1, v0, v1}, Lcom/callapp/contacts/activity/contact/cards/NoteCard;->access$000(Lcom/callapp/contacts/activity/contact/cards/NoteCard;Ljava/lang/String;I)V

    return-void
.end method
