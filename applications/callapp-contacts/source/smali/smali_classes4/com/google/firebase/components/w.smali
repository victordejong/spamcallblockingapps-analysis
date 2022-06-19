.class final Lcom/google/firebase/components/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/d/a;
.implements Lcom/google/firebase/d/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/firebase/d/a<",
        "TT;>;",
        "Lcom/google/firebase/d/b<",
        "TT;>;"
    }
.end annotation


# static fields
.field static final a:Lcom/google/firebase/d/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/d/b<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final d:Lcom/google/firebase/d/a$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/d/a$a<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field b:Lcom/google/firebase/d/a$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/d/a$a<",
            "TT;>;"
        }
    .end annotation
.end field

.field volatile c:Lcom/google/firebase/d/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/d/b<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    invoke-static {}, Lcom/google/firebase/components/x;->b()Lcom/google/firebase/d/a$a;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/components/w;->d:Lcom/google/firebase/d/a$a;

    .line 32
    invoke-static {}, Lcom/google/firebase/components/y;->b()Lcom/google/firebase/d/b;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/components/w;->a:Lcom/google/firebase/d/b;

    return-void
.end method

.method private constructor <init>(Lcom/google/firebase/d/a$a;Lcom/google/firebase/d/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/d/a$a<",
            "TT;>;",
            "Lcom/google/firebase/d/b<",
            "TT;>;)V"
        }
    .end annotation

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/google/firebase/components/w;->b:Lcom/google/firebase/d/a$a;

    .line 41
    iput-object p2, p0, Lcom/google/firebase/components/w;->c:Lcom/google/firebase/d/b;

    return-void
.end method

.method static b()Lcom/google/firebase/components/w;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/firebase/components/w<",
            "TT;>;"
        }
    .end annotation

    .line 46
    new-instance v0, Lcom/google/firebase/components/w;

    sget-object v1, Lcom/google/firebase/components/w;->d:Lcom/google/firebase/d/a$a;

    sget-object v2, Lcom/google/firebase/components/w;->a:Lcom/google/firebase/d/b;

    invoke-direct {v0, v1, v2}, Lcom/google/firebase/components/w;-><init>(Lcom/google/firebase/d/a$a;Lcom/google/firebase/d/b;)V

    return-object v0
.end method

.method static synthetic c()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic d()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 55
    iget-object v0, p0, Lcom/google/firebase/components/w;->c:Lcom/google/firebase/d/b;

    invoke-interface {v0}, Lcom/google/firebase/d/b;->a()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
