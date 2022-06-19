.class public abstract Lg5/v;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/auto/value/AutoValue;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lg5/v$a;,
        Lg5/v$d;,
        Lg5/v$b;,
        Lg5/v$c;
    }
.end annotation


# static fields
.field public static final a:Ljava/nio/charset/Charset;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "UTF-8"

    .line 1
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lg5/v;->a:Ljava/nio/charset/Charset;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()Ljava/lang/String;
.end method

.method public abstract b()Ljava/lang/String;
.end method

.method public abstract c()Ljava/lang/String;
.end method

.method public abstract d()Ljava/lang/String;
.end method

.method public abstract e()Lg5/v$c;
.end method

.method public abstract f()I
.end method

.method public abstract g()Ljava/lang/String;
.end method

.method public abstract h()Lg5/v$d;
.end method

.method public abstract i()Lg5/v$a;
.end method

.method public j(JZLjava/lang/String;)Lg5/v;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lg5/v;->i()Lg5/v$a;

    move-result-object v0

    .line 2
    move-object v1, p0

    check-cast v1, Lg5/b;

    .line 3
    iget-object v1, v1, Lg5/b;->h:Lg5/v$d;

    if-eqz v1, :cond_1

    .line 4
    invoke-virtual {v1}, Lg5/v$d;->l()Lg5/v$d$b;

    move-result-object v1

    .line 5
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    move-object p2, v1

    check-cast p2, Lg5/f$b;

    .line 6
    iput-object p1, p2, Lg5/f$b;->d:Ljava/lang/Long;

    .line 7
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p2, Lg5/f$b;->e:Ljava/lang/Boolean;

    if-eqz p4, :cond_0

    .line 8
    new-instance p1, Lg5/u;

    const/4 p3, 0x0

    invoke-direct {p1, p4, p3}, Lg5/u;-><init>(Ljava/lang/String;Lg5/u$a;)V

    .line 9
    iput-object p1, p2, Lg5/f$b;->g:Lg5/v$d$f;

    .line 10
    invoke-virtual {p2}, Lg5/f$b;->a()Lg5/v$d;

    .line 11
    :cond_0
    invoke-virtual {v1}, Lg5/v$d$b;->a()Lg5/v$d;

    move-result-object p1

    .line 12
    move-object p2, v0

    check-cast p2, Lg5/b$b;

    .line 13
    iput-object p1, p2, Lg5/b$b;->g:Lg5/v$d;

    .line 14
    :cond_1
    invoke-virtual {v0}, Lg5/v$a;->a()Lg5/v;

    move-result-object p1

    return-object p1
.end method
