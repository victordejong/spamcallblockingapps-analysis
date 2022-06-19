.class public final enum Lcom/google/android/play/core/splitinstall/aa;
.super Ljava/lang/Enum;

# interfaces
.implements Lcom/google/android/play/core/splitinstall/t;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/play/core/splitinstall/aa;",
        ">;",
        "Lcom/google/android/play/core/splitinstall/t;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/google/android/play/core/splitinstall/aa;

.field private static final b:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/google/android/play/core/splitinstall/u;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/play/core/splitinstall/aa;

    invoke-direct {v0}, Lcom/google/android/play/core/splitinstall/aa;-><init>()V

    sput-object v0, Lcom/google/android/play/core/splitinstall/aa;->a:Lcom/google/android/play/core/splitinstall/aa;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/google/android/play/core/splitinstall/aa;->b:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    const-string v0, "INSTANCE"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/play/core/splitinstall/u;
    .locals 1

    sget-object v0, Lcom/google/android/play/core/splitinstall/aa;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/play/core/splitinstall/u;

    return-object v0
.end method

.method public final b(Lcom/google/android/play/core/splitinstall/u;)V
    .locals 1

    sget-object v0, Lcom/google/android/play/core/splitinstall/aa;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method
