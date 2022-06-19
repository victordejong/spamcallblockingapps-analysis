.class public final Lcom/sinch/verification/flashcall/FlashCallVerificationMethod;
.super Lcom/sinch/verification/core/config/method/AutoInterceptedVerificationMethod;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sinch/verification/flashcall/FlashCallVerificationMethod$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sinch/verification/core/config/method/AutoInterceptedVerificationMethod<",
        "Lcom/sinch/verification/flashcall/FlashCallVerificationService;",
        "Lcom/sinch/verification/flashcall/verification/interceptor/FlashCallInterceptor;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000j\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0003\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001:\u0001,B-\u0008\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0012\u0008\u0002\u0010\u0006\u001a\u000c\u0012\u0004\u0012\u00020\u00080\u0007j\u0002`\t\u0012\u0008\u0008\u0002\u0010\n\u001a\u00020\u000b\u00a2\u0006\u0002\u0010\u000cJ\u0010\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u0008H\u0002J\u0018\u0010\u001b\u001a\u00020\u00192\u0006\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u001fH\u0016J\u0010\u0010 \u001a\u00020\u00192\u0006\u0010!\u001a\u00020\"H\u0016J\u0008\u0010#\u001a\u00020\u0019H\u0014J\u0008\u0010$\u001a\u00020%H\u0014J\"\u0010&\u001a\u00020\u00192\u0006\u0010\'\u001a\u00020\u001d2\u0006\u0010(\u001a\u00020\u001f2\u0008\u0010)\u001a\u0004\u0018\u00010*H\u0014J\u0008\u0010+\u001a\u00020\u0019H\u0014R\u001c\u0010\r\u001a\u0004\u0018\u00010\u0003X\u0094\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0018\u0010\u0006\u001a\u000c\u0012\u0004\u0012\u00020\u00080\u0007j\u0002`\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0014\u001a\u00020\u00158BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0016\u0010\u0017\u00a8\u0006-"
    }
    d2 = {
        "Lcom/sinch/verification/flashcall/FlashCallVerificationMethod;",
        "Lcom/sinch/verification/core/config/method/AutoInterceptedVerificationMethod;",
        "Lcom/sinch/verification/flashcall/FlashCallVerificationService;",
        "Lcom/sinch/verification/flashcall/verification/interceptor/FlashCallInterceptor;",
        "config",
        "Lcom/sinch/verification/flashcall/config/FlashCallVerificationConfig;",
        "initializationListener",
        "Lcom/sinch/verification/core/initiation/response/InitiationListener;",
        "Lcom/sinch/verification/flashcall/initialization/FlashCallInitializationResponseData;",
        "Lcom/sinch/verification/flashcall/initialization/FlashCallInitializationListener;",
        "verificationListener",
        "Lcom/sinch/verification/core/verification/response/VerificationListener;",
        "(Lcom/sinch/verification/flashcall/config/FlashCallVerificationConfig;Lcom/sinch/verification/core/initiation/response/InitiationListener;Lcom/sinch/verification/core/verification/response/VerificationListener;)V",
        "codeInterceptor",
        "getCodeInterceptor",
        "()Lcom/sinch/verification/flashcall/verification/interceptor/FlashCallInterceptor;",
        "setCodeInterceptor",
        "(Lcom/sinch/verification/flashcall/verification/interceptor/FlashCallInterceptor;)V",
        "initiationStartDate",
        "Ljava/util/Date;",
        "requestDataData",
        "Lcom/sinch/verification/flashcall/initialization/FlashCallVerificationInitializationData;",
        "getRequestDataData",
        "()Lcom/sinch/verification/flashcall/initialization/FlashCallVerificationInitializationData;",
        "initializeInterceptor",
        "",
        "data",
        "onCodeIntercepted",
        "code",
        "",
        "source",
        "Lcom/sinch/verification/core/verification/model/VerificationSourceType;",
        "onCodeInterceptionError",
        "e",
        "",
        "onInitiate",
        "onPreInitiate",
        "",
        "onVerify",
        "verificationCode",
        "sourceType",
        "method",
        "Lcom/sinch/verification/core/internal/VerificationMethodType;",
        "report",
        "Builder",
        "verification-flashcall_productionRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private codeInterceptor:Lcom/sinch/verification/flashcall/verification/interceptor/FlashCallInterceptor;

.field private final config:Lcom/sinch/verification/flashcall/config/FlashCallVerificationConfig;

.field private final initializationListener:Lcom/sinch/verification/core/initiation/response/InitiationListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sinch/verification/core/initiation/response/InitiationListener<",
            "Lcom/sinch/verification/flashcall/initialization/FlashCallInitializationResponseData;",
            ">;"
        }
    .end annotation
