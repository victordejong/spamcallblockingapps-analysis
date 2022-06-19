.class public Lt/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/Object;

.field public b:Ljava/lang/Object;

.field public c:Ljava/lang/Object;

.field public d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lt/e;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Lt/e;-><init>(I)V

    iput-object v0, p0, Lt/c;->a:Ljava/lang/Object;

    .line 3
    new-instance v0, Lt/e;

    invoke-direct {v0, v1}, Lt/e;-><init>(I)V

    iput-object v0, p0, Lt/c;->b:Ljava/lang/Object;

    .line 4
    new-instance v0, Lt/e;

    invoke-direct {v0, v1}, Lt/e;-><init>(I)V

    iput-object v0, p0, Lt/c;->c:Ljava/lang/Object;

    const/16 v0, 0x20

    new-array v0, v0, [Lt/h;

    .line 5
    iput-object v0, p0, Lt/c;->d:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Throwable;Ln5/c;)V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lt/c;->a:Ljava/lang/Object;

    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lt/c;->b:Ljava/lang/Object;

    .line 9
    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-interface {p2, v0}, Ln5/c;->b([Ljava/lang/StackTraceElement;)[Ljava/lang/StackTraceElement;

    move-result-object v0

    iput-object v0, p0, Lt/c;->c:Ljava/lang/Object;

    .line 10
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 11
    new-instance v0, Lt/c;

    invoke-direct {v0, p1, p2}, Lt/c;-><init>(Ljava/lang/Throwable;Ln5/c;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lt/c;->d:Ljava/lang/Object;

    return-void
.end method
