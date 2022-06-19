.class public final Lcom/google/firebase/crashlytics/d/h/a;
.super Ljava/lang/Object;
.source "AutoCrashlyticsReportEncoder.java"

# interfaces
.implements Lcom/google/firebase/encoders/g/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/crashlytics/d/h/a$d;,
        Lcom/google/firebase/crashlytics/d/h/a$c;,
        Lcom/google/firebase/crashlytics/d/h/a$r;,
        Lcom/google/firebase/crashlytics/d/h/a$p;,
        Lcom/google/firebase/crashlytics/d/h/a$a;,
        Lcom/google/firebase/crashlytics/d/h/a$j;,
        Lcom/google/firebase/crashlytics/d/h/a$m;,
        Lcom/google/firebase/crashlytics/d/h/a$l;,
        Lcom/google/firebase/crashlytics/d/h/a$o;,
        Lcom/google/firebase/crashlytics/d/h/a$n;,
        Lcom/google/firebase/crashlytics/d/h/a$k;,
        Lcom/google/firebase/crashlytics/d/h/a$i;,
        Lcom/google/firebase/crashlytics/d/h/a$q;,
        Lcom/google/firebase/crashlytics/d/h/a$g;,
        Lcom/google/firebase/crashlytics/d/h/a$s;,
        Lcom/google/firebase/crashlytics/d/h/a$t;,
        Lcom/google/firebase/crashlytics/d/h/a$f;,
        Lcom/google/firebase/crashlytics/d/h/a$e;,
        Lcom/google/firebase/crashlytics/d/h/a$h;,
        Lcom/google/firebase/crashlytics/d/h/a$b;
    }
.end annotation


