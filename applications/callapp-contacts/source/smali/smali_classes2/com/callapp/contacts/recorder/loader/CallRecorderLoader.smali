.class public Lcom/callapp/contacts/recorder/loader/CallRecorderLoader;
.super Lcom/callapp/contacts/loader/SimpleContactLoader;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/callapp/contacts/loader/SimpleContactLoader;-><init>()V

    return-void
.end method

.method public static a(Lcom/callapp/contacts/model/contact/ContactData;)V
    .locals 2

    .line 36
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/recorder/loader/CallRecorderLoader$1;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/recorder/loader/CallRecorderLoader$1;-><init>(Lcom/callapp/contacts/model/contact/ContactData;)V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/CallAppApplication;->a(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/callapp/contacts/loader/api/LoadContext;)V
    .locals 0

    .line 30
    iget-object p1, p1, Lcom/callapp/contacts/loader/api/LoadContext;->a:Lcom/callapp/contacts/model/contact/ContactData;

    .line 32
    invoke-static {p1}, Lcom/callapp/contacts/recorder/loader/CallRecorderLoader;->a(Lcom/callapp/contacts/model/contact/ContactData;)V

    return-void
.end method

.method public getListenFields()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/callapp/contacts/model/contact/ContactField;",
            ">;"
        }
    .end annotation

    .line 25
    sget-object v0, Lcom/callapp/contacts/model/contact/ContactField;->deviceId:Lcom/callapp/contacts/model/contact/ContactField;

    sget-object v1, Lcom/callapp/contacts/model/contact/ContactField;->phones:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-static {v0, v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    return-object v0
.end method
