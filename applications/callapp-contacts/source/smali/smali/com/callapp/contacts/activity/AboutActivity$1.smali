.class Lcom/callapp/contacts/activity/AboutActivity$1;
.super Lcom/callapp/contacts/util/DefaultInterfaceImplUtils$ClickListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/AboutActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/AboutActivity;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/AboutActivity;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/callapp/contacts/activity/AboutActivity$1;->a:Lcom/callapp/contacts/activity/AboutActivity;

    invoke-direct {p0}, Lcom/callapp/contacts/util/DefaultInterfaceImplUtils$ClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 3

    .line 43
    iget-object p1, p0, Lcom/callapp/contacts/activity/AboutActivity$1;->a:Lcom/callapp/contacts/activity/AboutActivity;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {}, Lcom/callapp/contacts/util/http/HttpUtils;->getCallAppDomain()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const v1, 0x7f1206e8

    invoke-static {v1, v0}, Lcom/callapp/contacts/util/Activities;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/callapp/contacts/util/Activities;->b(Landroid/content/Context;Ljava/lang/String;)Z

    return-void
.end method
