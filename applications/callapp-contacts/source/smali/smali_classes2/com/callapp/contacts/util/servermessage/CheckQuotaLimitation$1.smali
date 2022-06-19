.class final Lcom/callapp/contacts/util/servermessage/CheckQuotaLimitation$1;
.super Lcom/callapp/contacts/manager/task/Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/util/servermessage/CheckQuotaLimitation;->a(Z)Lcom/callapp/common/model/json/JSONQuotaLimitation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 55
    invoke-direct {p0}, Lcom/callapp/contacts/manager/task/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public final doTask()V
    .locals 0

    .line 60
    invoke-static {}, Lcom/callapp/contacts/util/servermessage/CheckQuotaLimitation;->a()Lcom/callapp/common/model/json/JSONQuotaLimitation;

    return-void
.end method
