.class Lcom/callapp/contacts/action/shared/ShareContactAction$3$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/action/shared/ShareContactAction$3;->doTask()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/model/contact/ContactData;

.field final synthetic b:Ljava/util/ArrayList;

.field final synthetic c:Lcom/callapp/contacts/action/shared/ShareContactAction$3;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/action/shared/ShareContactAction$3;Lcom/callapp/contacts/model/contact/ContactData;Ljava/util/ArrayList;)V
    .locals 0

    .line 290
    iput-object p1, p0, Lcom/callapp/contacts/action/shared/ShareContactAction$3$1;->c:Lcom/callapp/contacts/action/shared/ShareContactAction$3;

    iput-object p2, p0, Lcom/callapp/contacts/action/shared/ShareContactAction$3$1;->a:Lcom/callapp/contacts/model/contact/ContactData;

    iput-object p3, p0, Lcom/callapp/contacts/action/shared/ShareContactAction$3$1;->b:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 293
    iget-object v0, p0, Lcom/callapp/contacts/action/shared/ShareContactAction$3$1;->c:Lcom/callapp/contacts/action/shared/ShareContactAction$3;

    iget-object v0, v0, Lcom/callapp/contacts/action/shared/ShareContactAction$3;->b:Landroid/app/Activity;

    iget-object v1, p0, Lcom/callapp/contacts/action/shared/ShareContactAction$3$1;->a:Lcom/callapp/contacts/model/contact/ContactData;

    iget-object v2, p0, Lcom/callapp/contacts/action/shared/ShareContactAction$3$1;->c:Lcom/callapp/contacts/action/shared/ShareContactAction$3;

    iget-object v2, v2, Lcom/callapp/contacts/action/shared/ShareContactAction$3;->a:Lcom/callapp/contacts/model/contact/ContactData;

    iget-object v3, p0, Lcom/callapp/contacts/action/shared/ShareContactAction$3$1;->b:Ljava/util/ArrayList;

    sget-object v4, Lcom/callapp/contacts/action/shared/ShareContactAction$ShareContactState;->sendingMyOwnInfo:Lcom/callapp/contacts/action/shared/ShareContactAction$ShareContactState;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/callapp/contacts/action/shared/ShareContactAction;->a(Landroid/app/Activity;Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/model/contact/ContactData;Ljava/util/ArrayList;Lcom/callapp/contacts/action/shared/ShareContactAction$ShareContactState;)V

    return-void
.end method
