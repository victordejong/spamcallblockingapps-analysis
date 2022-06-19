.class public abstract Lcom/google/firebase/installations/b/e;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-installations@@16.2.1"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/installations/b/e$a;,
        Lcom/google/firebase/installations/b/e$b;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d()Lcom/google/firebase/installations/b/e$a;
    .locals 4

    .prologue
    .line 56
    new-instance v0, Lcom/google/firebase/installations/b/b$a;

    invoke-direct {v0}, Lcom/google/firebase/installations/b/b$a;-><init>()V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/google/firebase/installations/b/b$a;->a(J)Lcom/google/firebase/installations/b/e$a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract a()Ljava/lang/String;
.end method

.method public abstract b()J
.end method

.method public abstract c()Lcom/google/firebase/installations/b/e$b;
.end method
