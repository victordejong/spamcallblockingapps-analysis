.class public abstract Lcom/criteo/publisher/model/b0/m;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
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
            "Lcom/criteo/publisher/model/b0/m;",
            ">;"
        }
    .end annotation

    .line 29
    new-instance v0, Lcom/criteo/publisher/model/b0/g$a;

    invoke-direct {v0, p0}, Lcom/criteo/publisher/model/b0/g$a;-><init>(Lcom/google/gson/f;)V

    return-object v0
.end method


# virtual methods
.method abstract a()Ljava/lang/String;
.end method

.method abstract b()Ljava/lang/String;
.end method

.method abstract c()Lcom/criteo/publisher/model/b0/o;
.end method

.method abstract d()Ljava/net/URI;
.end method
