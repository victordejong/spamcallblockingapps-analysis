.class final Lcom/callapp/contacts/manager/messaging/CallAppFirebaseMessagingService$1;
.super Lcom/callapp/contacts/manager/task/Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/manager/messaging/CallAppFirebaseMessagingService;->a(Ljava/lang/String;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Ljava/lang/String;

.field final synthetic g:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 307
    iput-object p1, p0, Lcom/callapp/contacts/manager/messaging/CallAppFirebaseMessagingService$1;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/callapp/contacts/manager/messaging/CallAppFirebaseMessagingService$1;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/callapp/contacts/manager/messaging/CallAppFirebaseMessagingService$1;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/callapp/contacts/manager/messaging/CallAppFirebaseMessagingService$1;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/callapp/contacts/manager/messaging/CallAppFirebaseMessagingService$1;->e:Ljava/lang/String;

    iput-object p6, p0, Lcom/callapp/contacts/manager/messaging/CallAppFirebaseMessagingService$1;->f:Ljava/lang/String;

    iput-object p7, p0, Lcom/callapp/contacts/manager/messaging/CallAppFirebaseMessagingService$1;->g:Ljava/lang/String;

    invoke-direct {p0}, Lcom/callapp/contacts/manager/task/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public final doTask()V
    .locals 7

    .line 311
    iget-object v0, p0, Lcom/callapp/contacts/manager/messaging/CallAppFirebaseMessagingService$1;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/callapp/contacts/manager/messaging/CallAppFirebaseMessagingService$1;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/callapp/contacts/manager/messaging/CallAppFirebaseMessagingService$1;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/callapp/contacts/manager/messaging/CallAppFirebaseMessagingService$1;->d:Ljava/lang/String;

    iget-object v4, p0, Lcom/callapp/contacts/manager/messaging/CallAppFirebaseMessagingService$1;->e:Ljava/lang/String;

    iget-object v5, p0, Lcom/callapp/contacts/manager/messaging/CallAppFirebaseMessagingService$1;->f:Ljava/lang/String;

    iget-object v6, p0, Lcom/callapp/contacts/manager/messaging/CallAppFirebaseMessagingService$1;->g:Ljava/lang/String;

    invoke-static/range {v0 .. v6}, Lcom/callapp/contacts/manager/messaging/CallAppFirebaseMessagingService;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