.end field

.field private initiationStartDate:Ljava/util/Date;


# direct methods
.method private constructor <init>(Lcom/sinch/verification/flashcall/config/FlashCallVerificationConfig;Lcom/sinch/verification/core/initiation/response/InitiationListener;Lcom/sinch/verification/core/verification/response/VerificationListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sinch/verification/flashcall/config/FlashCallVerificationConfig;",
            "Lcom/sinch/verification/core/initiation/response/InitiationListener<",
            "-",
            "Lcom/sinch/verification/flashcall/initialization/FlashCallInitializationResponseData;",
            ">;",
            "Lcom/sinch/verification/core/verification/response/VerificationListener;",
            ")V"
        }
    .end annotation

    .line 51
    move-object v0, p1

    check-cast v0, Lcom/sinch/verification/core/config/method/VerificationMethodConfig;

    .line 50
    invoke-direct {p0, v0, p3}, Lcom/sinch/verification/core/config/method/AutoInterceptedVerificationMethod;-><init>(Lcom/sinch/verification/core/config/method/VerificationMethodConfig;Lcom/sinch/verification/core/verification/response/VerificationListener;)V

    iput-object p1, p0, Lcom/sinch/verification/flashcall/FlashCallVerificationMethod;->config:Lcom/sinch/verification/flashcall/config/FlashCallVerificationConfig;

    iput-object p2, p0, Lcom/sinch/verification/flashcall/FlashCallVerificationMethod;->initializationListener:Lcom/sinch/verification/core/initiation/response/InitiationListener;

    .line 66
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    iput-object p1, p0, Lcom/sinch/verification/flashcall/FlashCallVerificationMethod;->initiationStartDate:Ljava/util/Date;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sinch/verification/flashcall/config/FlashCallVerificationConfig;Lcom/sinch/verification/core/initiation/response/InitiationListener;Lcom/sinch/verification/core/verification/response/VerificationListener;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    .line 48
    new-instance p2, Lcom/sinch/verification/core/initiation/response/EmptyInitializationListener;

    invoke-direct {p2}, Lcom/sinch/verification/core/initiation/response/EmptyInitializationListener;-><init>()V

    check-cast p2, Lcom/sinch/verification/core/initiation/response/InitiationListener;

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    .line 49
    new-instance p3, Lcom/sinch/verification/core/verification/response/EmptyVerificationListener;

    invoke-direct {p3}, Lcom/sinch/verification/core/verification/response/EmptyVerificationListener;-><init>()V

    check-cast p3, Lcom/sinch/verification/core/verification/response/VerificationListener;

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/sinch/verification/flashcall/FlashCallVerificationMethod;-><init>(Lcom/sinch/verification/flashcall/config/FlashCallVerificationConfig;Lcom/sinch/verification/core/initiation/response/InitiationListener;Lcom/sinch/verification/core/verification/response/VerificationListener;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/sinch/verification/flashcall/config/FlashCallVerificationConfig;Lcom/sinch/verification/core/initiation/response/InitiationListener;Lcom/sinch/verification/core/verification/response/VerificationListener;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2, p3}, Lcom/sinch/verification/flashcall/FlashCallVerificationMethod;-><init>(Lcom/sinch/verification/flashcall/config/FlashCallVerificationConfig;Lcom/sinch/verification/core/initiation/response/InitiationListener;Lcom/sinch/verification/core/verification/response/VerificationListener;)V

    return-void
