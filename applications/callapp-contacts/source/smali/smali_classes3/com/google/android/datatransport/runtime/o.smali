.class final synthetic Lcom/google/android/datatransport/runtime/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/datatransport/h;


# static fields
.field private static final a:Lcom/google/android/datatransport/runtime/o;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/datatransport/runtime/o;

    invoke-direct {v0}, Lcom/google/android/datatransport/runtime/o;-><init>()V

    sput-object v0, Lcom/google/android/datatransport/runtime/o;->a:Lcom/google/android/datatransport/runtime/o;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/google/android/datatransport/h;
    .locals 1

    sget-object v0, Lcom/google/android/datatransport/runtime/o;->a:Lcom/google/android/datatransport/runtime/o;

    return-object v0
.end method


# virtual methods
.method public final onSchedule(Ljava/lang/Exception;)V
    .locals 0

    return-void
.end method
