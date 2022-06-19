.class public final Lcom/facebook/internal/x;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/internal/x$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0011\n\u0002\u0008\u0008\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0018\u0000  2\u00020\u0001:\u0001 B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u000e\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0005J\'\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0014\u001a\u00020\u00052\u0012\u0010\u0015\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00010\u0016\"\u00020\u0001\u00a2\u0006\u0002\u0010\u0017J\u0012\u0010\u0011\u001a\u00020\u00122\n\u0010\u0018\u001a\u00060\u0008j\u0002`\tJ\u0016\u0010\u0019\u001a\u00020\u00122\u0006\u0010\u001a\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\u0001J\u0006\u0010\u001b\u001a\u00020\u0005J\u0006\u0010\u001c\u001a\u00020\u0012J\u000e\u0010\u001d\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0005J\u0008\u0010\u001e\u001a\u00020\u001fH\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u00060\u0008j\u0002`\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R$\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\u000b@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006!"
    }
    d2 = {
        "Lcom/facebook/internal/Logger;",
        "",
        "behavior",
        "Lcom/facebook/LoggingBehavior;",
        "tag",
        "",
        "(Lcom/facebook/LoggingBehavior;Ljava/lang/String;)V",
        "contents",
        "Ljava/lang/StringBuilder;",
        "Lkotlin/text/StringBuilder;",
        "value",
        "",
        "priority",
        "getPriority",
        "()I",
        "setPriority",
        "(I)V",
        "append",
        "",
        "string",
        "format",
        "args",
        "",
        "(Ljava/lang/String;[Ljava/lang/Object;)V",
        "stringBuilder",
        "appendKeyValue",
        "key",
        "getContents",
        "log",
        "logString",
        "shouldLog",
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
.field public static final a:Lcom/facebook/internal/x$a;

.field private static final f:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final b:Lcom/facebook/m;

.field private final c:Ljava/lang/String;

.field private d:Ljava/lang/StringBuilder;

.field private e:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/facebook/internal/x$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/facebook/internal/x$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/facebook/internal/x;->a:Lcom/facebook/internal/x$a;

    .line 86
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/facebook/internal/x;->f:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/m;Ljava/lang/String;)V
    .locals 2

    const-string v0, "behavior"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tag"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x3

    .line 36
    iput v1, p0, Lcom/facebook/internal/x;->e:I

    .line 161
    invoke-static {p2, v0}, Lcom/facebook/internal/af;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    iput-object p1, p0, Lcom/facebook/internal/x;->b:Lcom/facebook/m;

    .line 163
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "FacebookSDK."

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/internal/x;->c:Ljava/lang/String;

    .line 164
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object p1, p0, Lcom/facebook/internal/x;->d:Ljava/lang/StringBuilder;

    return-void
.end method

.method public static final a(Lcom/facebook/m;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/facebook/internal/x;->a:Lcom/facebook/internal/x$a;

    invoke-virtual {v0, p0, p1, p2}, Lcom/facebook/internal/x$a;->a(Lcom/facebook/m;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static final varargs a(Lcom/facebook/m;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    sget-object v0, Lcom/facebook/internal/x;->a:Lcom/facebook/internal/x$a;

    const-string v1, "behavior"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "tag"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "format"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "args"

    invoke-static {p3, v1}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2111
    invoke-static {p0}, Lcom/facebook/g;->b(Lcom/facebook/m;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2112
    sget-object v1, Lkotlin/jvm/internal/ag;->a:Lkotlin/jvm/internal/ag;

    array-length v1, p3

    invoke-static {p3, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p3

    array-length v1, p3

    invoke-static {p3, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p3

    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "java.lang.String.format(format, *args)"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2113
    check-cast v0, Lcom/facebook/internal/x$a;

    const/4 p3, 0x3

    invoke-virtual {v0, p0, p3, p1, p2}, Lcom/facebook/internal/x$a;->a(Lcom/facebook/m;ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private varargs a(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    const-string v0, "format"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "args"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2081
    iget-object v0, p0, Lcom/facebook/internal/x;->b:Lcom/facebook/m;

    invoke-static {v0}, Lcom/facebook/g;->b(Lcom/facebook/m;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/facebook/internal/x;->d:Ljava/lang/StringBuilder;

    sget-object v1, Lkotlin/jvm/internal/ag;->a:Lkotlin/jvm/internal/ag;

    const/4 v1, 0x2

    invoke-static {p2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    array-length v1, p2

    invoke-static {p2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "java.lang.String.format(format, *args)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    return-void
.end method

.method public static final synthetic b()Ljava/util/HashMap;
    .locals 1

    .line 31
    sget-object v0, Lcom/facebook/internal/x;->f:Ljava/util/HashMap;

    return-object v0
.end method

.method public static final b(Lcom/facebook/m;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/facebook/internal/x;->a:Lcom/facebook/internal/x$a;

    const/4 v1, 0x5

    invoke-virtual {v0, p0, v1, p1, p2}, Lcom/facebook/internal/x$a;->a(Lcom/facebook/m;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static final varargs b(Lcom/facebook/m;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    sget-object v0, Lcom/facebook/internal/x;->a:Lcom/facebook/internal/x$a;

    const-string v1, "behavior"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "tag"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "format"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "args"

    invoke-static {p3, v1}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2125
    invoke-static {p0}, Lcom/facebook/g;->b(Lcom/facebook/m;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2126
    sget-object v1, Lkotlin/jvm/internal/ag;->a:Lkotlin/jvm/internal/ag;

    const/4 v1, 0x1

    invoke-static {p3, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p3

    array-length v1, p3

    invoke-static {p3, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p3

    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "java.lang.String.format(format, *args)"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2127
    check-cast v0, Lcom/facebook/internal/x$a;

    const/4 p3, 0x5

    invoke-virtual {v0, p0, p3, p1, p2}, Lcom/facebook/internal/x$a;->a(Lcom/facebook/m;ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static final declared-synchronized b(Ljava/lang/String;)V
    .locals 2

    const-class v0, Lcom/facebook/internal/x;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/facebook/internal/x;->a:Lcom/facebook/internal/x$a;

    invoke-virtual {v1, p0}, Lcom/facebook/internal/x$a;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private c(Ljava/lang/String;)V
    .locals 4

    const-string v0, "string"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    sget-object v0, Lcom/facebook/internal/x;->a:Lcom/facebook/internal/x$a;

    iget-object v1, p0, Lcom/facebook/internal/x;->b:Lcom/facebook/m;

    iget v2, p0, Lcom/facebook/internal/x;->e:I

    iget-object v3, p0, Lcom/facebook/internal/x;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/facebook/internal/x$a;->a(Lcom/facebook/m;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 49
    iget-object v0, p0, Lcom/facebook/internal/x;->d:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "contents.toString()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/facebook/internal/x;->c(Ljava/lang/String;)V

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/facebook/internal/x;->d:Ljava/lang/StringBuilder;

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    const-string v0, "string"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1081
    iget-object v0, p0, Lcom/facebook/internal/x;->b:Lcom/facebook/m;

    invoke-static {v0}, Lcom/facebook/g;->b(Lcom/facebook/m;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/facebook/internal/x;->d:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const-string p1, "  %s:\t%s\n"

    .line 77
    invoke-direct {p0, p1, v0}, Lcom/facebook/internal/x;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
