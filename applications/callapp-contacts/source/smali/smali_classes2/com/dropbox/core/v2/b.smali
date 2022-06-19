.class public Lcom/dropbox/core/v2/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected final a:Lcom/dropbox/core/v2/c;

.field public final b:Lcom/dropbox/core/v2/auth/c;

.field public final c:Lcom/dropbox/core/v2/files/d;

.field private final d:Lcom/dropbox/core/v2/account/a;

.field private final e:Lcom/dropbox/core/v2/b/a;

.field private final f:Lcom/dropbox/core/v2/clouddocs/b;

.field private final g:Lcom/dropbox/core/v2/contacts/a;

.field private final h:Lcom/dropbox/core/v2/fileproperties/b;

.field private final i:Lcom/dropbox/core/v2/filerequests/c;

.field private final j:Lcom/dropbox/core/v2/paper/a;

.field private final k:Lcom/dropbox/core/v2/sharing/l;

.field private final l:Lcom/dropbox/core/v2/users/a;


# direct methods
.method protected constructor <init>(Lcom/dropbox/core/v2/c;)V
    .locals 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/dropbox/core/v2/b;->a:Lcom/dropbox/core/v2/c;

    .line 43
    new-instance v0, Lcom/dropbox/core/v2/account/a;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/account/a;-><init>(Lcom/dropbox/core/v2/c;)V

    iput-object v0, p0, Lcom/dropbox/core/v2/b;->d:Lcom/dropbox/core/v2/account/a;

    .line 44
    new-instance v0, Lcom/dropbox/core/v2/auth/c;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/auth/c;-><init>(Lcom/dropbox/core/v2/c;)V

    iput-object v0, p0, Lcom/dropbox/core/v2/b;->b:Lcom/dropbox/core/v2/auth/c;

    .line 45
    new-instance v0, Lcom/dropbox/core/v2/b/a;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/b/a;-><init>(Lcom/dropbox/core/v2/c;)V

    iput-object v0, p0, Lcom/dropbox/core/v2/b;->e:Lcom/dropbox/core/v2/b/a;

    .line 46
    new-instance v0, Lcom/dropbox/core/v2/clouddocs/b;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/clouddocs/b;-><init>(Lcom/dropbox/core/v2/c;)V

    iput-object v0, p0, Lcom/dropbox/core/v2/b;->f:Lcom/dropbox/core/v2/clouddocs/b;

    .line 47
    new-instance v0, Lcom/dropbox/core/v2/contacts/a;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/contacts/a;-><init>(Lcom/dropbox/core/v2/c;)V

    iput-object v0, p0, Lcom/dropbox/core/v2/b;->g:Lcom/dropbox/core/v2/contacts/a;

    .line 48
    new-instance v0, Lcom/dropbox/core/v2/fileproperties/b;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/fileproperties/b;-><init>(Lcom/dropbox/core/v2/c;)V

    iput-object v0, p0, Lcom/dropbox/core/v2/b;->h:Lcom/dropbox/core/v2/fileproperties/b;

    .line 49
    new-instance v0, Lcom/dropbox/core/v2/filerequests/c;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/filerequests/c;-><init>(Lcom/dropbox/core/v2/c;)V

    iput-object v0, p0, Lcom/dropbox/core/v2/b;->i:Lcom/dropbox/core/v2/filerequests/c;

    .line 50
    new-instance v0, Lcom/dropbox/core/v2/files/d;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/files/d;-><init>(Lcom/dropbox/core/v2/c;)V

    iput-object v0, p0, Lcom/dropbox/core/v2/b;->c:Lcom/dropbox/core/v2/files/d;

    .line 51
    new-instance v0, Lcom/dropbox/core/v2/paper/a;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/paper/a;-><init>(Lcom/dropbox/core/v2/c;)V

    iput-object v0, p0, Lcom/dropbox/core/v2/b;->j:Lcom/dropbox/core/v2/paper/a;

    .line 52
    new-instance v0, Lcom/dropbox/core/v2/sharing/l;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/sharing/l;-><init>(Lcom/dropbox/core/v2/c;)V

    iput-object v0, p0, Lcom/dropbox/core/v2/b;->k:Lcom/dropbox/core/v2/sharing/l;

    .line 53
    new-instance v0, Lcom/dropbox/core/v2/users/a;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/users/a;-><init>(Lcom/dropbox/core/v2/c;)V

    iput-object v0, p0, Lcom/dropbox/core/v2/b;->l:Lcom/dropbox/core/v2/users/a;

    return-void
.end method
