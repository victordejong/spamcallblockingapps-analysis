.class public final Lg5/a$j;
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
    name = "j"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lr5/d<",
        "Lg5/v$d$d$a$b$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lg5/a$j;

.field public static final b:Lr5/c;

.field public static final c:Lr5/c;

.field public static final d:Lr5/c;

.field public static final e:Lr5/c;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lg5/a$j;

    invoke-direct {v0}, Lg5/a$j;-><init>()V

    sput-object v0, Lg5/a$j;->a:Lg5/a$j;

    const-string v0, "baseAddress"

    .line 2
    invoke-static {v0}, Lr5/c;->a(Ljava/lang/String;)Lr5/c;

    move-result-object v0

    sput-object v0, Lg5/a$j;->b:Lr5/c;

    const-string v0, "size"

    .line 3
    invoke-static {v0}, Lr5/c;->a(Ljava/lang/String;)Lr5/c;

    move-result-object v0

    sput-object v0, Lg5/a$j;->c:Lr5/c;

    const-string v0, "name"

    .line 4
    invoke-static {v0}, Lr5/c;->a(Ljava/lang/String;)Lr5/c;

    move-result-object v0

    sput-object v0, Lg5/a$j;->d:Lr5/c;

    const-string v0, "uuid"

    .line 5
    invoke-static {v0}, Lr5/c;->a(Ljava/lang/String;)Lr5/c;

    move-result-object v0

    sput-object v0, Lg5/a$j;->e:Lr5/c;

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
    check-cast p1, Lg5/v$d$d$a$b$a;

    check-cast p2, Lr5/e;

    .line 2
    sget-object v0, Lg5/a$j;->b:Lr5/c;

    invoke-virtual {p1}, Lg5/v$d$d$a$b$a;->a()J

    move-result-wide v1

    invoke-interface {p2, v0, v1, v2}, Lr5/e;->a(Lr5/c;J)Lr5/e;

    .line 3
    sget-object v0, Lg5/a$j;->c:Lr5/c;

    invoke-virtual {p1}, Lg5/v$d$d$a$b$a;->c()J

    move-result-wide v1

    invoke-interface {p2, v0, v1, v2}, Lr5/e;->a(Lr5/c;J)Lr5/e;

    .line 4
    sget-object v0, Lg5/a$j;->d:Lr5/c;

    invoke-virtual {p1}, Lg5/v$d$d$a$b$a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lr5/e;->f(Lr5/c;Ljava/lang/Object;)Lr5/e;

    .line 5
    sget-object v0, Lg5/a$j;->e:Lr5/c;

    .line 6
    invoke-virtual {p1}, Lg5/v$d$d$a$b$a;->d()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 7
    sget-object v1, Lg5/v;->a:Ljava/nio/charset/Charset;

    .line 8
    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 9
    :goto_0
    invoke-interface {p2, v0, p1}, Lr5/e;->f(Lr5/c;Ljava/lang/Object;)Lr5/e;

    return-void
.end method
