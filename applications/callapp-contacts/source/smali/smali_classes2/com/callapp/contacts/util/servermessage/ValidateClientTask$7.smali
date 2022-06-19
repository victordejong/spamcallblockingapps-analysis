.class final Lcom/callapp/contacts/util/servermessage/ValidateClientTask$7;
.super Lcom/callapp/contacts/manager/task/Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/util/servermessage/ValidateClientTask;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 256
    invoke-direct {p0}, Lcom/callapp/contacts/manager/task/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public final doTask()V
    .locals 0

    .line 259
    invoke-static {}, Lcom/callapp/contacts/util/servermessage/ValidateClientTask;->c()Lcom/callapp/common/model/json/JSONClientValidationResponse;

    return-void
.end method