# static fields
.field public static final a:Lcom/google/firebase/encoders/g/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/firebase/crashlytics/d/h/a;

    invoke-direct {v0}, Lcom/google/firebase/crashlytics/d/h/a;-><init>()V

    sput-object v0, Lcom/google/firebase/crashlytics/d/h/a;->a:Lcom/google/firebase/encoders/g/a;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/firebase/encoders/g/b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/encoders/g/b<",
            "*>;)V"
        }
    .end annotation

    .line 1
    const-class v0, Lcom/google/firebase/crashlytics/d/h/v;

    sget-object v1, Lcom/google/firebase/crashlytics/d/h/a$b;->a:Lcom/google/firebase/crashlytics/d/h/a$b;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/g/b;->a(Ljava/lang/Class;Lcom/google/firebase/encoders/c;)Lcom/google/firebase/encoders/g/b;

    .line 2
    const-class v0, Lcom/google/firebase/crashlytics/d/h/b;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/g/b;->a(Ljava/lang/Class;Lcom/google/firebase/encoders/c;)Lcom/google/firebase/encoders/g/b;

    .line 3
    const-class v0, Lcom/google/firebase/crashlytics/d/h/v$d;

    sget-object v1, Lcom/google/firebase/crashlytics/d/h/a$h;->a:Lcom/google/firebase/crashlytics/d/h/a$h;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/g/b;->a(Ljava/lang/Class;Lcom/google/firebase/encoders/c;)Lcom/google/firebase/encoders/g/b;

    .line 4
    const-class v0, Lcom/google/firebase/crashlytics/d/h/f;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/g/b;->a(Ljava/lang/Class;Lcom/google/firebase/encoders/c;)Lcom/google/firebase/encoders/g/b;

    .line 5
    const-class v0, Lcom/google/firebase/crashlytics/d/h/v$d$a;

    sget-object v1, Lcom/google/firebase/crashlytics/d/h/a$e;->a:Lcom/google/firebase/crashlytics/d/h/a$e;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/g/b;->a(Ljava/lang/Class;Lcom/google/firebase/encoders/c;)Lcom/google/firebase/encoders/g/b;

    .line 6
    const-class v0, Lcom/google/firebase/crashlytics/d/h/g;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/g/b;->a(Ljava/lang/Class;Lcom/google/firebase/encoders/c;)Lcom/google/firebase/encoders/g/b;

    .line 7
    const-class v0, Lcom/google/firebase/crashlytics/d/h/v$d$a$b;

    sget-object v1, Lcom/google/firebase/crashlytics/d/h/a$f;->a:Lcom/google/firebase/crashlytics/d/h/a$f;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/g/b;->a(Ljava/lang/Class;Lcom/google/firebase/encoders/c;)Lcom/google/firebase/encoders/g/b;

    .line 8
    const-class v0, Lcom/google/firebase/crashlytics/d/h/h;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/g/b;->a(Ljava/lang/Class;Lcom/google/firebase/encoders/c;)Lcom/google/firebase/encoders/g/b;

    .line 9
    const-class v0, Lcom/google/firebase/crashlytics/d/h/v$d$f;

    sget-object v1, Lcom/google/firebase/crashlytics/d/h/a$t;->a:Lcom/google/firebase/crashlytics/d/h/a$t;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/g/b;->a(Ljava/lang/Class;Lcom/google/firebase/encoders/c;)Lcom/google/firebase/encoders/g/b;

    .line 10
    const-class v0, Lcom/google/firebase/crashlytics/d/h/u;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/g/b;->a(Ljava/lang/Class;Lcom/google/firebase/encoders/c;)Lcom/google/firebase/encoders/g/b;

    .line 11
    const-class v0, Lcom/google/firebase/crashlytics/d/h/v$d$e;

    sget-object v1, Lcom/google/firebase/crashlytics/d/h/a$s;->a:Lcom/google/firebase/crashlytics/d/h/a$s;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/g/b;->a(Ljava/lang/Class;Lcom/google/firebase/encoders/c;)Lcom/google/firebase/encoders/g/b;

    .line 12
    const-class v0, Lcom/google/firebase/crashlytics/d/h/t;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/g/b;->a(Ljava/lang/Class;Lcom/google/firebase/encoders/c;)Lcom/google/firebase/encoders/g/b;

    .line 13
    const-class v0, Lcom/google/firebase/crashlytics/d/h/v$d$c;

    sget-object v1, Lcom/google/firebase/crashlytics/d/h/a$g;->a:Lcom/google/firebase/crashlytics/d/h/a$g;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/g/b;->a(Ljava/lang/Class;Lcom/google/firebase/encoders/c;)Lcom/google/firebase/encoders/g/b;

    .line 14
    const-class v0, Lcom/google/firebase/crashlytics/d/h/i;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/g/b;->a(Ljava/lang/Class;Lcom/google/firebase/encoders/c;)Lcom/google/firebase/encoders/g/b;

    .line 15
    const-class v0, Lcom/google/firebase/crashlytics/d/h/v$d$d;

    sget-object v1, Lcom/google/firebase/crashlytics/d/h/a$q;->a:Lcom/google/firebase/crashlytics/d/h/a$q;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/g/b;->a(Ljava/lang/Class;Lcom/google/firebase/encoders/c;)Lcom/google/firebase/encoders/g/b;

    .line 16
    const-class v0, Lcom/google/firebase/crashlytics/d/h/j;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/g/b;->a(Ljava/lang/Class;Lcom/google/firebase/encoders/c;)Lcom/google/firebase/encoders/g/b;

    .line 17
    const-class v0, Lcom/google/firebase/crashlytics/d/h/v$d$d$a;

    sget-object v1, Lcom/google/firebase/crashlytics/d/h/a$i;->a:Lcom/google/firebase/crashlytics/d/h/a$i;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/g/b;->a(Ljava/lang/Class;Lcom/google/firebase/encoders/c;)Lcom/google/firebase/encoders/g/b;

    .line 18
    const-class v0, Lcom/google/firebase/crashlytics/d/h/k;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/g/b;->a(Ljava/lang/Class;Lcom/google/firebase/encoders/c;)Lcom/google/firebase/encoders/g/b;

    .line 19
    const-class v0, Lcom/google/firebase/crashlytics/d/h/v$d$d$a$b;

    sget-object v1, Lcom/google/firebase/crashlytics/d/h/a$k;->a:Lcom/google/firebase/crashlytics/d/h/a$k;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/g/b;->a(Ljava/lang/Class;Lcom/google/firebase/encoders/c;)Lcom/google/firebase/encoders/g/b;

    .line 20
    const-class v0, Lcom/google/firebase/crashlytics/d/h/l;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/g/b;->a(Ljava/lang/Class;Lcom/google/firebase/encoders/c;)Lcom/google/firebase/encoders/g/b;

    .line 21
    const-class v0, Lcom/google/firebase/crashlytics/d/h/v$d$d$a$b$e;

    sget-object v1, Lcom/google/firebase/crashlytics/d/h/a$n;->a:Lcom/google/firebase/crashlytics/d/h/a$n;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/g/b;->a(Ljava/lang/Class;Lcom/google/firebase/encoders/c;)Lcom/google/firebase/encoders/g/b;

    .line 22
    const-class v0, Lcom/google/firebase/crashlytics/d/h/p;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/g/b;->a(Ljava/lang/Class;Lcom/google/firebase/encoders/c;)Lcom/google/firebase/encoders/g/b;

    .line 23
    const-class v0, Lcom/google/firebase/crashlytics/d/h/v$d$d$a$b$e$b;

    sget-object v1, Lcom/google/firebase/crashlytics/d/h/a$o;->a:Lcom/google/firebase/crashlytics/d/h/a$o;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/g/b;->a(Ljava/lang/Class;Lcom/google/firebase/encoders/c;)Lcom/google/firebase/encoders/g/b;

    .line 24
    const-class v0, Lcom/google/firebase/crashlytics/d/h/q;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/g/b;->a(Ljava/lang/Class;Lcom/google/firebase/encoders/c;)Lcom/google/firebase/encoders/g/b;

    .line 25
    const-class v0, Lcom/google/firebase/crashlytics/d/h/v$d$d$a$b$c;

    sget-object v1, Lcom/google/firebase/crashlytics/d/h/a$l;->a:Lcom/google/firebase/crashlytics/d/h/a$l;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/g/b;->a(Ljava/lang/Class;Lcom/google/firebase/encoders/c;)Lcom/google/firebase/encoders/g/b;

    .line 26
    const-class v0, Lcom/google/firebase/crashlytics/d/h/n;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/g/b;->a(Ljava/lang/Class;Lcom/google/firebase/encoders/c;)Lcom/google/firebase/encoders/g/b;

    .line 27
    const-class v0, Lcom/google/firebase/crashlytics/d/h/v$d$d$a$b$d;

    sget-object v1, Lcom/google/firebase/crashlytics/d/h/a$m;->a:Lcom/google/firebase/crashlytics/d/h/a$m;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/g/b;->a(Ljava/lang/Class;Lcom/google/firebase/encoders/c;)Lcom/google/firebase/encoders/g/b;

    .line 28
    const-class v0, Lcom/google/firebase/crashlytics/d/h/o;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/g/b;->a(Ljava/lang/Class;Lcom/google/firebase/encoders/c;)Lcom/google/firebase/encoders/g/b;

    .line 29
    const-class v0, Lcom/google/firebase/crashlytics/d/h/v$d$d$a$b$a;

    sget-object v1, Lcom/google/firebase/crashlytics/d/h/a$j;->a:Lcom/google/firebase/crashlytics/d/h/a$j;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/g/b;->a(Ljava/lang/Class;Lcom/google/firebase/encoders/c;)Lcom/google/firebase/encoders/g/b;

    .line 30
    const-class v0, Lcom/google/firebase/crashlytics/d/h/m;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/g/b;->a(Ljava/lang/Class;Lcom/google/firebase/encoders/c;)Lcom/google/firebase/encoders/g/b;

    .line 31
    const-class v0, Lcom/google/firebase/crashlytics/d/h/v$b;

    sget-object v1, Lcom/google/firebase/crashlytics/d/h/a$a;->a:Lcom/google/firebase/crashlytics/d/h/a$a;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/g/b;->a(Ljava/lang/Class;Lcom/google/firebase/encoders/c;)Lcom/google/firebase/encoders/g/b;

    .line 32
    const-class v0, Lcom/google/firebase/crashlytics/d/h/c;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/g/b;->a(Ljava/lang/Class;Lcom/google/firebase/encoders/c;)Lcom/google/firebase/encoders/g/b;

    .line 33
    const-class v0, Lcom/google/firebase/crashlytics/d/h/v$d$d$c;

    sget-object v1, Lcom/google/firebase/crashlytics/d/h/a$p;->a:Lcom/google/firebase/crashlytics/d/h/a$p;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/g/b;->a(Ljava/lang/Class;Lcom/google/firebase/encoders/c;)Lcom/google/firebase/encoders/g/b;

    .line 34
    const-class v0, Lcom/google/firebase/crashlytics/d/h/r;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/g/b;->a(Ljava/lang/Class;Lcom/google/firebase/encoders/c;)Lcom/google/firebase/encoders/g/b;

    .line 35
    const-class v0, Lcom/google/firebase/crashlytics/d/h/v$d$d$d;

    sget-object v1, Lcom/google/firebase/crashlytics/d/h/a$r;->a:Lcom/google/firebase/crashlytics/d/h/a$r;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/g/b;->a(Ljava/lang/Class;Lcom/google/firebase/encoders/c;)Lcom/google/firebase/encoders/g/b;

    .line 36
    const-class v0, Lcom/google/firebase/crashlytics/d/h/s;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/g/b;->a(Ljava/lang/Class;Lcom/google/firebase/encoders/c;)Lcom/google/firebase/encoders/g/b;

    .line 37
    const-class v0, Lcom/google/firebase/crashlytics/d/h/v$c;

    sget-object v1, Lcom/google/firebase/crashlytics/d/h/a$c;->a:Lcom/google/firebase/crashlytics/d/h/a$c;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/g/b;->a(Ljava/lang/Class;Lcom/google/firebase/encoders/c;)Lcom/google/firebase/encoders/g/b;

    .line 38
    const-class v0, Lcom/google/firebase/crashlytics/d/h/d;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/g/b;->a(Ljava/lang/Class;Lcom/google/firebase/encoders/c;)Lcom/google/firebase/encoders/g/b;

    .line 39
    const-class v0, Lcom/google/firebase/crashlytics/d/h/v$c$b;

    sget-object v1, Lcom/google/firebase/crashlytics/d/h/a$d;->a:Lcom/google/firebase/crashlytics/d/h/a$d;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/g/b;->a(Ljava/lang/Class;Lcom/google/firebase/encoders/c;)Lcom/google/firebase/encoders/g/b;

    .line 40
    const-class v0, Lcom/google/firebase/crashlytics/d/h/e;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/g/b;->a(Ljava/lang/Class;Lcom/google/firebase/encoders/c;)Lcom/google/firebase/encoders/g/b;

    return-void
.end method
