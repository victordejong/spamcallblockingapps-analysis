.class final synthetic Lcom/google/firebase/remoteconfig/i;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final a:Lcom/google/firebase/remoteconfig/k;


# direct methods
.method private constructor <init>(Lcom/google/firebase/remoteconfig/k;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/remoteconfig/i;->a:Lcom/google/firebase/remoteconfig/k;

    return-void
.end method

.method public static a(Lcom/google/firebase/remoteconfig/k;)Ljava/util/concurrent/Callable;
    .locals 1

    new-instance v0, Lcom/google/firebase/remoteconfig/i;

    invoke-direct {v0, p0}, Lcom/google/firebase/remoteconfig/i;-><init>(Lcom/google/firebase/remoteconfig/k;)V

    return-object v0
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/remoteconfig/i;->a:Lcom/google/firebase/remoteconfig/k;

    invoke-virtual {v0}, Lcom/google/firebase/remoteconfig/k;->d()Lcom/google/firebase/remoteconfig/e;

    move-result-object v0

    return-object v0
.end method
