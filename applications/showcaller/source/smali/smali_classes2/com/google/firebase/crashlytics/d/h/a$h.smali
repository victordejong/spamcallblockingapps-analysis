.class final Lcom/google/firebase/crashlytics/d/h/a$h;
.super Ljava/lang/Object;
.source "AutoCrashlyticsReportEncoder.java"

# interfaces
.implements Lcom/google/firebase/encoders/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/crashlytics/d/h/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "h"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/firebase/encoders/c<",
        "Lcom/google/firebase/crashlytics/d/h/v$d;",
        ">;"
    }
.end annotation


# static fields
.field static final a:Lcom/google/firebase/crashlytics/d/h/a$h;

.field private static final b:Lcom/google/firebase/encoders/b;

.field private static final c:Lcom/google/firebase/encoders/b;

.field private static final d:Lcom/google/firebase/encoders/b;

.field private static final e:Lcom/google/firebase/encoders/b;

.field private static final f:Lcom/google/firebase/encoders/b;

.field private static final g:Lcom/google/firebase/encoders/b;

.field private static final h:Lcom/google/firebase/encoders/b;

.field private static final i:Lcom/google/firebase/encoders/b;

.field private static final j:Lcom/google/firebase/encoders/b;

.field private static final k:Lcom/google/firebase/encoders/b;

.field private static final l:Lcom/google/firebase/encoders/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/firebase/crashlytics/d/h/a$h;

    invoke-direct {v0}, Lcom/google/firebase/crashlytics/d/h/a$h;-><init>()V

    sput-object v0, Lcom/google/firebase/crashlytics/d/h/a$h;->a:Lcom/google/firebase/crashlytics/d/h/a$h;

    const-string v0, "generator"

    .line 2
    invoke-static {v0}, Lcom/google/firebase/encoders/b;->b(Ljava/lang/String;)Lcom/google/firebase/encoders/b;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/crashlytics/d/h/a$h;->b:Lcom/google/firebase/encoders/b;

    const-string v0, "identifier"

    .line 3
    invoke-static {v0}, Lcom/google/firebase/encoders/b;->b(Ljava/lang/String;)Lcom/google/firebase/encoders/b;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/crashlytics/d/h/a$h;->c:Lcom/google/firebase/encoders/b;

    const-string v0, "startedAt"

    .line 4
    invoke-static {v0}, Lcom/google/firebase/encoders/b;->b(Ljava/lang/String;)Lcom/google/firebase/encoders/b;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/crashlytics/d/h/a$h;->d:Lcom/google/firebase/encoders/b;

    const-string v0, "endedAt"

    .line 5
    invoke-static {v0}, Lcom/google/firebase/encoders/b;->b(Ljava/lang/String;)Lcom/google/firebase/encoders/b;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/crashlytics/d/h/a$h;->e:Lcom/google/firebase/encoders/b;

    const-string v0, "crashed"

    .line 6
    invoke-static {v0}, Lcom/google/firebase/encoders/b;->b(Ljava/lang/String;)Lcom/google/firebase/encoders/b;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/crashlytics/d/h/a$h;->f:Lcom/google/firebase/encoders/b;

    const-string v0, "app"

    .line 7
    invoke-static {v0}, Lcom/google/firebase/encoders/b;->b(Ljava/lang/String;)Lcom/google/firebase/encoders/b;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/crashlytics/d/h/a$h;->g:Lcom/google/firebase/encoders/b;

    const-string v0, "user"

    .line 8
    invoke-static {v0}, Lcom/google/firebase/encoders/b;->b(Ljava/lang/String;)Lcom/google/firebase/encoders/b;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/crashlytics/d/h/a$h;->h:Lcom/google/firebase/encoders/b;

    const-string v0, "os"

    .line 9
    invoke-static {v0}, Lcom/google/firebase/encoders/b;->b(Ljava/lang/String;)Lcom/google/firebase/encoders/b;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/crashlytics/d/h/a$h;->i:Lcom/google/firebase/encoders/b;

    const-string v0, "device"

    .line 10
    invoke-static {v0}, Lcom/google/firebase/encoders/b;->b(Ljava/lang/String;)Lcom/google/firebase/encoders/b;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/crashlytics/d/h/a$h;->j:Lcom/google/firebase/encoders/b;

    const-string v0, "events"

    .line 11
    invoke-static {v0}, Lcom/google/firebase/encoders/b;->b(Ljava/lang/String;)Lcom/google/firebase/encoders/b;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/crashlytics/d/h/a$h;->k:Lcom/google/firebase/encoders/b;

    const-string v0, "generatorType"

    .line 12
    invoke-static {v0}, Lcom/google/firebase/encoders/b;->b(Ljava/lang/String;)Lcom/google/firebase/encoders/b;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/crashlytics/d/h/a$h;->l:Lcom/google/firebase/encoders/b;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/google/firebase/crashlytics/d/h/v$d;

    check-cast p2, Lcom/google/firebase/encoders/d;

    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/crashlytics/d/h/a$h;->b(Lcom/google/firebase/crashlytics/d/h/v$d;Lcom/google/firebase/encoders/d;)V

    return-void
