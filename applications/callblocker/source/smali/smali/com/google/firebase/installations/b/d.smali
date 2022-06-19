.class public abstract Lcom/google/firebase/installations/b/d;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-installations@@16.2.1"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/installations/b/d$a;,
        Lcom/google/firebase/installations/b/d$b;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static f()Lcom/google/firebase/installations/b/d$a;
    .locals 1

    .prologue
    .line 54
    new-instance v0, Lcom/google/firebase/installations/b/a$a;

    invoke-direct {v0}, Lcom/google/firebase/installations/b/a$a;-><init>()V

    return-object v0
.end method


# virtual methods
.method public abstract a()Ljava/lang/String;
.end method

.method public abstract b()Ljava/lang/String;
.end method

.method public abstract c()Ljava/lang/String;
.end method

.method public abstract d()Lcom/google/firebase/installations/b/e;
.end method

.method public abstract e()Lcom/google/firebase/installations/b/d$b;
.end method
