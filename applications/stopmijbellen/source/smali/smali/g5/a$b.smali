.class public final Lg5/a$b;
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
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lr5/d<",
        "Lg5/v;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lg5/a$b;

.field public static final b:Lr5/c;

.field public static final c:Lr5/c;

.field public static final d:Lr5/c;

.field public static final e:Lr5/c;

.field public static final f:Lr5/c;

.field public static final g:Lr5/c;

.field public static final h:Lr5/c;

.field public static final i:Lr5/c;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lg5/a$b;

    invoke-direct {v0}, Lg5/a$b;-><init>()V

    sput-object v0, Lg5/a$b;->a:Lg5/a$b;

    const-string v0, "sdkVersion"

    .line 2
    invoke-static {v0}, Lr5/c;->a(Ljava/lang/String;)Lr5/c;

    move-result-object v0

    sput-object v0, Lg5/a$b;->b:Lr5/c;

    const-string v0, "gmpAppId"

    .line 3
    invoke-static {v0}, Lr5/c;->a(Ljava/lang/String;)Lr5/c;

    move-result-object v0

    sput-object v0, Lg5/a$b;->c:Lr5/c;

    const-string v0, "platform"

    .line 4
    invoke-static {v0}, Lr5/c;->a(Ljava/lang/String;)Lr5/c;

    move-result-object v0

    sput-object v0, Lg5/a$b;->d:Lr5/c;

    const-string v0, "installationUuid"

    .line 5
    invoke-static {v0}, Lr5/c;->a(Ljava/lang/String;)Lr5/c;

    move-result-object v0

    sput-object v0, Lg5/a$b;->e:Lr5/c;

    const-string v0, "buildVersion"

    .line 6
    invoke-static {v0}, Lr5/c;->a(Ljava/lang/String;)Lr5/c;

    move-result-object v0

    sput-object v0, Lg5/a$b;->f:Lr5/c;

    const-string v0, "displayVersion"

    .line 7
    invoke-static {v0}, Lr5/c;->a(Ljava/lang/String;)Lr5/c;

    move-result-object v0

    sput-object v0, Lg5/a$b;->g:Lr5/c;

    const-string v0, "session"

    .line 8
    invoke-static {v0}, Lr5/c;->a(Ljava/lang/String;)Lr5/c;

    move-result-object v0

    sput-object v0, Lg5/a$b;->h:Lr5/c;

    const-string v0, "ndkPayload"

    .line 9
    invoke-static {v0}, Lr5/c;->a(Ljava/lang/String;)Lr5/c;

    move-result-object v0

    sput-object v0, Lg5/a$b;->i:Lr5/c;

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
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p1, Lg5/v;

    check-cast p2, Lr5/e;

    .line 2
    sget-object v0, Lg5/a$b;->b:Lr5/c;

    invoke-virtual {p1}, Lg5/v;->g()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lr5/e;->f(Lr5/c;Ljava/lang/Object;)Lr5/e;

    .line 3
    sget-object v0, Lg5/a$b;->c:Lr5/c;

    invoke-virtual {p1}, Lg5/v;->c()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lr5/e;->f(Lr5/c;Ljava/lang/Object;)Lr5/e;

    .line 4
    sget-object v0, Lg5/a$b;->d:Lr5/c;

    invoke-virtual {p1}, Lg5/v;->f()I

    move-result v1

    invoke-interface {p2, v0, v1}, Lr5/e;->b(Lr5/c;I)Lr5/e;

    .line 5
    sget-object v0, Lg5/a$b;->e:Lr5/c;

    invoke-virtual {p1}, Lg5/v;->d()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lr5/e;->f(Lr5/c;Ljava/lang/Object;)Lr5/e;

    .line 6
    sget-object v0, Lg5/a$b;->f:Lr5/c;

    invoke-virtual {p1}, Lg5/v;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lr5/e;->f(Lr5/c;Ljava/lang/Object;)Lr5/e;

    .line 7
    sget-object v0, Lg5/a$b;->g:Lr5/c;

    invoke-virtual {p1}, Lg5/v;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lr5/e;->f(Lr5/c;Ljava/lang/Object;)Lr5/e;

    .line 8
    sget-object v0, Lg5/a$b;->h:Lr5/c;

    invoke-virtual {p1}, Lg5/v;->h()Lg5/v$d;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lr5/e;->f(Lr5/c;Ljava/lang/Object;)Lr5/e;

    .line 9
    sget-object v0, Lg5/a$b;->i:Lr5/c;

    invoke-virtual {p1}, Lg5/v;->e()Lg5/v$c;

    move-result-object p1

    invoke-interface {p2, v0, p1}, Lr5/e;->f(Lr5/c;Ljava/lang/Object;)Lr5/e;

    return-void
.end method
