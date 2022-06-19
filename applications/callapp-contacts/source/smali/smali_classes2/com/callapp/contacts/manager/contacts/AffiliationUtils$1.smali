.class final Lcom/callapp/contacts/manager/contacts/AffiliationUtils$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/popup/contact/AdapterText$AdapterEvents;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/manager/contacts/AffiliationUtils;->a(Landroid/content/Context;Lcom/callapp/contacts/model/contact/ContactData;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:[Ljava/lang/String;

.field final synthetic c:Lcom/callapp/contacts/popup/contact/DialogList;


# direct methods
.method constructor <init>(Landroid/content/Context;[Ljava/lang/String;Lcom/callapp/contacts/popup/contact/DialogList;)V
    .locals 0

    .line 306
    iput-object p1, p0, Lcom/callapp/contacts/manager/contacts/AffiliationUtils$1;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/callapp/contacts/manager/contacts/AffiliationUtils$1;->b:[Ljava/lang/String;

    iput-object p3, p0, Lcom/callapp/contacts/manager/contacts/AffiliationUtils$1;->c:Lcom/callapp/contacts/popup/contact/DialogList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onRowClicked(I)V
    .locals 1

    .line 309
    iget-object v0, p0, Lcom/callapp/contacts/manager/contacts/AffiliationUtils$1;->a:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/callapp/contacts/util/AndroidUtils;->a(Landroid/app/Activity;)V

    .line 310
    iget-object v0, p0, Lcom/callapp/contacts/manager/contacts/AffiliationUtils$1;->b:[Ljava/lang/String;

    aget-object p1, v0, p1

    .line 311
    iget-object v0, p0, Lcom/callapp/contacts/manager/contacts/AffiliationUtils$1;->a:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/callapp/contacts/util/Activities;->c(Landroid/content/Context;Ljava/lang/String;)V

    .line 312
    iget-object p1, p0, Lcom/callapp/contacts/manager/contacts/AffiliationUtils$1;->c:Lcom/callapp/contacts/popup/contact/DialogList;

    invoke-virtual {p1}, Lcom/callapp/contacts/popup/contact/DialogList;->dismiss()V

    return-void
.end method
