.class final synthetic Lcom/google/android/datatransport/h/o;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/datatransport/g;


# static fields
.field private static final a:Lcom/google/android/datatransport/h/o;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/datatransport/h/o;

    invoke-direct {v0}, Lcom/google/android/datatransport/h/o;-><init>()V

    sput-object v0, Lcom/google/android/datatransport/h/o;->a:Lcom/google/android/datatransport/h/o;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b()Lcom/google/android/datatransport/g;
    .locals 1

    sget-object v0, Lcom/google/android/datatransport/h/o;->a:Lcom/google/android/datatransport/h/o;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/Exception;)V
    .locals 0

    invoke-static {p1}, Lcom/google/android/datatransport/h/p;->c(Ljava/lang/Exception;)V

    return-void
.end method
