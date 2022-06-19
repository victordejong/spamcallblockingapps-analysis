.class public Lcom/google/firebase/e/g;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-common@@19.3.0"


# direct methods
.method public static a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/components/b;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/firebase/components/b",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 25
    invoke-static {p0, p1}, Lcom/google/firebase/e/f;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/e/f;

    move-result-object v0

    const-class v1, Lcom/google/firebase/e/f;

    invoke-static {v0, v1}, Lcom/google/firebase/components/b;->a(Ljava/lang/Object;Ljava/lang/Class;)Lcom/google/firebase/components/b;

    move-result-object v0

    return-object v0
.end method
