.class Lcom/callapp/contacts/CallAppApplication$7;
.super Lcom/callapp/contacts/manager/task/Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/CallAppApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/CallAppApplication;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/CallAppApplication;)V
    .locals 0

    .line 430
    iput-object p1, p0, Lcom/callapp/contacts/CallAppApplication$7;->a:Lcom/callapp/contacts/CallAppApplication;

    invoke-direct {p0}, Lcom/callapp/contacts/manager/task/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public doTask()V
    .locals 2

    .line 433
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->ao:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 434
    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "+12129281245"

    .line 438
    :cond_0
    invoke-static {v0}, Lcom/callapp/framework/phone/Phone;->b(Ljava/lang/String;)Lcom/callapp/framework/phone/Phone;

    move-result-object v0

    .line 439
    invoke-virtual {v0}, Lcom/callapp/framework/phone/Phone;->getPhoneNumber()Lcom/google/i18n/phonenumbers/k$a;

    return-void
.end method
