.class public final Lcom/google/api/client/googleapis/auth/clientlogin/a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/client/googleapis/auth/clientlogin/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public captchaToken:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
        a = "CaptchaToken"
    .end annotation
.end field

.field public captchaUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
        a = "CaptchaUrl"
    .end annotation
.end field

.field public error:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
        a = "Error"
    .end annotation
.end field

.field public url:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
        a = "Url"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
