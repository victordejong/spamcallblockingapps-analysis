.class public final Lscala/compat/Platform$;
.super Ljava/lang/Object;
.source "Platform.scala"


# static fields
.field public static final MODULE$:Lscala/compat/Platform$;


# instance fields
.field private final EOL:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/compat/Platform$;

    invoke-direct {v0}, Lscala/compat/Platform$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/compat/Platform$;->MODULE$:Lscala/compat/Platform$;

    .line 111
    sget-object v0, Lscala/util/Properties$;->MODULE$:Lscala/util/Properties$;

    invoke-virtual {v0}, Lscala/util/Properties$;->lineSeparator()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lscala/compat/Platform$;->EOL:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public EOL()Ljava/lang/String;
    .locals 1

    .line 111
    iget-object v0, p0, Lscala/compat/Platform$;->EOL:Ljava/lang/String;

    return-object v0
.end method

.method public arrayclear([I)V
    .locals 1

    const/4 v0, 0x0

    .line 86
    invoke-static {p1, v0}, Ljava/util/Arrays;->fill([II)V

    return-void
.end method

.method public arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    .locals 0

    .line 51
    invoke-static {p1, p2, p3, p4, p5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public collectGarbage()V
    .locals 0

    .line 129
    invoke-static {}, Ljava/lang/System;->gc()V

    return-void
.end method

.method public createArray(Ljava/lang/Class;I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;I)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 79
    invoke-static {p1, p2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public currentTime()J
    .locals 2

    .line 120
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public defaultCharsetName()Ljava/lang/String;
    .locals 1

    .line 133
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getClassForName(Ljava/lang/String;)Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 103
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    return-object p1
.end method
