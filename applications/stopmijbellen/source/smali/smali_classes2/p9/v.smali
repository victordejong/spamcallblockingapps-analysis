.class public Lp9/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Lp9/e$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lp9/v$b;
    }
.end annotation


# static fields
.field public static final y:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lp9/w;",
            ">;"
        }
    .end annotation
.end field

.field public static final z:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lp9/j;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Lp9/m;

.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lp9/w;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lp9/j;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lp9/t;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lp9/t;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Lp9/o$b;

.field public final g:Ljava/net/ProxySelector;

.field public final h:Lp9/l;

.field public final i:Lp9/c;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public final j:Ljavax/net/SocketFactory;

.field public final k:Ljavax/net/ssl/SSLSocketFactory;

.field public final l:Lz9/c;

.field public final m:Ljavax/net/ssl/HostnameVerifier;

.field public final n:Lp9/g;

.field public final o:Lp9/b;

.field public final p:Lp9/b;

.field public final q:Lp9/i;

.field public final r:Lp9/n;

.field public final s:Z

.field public final t:Z

.field public final u:Z

.field public final v:I

.field public final w:I

.field public final x:I


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x2

    new-array v1, v0, [Lp9/w;

    .line 1
    sget-object v2, Lp9/w;->e:Lp9/w;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lp9/w;->c:Lp9/w;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    invoke-static {v1}, Lq9/c;->o([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Lp9/v;->y:Ljava/util/List;

    new-array v0, v0, [Lp9/j;

    .line 2
    sget-object v1, Lp9/j;->e:Lp9/j;

    aput-object v1, v0, v3

    sget-object v1, Lp9/j;->f:Lp9/j;

    aput-object v1, v0, v4

    invoke-static {v0}, Lq9/c;->o([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lp9/v;->z:Ljava/util/List;

    .line 3
    new-instance v0, Lp9/v$a;

    invoke-direct {v0}, Lp9/v$a;-><init>()V

    sput-object v0, Lq9/a;->a:Lq9/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, Lp9/v$b;

    invoke-direct {v0}, Lp9/v$b;-><init>()V

    invoke-direct {p0, v0}, Lp9/v;-><init>(Lp9/v$b;)V

    return-void
.end method

.method public constructor <init>(Lp9/v$b;)V
    .locals 7

    const-string v0, "No System TLS"

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iget-object v1, p1, Lp9/v$b;->a:Lp9/m;

    iput-object v1, p0, Lp9/v;->a:Lp9/m;

    .line 4
    iget-object v1, p1, Lp9/v$b;->b:Ljava/util/List;

    iput-object v1, p0, Lp9/v;->b:Ljava/util/List;

    .line 5
    iget-object v1, p1, Lp9/v$b;->c:Ljava/util/List;

    iput-object v1, p0, Lp9/v;->c:Ljava/util/List;

    .line 6
    iget-object v2, p1, Lp9/v$b;->d:Ljava/util/List;

    invoke-static {v2}, Lq9/c;->n(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lp9/v;->d:Ljava/util/List;

    .line 7
    iget-object v2, p1, Lp9/v$b;->e:Ljava/util/List;

    invoke-static {v2}, Lq9/c;->n(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lp9/v;->e:Ljava/util/List;

    .line 8
    iget-object v2, p1, Lp9/v$b;->f:Lp9/o$b;

    iput-object v2, p0, Lp9/v;->f:Lp9/o$b;

    .line 9
    iget-object v2, p1, Lp9/v$b;->g:Ljava/net/ProxySelector;

    iput-object v2, p0, Lp9/v;->g:Ljava/net/ProxySelector;

    .line 10
    iget-object v2, p1, Lp9/v$b;->h:Lp9/l;

    iput-object v2, p0, Lp9/v;->h:Lp9/l;

    .line 11
    iget-object v2, p1, Lp9/v$b;->i:Lp9/c;

    iput-object v2, p0, Lp9/v;->i:Lp9/c;

    .line 12
    iget-object v2, p1, Lp9/v$b;->j:Ljavax/net/SocketFactory;

    iput-object v2, p0, Lp9/v;->j:Ljavax/net/SocketFactory;

    .line 13
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lp9/j;

    if-nez v4, :cond_1

    .line 14
    iget-boolean v4, v5, Lp9/j;->a:Z

    if-eqz v4, :cond_0

    :cond_1
    const/4 v4, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    if-nez v4, :cond_3

    .line 15
    iput-object v1, p0, Lp9/v;->k:Ljavax/net/ssl/SSLSocketFactory;

    .line 16
    iput-object v1, p0, Lp9/v;->l:Lz9/c;

    goto :goto_1

    .line 17
    :cond_3
    :try_start_0
    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v4

    .line 18
    invoke-static {v4}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v4

    .line 19
    invoke-virtual {v4, v1}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 20
    invoke-virtual {v4}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v4

    .line 21
    array-length v5, v4

    if-ne v5, v2, :cond_8

    aget-object v5, v4, v3

    instance-of v5, v5, Ljavax/net/ssl/X509TrustManager;

    if-eqz v5, :cond_8

    .line 22
    aget-object v4, v4, v3

    check-cast v4, Ljavax/net/ssl/X509TrustManager;
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_1

    .line 23
    :try_start_1
    sget-object v5, Lx9/f;->a:Lx9/f;

    .line 24
    invoke-virtual {v5}, Lx9/f;->h()Ljavax/net/ssl/SSLContext;

    move-result-object v6

    new-array v2, v2, [Ljavax/net/ssl/TrustManager;

    aput-object v4, v2, v3

    .line 25
    invoke-virtual {v6, v1, v2, v1}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 26
    invoke-virtual {v6}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0
    :try_end_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_0

    .line 27
    iput-object v0, p0, Lp9/v;->k:Ljavax/net/ssl/SSLSocketFactory;

    .line 28
    invoke-virtual {v5, v4}, Lx9/f;->c(Ljavax/net/ssl/X509TrustManager;)Lz9/c;

    move-result-object v0

    .line 29
    iput-object v0, p0, Lp9/v;->l:Lz9/c;

    .line 30
    :goto_1
    iget-object v0, p0, Lp9/v;->k:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v0, :cond_4

    .line 31
    sget-object v2, Lx9/f;->a:Lx9/f;

    .line 32
    invoke-virtual {v2, v0}, Lx9/f;->e(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 33
    :cond_4
    iget-object v0, p1, Lp9/v$b;->k:Ljavax/net/ssl/HostnameVerifier;

    iput-object v0, p0, Lp9/v;->m:Ljavax/net/ssl/HostnameVerifier;

    .line 34
    iget-object v0, p1, Lp9/v$b;->l:Lp9/g;

    iget-object v2, p0, Lp9/v;->l:Lz9/c;

    .line 35
    iget-object v3, v0, Lp9/g;->b:Lz9/c;

    invoke-static {v3, v2}, Lq9/c;->k(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_2

    .line 36
    :cond_5
    new-instance v3, Lp9/g;

    iget-object v0, v0, Lp9/g;->a:Ljava/util/Set;

    invoke-direct {v3, v0, v2}, Lp9/g;-><init>(Ljava/util/Set;Lz9/c;)V

    move-object v0, v3

    .line 37
    :goto_2
    iput-object v0, p0, Lp9/v;->n:Lp9/g;

    .line 38
    iget-object v0, p1, Lp9/v$b;->m:Lp9/b;

    iput-object v0, p0, Lp9/v;->o:Lp9/b;

    .line 39
    iget-object v0, p1, Lp9/v$b;->n:Lp9/b;

    iput-object v0, p0, Lp9/v;->p:Lp9/b;

    .line 40
    iget-object v0, p1, Lp9/v$b;->o:Lp9/i;

    iput-object v0, p0, Lp9/v;->q:Lp9/i;

    .line 41
    iget-object v0, p1, Lp9/v$b;->p:Lp9/n;

    iput-object v0, p0, Lp9/v;->r:Lp9/n;

    .line 42
    iget-boolean v0, p1, Lp9/v$b;->q:Z

    iput-boolean v0, p0, Lp9/v;->s:Z

    .line 43
    iget-boolean v0, p1, Lp9/v$b;->r:Z

    iput-boolean v0, p0, Lp9/v;->t:Z

    .line 44
    iget-boolean v0, p1, Lp9/v$b;->s:Z

    iput-boolean v0, p0, Lp9/v;->u:Z

    .line 45
    iget v0, p1, Lp9/v$b;->t:I

    iput v0, p0, Lp9/v;->v:I

    .line 46
    iget v0, p1, Lp9/v$b;->u:I

    iput v0, p0, Lp9/v;->w:I

    .line 47
    iget p1, p1, Lp9/v$b;->v:I

    iput p1, p0, Lp9/v;->x:I

    .line 48
    iget-object p1, p0, Lp9/v;->d:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    .line 49
    iget-object p1, p0, Lp9/v;->e:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    return-void

    .line 50
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Null network interceptor: "

    invoke-static {v0}, Landroid/support/v4/media/b;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lp9/v;->e:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 51
    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Null interceptor: "

    invoke-static {v0}, Landroid/support/v4/media/b;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lp9/v;->d:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_0
    move-exception p1

    .line 52
    invoke-static {v0, p1}, Lq9/c;->a(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/AssertionError;

    move-result-object p1

    throw p1

    .line 53
    :cond_8
    :try_start_2
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected default trust managers:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    invoke-static {v4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2
    .catch Ljava/security/GeneralSecurityException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    move-exception p1

    .line 55
    invoke-static {v0, p1}, Lq9/c;->a(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/AssertionError;

    move-result-object p1

    throw p1
.end method