.end method

.method public b(Lcom/google/firebase/crashlytics/d/h/v$d;Lcom/google/firebase/encoders/d;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/google/firebase/crashlytics/d/h/a$h;->b:Lcom/google/firebase/encoders/b;

    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/d/h/v$d;->f()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lcom/google/firebase/encoders/d;->h(Lcom/google/firebase/encoders/b;Ljava/lang/Object;)Lcom/google/firebase/encoders/d;

    .line 2
    sget-object v0, Lcom/google/firebase/crashlytics/d/h/a$h;->c:Lcom/google/firebase/encoders/b;

    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/d/h/v$d;->i()[B

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lcom/google/firebase/encoders/d;->h(Lcom/google/firebase/encoders/b;Ljava/lang/Object;)Lcom/google/firebase/encoders/d;

    .line 3
    sget-object v0, Lcom/google/firebase/crashlytics/d/h/a$h;->d:Lcom/google/firebase/encoders/b;

    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/d/h/v$d;->k()J

    move-result-wide v1

    invoke-interface {p2, v0, v1, v2}, Lcom/google/firebase/encoders/d;->b(Lcom/google/firebase/encoders/b;J)Lcom/google/firebase/encoders/d;

    .line 4
    sget-object v0, Lcom/google/firebase/crashlytics/d/h/a$h;->e:Lcom/google/firebase/encoders/b;

    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/d/h/v$d;->d()Ljava/lang/Long;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lcom/google/firebase/encoders/d;->h(Lcom/google/firebase/encoders/b;Ljava/lang/Object;)Lcom/google/firebase/encoders/d;

    .line 5
    sget-object v0, Lcom/google/firebase/crashlytics/d/h/a$h;->f:Lcom/google/firebase/encoders/b;

    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/d/h/v$d;->m()Z

    move-result v1

    invoke-interface {p2, v0, v1}, Lcom/google/firebase/encoders/d;->a(Lcom/google/firebase/encoders/b;Z)Lcom/google/firebase/encoders/d;

    .line 6
    sget-object v0, Lcom/google/firebase/crashlytics/d/h/a$h;->g:Lcom/google/firebase/encoders/b;

    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/d/h/v$d;->b()Lcom/google/firebase/crashlytics/d/h/v$d$a;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lcom/google/firebase/encoders/d;->h(Lcom/google/firebase/encoders/b;Ljava/lang/Object;)Lcom/google/firebase/encoders/d;

    .line 7
    sget-object v0, Lcom/google/firebase/crashlytics/d/h/a$h;->h:Lcom/google/firebase/encoders/b;

    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/d/h/v$d;->l()Lcom/google/firebase/crashlytics/d/h/v$d$f;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lcom/google/firebase/encoders/d;->h(Lcom/google/firebase/encoders/b;Ljava/lang/Object;)Lcom/google/firebase/encoders/d;

    .line 8
    sget-object v0, Lcom/google/firebase/crashlytics/d/h/a$h;->i:Lcom/google/firebase/encoders/b;

    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/d/h/v$d;->j()Lcom/google/firebase/crashlytics/d/h/v$d$e;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lcom/google/firebase/encoders/d;->h(Lcom/google/firebase/encoders/b;Ljava/lang/Object;)Lcom/google/firebase/encoders/d;

    .line 9
    sget-object v0, Lcom/google/firebase/crashlytics/d/h/a$h;->j:Lcom/google/firebase/encoders/b;

    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/d/h/v$d;->c()Lcom/google/firebase/crashlytics/d/h/v$d$c;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lcom/google/firebase/encoders/d;->h(Lcom/google/firebase/encoders/b;Ljava/lang/Object;)Lcom/google/firebase/encoders/d;

    .line 10
    sget-object v0, Lcom/google/firebase/crashlytics/d/h/a$h;->k:Lcom/google/firebase/encoders/b;

    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/d/h/v$d;->e()Lcom/google/firebase/crashlytics/d/h/w;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lcom/google/firebase/encoders/d;->h(Lcom/google/firebase/encoders/b;Ljava/lang/Object;)Lcom/google/firebase/encoders/d;

    .line 11
    sget-object v0, Lcom/google/firebase/crashlytics/d/h/a$h;->l:Lcom/google/firebase/encoders/b;

    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/d/h/v$d;->g()I

    move-result p1

    invoke-interface {p2, v0, p1}, Lcom/google/firebase/encoders/d;->c(Lcom/google/firebase/encoders/b;I)Lcom/google/firebase/encoders/d;

    return-void
.end method
