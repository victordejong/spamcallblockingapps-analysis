.class public final Lcom/dropbox/core/DbxWebAuth;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/DbxWebAuth$a;,
        Lcom/dropbox/core/DbxWebAuth$ProviderException;,
        Lcom/dropbox/core/DbxWebAuth$NotApprovedException;,
        Lcom/dropbox/core/DbxWebAuth$CsrfException;,
        Lcom/dropbox/core/DbxWebAuth$BadStateException;,
        Lcom/dropbox/core/DbxWebAuth$BadRequestException;,
        Lcom/dropbox/core/DbxWebAuth$Exception;
    }
.end annotation


# static fields
.field private static final d:Ljava/security/SecureRandom;

.field private static final e:I


# instance fields
.field final a:Lcom/dropbox/core/h;

.field final b:Lcom/dropbox/core/b;

.field final c:Lcom/dropbox/core/DbxWebAuth$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 139
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    sput-object v0, Lcom/dropbox/core/DbxWebAuth;->d:Ljava/security/SecureRandom;

    const/16 v0, 0x10

    new-array v0, v0, [B

    .line 141
    invoke-static {v0}, Lcom/dropbox/core/util/f;->c([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Lcom/dropbox/core/DbxWebAuth;->e:I

    return-void
.end method

.method public constructor <init>(Lcom/dropbox/core/h;Lcom/dropbox/core/b;)V
    .locals 1

    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "requestConfig"

    .line 186
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "appInfo"

    .line 187
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 189
    iput-object p1, p0, Lcom/dropbox/core/DbxWebAuth;->a:Lcom/dropbox/core/h;

    .line 190
    iput-object p2, p0, Lcom/dropbox/core/DbxWebAuth;->b:Lcom/dropbox/core/b;

    const/4 p1, 0x0

    .line 191
    iput-object p1, p0, Lcom/dropbox/core/DbxWebAuth;->c:Lcom/dropbox/core/DbxWebAuth$a;

    return-void
.end method

.method public constructor <init>(Lcom/dropbox/core/h;Lcom/dropbox/core/b;Ljava/lang/String;Lcom/dropbox/core/k;)V
    .locals 11
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "requestConfig"

    .line 166
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "appInfo"

    .line 167
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 170
    iput-object p1, p0, Lcom/dropbox/core/DbxWebAuth;->a:Lcom/dropbox/core/h;

    .line 171
    iput-object p2, p0, Lcom/dropbox/core/DbxWebAuth;->b:Lcom/dropbox/core/b;

    .line 1652
    invoke-static {}, Lcom/dropbox/core/DbxWebAuth$a;->a()Lcom/dropbox/core/DbxWebAuth$a$a;

    move-result-object p1

    const-string p2, "redirectUri"

    .line 1801
    invoke-static {p3, p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string p2, "sessionStore"

    .line 1802
    invoke-static {p4, p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1804
    iput-object p3, p1, Lcom/dropbox/core/DbxWebAuth$a$a;->a:Ljava/lang/String;

    .line 1805
    iput-object p4, p1, Lcom/dropbox/core/DbxWebAuth$a$a;->f:Lcom/dropbox/core/k;

    .line 1949
    iget-object p2, p1, Lcom/dropbox/core/DbxWebAuth$a$a;->a:Ljava/lang/String;

    if-nez p2, :cond_1

    iget-object p2, p1, Lcom/dropbox/core/DbxWebAuth$a$a;->b:Ljava/lang/String;

    if-nez p2, :cond_0

    goto :goto_0

    .line 1950
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot specify a state without a redirect URI."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1953
    :cond_1
    :goto_0
    iget-object p2, p1, Lcom/dropbox/core/DbxWebAuth$a$a;->i:Lcom/dropbox/core/m;

    if-eqz p2, :cond_3

    iget-object p2, p1, Lcom/dropbox/core/DbxWebAuth$a$a;->h:Ljava/lang/String;

    if-eqz p2, :cond_2

    goto :goto_1

    .line 1954
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "If you are using includeGrantedScopes, you must ask for specific new scopes"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1958
    :cond_3
    :goto_1
    new-instance p2, Lcom/dropbox/core/DbxWebAuth$a;

    iget-object v1, p1, Lcom/dropbox/core/DbxWebAuth$a$a;->a:Ljava/lang/String;

    iget-object v2, p1, Lcom/dropbox/core/DbxWebAuth$a$a;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/DbxWebAuth$a$a;->c:Ljava/lang/String;

    iget-object v4, p1, Lcom/dropbox/core/DbxWebAuth$a$a;->d:Ljava/lang/Boolean;

    iget-object v5, p1, Lcom/dropbox/core/DbxWebAuth$a$a;->e:Ljava/lang/Boolean;

    iget-object v6, p1, Lcom/dropbox/core/DbxWebAuth$a$a;->f:Lcom/dropbox/core/k;

    iget-object v7, p1, Lcom/dropbox/core/DbxWebAuth$a$a;->g:Lcom/dropbox/core/o;

    iget-object v8, p1, Lcom/dropbox/core/DbxWebAuth$a$a;->h:Ljava/lang/String;

    iget-object v9, p1, Lcom/dropbox/core/DbxWebAuth$a$a;->i:Lcom/dropbox/core/m;

    const/4 v10, 0x0

    move-object v0, p2

    invoke-direct/range {v0 .. v10}, Lcom/dropbox/core/DbxWebAuth$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/dropbox/core/k;Lcom/dropbox/core/o;Ljava/lang/String;Lcom/dropbox/core/m;Lcom/dropbox/core/DbxWebAuth$1;)V

    .line 174
    iput-object p2, p0, Lcom/dropbox/core/DbxWebAuth;->c:Lcom/dropbox/core/DbxWebAuth$a;

    return-void
.end method
