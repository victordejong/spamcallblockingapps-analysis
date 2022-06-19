.class public final Lcom/dropbox/core/v1/DbxDeltaC;
.super Lcom/dropbox/core/util/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v1/DbxDeltaC$Entry;,
        Lcom/dropbox/core/v1/DbxDeltaC$Reader;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/dropbox/core/util/c;"
    }
.end annotation


# instance fields
.field public final a:Z

.field public final b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TC;"
        }
    .end annotation
.end field

.field public final c:Ljava/lang/String;

.field public final d:Z


# direct methods
.method public constructor <init>(ZLjava/lang/Object;Ljava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZTC;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .line 72
    invoke-direct {p0}, Lcom/dropbox/core/util/c;-><init>()V

    .line 73
    iput-boolean p1, p0, Lcom/dropbox/core/v1/DbxDeltaC;->a:Z

    .line 74
    iput-object p2, p0, Lcom/dropbox/core/v1/DbxDeltaC;->b:Ljava/lang/Object;

    .line 75
    iput-object p3, p0, Lcom/dropbox/core/v1/DbxDeltaC;->c:Ljava/lang/String;

    .line 76
    iput-boolean p4, p0, Lcom/dropbox/core/v1/DbxDeltaC;->d:Z

    return-void
.end method


# virtual methods
.method public final a(Lcom/dropbox/core/util/b;)V
    .locals 2

    const-string v0, "reset"

    .line 81
    invoke-virtual {p1, v0}, Lcom/dropbox/core/util/b;->b(Ljava/lang/String;)Lcom/dropbox/core/util/b;

    move-result-object v0

    iget-boolean v1, p0, Lcom/dropbox/core/v1/DbxDeltaC;->a:Z

    invoke-virtual {v0, v1}, Lcom/dropbox/core/util/b;->a(Z)Lcom/dropbox/core/util/b;

    const-string v0, "cursor"

    .line 82
    invoke-virtual {p1, v0}, Lcom/dropbox/core/util/b;->b(Ljava/lang/String;)Lcom/dropbox/core/util/b;

    move-result-object v0

    iget-object v1, p0, Lcom/dropbox/core/v1/DbxDeltaC;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/dropbox/core/util/b;->d(Ljava/lang/String;)Lcom/dropbox/core/util/b;

    const-string v0, "entries"

    .line 83
    invoke-virtual {p1, v0}, Lcom/dropbox/core/util/b;->b(Ljava/lang/String;)Lcom/dropbox/core/util/b;

    move-result-object p1

    iget-boolean v0, p0, Lcom/dropbox/core/v1/DbxDeltaC;->d:Z

    invoke-virtual {p1, v0}, Lcom/dropbox/core/util/b;->a(Z)Lcom/dropbox/core/util/b;

    return-void
.end method
