.class public final Lcom/google/api/client/googleapis/auth/clientlogin/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/client/googleapis/auth/clientlogin/a$a;
    }
.end annotation


# instance fields
.field public a:Lcom/google/api/client/http/i;

.field public accountType:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field public applicationName:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
        a = "source"
    .end annotation
.end field

.field public authTokenType:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
        a = "service"
    .end annotation
.end field

.field public captchaAnswer:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
        a = "logincaptcha"
    .end annotation
.end field

.field public captchaToken:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
        a = "logintoken"
    .end annotation
.end field

.field public password:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
        a = "Passwd"
    .end annotation
.end field

.field public username:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
        a = "Email"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Lcom/google/api/client/http/i;

    const-string v1, "https://www.google.com"

    invoke-direct {v0, v1}, Lcom/google/api/client/http/i;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/api/client/googleapis/auth/clientlogin/a;->a:Lcom/google/api/client/http/i;

    return-void
.end method
