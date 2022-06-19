.class final synthetic Lcom/google/firebase/b/b;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-common@@19.3.0"

# interfaces
.implements Lcom/google/firebase/components/g;


# static fields
.field private static final a:Lcom/google/firebase/b/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/firebase/b/b;

    invoke-direct {v0}, Lcom/google/firebase/b/b;-><init>()V

    sput-object v0, Lcom/google/firebase/b/b;->a:Lcom/google/firebase/b/b;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/google/firebase/components/g;
    .locals 1

    sget-object v0, Lcom/google/firebase/b/b;->a:Lcom/google/firebase/b/b;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/google/firebase/components/e;)Ljava/lang/Object;
    .locals 1

    invoke-static {p1}, Lcom/google/firebase/b/a;->a(Lcom/google/firebase/components/e;)Lcom/google/firebase/b/c;

    move-result-object v0

    return-object v0
.end method
