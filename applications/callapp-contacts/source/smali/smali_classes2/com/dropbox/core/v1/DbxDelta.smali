.class public final Lcom/dropbox/core/v1/DbxDelta;
.super Lcom/dropbox/core/util/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v1/DbxDelta$Entry;,
        Lcom/dropbox/core/v1/DbxDelta$Reader;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MD:",
        "Lcom/dropbox/core/util/c;",
        ">",
        "Lcom/dropbox/core/util/c;"
    }
.end annotation


# instance fields
.field public final a:Z

.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/dropbox/core/v1/DbxDelta$Entry<",
            "TMD;>;>;"
        }
    .end annotation
.end field

.field public final c:Ljava/lang/String;

.field public final d:Z


# direct methods
.method public constructor <init>(ZLjava/util/List;Ljava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Lcom/dropbox/core/v1/DbxDelta$Entry<",
            "TMD;>;>;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .line 73
    invoke-direct {p0}, Lcom/dropbox/core/util/c;-><init>()V

    .line 74
    iput-boolean p1, p0, Lcom/dropbox/core/v1/DbxDelta;->a:Z

    .line 75
    iput-object p2, p0, Lcom/dropbox/core/v1/DbxDelta;->b:Ljava/util/List;

    .line 76
    iput-object p3, p0, Lcom/dropbox/core/v1/DbxDelta;->c:Ljava/lang/String;

    .line 77
    iput-boolean p4, p0, Lcom/dropbox/core/v1/DbxDelta;->d:Z

    return-void
.end method


# virtual methods
.method public final a(Lcom/dropbox/core/util/b;)V
    .locals 2

    const-string v0, "reset"

    .line 82
    invoke-virtual {p1, v0}, Lcom/dropbox/core/util/b;->b(Ljava/lang/String;)Lcom/dropbox/core/util/b;

    move-result-object v0

    iget-boolean v1, p0, Lcom/dropbox/core/v1/DbxDelta;->a:Z

    invoke-virtual {v0, v1}, Lcom/dropbox/core/util/b;->a(Z)Lcom/dropbox/core/util/b;

    const-string v0, "hasMore"

    .line 83
    invoke-virtual {p1, v0}, Lcom/dropbox/core/util/b;->b(Ljava/lang/String;)Lcom/dropbox/core/util/b;

    move-result-object v0

    iget-boolean v1, p0, Lcom/dropbox/core/v1/DbxDelta;->d:Z

    invoke-virtual {v0, v1}, Lcom/dropbox/core/util/b;->a(Z)Lcom/dropbox/core/util/b;

    const-string v0, "cursor"

    .line 84
    invoke-virtual {p1, v0}, Lcom/dropbox/core/util/b;->b(Ljava/lang/String;)Lcom/dropbox/core/util/b;

    move-result-object v0

    iget-object v1, p0, Lcom/dropbox/core/v1/DbxDelta;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/dropbox/core/util/b;->d(Ljava/lang/String;)Lcom/dropbox/core/util/b;

    const-string v0, "entries"

    .line 85
    invoke-virtual {p1, v0}, Lcom/dropbox/core/util/b;->b(Ljava/lang/String;)Lcom/dropbox/core/util/b;

    move-result-object p1

    iget-object v0, p0, Lcom/dropbox/core/v1/DbxDelta;->b:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/dropbox/core/util/b;->a(Ljava/lang/Iterable;)Lcom/dropbox/core/util/b;

    return-void
.end method
