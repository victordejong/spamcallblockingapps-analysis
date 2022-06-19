.class public Lcom/google/firebase/e/b;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-common@@19.3.0"

# interfaces
.implements Lcom/google/firebase/e/h;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/google/firebase/e/d;


# direct methods
.method constructor <init>(Ljava/util/Set;Lcom/google/firebase/e/d;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/google/firebase/e/f;",
            ">;",
            "Lcom/google/firebase/e/d;",
            ")V"
        }
    .end annotation

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-static {p1}, Lcom/google/firebase/e/b;->a(Ljava/util/Set;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/e/b;->a:Ljava/lang/String;

    .line 35
    iput-object p2, p0, Lcom/google/firebase/e/b;->b:Lcom/google/firebase/e/d;

    .line 36
    return-void
.end method

.method static synthetic a(Lcom/google/firebase/components/e;)Lcom/google/firebase/e/h;
    .locals 3

    .prologue
    .line 72
    new-instance v0, Lcom/google/firebase/e/b;

    const-class v1, Lcom/google/firebase/e/f;

    .line 73
    invoke-interface {p0, v1}, Lcom/google/firebase/components/e;->b(Ljava/lang/Class;)Ljava/util/Set;

    move-result-object v1

    invoke-static {}, Lcom/google/firebase/e/d;->b()Lcom/google/firebase/e/d;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/firebase/e/b;-><init>(Ljava/util/Set;Lcom/google/firebase/e/d;)V

    .line 72
    return-object v0
.end method

.method private static a(Ljava/util/Set;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/google/firebase/e/f;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 54
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 55
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 56
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 57
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/e/f;

    .line 58
    invoke-virtual {v0}, Lcom/google/firebase/e/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x2f

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/firebase/e/f;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    const/16 v0, 0x20

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 63
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b()Lcom/google/firebase/components/b;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/firebase/components/b",
            "<",
            "Lcom/google/firebase/e/h;",
            ">;"
        }
    .end annotation

    .prologue
    .line 68
    const-class v0, Lcom/google/firebase/e/h;

    invoke-static {v0}, Lcom/google/firebase/components/b;->a(Ljava/lang/Class;)Lcom/google/firebase/components/b$a;

    move-result-object v0

    const-class v1, Lcom/google/firebase/e/f;

    .line 69
    invoke-static {v1}, Lcom/google/firebase/components/n;->c(Ljava/lang/Class;)Lcom/google/firebase/components/n;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/components/b$a;->a(Lcom/google/firebase/components/n;)Lcom/google/firebase/components/b$a;

    move-result-object v0

    invoke-static {}, Lcom/google/firebase/e/c;->a()Lcom/google/firebase/components/g;

    move-result-object v1

    .line 70
    invoke-virtual {v0, v1}, Lcom/google/firebase/components/b$a;->a(Lcom/google/firebase/components/g;)Lcom/google/firebase/components/b$a;

    move-result-object v0

    .line 74
    invoke-virtual {v0}, Lcom/google/firebase/components/b$a;->c()Lcom/google/firebase/components/b;

    move-result-object v0

    .line 68
    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/firebase/e/b;->b:Lcom/google/firebase/e/d;

    invoke-virtual {v0}, Lcom/google/firebase/e/d;->a()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/google/firebase/e/b;->a:Ljava/lang/String;

    .line 50
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/firebase/e/b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/e/b;->b:Lcom/google/firebase/e/d;

    invoke-virtual {v1}, Lcom/google/firebase/e/d;->a()Ljava/util/Set;

    move-result-object v1

    invoke-static {v1}, Lcom/google/firebase/e/b;->a(Ljava/util/Set;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
