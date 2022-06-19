.class final synthetic Lcom/google/firebase/components/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/d/b;


# instance fields
.field private final a:Lcom/google/firebase/components/j;

.field private final b:Lcom/google/firebase/components/b;


# direct methods
.method constructor <init>(Lcom/google/firebase/components/j;Lcom/google/firebase/components/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/components/k;->a:Lcom/google/firebase/components/j;

    iput-object p2, p0, Lcom/google/firebase/components/k;->b:Lcom/google/firebase/components/b;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/components/k;->a:Lcom/google/firebase/components/j;

    iget-object v1, p0, Lcom/google/firebase/components/k;->b:Lcom/google/firebase/components/b;

    invoke-static {v0, v1}, Lcom/google/firebase/components/j;->a(Lcom/google/firebase/components/j;Lcom/google/firebase/components/b;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
