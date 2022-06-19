.class final synthetic Lcom/google/firebase/perf/g/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/datatransport/d;


# static fields
.field private static final a:Lcom/google/firebase/perf/g/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/firebase/perf/g/a;

    invoke-direct {v0}, Lcom/google/firebase/perf/g/a;-><init>()V

    sput-object v0, Lcom/google/firebase/perf/g/a;->a:Lcom/google/firebase/perf/g/a;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b()Lcom/google/android/datatransport/d;
    .locals 1

    sget-object v0, Lcom/google/firebase/perf/g/a;->a:Lcom/google/firebase/perf/g/a;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/google/firebase/perf/v1/g;

    invoke-virtual {p1}, Lcom/google/protobuf/a;->w()[B

    move-result-object p1

    return-object p1
.end method
