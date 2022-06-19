.class final Lcom/dropbox/core/i$1;
.super Lcom/dropbox/core/i$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dropbox/core/i;->a(Lcom/dropbox/core/h;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/util/List;Lcom/dropbox/core/i$b;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/i$a<",
        "TT;",
        "Lcom/dropbox/core/DbxException;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/dropbox/core/h;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:[Ljava/lang/String;

.field final synthetic f:Ljava/util/List;

.field final synthetic g:Lcom/dropbox/core/i$b;


# direct methods
.method constructor <init>(Lcom/dropbox/core/h;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/util/List;Lcom/dropbox/core/i$b;)V
    .locals 0

    .line 502
    iput-object p1, p0, Lcom/dropbox/core/i$1;->a:Lcom/dropbox/core/h;

    iput-object p2, p0, Lcom/dropbox/core/i$1;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/dropbox/core/i$1;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/dropbox/core/i$1;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/dropbox/core/i$1;->e:[Ljava/lang/String;

    iput-object p6, p0, Lcom/dropbox/core/i$1;->f:Ljava/util/List;

    iput-object p7, p0, Lcom/dropbox/core/i$1;->g:Lcom/dropbox/core/i$b;

    invoke-direct {p0}, Lcom/dropbox/core/i$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 505
    iget-object v0, p0, Lcom/dropbox/core/i$1;->a:Lcom/dropbox/core/h;

    iget-object v1, p0, Lcom/dropbox/core/i$1;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/dropbox/core/i$1;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/dropbox/core/i$1;->d:Ljava/lang/String;

    iget-object v4, p0, Lcom/dropbox/core/i$1;->e:[Ljava/lang/String;

    iget-object v5, p0, Lcom/dropbox/core/i$1;->f:Ljava/util/List;

    invoke-static/range {v0 .. v5}, Lcom/dropbox/core/i;->a(Lcom/dropbox/core/h;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/util/List;)Lcom/dropbox/core/http/a$b;

    move-result-object v0

    .line 506
    iget-object v1, p0, Lcom/dropbox/core/i$1;->g:Lcom/dropbox/core/i$b;

    invoke-static {v0, v1}, Lcom/dropbox/core/i;->a(Lcom/dropbox/core/http/a$b;Lcom/dropbox/core/i$b;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
