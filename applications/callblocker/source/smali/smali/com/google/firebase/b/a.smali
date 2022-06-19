.class public Lcom/google/firebase/b/a;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-common@@19.3.0"

# interfaces
.implements Lcom/google/firebase/b/c;


# instance fields
.field private a:Lcom/google/firebase/b/d;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-static {p1}, Lcom/google/firebase/b/d;->a(Landroid/content/Context;)Lcom/google/firebase/b/d;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/b/a;->a:Lcom/google/firebase/b/d;

    .line 31
    return-void
.end method

.method static synthetic a(Lcom/google/firebase/components/e;)Lcom/google/firebase/b/c;
    .locals 2

    .prologue
    .line 57
    new-instance v1, Lcom/google/firebase/b/a;

    const-class v0, Landroid/content/Context;

    invoke-interface {p0, v0}, Lcom/google/firebase/components/e;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-direct {v1, v0}, Lcom/google/firebase/b/a;-><init>(Landroid/content/Context;)V

    return-object v1
.end method

.method public static a()Lcom/google/firebase/components/b;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/firebase/components/b",
            "<",
            "Lcom/google/firebase/b/c;",
            ">;"
        }
    .end annotation

    .prologue
    .line 55
    const-class v0, Lcom/google/firebase/b/c;

    invoke-static {v0}, Lcom/google/firebase/components/b;->a(Ljava/lang/Class;)Lcom/google/firebase/components/b$a;

    move-result-object v0

    const-class v1, Landroid/content/Context;

    .line 56
    invoke-static {v1}, Lcom/google/firebase/components/n;->b(Ljava/lang/Class;)Lcom/google/firebase/components/n;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/components/b$a;->a(Lcom/google/firebase/components/n;)Lcom/google/firebase/components/b$a;

    move-result-object v0

    invoke-static {}, Lcom/google/firebase/b/b;->a()Lcom/google/firebase/components/g;

    move-result-object v1

    .line 57
    invoke-virtual {v0, v1}, Lcom/google/firebase/components/b$a;->a(Lcom/google/firebase/components/g;)Lcom/google/firebase/components/b$a;

    move-result-object v0

    .line 58
    invoke-virtual {v0}, Lcom/google/firebase/components/b$a;->c()Lcom/google/firebase/components/b;

    move-result-object v0

    .line 55
    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/google/firebase/b/c$a;
    .locals 4

    .prologue
    .line 41
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 42
    iget-object v2, p0, Lcom/google/firebase/b/a;->a:Lcom/google/firebase/b/d;

    invoke-virtual {v2, p1, v0, v1}, Lcom/google/firebase/b/d;->a(Ljava/lang/String;J)Z

    move-result v2

    .line 43
    iget-object v3, p0, Lcom/google/firebase/b/a;->a:Lcom/google/firebase/b/d;

    invoke-virtual {v3, v0, v1}, Lcom/google/firebase/b/d;->a(J)Z

    move-result v0

    .line 44
    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    .line 45
    sget-object v0, Lcom/google/firebase/b/c$a;->d:Lcom/google/firebase/b/c$a;

    .line 51
    :goto_0
    return-object v0

    .line 46
    :cond_0
    if-eqz v0, :cond_1

    .line 47
    sget-object v0, Lcom/google/firebase/b/c$a;->c:Lcom/google/firebase/b/c$a;

    goto :goto_0

    .line 48
    :cond_1
    if-eqz v2, :cond_2

    .line 49
    sget-object v0, Lcom/google/firebase/b/c$a;->b:Lcom/google/firebase/b/c$a;

    goto :goto_0

    .line 51
    :cond_2
    sget-object v0, Lcom/google/firebase/b/c$a;->a:Lcom/google/firebase/b/c$a;

    goto :goto_0
.end method
