.class final synthetic Lcom/google/firebase/installations/c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final b:Lcom/google/firebase/installations/f;


# direct methods
.method private constructor <init>(Lcom/google/firebase/installations/f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/installations/c;->b:Lcom/google/firebase/installations/f;

    return-void
.end method

.method public static a(Lcom/google/firebase/installations/f;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/google/firebase/installations/c;

    invoke-direct {v0, p0}, Lcom/google/firebase/installations/c;-><init>(Lcom/google/firebase/installations/f;)V

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/installations/c;->b:Lcom/google/firebase/installations/f;

    invoke-static {v0}, Lcom/google/firebase/installations/f;->r(Lcom/google/firebase/installations/f;)V

    return-void
.end method
