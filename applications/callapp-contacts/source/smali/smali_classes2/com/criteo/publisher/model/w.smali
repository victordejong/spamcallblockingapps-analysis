.class public abstract Lcom/criteo/publisher/model/w;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/criteo/publisher/model/w;
    .locals 8

    .line 37
    new-instance v7, Lcom/criteo/publisher/model/k;

    const-string v6, "android"

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/criteo/publisher/model/k;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return-object v7
.end method

.method public static a(Lcom/google/gson/f;)Lcom/google/gson/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/f;",
            ")",
            "Lcom/google/gson/j<",
            "Lcom/criteo/publisher/model/w;",
            ">;"
        }
    .end annotation

    .line 41
    new-instance v0, Lcom/criteo/publisher/model/k$a;

    invoke-direct {v0, p0}, Lcom/criteo/publisher/model/k$a;-><init>(Lcom/google/gson/f;)V

    return-object v0
.end method


# virtual methods
.method public abstract a()Ljava/lang/String;
.end method

.method public abstract b()Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/b;
        a = "cpId"
    .end annotation
.end method

.method public abstract c()Ljava/lang/String;
.end method

.method public abstract d()Ljava/lang/String;
.end method

.method public abstract e()I
    .annotation runtime Lcom/google/gson/annotations/b;
        a = "rtbProfileId"
    .end annotation
.end method

.method public abstract f()Ljava/lang/String;
.end method
