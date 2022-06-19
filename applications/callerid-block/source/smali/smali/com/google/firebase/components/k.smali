.class final synthetic Lcom/google/firebase/components/k;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final b:Lcom/google/firebase/components/x;

.field private final c:Lcom/google/firebase/k/b;


# direct methods
.method private constructor <init>(Lcom/google/firebase/components/x;Lcom/google/firebase/k/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/components/k;->b:Lcom/google/firebase/components/x;

    iput-object p2, p0, Lcom/google/firebase/components/k;->c:Lcom/google/firebase/k/b;

    return-void
.end method

.method public static a(Lcom/google/firebase/components/x;Lcom/google/firebase/k/b;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/google/firebase/components/k;

    invoke-direct {v0, p0, p1}, Lcom/google/firebase/components/k;-><init>(Lcom/google/firebase/components/x;Lcom/google/firebase/k/b;)V

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/components/k;->b:Lcom/google/firebase/components/x;

    iget-object v1, p0, Lcom/google/firebase/components/k;->c:Lcom/google/firebase/k/b;

    invoke-static {v0, v1}, Lcom/google/firebase/components/n;->k(Lcom/google/firebase/components/x;Lcom/google/firebase/k/b;)V

    return-void
.end method
