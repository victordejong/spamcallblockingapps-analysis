.class public final Lcom/facebook/internal/b/a/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/internal/b/a/a$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\n\u0002\u0008\u0002\u0008\u0007\u0018\u0000 \n2\u00020\u0001:\u0001\nB\u0011\u0008\u0002\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0001\u00a2\u0006\u0002\u0010\u0003J\u0018\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tH\u0016R\u0010\u0010\u0002\u001a\u0004\u0018\u00010\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/facebook/internal/instrument/crashreport/CrashHandler;",
        "Ljava/lang/Thread$UncaughtExceptionHandler;",
        "previousHandler",
        "(Ljava/lang/Thread$UncaughtExceptionHandler;)V",
        "uncaughtException",
        "",
        "t",
        "Ljava/lang/Thread;",
        "e",
        "",
        "Companion",
        "facebook-core_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# static fields
.field public static final a:Lcom/facebook/internal/b/a/a$a;

.field private static final c:Ljava/lang/String;

.field private static d:Lcom/facebook/internal/b/a/a;


# instance fields
.field private final b:Ljava/lang/Thread$UncaughtExceptionHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/facebook/internal/b/a/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/facebook/internal/b/a/a$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/facebook/internal/b/a/a;->a:Lcom/facebook/internal/b/a/a$a;

    .line 46
    const-class v0, Lcom/facebook/internal/b/a/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/internal/b/a/a;->c:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Thread$UncaughtExceptionHandler;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/internal/b/a/a;->b:Ljava/lang/Thread$UncaughtExceptionHandler;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Thread$UncaughtExceptionHandler;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/facebook/internal/b/a/a;-><init>(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    return-void
.end method

.method public static final synthetic a()Lcom/facebook/internal/b/a/a;
    .locals 1

    .line 34
    sget-object v0, Lcom/facebook/internal/b/a/a;->d:Lcom/facebook/internal/b/a/a;

    return-object v0
.end method

.method public static final synthetic a(Lcom/facebook/internal/b/a/a;)V
    .locals 0

    .line 34
    sput-object p0, Lcom/facebook/internal/b/a/a;->d:Lcom/facebook/internal/b/a/a;

    return-void
.end method

.method public static final synthetic b()Ljava/lang/String;
    .locals 1

    .line 34
    sget-object v0, Lcom/facebook/internal/b/a/a;->c:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "t"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "e"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    invoke-static {p2}, Lcom/facebook/internal/b/d;->c(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    invoke-static {p2}, Lcom/facebook/internal/b/a;->a(Ljava/lang/Throwable;)V

    .line 40
    sget-object v0, Lcom/facebook/internal/b/b$b;->CrashReport:Lcom/facebook/internal/b/b$b;

    invoke-static {p2, v0}, Lcom/facebook/internal/b/b$a;->a(Ljava/lang/Throwable;Lcom/facebook/internal/b/b$b;)Lcom/facebook/internal/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/internal/b/b;->b()V

    .line 42
    :cond_0
    iget-object v0, p0, Lcom/facebook/internal/b/a/a;->b:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method
