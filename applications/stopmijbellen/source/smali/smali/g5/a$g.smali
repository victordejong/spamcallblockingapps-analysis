.class public final Lg5/a$g;
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
    name = "g"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lr5/d<",
        "Lg5/v$d$c;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lg5/a$g;

.field public static final b:Lr5/c;

.field public static final c:Lr5/c;

.field public static final d:Lr5/c;

.field public static final e:Lr5/c;

.field public static final f:Lr5/c;

.field public static final g:Lr5/c;

.field public static final h:Lr5/c;

.field public static final i:Lr5/c;

.field public static final j:Lr5/c;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lg5/a$g;

    invoke-direct {v0}, Lg5/a$g;-><init>()V

    sput-object v0, Lg5/a$g;->a:Lg5/a$g;

    const-string v0, "arch"

    .line 2
    invoke-static {v0}, Lr5/c;->a(Ljava/lang/String;)Lr5/c;

    move-result-object v0

    sput-object v0, Lg5/a$g;->b:Lr5/c;

    const-string v0, "model"

    .line 3
    invoke-static {v0}, Lr5/c;->a(Ljava/lang/String;)Lr5/c;

    move-result-object v0

    sput-object v0, Lg5/a$g;->c:Lr5/c;

    const-string v0, "cores"

    .line 4
    invoke-static {v0}, Lr5/c;->a(Ljava/lang/String;)Lr5/c;

    move-result-object v0

    sput-object v0, Lg5/a$g;->d:Lr5/c;

    const-string v0, "ram"

    .line 5
    invoke-static {v0}, Lr5/c;->a(Ljava/lang/String;)Lr5/c;

    move-result-object v0

    sput-object v0, Lg5/a$g;->e:Lr5/c;

    const-string v0, "diskSpace"

    .line 6
    invoke-static {v0}, Lr5/c;->a(Ljava/lang/String;)Lr5/c;

    move-result-object v0

    sput-object v0, Lg5/a$g;->f:Lr5/c;

    const-string v0, "simulator"

    .line 7
    invoke-static {v0}, Lr5/c;->a(Ljava/lang/String;)Lr5/c;

    move-result-object v0

    sput-object v0, Lg5/a$g;->g:Lr5/c;

    const-string v0, "state"

    .line 8
    invoke-static {v0}, Lr5/c;->a(Ljava/lang/String;)Lr5/c;

    move-result-object v0

    sput-object v0, Lg5/a$g;->h:Lr5/c;

    const-string v0, "manufacturer"

    .line 9
    invoke-static {v0}, Lr5/c;->a(Ljava/lang/String;)Lr5/c;

    move-result-object v0

    sput-object v0, Lg5/a$g;->i:Lr5/c;

    const-string v0, "modelClass"

    .line 10
    invoke-static {v0}, Lr5/c;->a(Ljava/lang/String;)Lr5/c;

    move-result-object v0

    sput-object v0, Lg5/a$g;->j:Lr5/c;

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
    check-cast p1, Lg5/v$d$c;

    check-cast p2, Lr5/e;

    .line 2
    sget-object v0, Lg5/a$g;->b:Lr5/c;

    invoke-virtual {p1}, Lg5/v$d$c;->a()I

    move-result v1

    invoke-interface {p2, v0, v1}, Lr5/e;->b(Lr5/c;I)Lr5/e;

    .line 3
    sget-object v0, Lg5/a$g;->c:Lr5/c;

    invoke-virtual {p1}, Lg5/v$d$c;->e()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lr5/e;->f(Lr5/c;Ljava/lang/Object;)Lr5/e;

    .line 4
    sget-object v0, Lg5/a$g;->d:Lr5/c;

    invoke-virtual {p1}, Lg5/v$d$c;->b()I

    move-result v1

    invoke-interface {p2, v0, v1}, Lr5/e;->b(Lr5/c;I)Lr5/e;

    .line 5
    sget-object v0, Lg5/a$g;->e:Lr5/c;

    invoke-virtual {p1}, Lg5/v$d$c;->g()J

    move-result-wide v1

    invoke-interface {p2, v0, v1, v2}, Lr5/e;->a(Lr5/c;J)Lr5/e;

    .line 6
    sget-object v0, Lg5/a$g;->f:Lr5/c;

    invoke-virtual {p1}, Lg5/v$d$c;->c()J

    move-result-wide v1

    invoke-interface {p2, v0, v1, v2}, Lr5/e;->a(Lr5/c;J)Lr5/e;

    .line 7
    sget-object v0, Lg5/a$g;->g:Lr5/c;

    invoke-virtual {p1}, Lg5/v$d$c;->i()Z

    move-result v1

    invoke-interface {p2, v0, v1}, Lr5/e;->c(Lr5/c;Z)Lr5/e;

    .line 8
    sget-object v0, Lg5/a$g;->h:Lr5/c;

    invoke-virtual {p1}, Lg5/v$d$c;->h()I

    move-result v1

    invoke-interface {p2, v0, v1}, Lr5/e;->b(Lr5/c;I)Lr5/e;

    .line 9
    sget-object v0, Lg5/a$g;->i:Lr5/c;

    invoke-virtual {p1}, Lg5/v$d$c;->d()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lr5/e;->f(Lr5/c;Ljava/lang/Object;)Lr5/e;

    .line 10
    sget-object v0, Lg5/a$g;->j:Lr5/c;

    invoke-virtual {p1}, Lg5/v$d$c;->f()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, v0, p1}, Lr5/e;->f(Lr5/c;Ljava/lang/Object;)Lr5/e;

    return-void
.end method
