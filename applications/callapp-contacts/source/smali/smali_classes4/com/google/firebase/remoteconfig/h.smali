.class final synthetic Lcom/google/firebase/remoteconfig/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final a:Lcom/google/firebase/remoteconfig/g;


# direct methods
.method private constructor <init>(Lcom/google/firebase/remoteconfig/g;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/remoteconfig/h;->a:Lcom/google/firebase/remoteconfig/g;

    return-void
.end method

.method public static a(Lcom/google/firebase/remoteconfig/g;)Ljava/util/concurrent/Callable;
    .locals 1

    new-instance v0, Lcom/google/firebase/remoteconfig/h;

    invoke-direct {v0, p0}, Lcom/google/firebase/remoteconfig/h;-><init>(Lcom/google/firebase/remoteconfig/g;)V

    return-object v0
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/remoteconfig/h;->a:Lcom/google/firebase/remoteconfig/g;

    const-string v1, "firebase"

    .line 1137
    invoke-virtual {v0, v1}, Lcom/google/firebase/remoteconfig/g;->a(Ljava/lang/String;)Lcom/google/firebase/remoteconfig/a;

    move-result-object v0

    return-object v0
.end method
