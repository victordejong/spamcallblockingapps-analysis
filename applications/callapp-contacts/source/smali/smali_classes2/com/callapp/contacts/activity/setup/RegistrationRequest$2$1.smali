.class Lcom/callapp/contacts/activity/setup/RegistrationRequest$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/event/listener/Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/setup/RegistrationRequest$2;->b()V
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

    .line 129
    iput-object p1, p0, Lcom/callapp/contacts/activity/setup/RegistrationRequest$2$1;->a:Lcom/callapp/contacts/activity/setup/RegistrationRequest$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 1

    .line 129
    check-cast p1, Lcom/callapp/contacts/util/http/HttpRequest;

    .line 1132
    invoke-virtual {p1}, Lcom/callapp/contacts/util/http/HttpRequest;->isValidCallAppResponse()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1133
    invoke-virtual {p1}, Lcom/callapp/contacts/util/http/HttpRequest;->b()V

    return-void

    .line 1137
    :cond_0
    invoke-static {p1}, Lcom/callapp/contacts/activity/setup/RegistrationRequest;->a(Lcom/callapp/contacts/util/http/HttpRequest;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    .line 1139
    iget-object p1, p0, Lcom/callapp/contacts/activity/setup/RegistrationRequest$2$1;->a:Lcom/callapp/contacts/activity/setup/RegistrationRequest$2;

    iget-object p1, p1, Lcom/callapp/contacts/activity/setup/RegistrationRequest$2;->c:Lcom/callapp/contacts/activity/setup/RegistrationRequest;

    invoke-static {p1}, Lcom/callapp/contacts/activity/setup/RegistrationRequest;->d(Lcom/callapp/contacts/activity/setup/RegistrationRequest;)Lcom/callapp/contacts/activity/setup/RegistrationRequest$RegistrationEvents;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 1140
    iget-object p1, p0, Lcom/callapp/contacts/activity/setup/RegistrationRequest$2$1;->a:Lcom/callapp/contacts/activity/setup/RegistrationRequest$2;

    iget-object p1, p1, Lcom/callapp/contacts/activity/setup/RegistrationRequest$2;->c:Lcom/callapp/contacts/activity/setup/RegistrationRequest;

    invoke-static {p1}, Lcom/callapp/contacts/activity/setup/RegistrationRequest;->d(Lcom/callapp/contacts/activity/setup/RegistrationRequest;)Lcom/callapp/contacts/activity/setup/RegistrationRequest$RegistrationEvents;

    move-result-object p1

    invoke-interface {p1}, Lcom/callapp/contacts/activity/setup/RegistrationRequest$RegistrationEvents;->a()V

    return-void

    .line 1143
    :cond_1
    iget-object p1, p0, Lcom/callapp/contacts/activity/setup/RegistrationRequest$2$1;->a:Lcom/callapp/contacts/activity/setup/RegistrationRequest$2;

    iget-object p1, p1, Lcom/callapp/contacts/activity/setup/RegistrationRequest$2;->c:Lcom/callapp/contacts/activity/setup/RegistrationRequest;

    invoke-static {p1}, Lcom/callapp/contacts/activity/setup/RegistrationRequest;->d(Lcom/callapp/contacts/activity/setup/RegistrationRequest;)Lcom/callapp/contacts/activity/setup/RegistrationRequest$RegistrationEvents;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 1144
    iget-object p1, p0, Lcom/callapp/contacts/activity/setup/RegistrationRequest$2$1;->a:Lcom/callapp/contacts/activity/setup/RegistrationRequest$2;

    iget-object p1, p1, Lcom/callapp/contacts/activity/setup/RegistrationRequest$2;->c:Lcom/callapp/contacts/activity/setup/RegistrationRequest;

    invoke-static {p1}, Lcom/callapp/contacts/activity/setup/RegistrationRequest;->d(Lcom/callapp/contacts/activity/setup/RegistrationRequest;)Lcom/callapp/contacts/activity/setup/RegistrationRequest$RegistrationEvents;

    move-result-object p1

    invoke-interface {p1}, Lcom/callapp/contacts/activity/setup/RegistrationRequest$RegistrationEvents;->b()V

    :cond_2
    return-void
.end method
