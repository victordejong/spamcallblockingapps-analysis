.class final synthetic Lcom/google/firebase/installations/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final a:Lcom/google/firebase/installations/c;


# direct methods
.method private constructor <init>(Lcom/google/firebase/installations/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/installations/f;->a:Lcom/google/firebase/installations/c;

    return-void
.end method

.method public static a(Lcom/google/firebase/installations/c;)Ljava/util/concurrent/Callable;
    .locals 1

    new-instance v0, Lcom/google/firebase/installations/f;

    invoke-direct {v0, p0}, Lcom/google/firebase/installations/f;-><init>(Lcom/google/firebase/installations/c;)V

    return-object v0
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/installations/f;->a:Lcom/google/firebase/installations/c;

    invoke-static {v0}, Lcom/google/firebase/installations/c;->b(Lcom/google/firebase/installations/c;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
