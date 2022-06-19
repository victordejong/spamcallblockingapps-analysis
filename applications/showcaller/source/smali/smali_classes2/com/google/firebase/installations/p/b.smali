.class public Lcom/google/firebase/installations/p/b;
.super Ljava/lang/Object;
.source "SystemClock.java"

# interfaces
.implements Lcom/google/firebase/installations/p/a;


# static fields
.field private static a:Lcom/google/firebase/installations/p/b;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b()Lcom/google/firebase/installations/p/b;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/firebase/installations/p/b;->a:Lcom/google/firebase/installations/p/b;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/google/firebase/installations/p/b;

    invoke-direct {v0}, Lcom/google/firebase/installations/p/b;-><init>()V

    sput-object v0, Lcom/google/firebase/installations/p/b;->a:Lcom/google/firebase/installations/p/b;

    .line 3
    :cond_0
    sget-object v0, Lcom/google/firebase/installations/p/b;->a:Lcom/google/firebase/installations/p/b;

    return-object v0
.end method


# virtual methods
.method public a()J
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method
