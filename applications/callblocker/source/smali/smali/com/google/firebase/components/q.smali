.class public Lcom/google/firebase/components/q;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-components@@16.0.0"

# interfaces
.implements Lcom/google/firebase/c/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/firebase/c/a",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/Object;


# instance fields
.field private volatile b:Ljava/lang/Object;

.field private volatile c:Lcom/google/firebase/c/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/c/a",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/firebase/components/q;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/google/firebase/c/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/c/a",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    sget-object v0, Lcom/google/firebase/components/q;->a:Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/firebase/components/q;->b:Ljava/lang/Object;

    .line 42
    iput-object p1, p0, Lcom/google/firebase/components/q;->c:Lcom/google/firebase/c/a;

    .line 43
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/firebase/components/q;->b:Ljava/lang/Object;

    .line 49
    sget-object v1, Lcom/google/firebase/components/q;->a:Ljava/lang/Object;

    if-ne v0, v1, :cond_1

    .line 50
    monitor-enter p0

    .line 51
    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/components/q;->b:Ljava/lang/Object;

    .line 52
    sget-object v1, Lcom/google/firebase/components/q;->a:Ljava/lang/Object;

    if-ne v0, v1, :cond_0

    .line 53
    iget-object v0, p0, Lcom/google/firebase/components/q;->c:Lcom/google/firebase/c/a;

    invoke-interface {v0}, Lcom/google/firebase/c/a;->a()Ljava/lang/Object;

    move-result-object v0

    .line 54
    iput-object v0, p0, Lcom/google/firebase/components/q;->b:Ljava/lang/Object;

    .line 57
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/firebase/components/q;->c:Lcom/google/firebase/c/a;

    .line 59
    :cond_0
    monitor-exit p0

    .line 64
    :cond_1
    return-object v0

    .line 59
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
