.class public Lcom/google/api/client/http/ac;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String;

.field static volatile b:Lio/opencensus/trace/propagation/a;

.field static volatile c:Lio/opencensus/trace/propagation/a$b;

.field private static final d:Ljava/util/logging/Logger;

.field private static final e:Lio/opencensus/trace/w;

.field private static final f:Ljava/util/concurrent/atomic/AtomicLong;

.field private static volatile g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 46
    const-class v0, Lcom/google/api/client/http/ac;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/api/client/http/ac;->d:Ljava/util/logging/Logger;

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Sent."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/google/api/client/http/q;

    .line 50
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".execute"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/api/client/http/ac;->a:Ljava/lang/String;

    .line 56
    invoke-static {}, Lio/opencensus/trace/y;->a()Lio/opencensus/trace/w;

    move-result-object v0

    sput-object v0, Lcom/google/api/client/http/ac;->e:Lio/opencensus/trace/w;

    .line 59
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    sput-object v0, Lcom/google/api/client/http/ac;->f:Ljava/util/concurrent/atomic/AtomicLong;

    const/4 v0, 0x1

    .line 62
    sput-boolean v0, Lcom/google/api/client/http/ac;->g:Z

    const/4 v0, 0x0

    .line 65
    sput-object v0, Lcom/google/api/client/http/ac;->b:Lio/opencensus/trace/propagation/a;

    .line 68
    sput-object v0, Lcom/google/api/client/http/ac;->c:Lio/opencensus/trace/propagation/a$b;

    .line 4039
    :try_start_0
    new-instance v0, Lio/opencensus/a/a/a/a;

    invoke-direct {v0}, Lio/opencensus/a/a/a/a;-><init>()V

    .line 227
    sput-object v0, Lcom/google/api/client/http/ac;->b:Lio/opencensus/trace/propagation/a;

    .line 228
    new-instance v0, Lcom/google/api/client/http/ac$1;

    invoke-direct {v0}, Lcom/google/api/client/http/ac$1;-><init>()V

    sput-object v0, Lcom/google/api/client/http/ac;->c:Lio/opencensus/trace/propagation/a$b;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 236
    sget-object v1, Lcom/google/api/client/http/ac;->d:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v3, "Cannot initialize default OpenCensus HTTP propagation text format."

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 241
    :goto_0
    :try_start_1
    invoke-static {}, Lio/opencensus/trace/y;->b()Lio/opencensus/trace/a/b;

    move-result-object v0

    .line 242
    invoke-virtual {v0}, Lio/opencensus/trace/a/b;->a()Lio/opencensus/trace/a/c;

    move-result-object v0

    sget-object v1, Lcom/google/api/client/http/ac;->a:Ljava/lang/String;

    .line 243
    invoke-static {v1}, Lcom/google/common/collect/v;->a(Ljava/lang/Object;)Lcom/google/common/collect/v;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/opencensus/trace/a/c;->a(Ljava/util/Collection;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception v0

    .line 245
    sget-object v1, Lcom/google/api/client/http/ac;->d:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v3, "Cannot register default OpenCensus span names for collection."

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 249
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/Integer;)Lio/opencensus/trace/l;
    .locals 2

    .line 150
    invoke-static {}, Lio/opencensus/trace/l;->c()Lio/opencensus/trace/l$a;

    move-result-object v0

    if-nez p0, :cond_0

    .line 152
    sget-object p0, Lio/opencensus/trace/s;->c:Lio/opencensus/trace/s;

    invoke-virtual {v0, p0}, Lio/opencensus/trace/l$a;->a(Lio/opencensus/trace/s;)Lio/opencensus/trace/l$a;

    goto :goto_0

    .line 153
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/google/api/client/http/v;->a(I)Z

    move-result v1

    if-nez v1, :cond_7

    .line 154
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/16 v1, 0x190

    if-eq p0, v1, :cond_6

    const/16 v1, 0x191

    if-eq p0, v1, :cond_5

    const/16 v1, 0x193

    if-eq p0, v1, :cond_4

    const/16 v1, 0x194

    if-eq p0, v1, :cond_3

    const/16 v1, 0x19c

    if-eq p0, v1, :cond_2

    const/16 v1, 0x1f4

    if-eq p0, v1, :cond_1

    .line 174
    sget-object p0, Lio/opencensus/trace/s;->c:Lio/opencensus/trace/s;

    invoke-virtual {v0, p0}, Lio/opencensus/trace/l$a;->a(Lio/opencensus/trace/s;)Lio/opencensus/trace/l$a;

    goto :goto_0

    .line 171
    :cond_1
    sget-object p0, Lio/opencensus/trace/s;->p:Lio/opencensus/trace/s;

    invoke-virtual {v0, p0}, Lio/opencensus/trace/l$a;->a(Lio/opencensus/trace/s;)Lio/opencensus/trace/l$a;

    goto :goto_0

    .line 168
    :cond_2
    sget-object p0, Lio/opencensus/trace/s;->k:Lio/opencensus/trace/s;

    invoke-virtual {v0, p0}, Lio/opencensus/trace/l$a;->a(Lio/opencensus/trace/s;)Lio/opencensus/trace/l$a;

    goto :goto_0

    .line 165
    :cond_3
    sget-object p0, Lio/opencensus/trace/s;->f:Lio/opencensus/trace/s;

    invoke-virtual {v0, p0}, Lio/opencensus/trace/l$a;->a(Lio/opencensus/trace/s;)Lio/opencensus/trace/l$a;

    goto :goto_0

    .line 162
    :cond_4
    sget-object p0, Lio/opencensus/trace/s;->h:Lio/opencensus/trace/s;

    invoke-virtual {v0, p0}, Lio/opencensus/trace/l$a;->a(Lio/opencensus/trace/s;)Lio/opencensus/trace/l$a;

    goto :goto_0

    .line 159
    :cond_5
    sget-object p0, Lio/opencensus/trace/s;->i:Lio/opencensus/trace/s;

    invoke-virtual {v0, p0}, Lio/opencensus/trace/l$a;->a(Lio/opencensus/trace/s;)Lio/opencensus/trace/l$a;

    goto :goto_0

    .line 156
    :cond_6
    sget-object p0, Lio/opencensus/trace/s;->d:Lio/opencensus/trace/s;

    invoke-virtual {v0, p0}, Lio/opencensus/trace/l$a;->a(Lio/opencensus/trace/s;)Lio/opencensus/trace/l$a;

    goto :goto_0

    .line 177
    :cond_7
    sget-object p0, Lio/opencensus/trace/s;->a:Lio/opencensus/trace/s;

    invoke-virtual {v0, p0}, Lio/opencensus/trace/l$a;->a(Lio/opencensus/trace/s;)Lio/opencensus/trace/l$a;

    .line 179
    :goto_0
    invoke-virtual {v0}, Lio/opencensus/trace/l$a;->a()Lio/opencensus/trace/l;

    move-result-object p0

    return-object p0
