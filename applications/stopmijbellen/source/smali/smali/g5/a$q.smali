.class public final Lg5/a$q;
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
    name = "q"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lr5/d<",
        "Lg5/v$d$d;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lg5/a$q;

.field public static final b:Lr5/c;

.field public static final c:Lr5/c;

.field public static final d:Lr5/c;

.field public static final e:Lr5/c;

.field public static final f:Lr5/c;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lg5/a$q;

    invoke-direct {v0}, Lg5/a$q;-><init>()V

    sput-object v0, Lg5/a$q;->a:Lg5/a$q;

    const-string v0, "timestamp"

    .line 2
    invoke-static {v0}, Lr5/c;->a(Ljava/lang/String;)Lr5/c;

    move-result-object v0

    sput-object v0, Lg5/a$q;->b:Lr5/c;

    const-string v0, "type"

    .line 3
    invoke-static {v0}, Lr5/c;->a(Ljava/lang/String;)Lr5/c;

    move-result-object v0

    sput-object v0, Lg5/a$q;->c:Lr5/c;

    const-string v0, "app"

    .line 4
    invoke-static {v0}, Lr5/c;->a(Ljava/lang/String;)Lr5/c;

    move-result-object v0

    sput-object v0, Lg5/a$q;->d:Lr5/c;

    const-string v0, "device"

    .line 5
    invoke-static {v0}, Lr5/c;->a(Ljava/lang/String;)Lr5/c;

    move-result-object v0

    sput-object v0, Lg5/a$q;->e:Lr5/c;

    const-string v0, "log"

    .line 6
    invoke-static {v0}, Lr5/c;->a(Ljava/lang/String;)Lr5/c;

    move-result-object v0

    sput-object v0, Lg5/a$q;->f:Lr5/c;

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
    check-cast p1, Lg5/v$d$d;

    check-cast p2, Lr5/e;

    .line 2
    sget-object v0, Lg5/a$q;->b:Lr5/c;

    invoke-virtual {p1}, Lg5/v$d$d;->d()J

    move-result-wide v1

    invoke-interface {p2, v0, v1, v2}, Lr5/e;->a(Lr5/c;J)Lr5/e;

    .line 3
    sget-object v0, Lg5/a$q;->c:Lr5/c;

    invoke-virtual {p1}, Lg5/v$d$d;->e()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lr5/e;->f(Lr5/c;Ljava/lang/Object;)Lr5/e;

    .line 4
    sget-object v0, Lg5/a$q;->d:Lr5/c;

    invoke-virtual {p1}, Lg5/v$d$d;->a()Lg5/v$d$d$a;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lr5/e;->f(Lr5/c;Ljava/lang/Object;)Lr5/e;

    .line 5
    sget-object v0, Lg5/a$q;->e:Lr5/c;

    invoke-virtual {p1}, Lg5/v$d$d;->b()Lg5/v$d$d$b;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lr5/e;->f(Lr5/c;Ljava/lang/Object;)Lr5/e;

    .line 6
    sget-object v0, Lg5/a$q;->f:Lr5/c;

    invoke-virtual {p1}, Lg5/v$d$d;->c()Lg5/v$d$d$c;

    move-result-object p1

    invoke-interface {p2, v0, p1}, Lr5/e;->f(Lr5/c;Ljava/lang/Object;)Lr5/e;

    return-void
.end method
