.class public abstract Lcom/criteo/publisher/model/o;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Lcom/criteo/publisher/model/v;Lcom/criteo/publisher/model/z;Ljava/lang/String;ILcom/criteo/publisher/k/a/c;Ljava/util/List;)Lcom/criteo/publisher/model/o;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/criteo/publisher/model/v;",
            "Lcom/criteo/publisher/model/z;",
            "Ljava/lang/String;",
            "I",
            "Lcom/criteo/publisher/k/a/c;",
            "Ljava/util/List<",
            "Lcom/criteo/publisher/model/q;",
            ">;)",
            "Lcom/criteo/publisher/model/o;"
        }
    .end annotation

    .line 41
    new-instance v8, Lcom/criteo/publisher/model/h;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/criteo/publisher/model/h;-><init>(Ljava/lang/String;Lcom/criteo/publisher/model/v;Lcom/criteo/publisher/model/z;Ljava/lang/String;ILcom/criteo/publisher/k/a/c;Ljava/util/List;)V

    return-object v8
.end method

.method public static a(Lcom/google/gson/f;)Lcom/google/gson/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/f;",
            ")",
            "Lcom/google/gson/j<",
            "Lcom/criteo/publisher/model/o;",
            ">;"
        }
    .end annotation

    .line 53
    new-instance v0, Lcom/criteo/publisher/model/h$a;

    invoke-direct {v0, p0}, Lcom/criteo/publisher/model/h$a;-><init>(Lcom/google/gson/f;)V

    return-object v0
.end method


# virtual methods
.method public abstract a()Lcom/criteo/publisher/k/a/c;
    .annotation runtime Lcom/google/gson/annotations/b;
        a = "gdprConsent"
    .end annotation
.end method

.method public abstract b()Ljava/lang/String;
.end method

.method public abstract c()I
.end method

.method public abstract d()Lcom/criteo/publisher/model/v;
.end method

.method public abstract e()Ljava/lang/String;
.end method

.method public abstract f()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/criteo/publisher/model/q;",
            ">;"
        }
    .end annotation
.end method

.method public abstract g()Lcom/criteo/publisher/model/z;
.end method
