.class final synthetic Lcom/google/firebase/installations/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/firebase/installations/c;

.field private final b:Z


# direct methods
.method private constructor <init>(Lcom/google/firebase/installations/c;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/installations/e;->a:Lcom/google/firebase/installations/c;

    iput-boolean p2, p0, Lcom/google/firebase/installations/e;->b:Z

    return-void
.end method

.method public static a(Lcom/google/firebase/installations/c;Z)Ljava/lang/Runnable;
    .locals 1

    new-instance p1, Lcom/google/firebase/installations/e;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/google/firebase/installations/e;-><init>(Lcom/google/firebase/installations/c;Z)V

    return-object p1
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/installations/e;->a:Lcom/google/firebase/installations/c;

    iget-boolean v1, p0, Lcom/google/firebase/installations/e;->b:Z

    invoke-static {v0, v1}, Lcom/google/firebase/installations/c;->b(Lcom/google/firebase/installations/c;Z)V

    return-void
.end method
