.class public abstract Lcom/dropbox/core/util/c;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected abstract a(Lcom/dropbox/core/util/b;)V
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1020
    new-instance v1, Lcom/dropbox/core/util/b$a;

    invoke-direct {v1, v0}, Lcom/dropbox/core/util/b$a;-><init>(Ljava/lang/StringBuilder;)V

    invoke-virtual {v1, p0}, Lcom/dropbox/core/util/b$a;->a(Lcom/dropbox/core/util/c;)Lcom/dropbox/core/util/b;

    .line 15
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
