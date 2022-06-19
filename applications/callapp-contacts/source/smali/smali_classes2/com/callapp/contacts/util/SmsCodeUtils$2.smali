.class final Lcom/callapp/contacts/util/SmsCodeUtils$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/event/listener/Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/util/SmsCodeUtils;->a(Lcom/callapp/framework/phone/Phone;Lcom/callapp/contacts/util/SmsCodeUtils$SmsCodeEvents;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
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
.field final synthetic a:Lcom/callapp/contacts/util/SmsCodeUtils$SmsCodeEvents;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/util/SmsCodeUtils$SmsCodeEvents;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/callapp/contacts/util/SmsCodeUtils$2;->a:Lcom/callapp/contacts/util/SmsCodeUtils$SmsCodeEvents;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 3

    .line 90
    check-cast p1, Lcom/callapp/contacts/util/http/HttpRequest;

    .line 1093
    const-class v0, Lcom/callapp/contacts/manager/PhoneVerifierManager;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed with status code: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/callapp/contacts/util/http/HttpRequest;->getResponseStatusCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 1094
    iget-object v0, p0, Lcom/callapp/contacts/util/SmsCodeUtils$2;->a:Lcom/callapp/contacts/util/SmsCodeUtils$SmsCodeEvents;

    if-eqz v0, :cond_0

    .line 1095
    invoke-interface {v0}, Lcom/callapp/contacts/util/SmsCodeUtils$SmsCodeEvents;->a()V

    .line 1098
    :cond_0
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/callapp/contacts/util/http/HttpRequest;->getResponseStatusCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "Registration"

    const-string v2, "Requesting SMS code from server failed"

    invoke-virtual {v0, v1, v2, p1}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
