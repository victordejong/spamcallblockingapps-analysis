.class public Lorg/apache/commons/lang3/exception/ContextedException;
.super Ljava/lang/Exception;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/lang3/exception/b;


# instance fields
.field private final a:Lorg/apache/commons/lang3/exception/b;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 100
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 101
    new-instance v0, Lorg/apache/commons/lang3/exception/a;

    invoke-direct {v0}, Lorg/apache/commons/lang3/exception/a;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/lang3/exception/ContextedException;->a:Lorg/apache/commons/lang3/exception/b;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 112
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 113
    new-instance p1, Lorg/apache/commons/lang3/exception/a;

    invoke-direct {p1}, Lorg/apache/commons/lang3/exception/a;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/lang3/exception/ContextedException;->a:Lorg/apache/commons/lang3/exception/b;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 137
    invoke-direct {p0, p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 138
    new-instance p1, Lorg/apache/commons/lang3/exception/a;

    invoke-direct {p1}, Lorg/apache/commons/lang3/exception/a;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/lang3/exception/ContextedException;->a:Lorg/apache/commons/lang3/exception/b;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;Lorg/apache/commons/lang3/exception/b;)V
    .locals 0

    .line 149
    invoke-direct {p0, p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    if-nez p3, :cond_0

    .line 151
    new-instance p3, Lorg/apache/commons/lang3/exception/a;

    invoke-direct {p3}, Lorg/apache/commons/lang3/exception/a;-><init>()V

    .line 153
    :cond_0
    iput-object p3, p0, Lorg/apache/commons/lang3/exception/ContextedException;->a:Lorg/apache/commons/lang3/exception/b;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0

    .line 124
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 125
    new-instance p1, Lorg/apache/commons/lang3/exception/a;

    invoke-direct {p1}, Lorg/apache/commons/lang3/exception/a;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/lang3/exception/ContextedException;->a:Lorg/apache/commons/lang3/exception/b;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 254
    iget-object v0, p0, Lorg/apache/commons/lang3/exception/ContextedException;->a:Lorg/apache/commons/lang3/exception/b;

    invoke-interface {v0, p1}, Lorg/apache/commons/lang3/exception/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 235
    invoke-super {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/exception/ContextedException;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
