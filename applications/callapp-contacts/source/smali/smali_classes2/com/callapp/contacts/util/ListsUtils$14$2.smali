.class Lcom/callapp/contacts/util/ListsUtils$14$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/manager/popup/ActivityResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/util/ListsUtils$14;->onRowClicked(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/util/ListsUtils$14;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/util/ListsUtils$14;)V
    .locals 0

    .line 417
    iput-object p1, p0, Lcom/callapp/contacts/util/ListsUtils$14$2;->a:Lcom/callapp/contacts/util/ListsUtils$14;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V
    .locals 3

    const/4 p2, -0x1

    if-ne p3, p2, :cond_1

    .line 420
    invoke-virtual {p4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 421
    invoke-virtual {p4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    const-string p3, "fullName"

    invoke-virtual {p2, p3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 422
    invoke-virtual {p4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p3

    const-string p4, "phone nums"

    invoke-virtual {p3, p4}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_1

    .line 424
    array-length p4, p3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p4, :cond_1

    aget-object v1, p3, v0

    .line 425
    invoke-static {v1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 426
    new-instance v2, Lcom/callapp/contacts/util/ListsUtils$14$2$1;

    invoke-direct {v2, p0, v1, p2, p1}, Lcom/callapp/contacts/util/ListsUtils$14$2$1;-><init>(Lcom/callapp/contacts/util/ListsUtils$14$2;Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)V

    .line 442
    invoke-virtual {v2}, Lcom/callapp/contacts/util/ListsUtils$14$2$1;->execute()Lcom/callapp/contacts/manager/task/Task;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
