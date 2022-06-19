.class public abstract Lcom/google/firebase/installations/l;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-installations-interop@@16.0.0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/installations/l$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d()Lcom/google/firebase/installations/l$a;
    .locals 1

    .prologue
    .line 52
    new-instance v0, Lcom/google/firebase/installations/a$a;

    invoke-direct {v0}, Lcom/google/firebase/installations/a$a;-><init>()V

    return-object v0
.end method


# virtual methods
.method public abstract a()Ljava/lang/String;
.end method

.method public abstract b()J
.end method

.method public abstract c()J
.end method
