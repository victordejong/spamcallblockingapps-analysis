.class public final Lcom/criteo/publisher/w;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    new-instance v0, Lcom/criteo/publisher/w;

    invoke-direct {v0}, Lcom/criteo/publisher/w;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a()Lcom/criteo/publisher/logging/e;
    .locals 8

    .line 26
    new-instance v7, Lcom/criteo/publisher/logging/e;

    const/4 v1, 0x0

    const-string v2, "Unsupported Android version, Criteo SDK is deactivated and won\'t do anything"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xd

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/criteo/publisher/logging/e;-><init>(ILjava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v7
.end method

.method public static final a(Lcom/criteo/publisher/CriteoInitException;)Lcom/criteo/publisher/logging/e;
    .locals 4

    const-string v0, "criteoInitException"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    new-instance v0, Lcom/criteo/publisher/logging/e;

    const/4 v1, 0x6

    const/4 v2, 0x0

    const-string v3, "onErrorDuringSdkInitialization"

    invoke-direct {v0, v1, v2, p0, v3}, Lcom/criteo/publisher/logging/e;-><init>(ILjava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    return-object v0
.end method

.method public static final a(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Lcom/criteo/publisher/logging/e;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "+",
            "Lcom/criteo/publisher/model/AdUnit;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/criteo/publisher/logging/e;"
        }
    .end annotation

    const-string v0, "cpId"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adUnits"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "version"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    new-instance v0, Lcom/criteo/publisher/logging/e;

    .line 36
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Criteo SDK version "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " is initialized with Publisher ID "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " and "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " ad units:\n"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    sget-object v8, Lcom/criteo/publisher/w$a;->a:Lcom/criteo/publisher/w$a;

    const-string v3, "\n"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v9, 0x1e

    move-object v2, p1

    invoke-static/range {v2 .. v9}, Lkotlin/a/n;->a(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x0

    const/16 v6, 0xd

    move-object v1, v0

    .line 35
    invoke-direct/range {v1 .. v7}, Lcom/criteo/publisher/logging/e;-><init>(ILjava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public static final b()Lcom/criteo/publisher/logging/e;
    .locals 8

    .line 41
    new-instance v7, Lcom/criteo/publisher/logging/e;

    const/4 v1, 0x0

    const-string v2, "Criteo SDK initialization method cannot be called more than once. Please ignore this if you are using a mediation adapter."

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xd

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/criteo/publisher/logging/e;-><init>(ILjava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v7
.end method
