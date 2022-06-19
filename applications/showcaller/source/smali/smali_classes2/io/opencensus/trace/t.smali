.class public final Lio/opencensus/trace/t;
.super Ljava/lang/Object;
.source "Tracing.java"


# static fields
.field private static final a:Ljava/util/logging/Logger;

.field private static final b:Lio/opencensus/trace/o;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lio/opencensus/trace/t;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lio/opencensus/trace/t;->a:Ljava/util/logging/Logger;

    .line 2
    const-class v0, Lio/opencensus/trace/o;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {v0}, Lio/opencensus/trace/t;->c(Ljava/lang/ClassLoader;)Lio/opencensus/trace/o;

    move-result-object v0

    sput-object v0, Lio/opencensus/trace/t;->b:Lio/opencensus/trace/o;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lio/opencensus/trace/u/b;
    .locals 1

    .line 1
    sget-object v0, Lio/opencensus/trace/t;->b:Lio/opencensus/trace/o;

    invoke-virtual {v0}, Lio/opencensus/trace/o;->a()Lio/opencensus/trace/u/b;

    move-result-object v0

    return-object v0
.end method

.method public static b()Lio/opencensus/trace/r;
    .locals 1

    .line 1
    sget-object v0, Lio/opencensus/trace/t;->b:Lio/opencensus/trace/o;

    invoke-virtual {v0}, Lio/opencensus/trace/o;->b()Lio/opencensus/trace/r;

    move-result-object v0

    return-object v0
.end method

.method static c(Ljava/lang/ClassLoader;)Lio/opencensus/trace/o;
    .locals 6

    .line 1
    const-class v0, Lio/opencensus/trace/o;

    const/4 v1, 0x1

    :try_start_0
    const-string v2, "io.opencensus.impl.trace.TraceComponentImpl"

    .line 2
    invoke-static {v2, v1, p0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v2

    .line 3
    invoke-static {v2, v0}, Ld/b/b/a;->a(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/opencensus/trace/o;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception v2

    .line 4
    sget-object v3, Lio/opencensus/trace/t;->a:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v5, "Couldn\'t load full implementation for TraceComponent, now trying to load lite implementation."

    invoke-virtual {v3, v4, v5, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :try_start_1
    const-string v2, "io.opencensus.impllite.trace.TraceComponentImplLite"

    .line 5
    invoke-static {v2, v1, p0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p0

    .line 6
    invoke-static {p0, v0}, Ld/b/b/a;->a(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/opencensus/trace/o;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p0

    :catch_1
    move-exception p0

    .line 7
    sget-object v0, Lio/opencensus/trace/t;->a:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v2, "Couldn\'t load lite implementation for TraceComponent, now using default implementation for TraceComponent."

    invoke-virtual {v0, v1, v2, p0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 8
    invoke-static {}, Lio/opencensus/trace/o;->c()Lio/opencensus/trace/o;

    move-result-object p0

    return-object p0
.end method