.end method

.method public static a()Lio/opencensus/trace/w;
    .locals 1

    .line 113
    sget-object v0, Lcom/google/api/client/http/ac;->e:Lio/opencensus/trace/w;

    return-object v0
.end method

.method public static a(Lio/opencensus/trace/o;J)V
    .locals 1

    .line 190
    sget-object v0, Lio/opencensus/trace/m$b;->SENT:Lio/opencensus/trace/m$b;

    invoke-static {p0, p1, p2, v0}, Lcom/google/api/client/http/ac;->a(Lio/opencensus/trace/o;JLio/opencensus/trace/m$b;)V

    return-void
.end method

.method private static a(Lio/opencensus/trace/o;JLio/opencensus/trace/m$b;)V
    .locals 3

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "span should not be null."

    .line 3047
    invoke-static {v0, v1}, Lcom/google/common/base/m;->a(ZLjava/lang/Object;)V

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gez v2, :cond_1

    move-wide p1, v0

    .line 218
    :cond_1
    sget-object v0, Lcom/google/api/client/http/ac;->f:Ljava/util/concurrent/atomic/AtomicLong;

    .line 219
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v0

    invoke-static {p3, v0, v1}, Lio/opencensus/trace/m;->a(Lio/opencensus/trace/m$b;J)Lio/opencensus/trace/m$a;

    move-result-object p3

    .line 220
    invoke-virtual {p3, p1, p2}, Lio/opencensus/trace/m$a;->b(J)Lio/opencensus/trace/m$a;

    move-result-object p1

    .line 221
    invoke-virtual {p1}, Lio/opencensus/trace/m$a;->a()Lio/opencensus/trace/m;

    move-result-object p1

    .line 222
    invoke-virtual {p0, p1}, Lio/opencensus/trace/o;->a(Lio/opencensus/trace/m;)V

    return-void
.end method

.method public static a(Lio/opencensus/trace/o;Lcom/google/api/client/http/n;)V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-string v3, "span should not be null."

    .line 1047
    invoke-static {v2, v3}, Lcom/google/common/base/m;->a(ZLjava/lang/Object;)V

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    const-string v1, "headers should not be null."

    .line 2047
    invoke-static {v0, v1}, Lcom/google/common/base/m;->a(ZLjava/lang/Object;)V

    .line 135
    sget-object v0, Lcom/google/api/client/http/ac;->b:Lio/opencensus/trace/propagation/a;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/google/api/client/http/ac;->c:Lio/opencensus/trace/propagation/a$b;

    if-eqz v0, :cond_2

    .line 136
    sget-object v0, Lio/opencensus/trace/j;->a:Lio/opencensus/trace/j;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 137
    sget-object v0, Lcom/google/api/client/http/ac;->b:Lio/opencensus/trace/propagation/a;

    .line 2254
    iget-object p0, p0, Lio/opencensus/trace/o;->c:Lio/opencensus/trace/q;

    .line 137
    sget-object v1, Lcom/google/api/client/http/ac;->c:Lio/opencensus/trace/propagation/a$b;

    invoke-virtual {v0, p0, p1, v1}, Lio/opencensus/trace/propagation/a;->a(Lio/opencensus/trace/q;Ljava/lang/Object;Lio/opencensus/trace/propagation/a$b;)V

    :cond_2
    return-void
.end method

.method public static b(Lio/opencensus/trace/o;J)V
    .locals 1

    .line 201
    sget-object v0, Lio/opencensus/trace/m$b;->RECEIVED:Lio/opencensus/trace/m$b;

    invoke-static {p0, p1, p2, v0}, Lcom/google/api/client/http/ac;->a(Lio/opencensus/trace/o;JLio/opencensus/trace/m$b;)V

    return-void
.end method

.method public static b()Z
    .locals 1

    .line 122
    sget-boolean v0, Lcom/google/api/client/http/ac;->g:Z

    return v0
.end method
