.class final synthetic Lcom/google/firebase/messaging/e0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/datatransport/d;


# static fields
.field static final a:Lcom/google/android/datatransport/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/firebase/messaging/e0;

    invoke-direct {v0}, Lcom/google/firebase/messaging/e0;-><init>()V

    sput-object v0, Lcom/google/firebase/messaging/e0;->a:Lcom/google/android/datatransport/d;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    return-object p1
.end method
