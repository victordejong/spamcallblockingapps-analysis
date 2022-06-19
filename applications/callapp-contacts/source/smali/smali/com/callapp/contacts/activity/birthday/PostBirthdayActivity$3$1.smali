.class Lcom/callapp/contacts/activity/birthday/PostBirthdayActivity$3$1;
.super Lcom/callapp/contacts/popup/contact/DialogSelectSingleChoiceBase$SingleChoiceListenerImpel;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/birthday/PostBirthdayActivity$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/birthday/PostBirthdayActivity$3;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/birthday/PostBirthdayActivity$3;)V
    .locals 0

    .line 282
    iput-object p1, p0, Lcom/callapp/contacts/activity/birthday/PostBirthdayActivity$3$1;->a:Lcom/callapp/contacts/activity/birthday/PostBirthdayActivity$3;

    invoke-direct {p0}, Lcom/callapp/contacts/popup/contact/DialogSelectSingleChoiceBase$SingleChoiceListenerImpel;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(I)V
    .locals 9

    .line 286
    iget-object v0, p0, Lcom/callapp/contacts/activity/birthday/PostBirthdayActivity$3$1;->a:Lcom/callapp/contacts/activity/birthday/PostBirthdayActivity$3;

    iget-object v0, v0, Lcom/callapp/contacts/activity/birthday/PostBirthdayActivity$3;->b:[[Ljava/lang/String;

    array-length v0, v0

    if-ge p1, v0, :cond_1

    .line 288
    iget-object v0, p0, Lcom/callapp/contacts/activity/birthday/PostBirthdayActivity$3$1;->a:Lcom/callapp/contacts/activity/birthday/PostBirthdayActivity$3;

    iget-object v0, v0, Lcom/callapp/contacts/activity/birthday/PostBirthdayActivity$3;->b:[[Ljava/lang/String;

    aget-object v0, v0, p1

    .line 289
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 291
    array-length v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    const/4 v6, 0x1

    if-ge v4, v2, :cond_0

    aget-object v7, v0, v4

    .line 292
    new-instance v8, Lcom/callapp/contacts/popup/contact/AdapterText$ItemText;

    invoke-direct {v8, v7, v5}, Lcom/callapp/contacts/popup/contact/AdapterText$ItemText;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/2addr v5, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 295
    :cond_0
    new-instance v2, Lcom/callapp/contacts/popup/contact/DialogList;

    const v4, 0x7f1200f5

    new-array v5, v6, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/callapp/contacts/activity/birthday/PostBirthdayActivity$3$1;->a:Lcom/callapp/contacts/activity/birthday/PostBirthdayActivity$3;

    iget-object v7, v7, Lcom/callapp/contacts/activity/birthday/PostBirthdayActivity$3;->a:[Ljava/lang/String;

    aget-object p1, v7, p1

    aput-object p1, v5, v3

    invoke-static {v4, v5}, Lcom/callapp/contacts/util/Activities;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1, v6}, Lcom/callapp/contacts/popup/contact/DialogList;-><init>(Ljava/lang/String;Z)V

    .line 296
    new-instance p1, Lcom/callapp/contacts/popup/contact/AdapterText;

    iget-object v3, p0, Lcom/callapp/contacts/activity/birthday/PostBirthdayActivity$3$1;->a:Lcom/callapp/contacts/activity/birthday/PostBirthdayActivity$3;

    iget-object v3, v3, Lcom/callapp/contacts/activity/birthday/PostBirthdayActivity$3;->c:Lcom/callapp/contacts/activity/birthday/PostBirthdayActivity;

    const v4, 0x7f0d00ab

    invoke-direct {p1, v3, v4, v1}, Lcom/callapp/contacts/popup/contact/AdapterText;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 297
    new-instance v1, Lcom/callapp/contacts/activity/birthday/PostBirthdayActivity$3$1$1;

    invoke-direct {v1, p0, v0, v2}, Lcom/callapp/contacts/activity/birthday/PostBirthdayActivity$3$1$1;-><init>(Lcom/callapp/contacts/activity/birthday/PostBirthdayActivity$3$1;[Ljava/lang/String;Lcom/callapp/contacts/popup/contact/DialogList;)V

    invoke-virtual {p1, v1}, Lcom/callapp/contacts/popup/contact/AdapterText;->setListener(Lcom/callapp/contacts/popup/contact/AdapterText$AdapterEvents;)V

    .line 304
    invoke-virtual {v2, p1}, Lcom/callapp/contacts/popup/contact/DialogList;->setAdapter(Landroid/widget/ListAdapter;)V

    const p1, 0x7f060026

    .line 305
    invoke-static {p1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result p1

    invoke-virtual {v2, p1}, Lcom/callapp/contacts/popup/contact/DialogList;->setBackgroundColor(I)V

    .line 306
    invoke-static {}, Lcom/callapp/contacts/manager/popup/PopupManager;->get()Lcom/callapp/contacts/manager/popup/PopupManager;

    move-result-object p1

    iget-object v0, p0, Lcom/callapp/contacts/activity/birthday/PostBirthdayActivity$3$1;->a:Lcom/callapp/contacts/activity/birthday/PostBirthdayActivity$3;

    iget-object v0, v0, Lcom/callapp/contacts/activity/birthday/PostBirthdayActivity$3;->c:Lcom/callapp/contacts/activity/birthday/PostBirthdayActivity;

    invoke-virtual {p1, v0, v2}, Lcom/callapp/contacts/manager/popup/PopupManager;->a(Landroid/content/Context;Lcom/callapp/contacts/manager/popup/DialogPopup;)V

    :cond_1
    return-void
.end method
