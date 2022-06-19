.class public Lcom/criteo/publisher/logging/k;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Ljava/text/SimpleDateFormat;

.field final b:Landroid/content/Context;

.field final c:Lcom/criteo/publisher/m0/b;

.field final d:Lcom/criteo/publisher/x;

.field final e:Lcom/criteo/publisher/i/c;

.field final f:Lcom/criteo/publisher/h;

.field final g:Lcom/criteo/publisher/logging/i;

.field private final h:Lcom/criteo/publisher/m0/g;


# direct methods
.method public constructor <init>(Lcom/criteo/publisher/m0/g;Landroid/content/Context;Lcom/criteo/publisher/m0/b;Lcom/criteo/publisher/x;Lcom/criteo/publisher/i/c;Lcom/criteo/publisher/h;Lcom/criteo/publisher/logging/i;)V
    .locals 1

    const-string v0, "buildConfigWrapper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "advertisingInfo"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "session"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "integrationRegistry"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clock"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "publisherCodeRemover"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/criteo/publisher/logging/k;->h:Lcom/criteo/publisher/m0/g;

    iput-object p2, p0, Lcom/criteo/publisher/logging/k;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/criteo/publisher/logging/k;->c:Lcom/criteo/publisher/m0/b;

    iput-object p4, p0, Lcom/criteo/publisher/logging/k;->d:Lcom/criteo/publisher/x;

    iput-object p5, p0, Lcom/criteo/publisher/logging/k;->e:Lcom/criteo/publisher/i/c;

    iput-object p6, p0, Lcom/criteo/publisher/logging/k;->f:Lcom/criteo/publisher/h;

    iput-object p7, p0, Lcom/criteo/publisher/logging/k;->g:Lcom/criteo/publisher/logging/i;

    .line 49
    new-instance p1, Ljava/text/SimpleDateFormat;

    sget-object p2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string p3, "yyyy-MM-dd\'T\'HH:mm:ss.SSS\'Z\'"

    invoke-direct {p1, p3, p2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const-string p2, "UTC"

    .line 50
    invoke-static {p2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 49
    iput-object p1, p0, Lcom/criteo/publisher/logging/k;->a:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 2

    .line 103
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    const-string v1, "Thread.currentThread()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Thread.currentThread().name"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public static a(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 1

    const-string v0, "throwable"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
