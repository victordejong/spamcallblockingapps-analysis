.class Lcom/callapp/contacts/activity/setup/RegistrationRequest$2$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/event/listener/Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/setup/RegistrationRequest$2;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/callapp/contacts/event/listener/Listener<",
        "Lcom/callapp/contacts/util/http/HttpRequest;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/setup/RegistrationRequest$2;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/setup/RegistrationRequest$2;)V
    .locals 0

    .line 152
    iput-object p1, p0, Lcom/callapp/contacts/activity/setup/RegistrationRequest$2$2;->a:Lcom/callapp/contacts/activity/setup/RegistrationRequest$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 1

    .line 152
    check-cast p1, Lcom/callapp/contacts/util/http/HttpRequest;

    .line 1156
    invoke-virtual {p1}, Lcom/callapp/contacts/util/http/HttpRequest;->getResponseStatusCode()I

    move-result p1

    const/16 v0, 0x206

    if-lt p1, v0, :cond_0

    const/16 v0, 0x20b

    if-gt p1, v0, :cond_0

    .line 1158
    iget-object p1, p0, Lcom/callapp/contacts/activity/setup/RegistrationRequest$2$2;->a:Lcom/callapp/contacts/activity/setup/RegistrationRequest$2;

    iget-object p1, p1, Lcom/callapp/contacts/activity/setup/RegistrationRequest$2;->c:Lcom/callapp/contacts/activity/setup/RegistrationRequest;

    invoke-static {p1}, Lcom/callapp/contacts/activity/setup/RegistrationRequest;->d(Lcom/callapp/contacts/activity/setup/RegistrationRequest;)Lcom/callapp/contacts/activity/setup/RegistrationRequest$RegistrationEvents;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 1159
    iget-object p1, p0, Lcom/callapp/contacts/activity/setup/RegistrationRequest$2$2;->a:Lcom/callapp/contacts/activity/setup/RegistrationRequest$2;

    iget-object p1, p1, Lcom/callapp/contacts/activity/setup/RegistrationRequest$2;->c:Lcom/callapp/contacts/activity/setup/RegistrationRequest;

    invoke-static {p1}, Lcom/callapp/contacts/activity/setup/RegistrationRequest;->d(Lcom/callapp/contacts/activity/setup/RegistrationRequest;)Lcom/callapp/contacts/activity/setup/RegistrationRequest$RegistrationEvents;

    move-result-object p1

    invoke-interface {p1}, Lcom/callapp/contacts/activity/setup/RegistrationRequest$RegistrationEvents;->c()V

    return-void

    .line 1162
    :cond_0
    iget-object p1, p0, Lcom/callapp/contacts/activity/setup/RegistrationRequest$2$2;->a:Lcom/callapp/contacts/activity/setup/RegistrationRequest$2;

    iget-object p1, p1, Lcom/callapp/contacts/activity/setup/RegistrationRequest$2;->c:Lcom/callapp/contacts/activity/setup/RegistrationRequest;

    invoke-static {p1}, Lcom/callapp/contacts/activity/setup/RegistrationRequest;->f(Lcom/callapp/contacts/activity/setup/RegistrationRequest;)I

    move-result p1

    const/4 v0, 0x3

    if-ge p1, v0, :cond_1

    .line 1163
    iget-object p1, p0, Lcom/callapp/contacts/activity/setup/RegistrationRequest$2$2;->a:Lcom/callapp/contacts/activity/setup/RegistrationRequest$2;

    invoke-static {p1}, Lcom/callapp/contacts/activity/setup/RegistrationRequest$2;->a(Lcom/callapp/contacts/activity/setup/RegistrationRequest$2;)V

    return-void

    .line 1165
    :cond_1
    iget-object p1, p0, Lcom/callapp/contacts/activity/setup/RegistrationRequest$2$2;->a:Lcom/callapp/contacts/activity/setup/RegistrationRequest$2;

    iget-object p1, p1, Lcom/callapp/contacts/activity/setup/RegistrationRequest$2;->c:Lcom/callapp/contacts/activity/setup/RegistrationRequest;

    invoke-static {p1}, Lcom/callapp/contacts/activity/setup/RegistrationRequest;->d(Lcom/callapp/contacts/activity/setup/RegistrationRequest;)Lcom/callapp/contacts/activity/setup/RegistrationRequest$RegistrationEvents;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 1166
    iget-object p1, p0, Lcom/callapp/contacts/activity/setup/RegistrationRequest$2$2;->a:Lcom/callapp/contacts/activity/setup/RegistrationRequest$2;

    iget-object p1, p1, Lcom/callapp/contacts/activity/setup/RegistrationRequest$2;->c:Lcom/callapp/contacts/activity/setup/RegistrationRequest;

    invoke-static {p1}, Lcom/callapp/contacts/activity/setup/RegistrationRequest;->d(Lcom/callapp/contacts/activity/setup/RegistrationRequest;)Lcom/callapp/contacts/activity/setup/RegistrationRequest$RegistrationEvents;

    move-result-object p1

    invoke-interface {p1}, Lcom/callapp/contacts/activity/setup/RegistrationRequest$RegistrationEvents;->b()V

    :cond_2
    return-void
.end method
