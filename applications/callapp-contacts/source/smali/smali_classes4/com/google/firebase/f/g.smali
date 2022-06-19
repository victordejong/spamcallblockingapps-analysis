.class public final Lcom/google/firebase/f/g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/f/g$a;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Lcom/google/firebase/f/g$a;)Lcom/google/firebase/components/b;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/firebase/f/g$a<",
            "Landroid/content/Context;",
            ">;)",
            "Lcom/google/firebase/components/b<",
            "*>;"
        }
    .end annotation

    .line 35
    const-class v0, Lcom/google/firebase/f/f;

    invoke-static {v0}, Lcom/google/firebase/components/b;->b(Ljava/lang/Class;)Lcom/google/firebase/components/b$a;

    move-result-object v0

    const-class v1, Landroid/content/Context;

    .line 36
    invoke-static {v1}, Lcom/google/firebase/components/r;->b(Ljava/lang/Class;)Lcom/google/firebase/components/r;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/components/b$a;->a(Lcom/google/firebase/components/r;)Lcom/google/firebase/components/b$a;

    move-result-object v0

    invoke-static {p0, p1}, Lcom/google/firebase/f/h;->a(Ljava/lang/String;Lcom/google/firebase/f/g$a;)Lcom/google/firebase/components/h;

    move-result-object p0

    .line 37
    invoke-virtual {v0, p0}, Lcom/google/firebase/components/b$a;->a(Lcom/google/firebase/components/h;)Lcom/google/firebase/components/b$a;

    move-result-object p0

    .line 38
    invoke-virtual {p0}, Lcom/google/firebase/components/b$a;->a()Lcom/google/firebase/components/b;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/components/b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/firebase/components/b<",
            "*>;"
        }
    .end annotation

    .line 31
    invoke-static {p0, p1}, Lcom/google/firebase/f/f;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/f/f;

    move-result-object p0

    const-class p1, Lcom/google/firebase/f/f;

    invoke-static {p0, p1}, Lcom/google/firebase/components/b;->a(Ljava/lang/Object;Ljava/lang/Class;)Lcom/google/firebase/components/b;

    move-result-object p0

    return-object p0
.end method
