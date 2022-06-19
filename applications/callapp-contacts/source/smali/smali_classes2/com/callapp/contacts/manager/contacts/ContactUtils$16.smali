.class final Lcom/callapp/contacts/manager/contacts/ContactUtils$16;
.super Lcom/callapp/contacts/manager/task/Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/manager/contacts/ContactUtils;->a(Landroid/app/Activity;IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:J


# direct methods
.method constructor <init>(Ljava/lang/String;J)V
    .locals 0

    .line 1521
    iput-object p1, p0, Lcom/callapp/contacts/manager/contacts/ContactUtils$16;->a:Ljava/lang/String;

    iput-wide p2, p0, Lcom/callapp/contacts/manager/contacts/ContactUtils$16;->b:J

    invoke-direct {p0}, Lcom/callapp/contacts/manager/task/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public final doTask()V
    .locals 4

    .line 1524
    invoke-static {}, Lcom/callapp/contacts/manager/ContactLoaderManager;->get()Lcom/callapp/contacts/manager/ContactLoaderManager;

    move-result-object v0

    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v1

    iget-object v2, p0, Lcom/callapp/contacts/manager/contacts/ContactUtils$16;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/callapp/contacts/manager/phone/PhoneManager;->a(Ljava/lang/String;)Lcom/callapp/framework/phone/Phone;

    move-result-object v1

    iget-wide v2, p0, Lcom/callapp/contacts/manager/contacts/ContactUtils$16;->b:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/callapp/contacts/manager/ContactLoaderManager;->getContactDataOnlyIfAlreadyLoaded(Lcom/callapp/framework/phone/Phone;J)Landroid/util/Pair;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1526
    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/callapp/contacts/model/contact/ContactData;

    invoke-static {v0, v1}, Lcom/callapp/contacts/model/contact/ContactDataUtils;->setIsFavorite(Lcom/callapp/contacts/model/contact/ContactData;Z)V

    return-void

    .line 1528
    :cond_0
    iget-wide v2, p0, Lcom/callapp/contacts/manager/contacts/ContactUtils$16;->b:J

    invoke-static {v2, v3, v1}, Lcom/callapp/contacts/manager/contacts/ContactUtils;->a(JZ)V

    return-void
.end method
