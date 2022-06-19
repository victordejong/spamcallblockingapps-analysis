.class final Lcom/google/firebase/crashlytics/d/h/a$q;
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
    name = "q"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/firebase/encoders/c<",
        "Lcom/google/firebase/crashlytics/d/h/v$d$d;",
        ">;"
    }
.end annotation


# static fields
.field static final a:Lcom/google/firebase/crashlytics/d/h/a$q;

.field private static final b:Lcom/google/firebase/encoders/b;

.field private static final c:Lcom/google/firebase/encoders/b;

.field private static final d:Lcom/google/firebase/encoders/b;

.field private static final e:Lcom/google/firebase/encoders/b;

.field private static final f:Lcom/google/firebase/encoders/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/firebase/crashlytics/d/h/a$q;

    invoke-direct {v0}, Lcom/google/firebase/crashlytics/d/h/a$q;-><init>()V

    sput-object v0, Lcom/google/firebase/crashlytics/d/h/a$q;->a:Lcom/google/firebase/crashlytics/d/h/a$q;

    const-string v0, "timestamp"

    .line 2
    invoke-static {v0}, Lcom/google/firebase/encoders/b;->b(Ljava/lang/String;)Lcom/google/firebase/encoders/b;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/crashlytics/d/h/a$q;->b:Lcom/google/firebase/encoders/b;

    const-string v0, "type"

    .line 3
    invoke-static {v0}, Lcom/google/firebase/encoders/b;->b(Ljava/lang/String;)Lcom/google/firebase/encoders/b;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/crashlytics/d/h/a$q;->c:Lcom/google/firebase/encoders/b;

    const-string v0, "app"

    .line 4
    invoke-static {v0}, Lcom/google/firebase/encoders/b;->b(Ljava/lang/String;)Lcom/google/firebase/encoders/b;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/crashlytics/d/h/a$q;->d:Lcom/google/firebase/encoders/b;

    const-string v0, "device"

    .line 5
    invoke-static {v0}, Lcom/google/firebase/encoders/b;->b(Ljava/lang/String;)Lcom/google/firebase/encoders/b;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/crashlytics/d/h/a$q;->e:Lcom/google/firebase/encoders/b;

    const-string v0, "log"

    .line 6
    invoke-static {v0}, Lcom/google/firebase/encoders/b;->b(Ljava/lang/String;)Lcom/google/firebase/encoders/b;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/crashlytics/d/h/a$q;->f:Lcom/google/firebase/encoders/b;

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
    check-cast p1, Lcom/google/firebase/crashlytics/d/h/v$d$d;

    check-cast p2, Lcom/google/firebase/encoders/d;

    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/crashlytics/d/h/a$q;->b(Lcom/google/firebase/crashlytics/d/h/v$d$d;Lcom/google/firebase/encoders/d;)V

    return-void
.end method

.method public b(Lcom/google/firebase/crashlytics/d/h/v$d$d;Lcom/google/firebase/encoders/d;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/google/firebase/crashlytics/d/h/a$q;->b:Lcom/google/firebase/encoders/b;

    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/d/h/v$d$d;->e()J

    move-result-wide v1

    invoke-interface {p2, v0, v1, v2}, Lcom/google/firebase/encoders/d;->b(Lcom/google/firebase/encoders/b;J)Lcom/google/firebase/encoders/d;

    .line 2
    sget-object v0, Lcom/google/firebase/crashlytics/d/h/a$q;->c:Lcom/google/firebase/encoders/b;

    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/d/h/v$d$d;->f()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lcom/google/firebase/encoders/d;->h(Lcom/google/firebase/encoders/b;Ljava/lang/Object;)Lcom/google/firebase/encoders/d;

    .line 3
    sget-object v0, Lcom/google/firebase/crashlytics/d/h/a$q;->d:Lcom/google/firebase/encoders/b;

    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/d/h/v$d$d;->b()Lcom/google/firebase/crashlytics/d/h/v$d$d$a;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lcom/google/firebase/encoders/d;->h(Lcom/google/firebase/encoders/b;Ljava/lang/Object;)Lcom/google/firebase/encoders/d;

    .line 4
    sget-object v0, Lcom/google/firebase/crashlytics/d/h/a$q;->e:Lcom/google/firebase/encoders/b;

    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/d/h/v$d$d;->c()Lcom/google/firebase/crashlytics/d/h/v$d$d$c;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lcom/google/firebase/encoders/d;->h(Lcom/google/firebase/encoders/b;Ljava/lang/Object;)Lcom/google/firebase/encoders/d;

    .line 5
    sget-object v0, Lcom/google/firebase/crashlytics/d/h/a$q;->f:Lcom/google/firebase/encoders/b;

    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/d/h/v$d$d;->d()Lcom/google/firebase/crashlytics/d/h/v$d$d$d;

    move-result-object p1

    invoke-interface {p2, v0, p1}, Lcom/google/firebase/encoders/d;->h(Lcom/google/firebase/encoders/b;Ljava/lang/Object;)Lcom/google/firebase/encoders/d;

    return-void
.end method
