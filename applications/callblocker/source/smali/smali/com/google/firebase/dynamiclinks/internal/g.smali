.class final synthetic Lcom/google/firebase/dynamiclinks/internal/g;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-dynamic-links@@19.1.0"

# interfaces
.implements Lcom/google/firebase/components/g;


# static fields
.field static final a:Lcom/google/firebase/components/g;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/firebase/dynamiclinks/internal/g;

    invoke-direct {v0}, Lcom/google/firebase/dynamiclinks/internal/g;-><init>()V

    sput-object v0, Lcom/google/firebase/dynamiclinks/internal/g;->a:Lcom/google/firebase/components/g;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/firebase/components/e;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 1
    .line 2
    new-instance v2, Lcom/google/firebase/dynamiclinks/internal/f;

    const-class v0, Lcom/google/firebase/b;

    .line 3
    invoke-interface {p1, v0}, Lcom/google/firebase/components/e;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/b;

    const-class v1, Lcom/google/firebase/analytics/connector/a;

    invoke-interface {p1, v1}, Lcom/google/firebase/components/e;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/analytics/connector/a;

    invoke-direct {v2, v0, v1}, Lcom/google/firebase/dynamiclinks/internal/f;-><init>(Lcom/google/firebase/b;Lcom/google/firebase/analytics/connector/a;)V

    .line 4
    return-object v2
.end method
