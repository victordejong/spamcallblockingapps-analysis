.class public final Lcom/sinch/logging/Log;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sinch/logging/Log$DelegatingLogger;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010#\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0008\u0003\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0001\u0012B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J+\u0010\u0006\u001a\u00020\u0007\"\u0008\u0008\u0000\u0010\u0008*\u00020\u00012\u0006\u0010\t\u001a\u0002H\u00082\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u000bH\u0007\u00a2\u0006\u0002\u0010\u000cJ!\u0010\r\u001a\u00020\u000e2\u0012\u0010\u000f\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00050\u0010\"\u00020\u0005H\u0007\u00a2\u0006\u0002\u0010\u0011R\u0014\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/sinch/logging/Log;",
        "",
        "()V",
        "delegates",
        "",
        "Lcom/sinch/logging/Appender;",
        "create",
        "Lcom/sinch/logging/Logger;",
        "T",
        "type",
        "tagOverride",
        "",
        "(Ljava/lang/Object;Ljava/lang/String;)Lcom/sinch/logging/Logger;",
        "init",
        "",
        "appenders",
        "",
        "([Lcom/sinch/logging/Appender;)V",
        "DelegatingLogger",
        "logging_productionRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/sinch/logging/Log;

.field private static final delegates:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/sinch/logging/Appender;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 3
    new-instance v0, Lcom/sinch/logging/Log;

    invoke-direct {v0}, Lcom/sinch/logging/Log;-><init>()V

    sput-object v0, Lcom/sinch/logging/Log;->INSTANCE:Lcom/sinch/logging/Log;

    .line 5
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    check-cast v0, Ljava/util/Set;

    sput-object v0, Lcom/sinch/logging/Log;->delegates:Ljava/util/Set;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getDelegates$p(Lcom/sinch/logging/Log;)Ljava/util/Set;
    .locals 0

    .line 3
    sget-object p0, Lcom/sinch/logging/Log;->delegates:Ljava/util/Set;

    return-object p0
.end method

.method public static final create(Ljava/lang/Object;)Lcom/sinch/logging/Logger;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcom/sinch/logging/Logger;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p0, v0, v1, v0}, Lcom/sinch/logging/Log;->create$default(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/Object;)Lcom/sinch/logging/Logger;

    move-result-object p0

    return-object p0
.end method

.method public static final create(Ljava/lang/Object;Ljava/lang/String;)Lcom/sinch/logging/Logger;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/String;",
            ")",
            "Lcom/sinch/logging/Logger;"
        }
    .end annotation

    const-string v0, "type"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    new-instance v0, Lcom/sinch/logging/Log$DelegatingLogger;

    if-nez p1, :cond_0

    .line 11
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    const-string p0, "type::class.java.simpleName"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    :cond_0
    invoke-direct {v0, p1}, Lcom/sinch/logging/Log$DelegatingLogger;-><init>(Ljava/lang/String;)V

    check-cast v0, Lcom/sinch/logging/Logger;

    return-object v0
.end method

.method public static synthetic create$default(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/Object;)Lcom/sinch/logging/Logger;
    .locals 0

    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 9
    :cond_0
    invoke-static {p0, p1}, Lcom/sinch/logging/Log;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/sinch/logging/Logger;

    move-result-object p0

    return-object p0
.end method

.method public static final varargs init([Lcom/sinch/logging/Appender;)V
    .locals 1

    const-string v0, "appenders"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    sget-object v0, Lcom/sinch/logging/Log;->delegates:Ljava/util/Set;

    .line 17
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 18
    check-cast v0, Ljava/util/Collection;

    invoke-static {v0, p0}, Lkotlin/a/n;->a(Ljava/util/Collection;[Ljava/lang/Object;)Z

    return-void
.end method
