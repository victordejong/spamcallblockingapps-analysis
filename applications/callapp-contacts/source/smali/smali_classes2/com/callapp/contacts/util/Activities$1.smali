.class final Lcom/callapp/contacts/util/Activities$1;
.super Lcom/callapp/contacts/manager/popup/ResultPopup;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/util/Activities;->a(Landroid/content/Context;Landroid/content/Intent;Lcom/callapp/contacts/manager/popup/ActivityResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Intent;

.field final synthetic b:Lcom/callapp/contacts/manager/popup/ActivityResult;


# direct methods
.method constructor <init>(Landroid/content/Intent;Lcom/callapp/contacts/manager/popup/ActivityResult;)V
    .locals 0

    .line 234
    iput-object p1, p0, Lcom/callapp/contacts/util/Activities$1;->a:Landroid/content/Intent;

    iput-object p2, p0, Lcom/callapp/contacts/util/Activities$1;->b:Lcom/callapp/contacts/manager/popup/ActivityResult;

    invoke-direct {p0}, Lcom/callapp/contacts/manager/popup/ResultPopup;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/app/Activity;)V
    .locals 1

    .line 238
    iget-object v0, p0, Lcom/callapp/contacts/util/Activities$1;->a:Landroid/content/Intent;

    invoke-virtual {p0, p1, v0}, Lcom/callapp/contacts/util/Activities$1;->a(Landroid/app/Activity;Landroid/content/Intent;)V

    return-void
.end method

.method public final onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V
    .locals 1

    .line 243
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 244
    iget-object v0, p0, Lcom/callapp/contacts/util/Activities$1;->b:Lcom/callapp/contacts/manager/popup/ActivityResult;

    if-eqz v0, :cond_0

    .line 245
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/callapp/contacts/manager/popup/ActivityResult;->onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V

    :cond_0
    return-void
.end method
