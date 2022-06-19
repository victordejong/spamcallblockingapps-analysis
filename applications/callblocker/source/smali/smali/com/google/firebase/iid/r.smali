.class final synthetic Lcom/google/firebase/iid/r;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-iid@@20.1.5"

# interfaces
.implements Lcom/google/firebase/components/g;


# static fields
.field static final a:Lcom/google/firebase/components/g;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/firebase/iid/r;

    invoke-direct {v0}, Lcom/google/firebase/iid/r;-><init>()V

    sput-object v0, Lcom/google/firebase/iid/r;->a:Lcom/google/firebase/components/g;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/firebase/components/e;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 1
    .line 2
    new-instance v1, Lcom/google/firebase/iid/Registrar$a;

    const-class v0, Lcom/google/firebase/iid/FirebaseInstanceId;

    invoke-interface {p1, v0}, Lcom/google/firebase/components/e;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/iid/FirebaseInstanceId;

    invoke-direct {v1, v0}, Lcom/google/firebase/iid/Registrar$a;-><init>(Lcom/google/firebase/iid/FirebaseInstanceId;)V

    .line 3
    return-object v1
.end method
