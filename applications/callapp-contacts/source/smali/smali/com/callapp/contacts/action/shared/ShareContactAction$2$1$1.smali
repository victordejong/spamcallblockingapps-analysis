.class Lcom/callapp/contacts/action/shared/ShareContactAction$2$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/util/SmsUtils$SelectNumberListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/action/shared/ShareContactAction$2$1;->doTask()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/action/shared/ShareContactAction$2$1;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/action/shared/ShareContactAction$2$1;)V
    .locals 0

    .line 239
    iput-object p1, p0, Lcom/callapp/contacts/action/shared/ShareContactAction$2$1$1;->a:Lcom/callapp/contacts/action/shared/ShareContactAction$2$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/callapp/framework/phone/Phone;)V
    .locals 1

    .line 242
    new-instance v0, Lcom/callapp/contacts/action/shared/ShareContactAction$2$1$1$1;

    invoke-direct {v0, p0, p1}, Lcom/callapp/contacts/action/shared/ShareContactAction$2$1$1$1;-><init>(Lcom/callapp/contacts/action/shared/ShareContactAction$2$1$1;Lcom/callapp/framework/phone/Phone;)V

    .line 248
    invoke-virtual {v0}, Lcom/callapp/contacts/action/shared/ShareContactAction$2$1$1$1;->execute()Lcom/callapp/contacts/manager/task/Task;

    return-void
.end method
