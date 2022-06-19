.class public final Lio/opencensus/trace/y;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/util/logging/Logger;

.field private static final b:Lio/opencensus/trace/t;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    const-class v0, Lio/opencensus/trace/y;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lio/opencensus/trace/y;->a:Ljava/util/logging/Logger;

    .line 36
    const-class v0, Lio/opencensus/trace/t;

    .line 37
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {v0}, Lio/opencensus/trace/y;->a(Ljava/lang/ClassLoader;)Lio/opencensus/trace/t;

    move-result-object v0

    sput-object v0, Lio/opencensus/trace/y;->b:Lio/opencensus/trace/t;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/ClassLoader;)Lio/opencensus/trace/t;
    .locals 5

    const/4 v0, 0x1

    :try_start_0
    const-string v1, "io.opencensus.impl.trace.TraceComponentImpl"

    .line 95
    invoke-static {v1, v0, p0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lio/opencensus/trace/t;

    .line 94
    invoke-static {v1, v2}, Lio/opencensus/b/a;->a(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/opencensus/trace/t;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v1

    .line 99
    sget-object v2, Lio/opencensus/trace/y;->a:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v4, "Couldn\'t load full implementation for TraceComponent, now trying to load lite implementation."

    invoke-virtual {v2, v3, v4, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :try_start_1
    const-string v1, "io.opencensus.impllite.trace.TraceComponentImplLite"

    .line 108
    invoke-static {v1, v0, p0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p0

    const-class v0, Lio/opencensus/trace/t;

    .line 107
    invoke-static {p0, v0}, Lio/opencensus/b/a;->a(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/opencensus/trace/t;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p0

    :catch_1
    move-exception p0

    .line 114
    sget-object v0, Lio/opencensus/trace/y;->a:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v2, "Couldn\'t load lite implementation for TraceComponent, now using default implementation for TraceComponent."

    invoke-virtual {v0, v1, v2, p0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 120
    invoke-static {}, Lio/opencensus/trace/t;->c()Lio/opencensus/trace/t;

    move-result-object p0

    return-object p0
.end method

.method public static a()Lio/opencensus/trace/w;
    .locals 1

    .line 46
    sget-object v0, Lio/opencensus/trace/y;->b:Lio/opencensus/trace/t;

    invoke-virtual {v0}, Lio/opencensus/trace/t;->a()Lio/opencensus/trace/w;

    move-result-object v0

    return-object v0
.end method

.method public static b()Lio/opencensus/trace/a/b;
    .locals 1

    .line 76
    sget-object v0, Lio/opencensus/trace/y;->b:Lio/opencensus/trace/t;

    invoke-virtual {v0}, Lio/opencensus/trace/t;->b()Lio/opencensus/trace/a/b;

    move-result-object v0

    return-object v0
.end method
