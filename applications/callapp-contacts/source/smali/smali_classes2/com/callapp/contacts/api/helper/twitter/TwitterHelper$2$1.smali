.class Lcom/callapp/contacts/api/helper/twitter/TwitterHelper$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/api/helper/twitter/TwitterHelper$2;->a(Lcom/twitter/sdk/android/core/k;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/api/helper/twitter/TwitterHelper$2;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/api/helper/twitter/TwitterHelper$2;)V
    .locals 0

    .line 257
    iput-object p1, p0, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper$2$1;->a:Lcom/callapp/contacts/api/helper/twitter/TwitterHelper$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .line 260
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    const-string v0, "Login cancelled"

    invoke-static {p1, v0}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 261
    iget-object p1, p0, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper$2$1;->a:Lcom/callapp/contacts/api/helper/twitter/TwitterHelper$2;

    iget-object p1, p1, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper$2;->b:Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;

    invoke-static {p1}, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;->d(Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;)Lcom/callapp/contacts/api/helper/common/LoginListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 262
    iget-object p1, p0, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper$2$1;->a:Lcom/callapp/contacts/api/helper/twitter/TwitterHelper$2;

    iget-object p1, p1, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper$2;->b:Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;

    invoke-static {p1}, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;->e(Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;)Lcom/callapp/contacts/api/helper/common/LoginListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/callapp/contacts/api/helper/common/LoginListener;->c()V

    :cond_0
    return-void
.end method
