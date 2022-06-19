.class public Lorg/slf4j/event/c;
.super Ljava/lang/Object;
.source "SubstituteLoggingEvent.java"

# interfaces
.implements Lorg/slf4j/event/b;


# instance fields
.field a:Lorg/slf4j/event/Level;

.field b:Ljava/lang/String;

.field c:Lorg/slf4j/helpers/d;

.field d:Ljava/lang/String;

.field e:Ljava/lang/String;

.field f:[Ljava/lang/Object;

.field g:J

.field h:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lorg/slf4j/helpers/d;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/slf4j/event/c;->c:Lorg/slf4j/helpers/d;

    return-object v0
.end method

.method public b([Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/slf4j/event/c;->f:[Ljava/lang/Object;

    return-void
.end method

.method public c(Lorg/slf4j/event/Level;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/slf4j/event/c;->a:Lorg/slf4j/event/Level;

    return-void
.end method

.method public d(Lorg/slf4j/helpers/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/slf4j/event/c;->c:Lorg/slf4j/helpers/d;

    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/slf4j/event/c;->b:Ljava/lang/String;

    return-void
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/slf4j/event/c;->e:Ljava/lang/String;

    return-void
.end method

.method public g(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/slf4j/event/c;->d:Ljava/lang/String;

    return-void
.end method

.method public h(Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/slf4j/event/c;->h:Ljava/lang/Throwable;

    return-void
.end method

.method public i(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lorg/slf4j/event/c;->g:J

    return-void
.end method
