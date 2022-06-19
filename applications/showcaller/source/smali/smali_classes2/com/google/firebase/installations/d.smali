.class final synthetic Lcom/google/firebase/installations/d;
.super Ljava/lang/Object;
.source "FirebaseInstallations.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final d:Lcom/google/firebase/installations/f;

.field private final e:Z


# direct methods
.method private constructor <init>(Lcom/google/firebase/installations/f;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/installations/d;->d:Lcom/google/firebase/installations/f;

    iput-boolean p2, p0, Lcom/google/firebase/installations/d;->e:Z

    return-void
.end method

.method public static a(Lcom/google/firebase/installations/f;Z)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/google/firebase/installations/d;

    invoke-direct {v0, p0, p1}, Lcom/google/firebase/installations/d;-><init>(Lcom/google/firebase/installations/f;Z)V

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/installations/d;->d:Lcom/google/firebase/installations/f;

    iget-boolean v1, p0, Lcom/google/firebase/installations/d;->e:Z

    invoke-static {v0, v1}, Lcom/google/firebase/installations/f;->s(Lcom/google/firebase/installations/f;Z)V

    return-void
.end method
