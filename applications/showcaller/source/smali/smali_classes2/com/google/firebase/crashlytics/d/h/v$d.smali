.class public abstract Lcom/google/firebase/crashlytics/d/h/v$d;
.super Ljava/lang/Object;
.source "CrashlyticsReport.java"


# annotations
.annotation build Lcom/google/auto/value/AutoValue;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/crashlytics/d/h/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/crashlytics/d/h/v$d$d;,
        Lcom/google/firebase/crashlytics/d/h/v$d$c;,
        Lcom/google/firebase/crashlytics/d/h/v$d$e;,
        Lcom/google/firebase/crashlytics/d/h/v$d$a;,
        Lcom/google/firebase/crashlytics/d/h/v$d$f;,
        Lcom/google/firebase/crashlytics/d/h/v$d$b;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/google/firebase/crashlytics/d/h/v$d$b;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/firebase/crashlytics/d/h/f$b;

    invoke-direct {v0}, Lcom/google/firebase/crashlytics/d/h/f$b;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/d/h/f$b;->c(Z)Lcom/google/firebase/crashlytics/d/h/v$d$b;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract b()Lcom/google/firebase/crashlytics/d/h/v$d$a;
.end method

.method public abstract c()Lcom/google/firebase/crashlytics/d/h/v$d$c;
.end method

.method public abstract d()Ljava/lang/Long;
.end method

.method public abstract e()Lcom/google/firebase/crashlytics/d/h/w;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/firebase/crashlytics/d/h/w<",
            "Lcom/google/firebase/crashlytics/d/h/v$d$d;",
            ">;"
        }
    .end annotation
.end method

.method public abstract f()Ljava/lang/String;
.end method

.method public abstract g()I
.end method

.method public abstract h()Ljava/lang/String;
.end method

.method public i()[B
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/firebase/crashlytics/d/h/v$d;->h()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/google/firebase/crashlytics/d/h/v;->a()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    return-object v0
.end method

.method public abstract j()Lcom/google/firebase/crashlytics/d/h/v$d$e;
.end method

.method public abstract k()J
.end method

.method public abstract l()Lcom/google/firebase/crashlytics/d/h/v$d$f;
.end method

.method public abstract m()Z
.end method

.method public abstract n()Lcom/google/firebase/crashlytics/d/h/v$d$b;
.end method

.method o(Lcom/google/firebase/crashlytics/d/h/w;)Lcom/google/firebase/crashlytics/d/h/v$d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/crashlytics/d/h/w<",
            "Lcom/google/firebase/crashlytics/d/h/v$d$d;",
            ">;)",
            "Lcom/google/firebase/crashlytics/d/h/v$d;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/firebase/crashlytics/d/h/v$d;->n()Lcom/google/firebase/crashlytics/d/h/v$d$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/firebase/crashlytics/d/h/v$d$b;->f(Lcom/google/firebase/crashlytics/d/h/w;)Lcom/google/firebase/crashlytics/d/h/v$d$b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/d/h/v$d$b;->a()Lcom/google/firebase/crashlytics/d/h/v$d;

    move-result-object p1

    return-object p1
.end method

.method p(JZLjava/lang/String;)Lcom/google/firebase/crashlytics/d/h/v$d;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/firebase/crashlytics/d/h/v$d;->n()Lcom/google/firebase/crashlytics/d/h/v$d$b;

    move-result-object v0

    .line 2
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/firebase/crashlytics/d/h/v$d$b;->e(Ljava/lang/Long;)Lcom/google/firebase/crashlytics/d/h/v$d$b;

    .line 3
    invoke-virtual {v0, p3}, Lcom/google/firebase/crashlytics/d/h/v$d$b;->c(Z)Lcom/google/firebase/crashlytics/d/h/v$d$b;

    if-eqz p4, :cond_0

    .line 4
    invoke-static {}, Lcom/google/firebase/crashlytics/d/h/v$d$f;->a()Lcom/google/firebase/crashlytics/d/h/v$d$f$a;

    move-result-object p1

    invoke-virtual {p1, p4}, Lcom/google/firebase/crashlytics/d/h/v$d$f$a;->b(Ljava/lang/String;)Lcom/google/firebase/crashlytics/d/h/v$d$f$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/d/h/v$d$f$a;->a()Lcom/google/firebase/crashlytics/d/h/v$d$f;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/firebase/crashlytics/d/h/v$d$b;->m(Lcom/google/firebase/crashlytics/d/h/v$d$f;)Lcom/google/firebase/crashlytics/d/h/v$d$b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/d/h/v$d$b;->a()Lcom/google/firebase/crashlytics/d/h/v$d;

    .line 5
    :cond_0
    invoke-virtual {v0}, Lcom/google/firebase/crashlytics/d/h/v$d$b;->a()Lcom/google/firebase/crashlytics/d/h/v$d;

    move-result-object p1

    return-object p1
.end method