.end method

.method public static final synthetic access$initializeInterceptor(Lcom/sinch/verification/flashcall/FlashCallVerificationMethod;Lcom/sinch/verification/flashcall/initialization/FlashCallInitializationResponseData;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lcom/sinch/verification/flashcall/FlashCallVerificationMethod;->initializeInterceptor(Lcom/sinch/verification/flashcall/initialization/FlashCallInitializationResponseData;)V

    return-void
.end method

.method private final getRequestDataData()Lcom/sinch/verification/flashcall/initialization/FlashCallVerificationInitializationData;
    .locals 7

    .line 57
    new-instance v6, Lcom/sinch/verification/flashcall/initialization/FlashCallVerificationInitializationData;

    .line 58
    new-instance v1, Lcom/sinch/verification/core/initiation/VerificationIdentity;

    iget-object v0, p0, Lcom/sinch/verification/flashcall/FlashCallVerificationMethod;->config:Lcom/sinch/verification/flashcall/config/FlashCallVerificationConfig;

    invoke-virtual {v0}, Lcom/sinch/verification/flashcall/config/FlashCallVerificationConfig;->getNumber()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-direct {v1, v0, v2, v3, v2}, Lcom/sinch/verification/core/initiation/VerificationIdentity;-><init>(Ljava/lang/String;Lcom/sinch/verification/core/initiation/VerificationIdentityType;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 59
    iget-object v0, p0, Lcom/sinch/verification/flashcall/FlashCallVerificationMethod;->config:Lcom/sinch/verification/flashcall/config/FlashCallVerificationConfig;

    invoke-virtual {v0}, Lcom/sinch/verification/flashcall/config/FlashCallVerificationConfig;->getHonourEarlyReject()Z

    move-result v2

    .line 60
    iget-object v0, p0, Lcom/sinch/verification/flashcall/FlashCallVerificationMethod;->config:Lcom/sinch/verification/flashcall/config/FlashCallVerificationConfig;

    invoke-virtual {v0}, Lcom/sinch/verification/flashcall/config/FlashCallVerificationConfig;->getCustom()Ljava/lang/String;

    move-result-object v3

    .line 61
    iget-object v0, p0, Lcom/sinch/verification/flashcall/FlashCallVerificationMethod;->config:Lcom/sinch/verification/flashcall/config/FlashCallVerificationConfig;

    invoke-virtual {v0}, Lcom/sinch/verification/flashcall/config/FlashCallVerificationConfig;->getReference()Ljava/lang/String;

    move-result-object v4

    .line 62
    iget-object v0, p0, Lcom/sinch/verification/flashcall/FlashCallVerificationMethod;->config:Lcom/sinch/verification/flashcall/config/FlashCallVerificationConfig;

    invoke-virtual {v0}, Lcom/sinch/verification/flashcall/config/FlashCallVerificationConfig;->getMetadataFactory()Lcom/sinch/verification/utils/Factory;

    move-result-object v0

    invoke-interface {v0}, Lcom/sinch/verification/utils/Factory;->create()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/sinch/metadata/model/PhoneMetadata;

    move-object v0, v6

    .line 57
    invoke-direct/range {v0 .. v5}, Lcom/sinch/verification/flashcall/initialization/FlashCallVerificationInitializationData;-><init>(Lcom/sinch/verification/core/initiation/VerificationIdentity;ZLjava/lang/String;Ljava/lang/String;Lcom/sinch/metadata/model/PhoneMetadata;)V

    return-object v6
.end method

.method private final initializeInterceptor(Lcom/sinch/verification/flashcall/initialization/FlashCallInitializationResponseData;)V
    .locals 11

    .line 118
    :try_start_0
    new-instance v10, Lcom/sinch/verification/flashcall/verification/interceptor/FlashCallInterceptor;

    .line 119
    iget-object v0, p0, Lcom/sinch/verification/flashcall/FlashCallVerificationMethod;->config:Lcom/sinch/verification/flashcall/config/FlashCallVerificationConfig;

    invoke-virtual {v0}, Lcom/sinch/verification/flashcall/config/FlashCallVerificationConfig;->getGlobalConfig()Lcom/sinch/verification/core/config/general/GlobalConfig;

    move-result-object v0

    invoke-interface {v0}, Lcom/sinch/verification/core/config/general/GlobalConfig;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 120
    invoke-virtual {p1}, Lcom/sinch/verification/flashcall/initialization/FlashCallInitializationResponseData;->getDetails()Lcom/sinch/verification/flashcall/initialization/FlashCallInitializationDetails;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sinch/verification/flashcall/initialization/FlashCallInitializationDetails;->getInterceptionTimeout()J

    move-result-wide v7

    .line 121
    invoke-virtual {p1}, Lcom/sinch/verification/flashcall/initialization/FlashCallInitializationResponseData;->getDetails()Lcom/sinch/verification/flashcall/initialization/FlashCallInitializationDetails;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sinch/verification/flashcall/initialization/FlashCallInitializationDetails;->getReportTimeout()J

    move-result-wide v5

    .line 122
    move-object v9, p0

    check-cast v9, Lcom/sinch/verification/core/verification/interceptor/CodeInterceptionListener;

    .line 123
    new-instance v0, Lcom/sinch/verification/flashcall/verification/matcher/FlashCallPatternMatcher;

    invoke-virtual {p1}, Lcom/sinch/verification/flashcall/initialization/FlashCallInitializationResponseData;->getDetails()Lcom/sinch/verification/flashcall/initialization/FlashCallInitializationDetails;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sinch/verification/flashcall/initialization/FlashCallInitializationDetails;->getCliFilter()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/sinch/verification/flashcall/verification/matcher/FlashCallPatternMatcher;-><init>(Ljava/lang/String;)V

    move-object v2, v0

    check-cast v2, Lcom/sinch/verification/core/internal/pattern/PatternMatcher;

    .line 124
    new-instance p1, Lcom/sinch/verification/flashcall/verification/callhistory/ContentProviderCallHistoryReader;

    iget-object v0, p0, Lcom/sinch/verification/flashcall/FlashCallVerificationMethod;->config:Lcom/sinch/verification/flashcall/config/FlashCallVerificationConfig;

    invoke-virtual {v0}, Lcom/sinch/verification/flashcall/config/FlashCallVerificationConfig;->getGlobalConfig()Lcom/sinch/verification/core/config/general/GlobalConfig;

    move-result-object v0

    invoke-interface {v0}, Lcom/sinch/verification/core/config/general/GlobalConfig;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "config.globalConfig.context.contentResolver"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p1, v0}, Lcom/sinch/verification/flashcall/verification/callhistory/ContentProviderCallHistoryReader;-><init>(Landroid/content/ContentResolver;)V

    move-object v3, p1

    check-cast v3, Lcom/sinch/verification/flashcall/verification/callhistory/CallHistoryReader;

    .line 125
    iget-object v4, p0, Lcom/sinch/verification/flashcall/FlashCallVerificationMethod;->initiationStartDate:Ljava/util/Date;

    move-object v0, v10

    .line 118
    invoke-direct/range {v0 .. v9}, Lcom/sinch/verification/flashcall/verification/interceptor/FlashCallInterceptor;-><init>(Landroid/content/Context;Lcom/sinch/verification/core/internal/pattern/PatternMatcher;Lcom/sinch/verification/flashcall/verification/callhistory/CallHistoryReader;Ljava/util/Date;JJLcom/sinch/verification/core/verification/interceptor/CodeInterceptionListener;)V

    invoke-virtual {p0, v10}, Lcom/sinch/verification/flashcall/FlashCallVerificationMethod;->setCodeInterceptor(Lcom/sinch/verification/flashcall/verification/interceptor/FlashCallInterceptor;)V

    .line 127
    invoke-virtual {p0}, Lcom/sinch/verification/flashcall/FlashCallVerificationMethod;->getCodeInterceptor()Lcom/sinch/verification/flashcall/verification/interceptor/FlashCallInterceptor;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/sinch/verification/flashcall/verification/interceptor/FlashCallInterceptor;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception p1

    .line 129
    invoke-virtual {p0}, Lcom/sinch/verification/flashcall/FlashCallVerificationMethod;->getVerificationListener()Lcom/sinch/verification/core/verification/response/VerificationListener;

    move-result-object v0

    check-cast p1, Ljava/lang/Throwable;

    invoke-interface {v0, p1}, Lcom/sinch/verification/core/verification/response/VerificationListener;->onVerificationFailed(Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic getCodeInterceptor()Lcom/sinch/verification/core/verification/interceptor/CodeInterceptor;
    .locals 1

    .line 46
    invoke-virtual {p0}, Lcom/sinch/verification/flashcall/FlashCallVerificationMethod;->getCodeInterceptor()Lcom/sinch/verification/flashcall/verification/interceptor/FlashCallInterceptor;

    move-result-object v0

    check-cast v0, Lcom/sinch/verification/core/verification/interceptor/CodeInterceptor;

    return-object v0
.end method

.method protected final getCodeInterceptor()Lcom/sinch/verification/flashcall/verification/interceptor/FlashCallInterceptor;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/sinch/verification/flashcall/FlashCallVerificationMethod;->codeInterceptor:Lcom/sinch/verification/flashcall/verification/interceptor/FlashCallInterceptor;

    return-object v0
.end method

.method public final onCodeIntercepted(Ljava/lang/String;Lcom/sinch/verification/core/verification/model/VerificationSourceType;)V
    .locals 7

    const-string v0, "code"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "source"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    .line 134
    invoke-static/range {v1 .. v6}, Lcom/sinch/verification/core/config/method/VerificationMethod;->verify$default(Lcom/sinch/verification/core/config/method/VerificationMethod;Ljava/lang/String;Lcom/sinch/verification/core/verification/model/VerificationSourceType;Lcom/sinch/verification/core/internal/VerificationMethodType;ILjava/lang/Object;)V

    return-void
.end method

.method public final onCodeInterceptionError(Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 138
    invoke-virtual {p0}, Lcom/sinch/verification/flashcall/FlashCallVerificationMethod;->getVerificationListener()Lcom/sinch/verification/core/verification/response/VerificationListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/sinch/verification/core/verification/response/VerificationListener;->onVerificationFailed(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onInitiate()V
    .locals 10

    .line 77
    invoke-virtual {p0}, Lcom/sinch/verification/flashcall/FlashCallVerificationMethod;->getVerificationService()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sinch/verification/flashcall/FlashCallVerificationService;

    invoke-direct {p0}, Lcom/sinch/verification/flashcall/FlashCallVerificationMethod;->getRequestDataData()Lcom/sinch/verification/flashcall/initialization/FlashCallVerificationInitializationData;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sinch/verification/flashcall/FlashCallVerificationService;->initializeVerification(Lcom/sinch/verification/flashcall/initialization/FlashCallVerificationInitializationData;)Lretrofit2/Call;

    move-result-object v0

    .line 78
    invoke-virtual {p0}, Lcom/sinch/verification/flashcall/FlashCallVerificationMethod;->getRetrofit()Lretrofit2/Retrofit;

    move-result-object v1

    .line 79
    new-instance v9, Lcom/sinch/verification/core/initiation/InitiationApiCallback;

    .line 80
    iget-object v3, p0, Lcom/sinch/verification/flashcall/FlashCallVerificationMethod;->initializationListener:Lcom/sinch/verification/core/initiation/response/InitiationListener;

    .line 81
    move-object v4, p0

    check-cast v4, Lcom/sinch/verification/core/internal/VerificationStateListener;

    .line 82
    new-instance v2, Lcom/sinch/verification/flashcall/FlashCallVerificationMethod$onInitiate$1;

    invoke-direct {v2, p0}, Lcom/sinch/verification/flashcall/FlashCallVerificationMethod$onInitiate$1;-><init>(Lcom/sinch/verification/flashcall/FlashCallVerificationMethod;)V

    move-object v6, v2

    check-cast v6, Lkotlin/jvm/functions/Function1;

    const/4 v5, 0x0

    const/4 v7, 0x4

    const/4 v8, 0x0

    move-object v2, v9

    .line 79
    invoke-direct/range {v2 .. v8}, Lcom/sinch/verification/core/initiation/InitiationApiCallback;-><init>(Lcom/sinch/verification/core/initiation/response/InitiationListener;Lcom/sinch/verification/core/internal/VerificationStateListener;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v9, Lcom/sinch/verification/core/internal/utils/ApiCallback;

    .line 77
    invoke-static {v0, v1, v9}, Lcom/sinch/verification/core/internal/utils/CallExtensionsKt;->enqueue(Lretrofit2/Call;Lretrofit2/Retrofit;Lcom/sinch/verification/core/internal/utils/ApiCallback;)V

    return-void
.end method

.method public final onPreInitiate()Z
    .locals 4

    .line 69
    sget-object v0, Lcom/sinch/verification/utils/permission/PermissionUtils;->INSTANCE:Lcom/sinch/verification/utils/permission/PermissionUtils;

    invoke-virtual {p0}, Lcom/sinch/verification/flashcall/FlashCallVerificationMethod;->getGlobalConfig()Lcom/sinch/verification/core/config/general/GlobalConfig;

    move-result-object v1

    invoke-interface {v1}, Lcom/sinch/verification/core/config/general/GlobalConfig;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/sinch/verification/utils/permission/Permission;->READ_CALL_LOG:Lcom/sinch/verification/utils/permission/Permission;

    invoke-virtual {v0, v1, v2}, Lcom/sinch/verification/utils/permission/PermissionUtils;->isPermissionGranted(Landroid/content/Context;Lcom/sinch/verification/utils/permission/Permission;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/sinch/verification/flashcall/FlashCallVerificationMethod;->initializationListener:Lcom/sinch/verification/core/initiation/response/InitiationListener;

    new-instance v1, Lcom/sinch/verification/core/internal/error/VerificationException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Missing "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/sinch/verification/utils/permission/Permission;->READ_CALL_LOG:Lcom/sinch/verification/utils/permission/Permission;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sinch/verification/core/internal/error/VerificationException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    invoke-interface {v0, v1}, Lcom/sinch/verification/core/initiation/response/InitiationListener;->onInitializationFailed(Ljava/lang/Throwable;)V

    .line 72
    :cond_0
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/sinch/verification/flashcall/FlashCallVerificationMethod;->initiationStartDate:Ljava/util/Date;

    const/4 v0, 0x1

    return v0
.end method

.method public final onVerify(Ljava/lang/String;Lcom/sinch/verification/core/verification/model/VerificationSourceType;Lcom/sinch/verification/core/internal/VerificationMethodType;)V
    .locals 6

    const-string p3, "verificationCode"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "sourceType"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    invoke-virtual {p0}, Lcom/sinch/verification/flashcall/FlashCallVerificationMethod;->getVerificationService()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/sinch/verification/flashcall/FlashCallVerificationService;

    .line 92
    iget-object v0, p0, Lcom/sinch/verification/flashcall/FlashCallVerificationMethod;->config:Lcom/sinch/verification/flashcall/config/FlashCallVerificationConfig;

    invoke-virtual {v0}, Lcom/sinch/verification/flashcall/config/FlashCallVerificationConfig;->getNumber()Ljava/lang/String;

    move-result-object v0

    .line 93
    new-instance v1, Lcom/sinch/verification/flashcall/verification/FlashCallVerificationData;

    .line 95
    new-instance v2, Lcom/sinch/verification/core/verification/model/flashcall/FlashCallVerificationDetails;

    invoke-direct {v2, p1}, Lcom/sinch/verification/core/verification/model/flashcall/FlashCallVerificationDetails;-><init>(Ljava/lang/String;)V

    .line 93
    invoke-direct {v1, p2, v2}, Lcom/sinch/verification/flashcall/verification/FlashCallVerificationData;-><init>(Lcom/sinch/verification/core/verification/model/VerificationSourceType;Lcom/sinch/verification/core/verification/model/flashcall/FlashCallVerificationDetails;)V

    check-cast v1, Lcom/sinch/verification/core/verification/model/VerificationData;

    .line 91
    invoke-interface {p3, v0, v1}, Lcom/sinch/verification/flashcall/FlashCallVerificationService;->verifyNumber(Ljava/lang/String;Lcom/sinch/verification/core/verification/model/VerificationData;)Lretrofit2/Call;

    move-result-object p1

    .line 97
    invoke-virtual {p0}, Lcom/sinch/verification/flashcall/FlashCallVerificationMethod;->getRetrofit()Lretrofit2/Retrofit;

    move-result-object p2

    new-instance p3, Lcom/sinch/verification/core/verification/VerificationApiCallback;

    invoke-virtual {p0}, Lcom/sinch/verification/flashcall/FlashCallVerificationMethod;->getVerificationListener()Lcom/sinch/verification/core/verification/response/VerificationListener;

    move-result-object v1

    move-object v2, p0

    check-cast v2, Lcom/sinch/verification/core/internal/VerificationStateListener;

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, p3

    invoke-direct/range {v0 .. v5}, Lcom/sinch/verification/core/verification/VerificationApiCallback;-><init>(Lcom/sinch/verification/core/verification/response/VerificationListener;Lcom/sinch/verification/core/internal/VerificationStateListener;Lkotlin/jvm/functions/Function0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast p3, Lcom/sinch/verification/core/internal/utils/ApiCallback;

    invoke-static {p1, p2, p3}, Lcom/sinch/verification/core/internal/utils/CallExtensionsKt;->enqueue(Lretrofit2/Call;Lretrofit2/Retrofit;Lcom/sinch/verification/core/internal/utils/ApiCallback;)V

    return-void
.end method

.method public final report()V
    .locals 9

    .line 101
    invoke-super {p0}, Lcom/sinch/verification/core/config/method/AutoInterceptedVerificationMethod;->report()V

    .line 102
    invoke-virtual {p0}, Lcom/sinch/verification/flashcall/FlashCallVerificationMethod;->getCodeInterceptor()Lcom/sinch/verification/flashcall/verification/interceptor/FlashCallInterceptor;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 103
    invoke-virtual {p0}, Lcom/sinch/verification/flashcall/FlashCallVerificationMethod;->getVerificationService()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sinch/verification/flashcall/FlashCallVerificationService;

    .line 104
    iget-object v2, p0, Lcom/sinch/verification/flashcall/FlashCallVerificationMethod;->config:Lcom/sinch/verification/flashcall/config/FlashCallVerificationConfig;

    invoke-virtual {v2}, Lcom/sinch/verification/flashcall/config/FlashCallVerificationConfig;->getNumber()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/sinch/verification/flashcall/report/FlashCallReportData;

    .line 105
    new-instance v4, Lcom/sinch/verification/flashcall/report/FlashCallReportDetails;

    .line 106
    invoke-virtual {v0}, Lcom/sinch/verification/flashcall/verification/interceptor/FlashCallInterceptor;->getCodeInterceptionState()Lcom/sinch/verification/flashcall/verification/interceptor/CodeInterceptionState;

    move-result-object v5

    sget-object v6, Lcom/sinch/verification/flashcall/verification/interceptor/CodeInterceptionState;->LATE:Lcom/sinch/verification/flashcall/verification/interceptor/CodeInterceptionState;

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-ne v5, v6, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    .line 107
    :goto_0
    invoke-virtual {v0}, Lcom/sinch/verification/flashcall/verification/interceptor/FlashCallInterceptor;->getCodeInterceptionState()Lcom/sinch/verification/flashcall/verification/interceptor/CodeInterceptionState;

    move-result-object v0

    sget-object v6, Lcom/sinch/verification/flashcall/verification/interceptor/CodeInterceptionState;->NONE:Lcom/sinch/verification/flashcall/verification/interceptor/CodeInterceptionState;

    if-ne v0, v6, :cond_1

    goto :goto_1

    :cond_1
    const/4 v7, 0x0

    .line 105
    :goto_1
    invoke-direct {v4, v5, v7}, Lcom/sinch/verification/flashcall/report/FlashCallReportDetails;-><init>(ZZ)V

    .line 104
    invoke-direct {v3, v4}, Lcom/sinch/verification/flashcall/report/FlashCallReportData;-><init>(Lcom/sinch/verification/flashcall/report/FlashCallReportDetails;)V

    .line 110
    invoke-virtual {p0}, Lcom/sinch/verification/flashcall/FlashCallVerificationMethod;->getLogger()Lcom/sinch/logging/Logger;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "Reporting flashCall verification status. Data: "

    invoke-virtual {v5, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static {v0, v4, v6, v5, v6}, Lcom/sinch/logging/Logger$DefaultImpls;->debug$default(Lcom/sinch/logging/Logger;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 103
    invoke-interface {v1, v2, v3}, Lcom/sinch/verification/flashcall/FlashCallVerificationService;->reportVerification(Ljava/lang/String;Lcom/sinch/verification/flashcall/report/FlashCallReportData;)Lretrofit2/Call;

    move-result-object v0

    .line 112
    invoke-virtual {p0}, Lcom/sinch/verification/flashcall/FlashCallVerificationMethod;->getRetrofit()Lretrofit2/Retrofit;

    move-result-object v1

    new-instance v2, Lcom/sinch/verification/core/verification/IgnoredApiCallback;

    invoke-direct {v2}, Lcom/sinch/verification/core/verification/IgnoredApiCallback;-><init>()V

    check-cast v2, Lcom/sinch/verification/core/internal/utils/ApiCallback;

    invoke-static {v0, v1, v2}, Lcom/sinch/verification/core/internal/utils/CallExtensionsKt;->enqueue(Lretrofit2/Call;Lretrofit2/Retrofit;Lcom/sinch/verification/core/internal/utils/ApiCallback;)V

    :cond_2
    return-void
.end method

.method public final bridge synthetic setCodeInterceptor(Lcom/sinch/verification/core/verification/interceptor/CodeInterceptor;)V
    .locals 0

    .line 46
    check-cast p1, Lcom/sinch/verification/flashcall/verification/interceptor/FlashCallInterceptor;

    invoke-virtual {p0, p1}, Lcom/sinch/verification/flashcall/FlashCallVerificationMethod;->setCodeInterceptor(Lcom/sinch/verification/flashcall/verification/interceptor/FlashCallInterceptor;)V

    return-void
.end method

.method protected final setCodeInterceptor(Lcom/sinch/verification/flashcall/verification/interceptor/FlashCallInterceptor;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/sinch/verification/flashcall/FlashCallVerificationMethod;->codeInterceptor:Lcom/sinch/verification/flashcall/verification/interceptor/FlashCallInterceptor;

    return-void
.end method
