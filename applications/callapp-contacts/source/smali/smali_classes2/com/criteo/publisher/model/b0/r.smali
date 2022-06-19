.class public abstract Lcom/criteo/publisher/model/b0/r;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/google/gson/f;)Lcom/google/gson/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/f;",
            ")",
            "Lcom/google/gson/j<",
            "Lcom/criteo/publisher/model/b0/r;",
            ">;"
        }
    .end annotation

    .line 30
    new-instance v0, Lcom/criteo/publisher/model/b0/l$a;

    invoke-direct {v0, p0}, Lcom/criteo/publisher/model/b0/l$a;-><init>(Lcom/google/gson/f;)V

    return-object v0
.end method


# virtual methods
.method public abstract a()Ljava/lang/String;
.end method

.method public abstract b()Ljava/net/URI;
.end method

.method public abstract c()Ljava/lang/String;
.end method

.method abstract d()Lcom/criteo/publisher/model/b0/o;
.end method

.method public e()Ljava/net/URL;
    .locals 1

    .line 56
    invoke-virtual {p0}, Lcom/criteo/publisher/model/b0/r;->d()Lcom/criteo/publisher/model/b0/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/criteo/publisher/model/b0/o;->a()Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method

.method public abstract f()Ljava/lang/String;
.end method

.method public abstract g()Ljava/lang/String;
.end method
