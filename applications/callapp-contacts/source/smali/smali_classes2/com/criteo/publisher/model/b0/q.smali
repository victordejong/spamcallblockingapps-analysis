.class public abstract Lcom/criteo/publisher/model/b0/q;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
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
            "Lcom/criteo/publisher/model/b0/q;",
            ">;"
        }
    .end annotation

    .line 31
    new-instance v0, Lcom/criteo/publisher/model/b0/k$a;

    invoke-direct {v0, p0}, Lcom/criteo/publisher/model/b0/k$a;-><init>(Lcom/google/gson/f;)V

    return-object v0
.end method


# virtual methods
.method abstract a()Ljava/net/URI;
    .annotation runtime Lcom/google/gson/annotations/b;
        a = "optoutClickUrl"
    .end annotation
.end method

.method abstract b()Ljava/net/URL;
    .annotation runtime Lcom/google/gson/annotations/b;
        a = "optoutImageUrl"
    .end annotation
.end method

.method abstract c()Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/b;
        a = "longLegalText"
    .end annotation
.end method
