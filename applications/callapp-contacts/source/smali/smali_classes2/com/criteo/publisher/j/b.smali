.class public final Lcom/criteo/publisher/j/b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    new-instance v0, Lcom/criteo/publisher/j/b;

    invoke-direct {v0}, Lcom/criteo/publisher/j/b;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a()Lcom/criteo/publisher/logging/e;
    .locals 9
    .annotation runtime Lcom/criteo/publisher/logging/a$a;
    .end annotation

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Calling "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 40
    new-instance v1, Lcom/criteo/publisher/logging/b;

    invoke-direct {v1}, Lcom/criteo/publisher/logging/b;-><init>()V

    .line 41
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 44
    invoke-virtual {v1}, Ljava/lang/Class;->getEnclosingMethod()Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 46
    const-class v3, Lcom/criteo/publisher/logging/a$a;

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 47
    sget-object v1, Lcom/criteo/publisher/logging/a;->a:Lcom/criteo/publisher/logging/a;

    .line 56
    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    .line 61
    invoke-static {v1}, Lkotlin/jvm/internal/b;->a([Ljava/lang/Object;)Ljava/util/Iterator;

    move-result-object v1

    invoke-static {v1}, Lkotlin/g/k;->a(Ljava/util/Iterator;)Lkotlin/g/h;

    move-result-object v1

    invoke-static {v1}, Lkotlin/g/k;->c(Lkotlin/g/h;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/StackTraceElement;

    if-eqz v1, :cond_1

    .line 63
    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "stackTraceElement.className"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "com.criteo.publisher."

    invoke-static {v2, v3}, Lkotlin/h/p;->a(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 64
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x23

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x3a

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 49
    :cond_0
    sget-object v2, Lcom/criteo/publisher/logging/a;->a:Lcom/criteo/publisher/logging/a;

    invoke-static {v1}, Lcom/criteo/publisher/logging/a;->a(Ljava/lang/reflect/Method;)Ljava/lang/String;

    move-result-object v2

    .line 46
    :cond_1
    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " with a null application"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 68
    new-instance v0, Lcom/criteo/publisher/logging/e;

    const/4 v3, 0x5

    const/4 v5, 0x0

    const/4 v7, 0x4

    const/4 v8, 0x0

    const-string v6, "onMethodCalledWithNullApplication"

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Lcom/criteo/publisher/logging/e;-><init>(ILjava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public static final a(Lcom/criteo/publisher/CriteoInterstitial;)Lcom/criteo/publisher/logging/e;
    .locals 8

    const-string v0, "interstitial"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    new-instance v0, Lcom/criteo/publisher/logging/e;

    .line 37
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Interstitial("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/criteo/publisher/n;->a(Lcom/criteo/publisher/CriteoInterstitial;)Lcom/criteo/publisher/model/InterstitialAdUnit;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ") is loading"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xd

    const/4 v7, 0x0

    move-object v1, v0

    .line 36
    invoke-direct/range {v1 .. v7}, Lcom/criteo/publisher/logging/e;-><init>(ILjava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public static final a(Lcom/criteo/publisher/CriteoInterstitial;Lcom/criteo/publisher/Bid;)Lcom/criteo/publisher/logging/e;
    .locals 8

    const-string v0, "interstitial"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    new-instance v0, Lcom/criteo/publisher/logging/e;

    .line 42
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Interstitial("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/criteo/publisher/n;->a(Lcom/criteo/publisher/CriteoInterstitial;)Lcom/criteo/publisher/model/InterstitialAdUnit;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ") is loading with bid "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/criteo/publisher/c;->a(Lcom/criteo/publisher/Bid;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    const/4 v2, 0x0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xd

    const/4 v7, 0x0

    move-object v1, v0

    .line 41
    invoke-direct/range {v1 .. v7}, Lcom/criteo/publisher/logging/e;-><init>(ILjava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public static final a(Lcom/criteo/publisher/CriteoInterstitial;Z)Lcom/criteo/publisher/logging/e;
    .locals 8

    const-string v0, "interstitial"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    new-instance v0, Lcom/criteo/publisher/logging/e;

    .line 57
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Interstitial("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/criteo/publisher/n;->a(Lcom/criteo/publisher/CriteoInterstitial;)Lcom/criteo/publisher/model/InterstitialAdUnit;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ") is isAdLoaded="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xd

    const/4 v7, 0x0

    move-object v1, v0

    .line 56
    invoke-direct/range {v1 .. v7}, Lcom/criteo/publisher/logging/e;-><init>(ILjava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public static final a(Lcom/criteo/publisher/model/InterstitialAdUnit;)Lcom/criteo/publisher/logging/e;
    .locals 8

    .line 31
    new-instance v7, Lcom/criteo/publisher/logging/e;

    .line 32
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "Interstitial initialized for "

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xd

    const/4 v6, 0x0

    move-object v0, v7

    .line 31
    invoke-direct/range {v0 .. v6}, Lcom/criteo/publisher/logging/e;-><init>(ILjava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v7
.end method

.method public static final b(Lcom/criteo/publisher/CriteoInterstitial;)Lcom/criteo/publisher/logging/e;
    .locals 8

    .line 46
    new-instance v7, Lcom/criteo/publisher/logging/e;

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Interstitial("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/criteo/publisher/n;->a(Lcom/criteo/publisher/CriteoInterstitial;)Lcom/criteo/publisher/model/InterstitialAdUnit;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    const/4 v1, 0x0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ") is loaded"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xd

    const/4 v6, 0x0

    move-object v0, v7

    .line 46
    invoke-direct/range {v0 .. v6}, Lcom/criteo/publisher/logging/e;-><init>(ILjava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v7
.end method

.method public static final c(Lcom/criteo/publisher/CriteoInterstitial;)Lcom/criteo/publisher/logging/e;
    .locals 8

    .line 51
    new-instance v7, Lcom/criteo/publisher/logging/e;

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Interstitial("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/criteo/publisher/n;->a(Lcom/criteo/publisher/CriteoInterstitial;)Lcom/criteo/publisher/model/InterstitialAdUnit;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    const/4 v1, 0x0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ") failed to load"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xd

    const/4 v6, 0x0

    move-object v0, v7

    .line 51
    invoke-direct/range {v0 .. v6}, Lcom/criteo/publisher/logging/e;-><init>(ILjava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v7
.end method

.method public static final d(Lcom/criteo/publisher/CriteoInterstitial;)Lcom/criteo/publisher/logging/e;
    .locals 8

    const-string v0, "interstitial"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    new-instance v0, Lcom/criteo/publisher/logging/e;

    .line 62
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Interstitial("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/criteo/publisher/n;->a(Lcom/criteo/publisher/CriteoInterstitial;)Lcom/criteo/publisher/model/InterstitialAdUnit;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ") is showing"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xd

    const/4 v7, 0x0

    move-object v1, v0

    .line 61
    invoke-direct/range {v1 .. v7}, Lcom/criteo/publisher/logging/e;-><init>(ILjava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method
