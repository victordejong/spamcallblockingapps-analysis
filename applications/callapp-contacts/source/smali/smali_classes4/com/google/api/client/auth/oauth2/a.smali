.class public final Lcom/google/api/client/auth/oauth2/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/client/auth/oauth2/a$a;
    }
.end annotation


# static fields
.field static final a:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "\\s*error\\s*=\\s*\"?invalid_token\"?"

    .line 44
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/api/client/auth/oauth2/a;->a:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/google/api/client/auth/oauth2/b$a;
    .locals 1

    .line 126
    new-instance v0, Lcom/google/api/client/auth/oauth2/a$a;

    invoke-direct {v0}, Lcom/google/api/client/auth/oauth2/a$a;-><init>()V

    return-object v0
.end method
