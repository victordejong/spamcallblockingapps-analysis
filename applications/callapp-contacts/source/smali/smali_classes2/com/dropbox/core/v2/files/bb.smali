.class public final Lcom/dropbox/core/v2/files/bb;
.super Lcom/dropbox/core/v2/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/v2/d<",
        "Lcom/dropbox/core/v2/files/q;",
        "Lcom/dropbox/core/v2/files/bc;",
        "Lcom/dropbox/core/v2/files/UploadErrorException;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lcom/dropbox/core/v2/files/b$a;

.field private final b:Lcom/dropbox/core/v2/files/d;


# direct methods
.method public constructor <init>(Lcom/dropbox/core/v2/files/d;Lcom/dropbox/core/v2/files/b$a;)V
    .locals 1

    .line 33
    invoke-direct {p0}, Lcom/dropbox/core/v2/d;-><init>()V

    const-string v0, "_client"

    .line 35
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 37
    iput-object p1, p0, Lcom/dropbox/core/v2/files/bb;->b:Lcom/dropbox/core/v2/files/d;

    const-string p1, "_builder"

    .line 39
    invoke-static {p2, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 41
    iput-object p2, p0, Lcom/dropbox/core/v2/files/bb;->a:Lcom/dropbox/core/v2/files/b$a;

    return-void
.end method


# virtual methods
.method public final synthetic a()Lcom/dropbox/core/l;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 4153
    iget-object v0, p0, Lcom/dropbox/core/v2/files/bb;->a:Lcom/dropbox/core/v2/files/b$a;

    invoke-virtual {v0}, Lcom/dropbox/core/v2/files/b$a;->a()Lcom/dropbox/core/v2/files/b;

    move-result-object v0

    .line 4154
    iget-object v1, p0, Lcom/dropbox/core/v2/files/bb;->b:Lcom/dropbox/core/v2/files/d;

    .line 4795
    iget-object v2, v1, Lcom/dropbox/core/v2/files/d;->a:Lcom/dropbox/core/v2/c;

    iget-object v3, v1, Lcom/dropbox/core/v2/files/d;->a:Lcom/dropbox/core/v2/c;

    .line 5308
    iget-object v3, v3, Lcom/dropbox/core/v2/c;->a:Lcom/dropbox/core/e;

    .line 6067
    iget-object v3, v3, Lcom/dropbox/core/e;->c:Ljava/lang/String;

    .line 4795
    sget-object v4, Lcom/dropbox/core/v2/files/b$b;->a:Lcom/dropbox/core/v2/files/b$b;

    const-string v5, "2/files/upload"

    invoke-virtual {v2, v3, v5, v0, v4}, Lcom/dropbox/core/v2/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/dropbox/core/a/c;)Lcom/dropbox/core/http/a$c;

    move-result-object v0

    .line 4800
    new-instance v2, Lcom/dropbox/core/v2/files/bh;

    iget-object v1, v1, Lcom/dropbox/core/v2/files/d;->a:Lcom/dropbox/core/v2/c;

    .line 6317
    iget-object v1, v1, Lcom/dropbox/core/v2/c;->b:Ljava/lang/String;

    .line 4800
    invoke-direct {v2, v0, v1}, Lcom/dropbox/core/v2/files/bh;-><init>(Lcom/dropbox/core/http/a$c;Ljava/lang/String;)V

    return-object v2
.end method
