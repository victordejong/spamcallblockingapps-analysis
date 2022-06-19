.class public final Lg5/a$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr5/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg5/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "h"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lr5/d<",
        "Lg5/v$d;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lg5/a$h;

.field public static final b:Lr5/c;

.field public static final c:Lr5/c;

.field public static final d:Lr5/c;

.field public static final e:Lr5/c;

.field public static final f:Lr5/c;

.field public static final g:Lr5/c;

.field public static final h:Lr5/c;

.field public static final i:Lr5/c;

.field public static final j:Lr5/c;

.field public static final k:Lr5/c;

.field public static final l:Lr5/c;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lg5/a$h;

    invoke-direct {v0}, Lg5/a$h;-><init>()V

    sput-object v0, Lg5/a$h;->a:Lg5/a$h;

    const-string v0, "generator"

    .line 2
    invoke-static {v0}, Lr5/c;->a(Ljava/lang/String;)Lr5/c;

    move-result-object v0

    sput-object v0, Lg5/a$h;->b:Lr5/c;

    const-string v0, "identifier"

    .line 3
    invoke-static {v0}, Lr5/c;->a(Ljava/lang/String;)Lr5/c;

    move-result-object v0

    sput-object v0, Lg5/a$h;->c:Lr5/c;

    const-string v0, "startedAt"

    .line 4
    invoke-static {v0}, Lr5/c;->a(Ljava/lang/String;)Lr5/c;

    move-result-object v0

    sput-object v0, Lg5/a$h;->d:Lr5/c;

    const-string v0, "endedAt"

    .line 5
    invoke-static {v0}, Lr5/c;->a(Ljava/lang/String;)Lr5/c;

    move-result-object v0

    sput-object v0, Lg5/a$h;->e:Lr5/c;

    const-string v0, "crashed"

    .line 6
    invoke-static {v0}, Lr5/c;->a(Ljava/lang/String;)Lr5/c;

    move-result-object v0

    sput-object v0, Lg5/a$h;->f:Lr5/c;

    const-string v0, "app"

    .line 7
    invoke-static {v0}, Lr5/c;->a(Ljava/lang/String;)Lr5/c;

    move-result-object v0

    sput-object v0, Lg5/a$h;->g:Lr5/c;

    const-string v0, "user"

    .line 8
    invoke-static {v0}, Lr5/c;->a(Ljava/lang/String;)Lr5/c;

    move-result-object v0

    sput-object v0, Lg5/a$h;->h:Lr5/c;

    const-string v0, "os"

    .line 9
    invoke-static {v0}, Lr5/c;->a(Ljava/lang/String;)Lr5/c;

    move-result-object v0

    sput-object v0, Lg5/a$h;->i:Lr5/c;

    const-string v0, "device"

    .line 10
    invoke-static {v0}, Lr5/c;->a(Ljava/lang/String;)Lr5/c;

    move-result-object v0

    sput-object v0, Lg5/a$h;->j:Lr5/c;

    const-string v0, "events"

    .line 11
    invoke-static {v0}, Lr5/c;->a(Ljava/lang/String;)Lr5/c;

    move-result-object v0

    sput-object v0, Lg5/a$h;->k:Lr5/c;

    const-string v0, "generatorType"

    .line 12
    invoke-static {v0}, Lr5/c;->a(Ljava/lang/String;)Lr5/c;

    move-result-object v0

    sput-object v0, Lg5/a$h;->l:Lr5/c;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p1, Lg5/v$d;

    check-cast p2, Lr5/e;

    .line 2
    sget-object v0, Lg5/a$h;->b:Lr5/c;

    invoke-virtual {p1}, Lg5/v$d;->e()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lr5/e;->f(Lr5/c;Ljava/lang/Object;)Lr5/e;

    .line 3
    sget-object v0, Lg5/a$h;->c:Lr5/c;

    .line 4
    invoke-virtual {p1}, Lg5/v$d;->g()Ljava/lang/String;

    move-result-object v1

    .line 5
    sget-object v2, Lg5/v;->a:Ljava/nio/charset/Charset;

    .line 6
    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    .line 7
    invoke-interface {p2, v0, v1}, Lr5/e;->f(Lr5/c;Ljava/lang/Object;)Lr5/e;

    .line 8
    sget-object v0, Lg5/a$h;->d:Lr5/c;

    invoke-virtual {p1}, Lg5/v$d;->i()J

    move-result-wide v1

    invoke-interface {p2, v0, v1, v2}, Lr5/e;->a(Lr5/c;J)Lr5/e;

    .line 9
    sget-object v0, Lg5/a$h;->e:Lr5/c;

    invoke-virtual {p1}, Lg5/v$d;->c()Ljava/lang/Long;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lr5/e;->f(Lr5/c;Ljava/lang/Object;)Lr5/e;

    .line 10
    sget-object v0, Lg5/a$h;->f:Lr5/c;

    invoke-virtual {p1}, Lg5/v$d;->k()Z

    move-result v1

    invoke-interface {p2, v0, v1}, Lr5/e;->c(Lr5/c;Z)Lr5/e;

    .line 11
    sget-object v0, Lg5/a$h;->g:Lr5/c;

    invoke-virtual {p1}, Lg5/v$d;->a()Lg5/v$d$a;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lr5/e;->f(Lr5/c;Ljava/lang/Object;)Lr5/e;

    .line 12
    sget-object v0, Lg5/a$h;->h:Lr5/c;

    invoke-virtual {p1}, Lg5/v$d;->j()Lg5/v$d$f;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lr5/e;->f(Lr5/c;Ljava/lang/Object;)Lr5/e;

    .line 13
    sget-object v0, Lg5/a$h;->i:Lr5/c;

    invoke-virtual {p1}, Lg5/v$d;->h()Lg5/v$d$e;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lr5/e;->f(Lr5/c;Ljava/lang/Object;)Lr5/e;

    .line 14
    sget-object v0, Lg5/a$h;->j:Lr5/c;

    invoke-virtual {p1}, Lg5/v$d;->b()Lg5/v$d$c;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lr5/e;->f(Lr5/c;Ljava/lang/Object;)Lr5/e;

    .line 15
    sget-object v0, Lg5/a$h;->k:Lr5/c;

    invoke-virtual {p1}, Lg5/v$d;->d()Lg5/w;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lr5/e;->f(Lr5/c;Ljava/lang/Object;)Lr5/e;

    .line 16
    sget-object v0, Lg5/a$h;->l:Lr5/c;

    invoke-virtual {p1}, Lg5/v$d;->f()I

    move-result p1

    invoke-interface {p2, v0, p1}, Lr5/e;->b(Lr5/c;I)Lr5/e;

    return-void
.end method
