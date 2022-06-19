.class public final Lorg/jsoup/nodes/f$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/nodes/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jsoup/nodes/f$a$a;
    }
.end annotation


# instance fields
.field a:Lorg/jsoup/nodes/i$b;

.field public b:Ljava/nio/charset/Charset;

.field c:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/nio/charset/CharsetEncoder;",
            ">;"
        }
    .end annotation
.end field

.field d:I

.field e:Z

.field f:Z

.field g:I

.field public h:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 400
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 390
    sget-object v0, Lorg/jsoup/nodes/i$b;->base:Lorg/jsoup/nodes/i$b;

    iput-object v0, p0, Lorg/jsoup/nodes/f$a;->a:Lorg/jsoup/nodes/i$b;

    .line 392
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lorg/jsoup/nodes/f$a;->c:Ljava/lang/ThreadLocal;

    const/4 v0, 0x1

    .line 395
    iput-boolean v0, p0, Lorg/jsoup/nodes/f$a;->e:Z

    const/4 v1, 0x0

    .line 396
    iput-boolean v1, p0, Lorg/jsoup/nodes/f$a;->f:Z

    .line 397
    iput v0, p0, Lorg/jsoup/nodes/f$a;->g:I

    .line 398
    sget v0, Lorg/jsoup/nodes/f$a$a;->a:I

    iput v0, p0, Lorg/jsoup/nodes/f$a;->h:I

    const-string v0, "UTF8"

    .line 401
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    .line 1445
    iput-object v0, p0, Lorg/jsoup/nodes/f$a;->b:Ljava/nio/charset/Charset;

    return-void
.end method


# virtual methods
.method final a()Ljava/nio/charset/CharsetEncoder;
    .locals 2

    .line 461
    iget-object v0, p0, Lorg/jsoup/nodes/f$a;->b:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    .line 462
    iget-object v1, p0, Lorg/jsoup/nodes/f$a;->c:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 463
    invoke-virtual {v0}, Ljava/nio/charset/CharsetEncoder;->charset()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/jsoup/nodes/i$a;->a(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lorg/jsoup/nodes/f$a;->d:I

    return-object v0
.end method

.method public final b()Lorg/jsoup/nodes/f$a;
    .locals 2

    .line 552
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/f$a;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 556
    iget-object v1, p0, Lorg/jsoup/nodes/f$a;->b:Ljava/nio/charset/Charset;

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    .line 1455
    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    .line 2445
    iput-object v1, v0, Lorg/jsoup/nodes/f$a;->b:Ljava/nio/charset/Charset;

    .line 557
    iget-object v1, p0, Lorg/jsoup/nodes/f$a;->a:Lorg/jsoup/nodes/i$b;

    invoke-virtual {v1}, Lorg/jsoup/nodes/i$b;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/jsoup/nodes/i$b;->valueOf(Ljava/lang/String;)Lorg/jsoup/nodes/i$b;

    move-result-object v1

    iput-object v1, v0, Lorg/jsoup/nodes/f$a;->a:Lorg/jsoup/nodes/i$b;

    return-object v0

    :catch_0
    move-exception v0

    .line 554
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 384
    invoke-virtual {p0}, Lorg/jsoup/nodes/f$a;->b()Lorg/jsoup/nodes/f$a;

    move-result-object v0

    return-object v0
.end method
