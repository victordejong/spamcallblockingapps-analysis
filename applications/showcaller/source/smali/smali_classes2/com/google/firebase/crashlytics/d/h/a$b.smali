.class final Lcom/google/firebase/crashlytics/d/h/a$b;
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
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/firebase/encoders/c<",
        "Lcom/google/firebase/crashlytics/d/h/v;",
        ">;"
    }
.end annotation


# static fields
.field static final a:Lcom/google/firebase/crashlytics/d/h/a$b;

.field private static final b:Lcom/google/firebase/encoders/b;

.field private static final c:Lcom/google/firebase/encoders/b;

.field private static final d:Lcom/google/firebase/encoders/b;

.field private static final e:Lcom/google/firebase/encoders/b;

.field private static final f:Lcom/google/firebase/encoders/b;

.field private static final g:Lcom/google/firebase/encoders/b;

.field private static final h:Lcom/google/firebase/encoders/b;

.field private static final i:Lcom/google/firebase/encoders/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/firebase/crashlytics/d/h/a$b;

    invoke-direct {v0}, Lcom/google/firebase/crashlytics/d/h/a$b;-><init>()V

    sput-object v0, Lcom/google/firebase/crashlytics/d/h/a$b;->a:Lcom/google/firebase/crashlytics/d/h/a$b;

    const-string v0, "sdkVersion"

    .line 2
    invoke-static {v0}, Lcom/google/firebase/encoders/b;->b(Ljava/lang/String;)Lcom/google/firebase/encoders/b;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/crashlytics/d/h/a$b;->b:Lcom/google/firebase/encoders/b;

    const-string v0, "gmpAppId"

    .line 3
    invoke-static {v0}, Lcom/google/firebase/encoders/b;->b(Ljava/lang/String;)Lcom/google/firebase/encoders/b;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/crashlytics/d/h/a$b;->c:Lcom/google/firebase/encoders/b;

    const-string v0, "platform"

    .line 4
    invoke-static {v0}, Lcom/google/firebase/encoders/b;->b(Ljava/lang/String;)Lcom/google/firebase/encoders/b;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/crashlytics/d/h/a$b;->d:Lcom/google/firebase/encoders/b;

    const-string v0, "installationUuid"

    .line 5
    invoke-static {v0}, Lcom/google/firebase/encoders/b;->b(Ljava/lang/String;)Lcom/google/firebase/encoders/b;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/crashlytics/d/h/a$b;->e:Lcom/google/firebase/encoders/b;

    const-string v0, "buildVersion"

    .line 6
    invoke-static {v0}, Lcom/google/firebase/encoders/b;->b(Ljava/lang/String;)Lcom/google/firebase/encoders/b;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/crashlytics/d/h/a$b;->f:Lcom/google/firebase/encoders/b;

    const-string v0, "displayVersion"

    .line 7
    invoke-static {v0}, Lcom/google/firebase/encoders/b;->b(Ljava/lang/String;)Lcom/google/firebase/encoders/b;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/crashlytics/d/h/a$b;->g:Lcom/google/firebase/encoders/b;

    const-string v0, "session"

    .line 8
    invoke-static {v0}, Lcom/google/firebase/encoders/b;->b(Ljava/lang/String;)Lcom/google/firebase/encoders/b;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/crashlytics/d/h/a$b;->h:Lcom/google/firebase/encoders/b;

    const-string v0, "ndkPayload"

    .line 9
    invoke-static {v0}, Lcom/google/firebase/encoders/b;->b(Ljava/lang/String;)Lcom/google/firebase/encoders/b;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/crashlytics/d/h/a$b;->i:Lcom/google/firebase/encoders/b;

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
    check-cast p1, Lcom/google/firebase/crashlytics/d/h/v;

    check-cast p2, Lcom/google/firebase/encoders/d;

    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/crashlytics/d/h/a$b;->b(Lcom/google/firebase/crashlytics/d/h/v;Lcom/google/firebase/encoders/d;)V

    return-void
.end method

.method public b(Lcom/google/firebase/crashlytics/d/h/v;Lcom/google/firebase/encoders/d;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/google/firebase/crashlytics/d/h/a$b;->b:Lcom/google/firebase/encoders/b;

    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/d/h/v;->i()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lcom/google/firebase/encoders/d;->h(Lcom/google/firebase/encoders/b;Ljava/lang/Object;)Lcom/google/firebase/encoders/d;

    .line 2
    sget-object v0, Lcom/google/firebase/crashlytics/d/h/a$b;->c:Lcom/google/firebase/encoders/b;

    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/d/h/v;->e()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lcom/google/firebase/encoders/d;->h(Lcom/google/firebase/encoders/b;Ljava/lang/Object;)Lcom/google/firebase/encoders/d;

    .line 3
    sget-object v0, Lcom/google/firebase/crashlytics/d/h/a$b;->d:Lcom/google/firebase/encoders/b;

    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/d/h/v;->h()I

    move-result v1

    invoke-interface {p2, v0, v1}, Lcom/google/firebase/encoders/d;->c(Lcom/google/firebase/encoders/b;I)Lcom/google/firebase/encoders/d;

    .line 4
    sget-object v0, Lcom/google/firebase/crashlytics/d/h/a$b;->e:Lcom/google/firebase/encoders/b;

    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/d/h/v;->f()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lcom/google/firebase/encoders/d;->h(Lcom/google/firebase/encoders/b;Ljava/lang/Object;)Lcom/google/firebase/encoders/d;

    .line 5
    sget-object v0, Lcom/google/firebase/crashlytics/d/h/a$b;->f:Lcom/google/firebase/encoders/b;

    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/d/h/v;->c()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lcom/google/firebase/encoders/d;->h(Lcom/google/firebase/encoders/b;Ljava/lang/Object;)Lcom/google/firebase/encoders/d;

    .line 6
    sget-object v0, Lcom/google/firebase/crashlytics/d/h/a$b;->g:Lcom/google/firebase/encoders/b;

    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/d/h/v;->d()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lcom/google/firebase/encoders/d;->h(Lcom/google/firebase/encoders/b;Ljava/lang/Object;)Lcom/google/firebase/encoders/d;

    .line 7
    sget-object v0, Lcom/google/firebase/crashlytics/d/h/a$b;->h:Lcom/google/firebase/encoders/b;

    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/d/h/v;->j()Lcom/google/firebase/crashlytics/d/h/v$d;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lcom/google/firebase/encoders/d;->h(Lcom/google/firebase/encoders/b;Ljava/lang/Object;)Lcom/google/firebase/encoders/d;

    .line 8
    sget-object v0, Lcom/google/firebase/crashlytics/d/h/a$b;->i:Lcom/google/firebase/encoders/b;

    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/d/h/v;->g()Lcom/google/firebase/crashlytics/d/h/v$c;

    move-result-object p1

    invoke-interface {p2, v0, p1}, Lcom/google/firebase/encoders/d;->h(Lcom/google/firebase/encoders/b;Ljava/lang/Object;)Lcom/google/firebase/encoders/d;

    return-void
.end method
