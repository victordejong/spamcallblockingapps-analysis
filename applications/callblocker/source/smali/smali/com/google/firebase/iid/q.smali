.class final synthetic Lcom/google/firebase/iid/q;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-iid@@20.1.5"

# interfaces
.implements Lcom/google/firebase/components/g;


# static fields
.field static final a:Lcom/google/firebase/components/g;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/firebase/iid/q;

    invoke-direct {v0}, Lcom/google/firebase/iid/q;-><init>()V

    sput-object v0, Lcom/google/firebase/iid/q;->a:Lcom/google/firebase/components/g;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/firebase/components/e;)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 1
    .line 2
    new-instance v0, Lcom/google/firebase/iid/FirebaseInstanceId;

    const-class v1, Lcom/google/firebase/b;

    .line 3
    invoke-interface {p1, v1}, Lcom/google/firebase/components/e;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/b;

    const-class v2, Lcom/google/firebase/a/d;

    .line 4
    invoke-interface {p1, v2}, Lcom/google/firebase/components/e;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/a/d;

    const-class v3, Lcom/google/firebase/e/h;

    .line 5
    invoke-interface {p1, v3}, Lcom/google/firebase/components/e;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/firebase/e/h;

    const-class v4, Lcom/google/firebase/b/c;

    .line 6
    invoke-interface {p1, v4}, Lcom/google/firebase/components/e;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/firebase/b/c;

    const-class v5, Lcom/google/firebase/installations/h;

    .line 7
    invoke-interface {p1, v5}, Lcom/google/firebase/components/e;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/firebase/installations/h;

    invoke-direct/range {v0 .. v5}, Lcom/google/firebase/iid/FirebaseInstanceId;-><init>(Lcom/google/firebase/b;Lcom/google/firebase/a/d;Lcom/google/firebase/e/h;Lcom/google/firebase/b/c;Lcom/google/firebase/installations/h;)V

    .line 8
    return-object v0
.end method
