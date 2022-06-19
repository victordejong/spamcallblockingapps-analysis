.class public final Lg5/a$i;
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
    name = "i"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lr5/d<",
        "Lg5/v$d$d$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lg5/a$i;

.field public static final b:Lr5/c;

.field public static final c:Lr5/c;

.field public static final d:Lr5/c;

.field public static final e:Lr5/c;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lg5/a$i;

    invoke-direct {v0}, Lg5/a$i;-><init>()V

    sput-object v0, Lg5/a$i;->a:Lg5/a$i;

    const-string v0, "execution"

    .line 2
    invoke-static {v0}, Lr5/c;->a(Ljava/lang/String;)Lr5/c;

    move-result-object v0

    sput-object v0, Lg5/a$i;->b:Lr5/c;

    const-string v0, "customAttributes"

    .line 3
    invoke-static {v0}, Lr5/c;->a(Ljava/lang/String;)Lr5/c;

    move-result-object v0

    sput-object v0, Lg5/a$i;->c:Lr5/c;

    const-string v0, "background"

    .line 4
    invoke-static {v0}, Lr5/c;->a(Ljava/lang/String;)Lr5/c;

    move-result-object v0

    sput-object v0, Lg5/a$i;->d:Lr5/c;

    const-string v0, "uiOrientation"

    .line 5
    invoke-static {v0}, Lr5/c;->a(Ljava/lang/String;)Lr5/c;

    move-result-object v0

    sput-object v0, Lg5/a$i;->e:Lr5/c;

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
    check-cast p1, Lg5/v$d$d$a;

    check-cast p2, Lr5/e;

    .line 2
    sget-object v0, Lg5/a$i;->b:Lr5/c;

    invoke-virtual {p1}, Lg5/v$d$d$a;->c()Lg5/v$d$d$a$b;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lr5/e;->f(Lr5/c;Ljava/lang/Object;)Lr5/e;

    .line 3
    sget-object v0, Lg5/a$i;->c:Lr5/c;

    invoke-virtual {p1}, Lg5/v$d$d$a;->b()Lg5/w;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lr5/e;->f(Lr5/c;Ljava/lang/Object;)Lr5/e;

    .line 4
    sget-object v0, Lg5/a$i;->d:Lr5/c;

    invoke-virtual {p1}, Lg5/v$d$d$a;->a()Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lr5/e;->f(Lr5/c;Ljava/lang/Object;)Lr5/e;

    .line 5
    sget-object v0, Lg5/a$i;->e:Lr5/c;

    invoke-virtual {p1}, Lg5/v$d$d$a;->d()I

    move-result p1

    invoke-interface {p2, v0, p1}, Lr5/e;->b(Lr5/c;I)Lr5/e;

    return-void
.end method
