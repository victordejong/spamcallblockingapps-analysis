.class final synthetic Lcom/google/firebase/m/g;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/firebase/components/h;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/google/firebase/m/h$a;


# direct methods
.method private constructor <init>(Ljava/lang/String;Lcom/google/firebase/m/h$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/m/g;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/firebase/m/g;->b:Lcom/google/firebase/m/h$a;

    return-void
.end method

.method public static b(Ljava/lang/String;Lcom/google/firebase/m/h$a;)Lcom/google/firebase/components/h;
    .locals 1

    new-instance v0, Lcom/google/firebase/m/g;

    invoke-direct {v0, p0, p1}, Lcom/google/firebase/m/g;-><init>(Ljava/lang/String;Lcom/google/firebase/m/h$a;)V

    return-object v0
.end method


# virtual methods
.method public a(Lcom/google/firebase/components/e;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/m/g;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/firebase/m/g;->b:Lcom/google/firebase/m/h$a;

    invoke-static {v0, v1, p1}, Lcom/google/firebase/m/h;->c(Ljava/lang/String;Lcom/google/firebase/m/h$a;Lcom/google/firebase/components/e;)Lcom/google/firebase/m/f;

    move-result-object p1

    return-object p1
.end method
