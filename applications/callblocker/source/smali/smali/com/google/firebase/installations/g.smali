.class final synthetic Lcom/google/firebase/installations/g;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-installations@@16.2.1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/firebase/installations/c;

.field private final b:Z


# direct methods
.method private constructor <init>(Lcom/google/firebase/installations/c;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/installations/g;->a:Lcom/google/firebase/installations/c;

    iput-boolean p2, p0, Lcom/google/firebase/installations/g;->b:Z

    return-void
.end method

.method public static a(Lcom/google/firebase/installations/c;Z)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/google/firebase/installations/g;

    invoke-direct {v0, p0, p1}, Lcom/google/firebase/installations/g;-><init>(Lcom/google/firebase/installations/c;Z)V

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/installations/g;->a:Lcom/google/firebase/installations/c;

    iget-boolean v1, p0, Lcom/google/firebase/installations/g;->b:Z

    invoke-static {v0, v1}, Lcom/google/firebase/installations/c;->a(Lcom/google/firebase/installations/c;Z)V

    return-void
.end method
