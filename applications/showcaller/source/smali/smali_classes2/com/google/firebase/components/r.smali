.class final synthetic Lcom/google/firebase/components/r;
.super Ljava/lang/Object;
.source "EventBus.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final d:Ljava/util/Map$Entry;

.field private final e:Lcom/google/firebase/j/a;


# direct methods
.method private constructor <init>(Ljava/util/Map$Entry;Lcom/google/firebase/j/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/components/r;->d:Ljava/util/Map$Entry;

    iput-object p2, p0, Lcom/google/firebase/components/r;->e:Lcom/google/firebase/j/a;

    return-void
.end method

.method public static a(Ljava/util/Map$Entry;Lcom/google/firebase/j/a;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/google/firebase/components/r;

    invoke-direct {v0, p0, p1}, Lcom/google/firebase/components/r;-><init>(Ljava/util/Map$Entry;Lcom/google/firebase/j/a;)V

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/components/r;->d:Ljava/util/Map$Entry;

    iget-object v1, p0, Lcom/google/firebase/components/r;->e:Lcom/google/firebase/j/a;

    invoke-static {v0, v1}, Lcom/google/firebase/components/s;->e(Ljava/util/Map$Entry;Lcom/google/firebase/j/a;)V

    return-void
.end method
